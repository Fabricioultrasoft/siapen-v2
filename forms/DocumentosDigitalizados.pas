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
    UniBitBtn4: TUniBitBtn;
    procedure UniFormShow(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniBitBtnTodosDigitalizadosClick(Sender: TObject);
    procedure UniFileUploadPdfCompleted(Sender: TObject; AStream: TFileStream);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniBitBtn4Click(Sender: TObject);
  private
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
    'select * from DOCUMENTOS_PROCESSO where id_interno=' +
    dscadastro.DataSet.FieldByName('id_interno').AsString + ' order by data ';
  // + ' order by data ';
  CdsDocumentoProcessos.close;
  CdsDocumentoProcessos.open;

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
    showmessage('Informe a descri��o do documento!');
    exit;
  end;

  MainForm.UniFileUploadPdf.OnCompleted := UniFileUploadPdfCompleted;
  MainForm.UniFileUploadPdf.Execute;
end;

procedure TFrmDocumentosDigitalizados.UniBitBtn4Click(Sender: TObject);
begin
  inherited;
  //

  MessageDlg('Desassociar este registro:' + CdsDocumentoProcessos.FieldByName
    ('DESCRICAO').AsString + '?', mtWarning, mbYesNo,
    procedure(Result: Integer)
    begin
      if Result = mrYes then
      begin
        try
          CdsDocumentoProcessos.Edit;
          CdsDocumentoProcessos.FieldByName('ID_INTERNO_DELETADO').AsInteger :=
            CdsDocumentoProcessos.FieldByName('ID_INTERNO').AsInteger;
          CdsDocumentoProcessos.FieldByName('ID_INTERNO').AsVariant := null;
          CdsDocumentoProcessos.FieldByName('IDFUNCIONARIO').AsInteger :=
            Dm.GLOBAL_ID_FUNCIONARIO;
          CdsDocumentoProcessos.Post;
          CdsDocumentoProcessos.ApplyUpdates(-1);

          CdsDocumentoProcessos.close;
          CdsDocumentoProcessos.open;

          humane.success
            ('<b><font Color=yellow>Foi desassociado!</font></b><br>Esta desassocia��o pode ser revertida via suporte.');
        except
          on E: Exception do
          begin
            showmessage('Sistema diz: ' + E.Message);
          end;
        end;

      end;

    end);

end;

procedure TFrmDocumentosDigitalizados.UniBitBtnTodosDigitalizadosClick
  (Sender: TObject);
var
  pdf: TCPDFSplitMergeObj;
  sArquivosPDFInterno, sPdf: String;
begin

  sArquivosPDFInterno := '';
  sPdf := '';
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
    if FileExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
      dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf') then
      DeleteFile(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
        dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf');

    try
      pdf := TCPDFSplitMergeObj.Create(self);
      pdf.SetCode('Siapen - V2');
      pdf.Merge(sArquivosPDFInterno, Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
        dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf');
    finally
      pdf.Free;
    end;

  end;

  UniURLFramePdf.URL := '/logo/logo_fundo.jpg';

  if FileExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
    dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf') then
  begin
    UniURLFramePdf.URL := Dm.GLOBAL_HTTP_PDF + '/pdf/web/viewer.html?file=' +
      '../..///img_doc//' + dscadastro.DataSet.FieldByName('id_interno')
      .AsString + '.pdf' + '#page=1&zoom=100&time=' +
      FormatDateTime('yyyymmdhhnnsszzz', Now);
  end;

end;

procedure TFrmDocumentosDigitalizados.UniDBGrid1CellClick
  (Column: TUniDBGridColumn);
begin
  inherited;
  if (FileExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' +
    DsDocumentoProcessos.DataSet.FieldByName('CAMINHO_DOC').AsString))
  // or (Dm.GLOBAL_HTTP_PDF <> '')
  then
  begin
    UniURLFramePdf.URL := Dm.GLOBAL_HTTP_PDF + '/pdf/web/viewer.html?file=' +
      '../..///img_doc//' + DsDocumentoProcessos.DataSet.FieldByName
      ('CAMINHO_DOC').AsString + '#page=1&zoom=100&time=' +
      FormatDateTime('yyyymmdhhnnsszzz', Now);
  end
  else
  begin
    showmessage('N�o encontrou o arquivo!');
  end;

end;

procedure TFrmDocumentosDigitalizados.UniFileUploadPdfCompleted(Sender: TObject;
AStream: TFileStream);
var
  sCaminhoArquivo, sArquivo, sNomePDF: string;
begin

  FrmAguarde.showmodal;

  if not DirectoryExists(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\') then
    ForceDirectories(Dm.GLOBAL_CAMINHO_PDF + 'img_doc\');

  sNomePDF := MeuGuidCreate;

  sArquivo := sNomePDF + ExtractFileExt(AStream.FileName);
  sCaminhoArquivo := Dm.GLOBAL_CAMINHO_PDF + 'img_doc\' + sArquivo;

  if CopyFile(PChar(AStream.FileName), PChar(sCaminhoArquivo), False) then
  begin

    CdsDocumentoProcessos.Append;
    CdsDocumentoProcessos.FieldByName('IDDOCUMENTOS_PROCESSO').AsInteger :=
      Generator('IDDOCUMENTOS_PROCESSO');
    CdsDocumentoProcessos.FieldByName('DESCRICAO').AsString :=
      UniEditDescricaoPDF.Text;
    CdsDocumentoProcessos.FieldByName('ID_TIPO_DOCUMENTO').AsInteger :=
      UniDBLookupComboBoxTipoDocumento.keyvalue;
    CdsDocumentoProcessos.FieldByName('DATA').AsDateTime := Now;
    CdsDocumentoProcessos.FieldByName('CAMINHO_DOC').AsString := sArquivo;
    CdsDocumentoProcessos.FieldByName('IDFUNCIONARIO').AsInteger :=
      Dm.GLOBAL_ID_FUNCIONARIO;
    CdsDocumentoProcessos.FieldByName('ID_INTERNO').AsInteger :=
      dscadastro.DataSet.FieldByName('id_interno').AsInteger;
    CdsDocumentoProcessos.Post;
    CdsDocumentoProcessos.ApplyUpdates(-1);
    CdsDocumentoProcessos.close;
    CdsDocumentoProcessos.open;
    CdsDocumentoProcessos.Last;
    UniDBGrid1CellClick(nil);

    humane.clickToClose(true);
    humane.success('<b><font Color=yellow>Salvo!</font></b><br>O arquivo <b>' +
      UniEditDescricaoPDF.Text + '</b> foi salvo com sucesso!');

    UniDBLookupComboBoxTipoDocumento.keyvalue := null;
    UniEditDescricaoPDF.Text := '';

  end
  else
  begin
    showmessage('O documento, n�o foi salvo!');
    humane.clickToClose(true);
    humane.success('<b><font Color=yellow>Aten��o!</font></b><br>O arquivo <b>'
      + UniEditDescricaoPDF.Text + '</b> n�o foi salvo, tente novamente!');

  end;

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
