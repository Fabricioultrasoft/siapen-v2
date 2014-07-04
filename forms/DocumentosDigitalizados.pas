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
    UniDBGrid1: TUniDBGrid;
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
    procedure UniFormShow(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniBitBtnTodosDigitalizadosClick(Sender: TObject);
    procedure UniFileUploadPdfCompleted(Sender: TObject; AStream: TFileStream);
    procedure UniBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmDocumentosDigitalizados: TFrmDocumentosDigitalizados;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, ServerModule, Lib, Main;

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
    dscadastro.DataSet.FieldByName('id_interno').AsString;
  // + ' order by data ';
  CdsDocumentoProcessos.close;
  CdsDocumentoProcessos.open;

  CdsTipoDocumento.close;
  CdsTipoDocumento.open;

  UniURLFramePdf.URL := '/logo/logo_fundo.jpg';

  UniBitBtnTodosDigitalizadosClick(nil);

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

    sPdf := UniServerModule.StartPath + 'img_doc\' +
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
    if FileExists('img_doc\' + dscadastro.DataSet.FieldByName('id_interno')
      .AsString + '.pdf') then
      DeleteFile('img_doc\' + dscadastro.DataSet.FieldByName('id_interno')
        .AsString + '.pdf');

    try
      pdf := TCPDFSplitMergeObj.Create(self);
      pdf.SetCode('Siapen - V2');
      pdf.Merge(sArquivosPDFInterno, 'img_doc\' + dscadastro.DataSet.FieldByName
        ('id_interno').AsString + '.pdf');
    finally
      pdf.Free;
    end;

  end;

  UniURLFramePdf.URL := '/logo/logo_fundo.jpg';

  if FileExists('img_doc\' + dscadastro.DataSet.FieldByName('id_interno')
    .AsString + '.pdf') then
  begin
    UniURLFramePdf.URL := '/pdf/web/viewer.html?file=' + '../..///img_doc//' +
      dscadastro.DataSet.FieldByName('id_interno').AsString + '.pdf' +
      '#page=1&zoom=100&time=' + FormatDateTime('yyyymmdhhnnsszzz', Now);
  end;

end;

procedure TFrmDocumentosDigitalizados.UniDBGrid1CellClick
  (Column: TUniDBGridColumn);
begin
  inherited;
  if FileExists(UniServerModule.StartPath + 'img_doc\' +
    DsDocumentoProcessos.DataSet.FieldByName('CAMINHO_DOC').AsString) then
  begin
    UniURLFramePdf.URL := '/pdf/web/viewer.html?file=' + '../..///img_doc//' +
      DsDocumentoProcessos.DataSet.FieldByName('CAMINHO_DOC').AsString +
      '#page=1&zoom=100&time=' + FormatDateTime('yyyymmdhhnnsszzz', Now);
  end
  else
  begin
    showmessage('Não encontrou o arquivo!');
  end;

end;

procedure TFrmDocumentosDigitalizados.UniFileUploadPdfCompleted(Sender: TObject;
  AStream: TFileStream);
var
  sCaminhoArquivo, sArquivo, sNomePDF: string;
begin

  if not DirectoryExists(UniServerModule.StartPath + 'img_doc\') then
    ForceDirectories(UniServerModule.StartPath + 'img_doc\');

  sNomePDF := MeuGuidCreate;

  sArquivo := sNomePDF + ExtractFileExt(AStream.FileName);
  sCaminhoArquivo := UniServerModule.StartPath + 'img_doc\' + sArquivo;

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
    CdsDocumentoProcessos.FieldByName('ID_INTERNO').AsInteger :=
      dscadastro.DataSet.FieldByName('id_interno').AsInteger;
    CdsDocumentoProcessos.Post;
    CdsDocumentoProcessos.ApplyUpdates(-1);
    CdsDocumentoProcessos.close;
    CdsDocumentoProcessos.open;

    UniDBLookupComboBoxTipoDocumento.keyvalue := null;
    UniEditDescricaoPDF.Text := '';

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
