unit DocumentosDigitalizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Interno, Data.FMTBcd, Data.DB, MemDS, DBAccess,
  Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniEdit, uniRadioGroup,
  uniDBNavigator, uniDBMemo, uniBasicGrid, uniDBGrid, uniMemo, uniButton,
  uniDateTimePicker, uniDBDateTimePicker, uniCheckBox, uniDBCheckBox,
  uniDBComboBox, uniMultiItem, uniComboBox, uniDBLookupComboBox, uniDBEdit,
  uniPageControl, uniDBImage, uniBitBtn, uniLabel, Vcl.Imaging.jpeg, uniImage,
  uniPanel, uniURLFrame, PDFSplitMerge_TLB, uniFileUpload;

type
  TFrmDocumentosDigitalizados = class(TFrmInterno)
    UniTabSheet1: TUniTabSheet;
    SqlDocumentoProcessos: TSQLQuery;
    DspDocumentoProcessos: TDataSetProvider;
    CdsDocumentoProcessos: TClientDataSet;
    DsDocumentoProcessos: TDataSource;
    UniPanel10: TUniPanel;
    UniBitBtnTodosDigitalizados: TUniBitBtn;
    UniEditDescricaoPDF: TUniEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniBitBtn3: TUniBitBtn;
    UniURLFramePdf: TUniURLFrame;
    DsTipoDocumento: TDataSource;
    CdsTipoDocumento: TClientDataSet;
    DspTipoDocumento: TDataSetProvider;
    SqlTipoDocumento: TSQLQuery;
    UniDBLookupComboBoxTipoDocumento: TUniDBLookupComboBox;
    UniPanel11: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniBitBtnComunicarCentral: TUniBitBtn;
    UniCheckBoxComunicarCentral: TUniCheckBox;
    DsDocInsert: TDataSource;
    CdsDocInsert: TClientDataSet;
    DspDocInsert: TDataSetProvider;
    SqlDocInsert: TSQLQuery;
    procedure UniFormShow(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniBitBtnTodosDigitalizadosClick(Sender: TObject);
    procedure UniFileUploadPdfCompleted(Sender: TObject; AStream: TFileStream);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniBitBtnComunicarCentralClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    sArquivosPDFInterno, sPdf: String;
    sCaminhoArquivo, sArquivo, sNomePDF, sPastaDia: string;
    procedure Comunicar;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmDocumentosDigitalizados: TFrmDocumentosDigitalizados;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, ServerModule, Lib, Main, humanejs,
  Aguarde;

function FrmDocumentosDigitalizados: TFrmDocumentosDigitalizados;
begin
  Result := TFrmDocumentosDigitalizados
    (UniMainModule.GetFormInstance(TFrmDocumentosDigitalizados));
end;

procedure TFrmDocumentosDigitalizados.EditarClick(Sender: TObject);
begin
  inherited;

  SqlDocumentoProcessos.SQL.Text :=
    'select d.*, iif(d.comunicar_central=''S'',iif(d.data_inicio_central is null,''Prioridade'',iif(d.data_fim_central is null, ''Em Andamento'', ''Finalizado'')),''Normal'') central from DOCUMENTOS_PROCESSO d where d.id_interno='
    + dscadastro.DataSet.FieldByName('id_interno').AsString +
    ' order by d.data ';
  // + ' order by data ';
  CdsDocumentoProcessos.close;
  CdsDocumentoProcessos.open;

  SqlDocInsert.SQL.Text :=
    'select * from DOCUMENTOS_PROCESSO d where d.id_interno=-1';
  // + ' order by data ';
  CdsDocInsert.close;
  CdsDocInsert.open;

  CdsTipoDocumento.close;
  CdsTipoDocumento.open;

  UniURLFramePdf.URL := '/logo/logo_fundo.jpg';

  // UniBitBtnTodosDigitalizadosClick(nil);

end;

procedure TFrmDocumentosDigitalizados.UniBitBtn3Click(Sender: TObject);
begin
  inherited;
  if UniDBLookupComboBoxTipoDocumento.keyvalue = null then
  begin
    showmessage('Informe o tipo de documento!');
    exit;
  end;
  if UniEditDescricaoPDF.Text = '' then
  begin
    showmessage('Informe a descrição do documento!');
    exit;
  end;

  MainForm.UniFileUploadPdf.OnCompleted := UniFileUploadPdfCompleted;
  MainForm.UniFileUploadPdf.Execute;
end;

procedure TFrmDocumentosDigitalizados.Comunicar;
begin
  try
    CdsDocumentoProcessos.Edit;
    CdsDocumentoProcessos.FieldByName('IDFUNCIONARIO').AsInteger :=
      Dm.GLOBAL_ID_FUNCIONARIO;
    CdsDocumentoProcessos.FieldByName('COMUNICAR_CENTRAL').AsString := 'S';
    CdsDocumentoProcessos.Post;
    CdsDocumentoProcessos.ApplyUpdates(-1);
    CdsDocumentoProcessos.close;
    CdsDocumentoProcessos.open;
    humane.success
      ('<b><font Color=yellow>Comunicação em andamento.</font></b><br>A central será comunicada deste documento.');
  except
    on E: Exception do
    begin
      showmessage('Sistema diz: ' + E.Message);
    end;
  end;

end;

procedure TFrmDocumentosDigitalizados.UniBitBtnComunicarCentralClick
  (Sender: TObject);
begin
  inherited;

  if UniCheckBoxComunicarCentral.Checked then
  begin
    Comunicar;
  end
  else
  begin
    MessageDlg('Comunicar central deste documento:' +
      CdsDocumentoProcessos.FieldByName('DESCRICAO').AsString + '?',
      mtWarning, mbYesNo,
      procedure(Sender: TComponent; Result: Integer)
      begin
        if Result = mrYes then
        begin
          Comunicar();
        end;
      end);
  end;

end;

procedure TFrmDocumentosDigitalizados.UniBitBtnTodosDigitalizadosClick
  (Sender: TObject);
begin
  try
    sArquivosPDFInterno := '';
    sPdf := '';
    if Dm.CONFIGURACAO = 'S' then
    begin

      DsDocumentoProcessos.DataSet.first;
      while not DsDocumentoProcessos.DataSet.eof do
      begin

        sPdf := Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
          DsDocumentoProcessos.DataSet.FieldByName('CAMINHO_DOC').AsString;

        if FileExists(sPdf) then
        begin
          if sArquivosPDFInterno = '' then
            sArquivosPDFInterno := sPdf
          else
            sArquivosPDFInterno := sArquivosPDFInterno + '|' + sPdf;
        end;

        DsDocumentoProcessos.DataSet.next;

      end;

      if sArquivosPDFInterno <> '' then
      begin
        if Dm.GLOBAL_IDCONEXAO > 0 then
        begin
          try
            Dm.Conexao.ExecuteDirect('update conexao set tela_momento = ' +
              qs('UNIFICANDO PDFS: ' + dscadastro.DataSet.FieldByName
              ('id_interno').AsString + '-' + dscadastro.DataSet.FieldByName
              ('NOME_INTERNO').AsString + ' PDF:' + sArquivosPDFInterno) +
              ' where idconexao=' + inttostr(Dm.GLOBAL_IDCONEXAO));
          except
          end;
        end;

        if FileExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
          dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf') then
          DeleteFile(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
            dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf');

        try
          Dm.MeuPDF := TCPDFSplitMergeObj.Create(Dm);
          Dm.MeuPDF.SetCode('Siapen - V2');
          Dm.MeuPDF.Merge(sArquivosPDFInterno, Dm.GLOBAL_CAMINHO_PDF +
            'img_doc\' + dscadastro.DataSet.FieldByName('id_interno').AsString
            + '.pdf');
        finally
          Dm.MeuPDF.Free;
        end;

      end;
    end
    else
    begin
      if not FileExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
        dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf') then
        showmessage('Não tem acesso para gerar unificação!');
    end;

    UniURLFramePdf.URL := '/logo/logo_fundo.jpg';

    if FileExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
      dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf') then
    begin
      UniURLFramePdf.URL := Dm.GLOBAL_HTTP_PDF + '/img_doc/viewer.html?file=' +
        dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf' +
        '#page=1&zoom=100&time=' + FormatDateTime('yyyymmdhhnnsszzz', Now);

      if Dm.GLOBAL_IDCONEXAO > 0 then
      begin
        try
          Dm.Conexao.ExecuteDirect('update conexao set tela_momento = ' +
            qs('VISUALIZANDO DOC: ' + dscadastro.DataSet.FieldByName
            ('id_interno').AsString + '-' + dscadastro.DataSet.FieldByName
            ('NOME_INTERNO').AsString + ' ARQUIVO:' +dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf') +
            ' where idconexao=' + inttostr(Dm.GLOBAL_IDCONEXAO));
        except
        end;
      end;

    end;

  except
  end;

end;

procedure TFrmDocumentosDigitalizados.UniDBGrid1CellClick
  (Column: TUniDBGridColumn);
begin
  inherited;
  try
    if (FileExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
      DsDocumentoProcessos.DataSet.FieldByName('CAMINHO_DOC').AsString))
    // or (Dm.GLOBAL_HTTP_PDF <> '')
    then
    begin
      UniURLFramePdf.URL := Dm.GLOBAL_HTTP_PDF + '/img_doc/viewer.html?file=' +
        DsDocumentoProcessos.DataSet.FieldByName('CAMINHO_DOC').AsString +
        '#page=1&zoom=100&time=' + FormatDateTime('yyyymmdhhnnsszzz', Now);

      if Dm.GLOBAL_IDCONEXAO > 0 then
      begin
        try
          Dm.Conexao.ExecuteDirect('update conexao set tela_momento = ' +
            qs('VISUALIZANDO DOC: ' + dscadastro.DataSet.FieldByName
            ('id_interno').AsString + '-' + dscadastro.DataSet.FieldByName
            ('NOME_INTERNO').AsString + ' ARQUIVO:' +
            DsDocumentoProcessos.DataSet.FieldByName('CAMINHO_DOC').AsString) +
            ' where idconexao=' + inttostr(Dm.GLOBAL_IDCONEXAO));
        except
        end;
      end;

    end
    else
    begin
      showmessage('Não encontrou o arquivo!');
    end;
  except
  end;

end;

procedure TFrmDocumentosDigitalizados.UniFileUploadPdfCompleted(Sender: TObject;
AStream: TFileStream);
begin

  try
    FrmAguarde.showmodal;

    if not DirectoryExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\') then
      ForceDirectories(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\');

    sPastaDia := FormatDateTime('yyyy-mm-dd', Now);

    if not DirectoryExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' + sPastaDia) then
      ForceDirectories(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' + sPastaDia);

    sNomePDF := MeuGuidCreate;

    if ContemValor('.PDF', UpperCase(AStream.FileName)) then
    begin

      sArquivo := sPastaDia + '\' + sNomePDF + ExtractFileExt(AStream.FileName);
      sCaminhoArquivo := Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' + sArquivo;
      sArquivo := sPastaDia + '/' + sNomePDF + ExtractFileExt(AStream.FileName);

      if CopyFile(PChar(AStream.FileName), PChar(sCaminhoArquivo), False) then
      begin

        CdsDocInsert.Append;
        CdsDocInsert.FieldByName('IDDOCUMENTOS_PROCESSO').AsInteger :=
          Generator('IDDOCUMENTOS_PROCESSO');
        CdsDocInsert.FieldByName('DESCRICAO').AsString :=
          UniEditDescricaoPDF.Text;
        CdsDocInsert.FieldByName('ID_TIPO_DOCUMENTO').AsInteger :=
          UniDBLookupComboBoxTipoDocumento.keyvalue;
        CdsDocInsert.FieldByName('DATA').AsDateTime := Now;
        CdsDocInsert.FieldByName('CAMINHO_DOC').AsString := sArquivo;
        CdsDocInsert.FieldByName('IDFUNCIONARIO').AsInteger :=
          Dm.GLOBAL_ID_FUNCIONARIO;
        CdsDocInsert.FieldByName('ID_INTERNO').AsInteger :=
          dscadastro.DataSet.FieldByName('id_interno').AsInteger;
        CdsDocInsert.Post;
        CdsDocInsert.ApplyUpdates(-1);
        CdsDocInsert.close;
        CdsDocInsert.open;
        CdsDocumentoProcessos.close;
        CdsDocumentoProcessos.open;
        humane.clickToClose(true);

        if Dm.GLOBAL_IDCONEXAO > 0 then
        begin
          try
            Dm.Conexao.ExecuteDirect('update conexao set tela_momento = ' +
              qs('ANEXO DOC: ' + dscadastro.DataSet.FieldByName('id_interno')
              .AsString + '-' + dscadastro.DataSet.FieldByName('NOME_INTERNO')
              .AsString + ' ARQUIVO:' + sArquivo) + ' where idconexao=' +
              inttostr(Dm.GLOBAL_IDCONEXAO));
          except
          end;
        end;

        humane.success
          ('<b><font Color=yellow>Salvo!</font></b><br>O arquivo <b>' +
          UniEditDescricaoPDF.Text + '</b> foi salvo com sucesso!');

        CdsDocumentoProcessos.Last;
        if UniCheckBoxComunicarCentral.Checked then
        begin
          UniBitBtnComunicarCentralClick(nil);
          UniCheckBoxComunicarCentral.Checked := False;
        end;
        UniDBGrid1CellClick(nil);

        UniDBLookupComboBoxTipoDocumento.keyvalue := null;
        UniEditDescricaoPDF.Text := '';

      end
      else
      begin
        showmessage('O documento, não foi salvo!');
        humane.clickToClose(true);
        humane.success
          ('<b><font Color=yellow>Atenção!</font></b><br>O arquivo <b>' +
          UniEditDescricaoPDF.Text + '</b> não foi salvo, tente novamente!');

      end;
    end
    else
    begin
      humane.log('<b><font Color=yellow>Não é PDF!</font></b><br>O arquivo <b>'
        + UniEditDescricaoPDF.Text +
        '</b> não foi salvo, tem que ser formato PDF!');
    end;

  except
  end;

end;

procedure TFrmDocumentosDigitalizados.UniFormCreate(Sender: TObject);
begin
  inherited;

  Editar.Visible := true;
  Salvar.Visible := true;

end;

procedure TFrmDocumentosDigitalizados.UniFormShow(Sender: TObject);
begin
  inherited;
  TabSheetAdvogados.TabVisible := False;
  TabSheetEndereco.TabVisible := False;
  TabSheetHistorico.TabVisible := False;
  TabSheetFotos.TabVisible := False;
  TabSheetMovAnterior.TabVisible := False;
  TabSheetMapa.TabVisible := False;

end;

end.
