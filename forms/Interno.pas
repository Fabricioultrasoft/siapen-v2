unit Interno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, ModeloCadastro, Data.FMTBcd, Data.DB, MemDS,
  DBAccess, Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniButton, uniBitBtn, uniEdit, uniPageControl, uniToolBar, uniLabel,
  uniImage, uniPanel, uniDBNavigator,
  uniDateTimePicker, uniDBMemo, uniMemo, uniDBComboBox, uniDBImage,
  uniMultiItem, uniComboBox, uniDBLookupComboBox, uniDBEdit, uniSpeedButton,
  uniCheckBox, uniDBCheckBox, Vcl.Imaging.jpeg, uniRadioGroup, uniFileUpload,
  uniDBDateTimePicker;

const
  SqlConstanteInterno: string = 'SELECT FIRST 1 INTERNO.* ';

type
  TFrmInterno = class(TFrmModeloCadastro)
    SqlConsultaBackup: TSQLQuery;
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlFilhos: TSQLQuery;
    DspFilhos: TDataSetProvider;
    CdsFilhos: TClientDataSet;
    CdsFilhosIDFILHOS: TIntegerField;
    CdsFilhosNOME: TStringField;
    CdsFilhosDATA_NASCIMENTO: TSQLTimeStampField;
    CdsFilhosESCOLA: TStringField;
    CdsFilhosENDERECO: TStringField;
    CdsFilhosIDCIDADE: TIntegerField;
    CdsFilhosNOME_MAE: TStringField;
    CdsFilhosIDINTERNO: TIntegerField;
    DsFilhos: TDataSource;
    SQLHISTORICO_interno: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    DSHISTORICO_interno: TDataSource;
    SqlFoto: TSQLQuery;
    DspFoto: TDataSetProvider;
    CdsFoto: TClientDataSet;
    DsFoto: TDataSource;
    SqlLista: TSQLQuery;
    DspLista: TDataSetProvider;
    CdsLista: TClientDataSet;
    DsLista: TDataSource;
    SqlSelectInternoInativo: TSQLQuery;
    SqlSelectInterno: TSQLQuery;
    SQLadvogadointerno: TSQLQuery;
    dspadvogadointerno: TDataSetProvider;
    cdsadvogadointerno: TClientDataSet;
    cdsadvogadointernoADVOGADOESCRITRIO: TStringField;
    cdsadvogadointernoID_ADVOGADOS_INTERNOS: TIntegerField;
    cdsadvogadointernoID_ADVOGADO: TIntegerField;
    cdsadvogadointernoID_INTERNO: TIntegerField;
    cdsadvogadointernoOBSADVOGADO_INTERNO: TStringField;
    dsADVOGADO_INTERNO: TDataSource;
    PageControlInterno: TUniPageControl;
    TabSheetPrincipal: TUniTabSheet;
    Label2: TUniLabel;
    Label3: TUniLabel;
    Label4: TUniLabel;
    Label10: TUniLabel;
    Label12: TUniLabel;
    Label40: TUniLabel;
    Label45: TUniLabel;
    Label43: TUniLabel;
    Label46: TUniLabel;
    Label27: TUniLabel;
    Label36: TUniLabel;
    Label55: TUniLabel;
    Label65: TUniLabel;
    Label66: TUniLabel;
    Label163: TUniLabel;
    lbl1: TUniLabel;
    Label38: TUniLabel;
    Label49: TUniLabel;
    Label62: TUniLabel;
    Label78: TUniLabel;
    Label79: TUniLabel;
    Label80: TUniLabel;
    Label82: TUniLabel;
    Label83: TUniLabel;
    Label67: TUniLabel;
    Label18: TUniLabel;
    Label51: TUniLabel;
    Label57: TUniLabel;
    Label58: TUniLabel;
    Label60: TUniLabel;
    DBEditCodigo: TUniDBEdit;
    DBEdit2: TUniDBEdit;
    DBEdit3: TUniDBEdit;
    DBEdit7: TUniDBEdit;
    DBLookupComboBox2: TUniDBLookupComboBox;
    DBEdit24: TUniDBEdit;
    DBEdit25: TUniDBEdit;
    DBEdit29: TUniDBEdit;
    DBEdit35: TUniDBEdit;
    DBComboBox3: TUniDBComboBox;
    DBEdit86: TUniDBEdit;
    DBComboBox2: TUniDBComboBox;
    DBEdit19: TUniDBEdit;
    DBEdit28: TUniDBEdit;
    DBEdit31: TUniDBEdit;
    DBEdit33: TUniDBEdit;
    DBComboBox5: TUniDBComboBox;
    DBComboBoxpericulosidade: TUniDBComboBox;
    DBEdit36: TUniDBEdit;
    DBEdit84: TUniDBEdit;
    DBEdit8: TUniDBEdit;
    DBComboBox6: TUniDBComboBox;
    TabSheetDadosGerais: TUniTabSheet;
    Label11: TUniLabel;
    Label19: TUniLabel;
    Label21: TUniLabel;
    Label22: TUniLabel;
    Label23: TUniLabel;
    Label20: TUniLabel;
    Label37: TUniLabel;
    Label41: TUniLabel;
    Label42: TUniLabel;
    Label13: TUniLabel;
    Label5: TUniLabel;
    Label24: TUniLabel;
    Label25: TUniLabel;
    Label26: TUniLabel;
    Label39: TUniLabel;
    Label47: TUniLabel;
    Label52: TUniLabel;
    Label56: TUniLabel;
    Label63: TUniLabel;
    Label64: TUniLabel;
    Label149: TUniLabel;
    Label48: TUniLabel;
    Label77: TUniLabel;
    DBEdit1: TUniDBEdit;
    DBEdit5: TUniDBEdit;
    DBEdit21: TUniDBEdit;
    DBEdit22: TUniDBEdit;
    DBEditrg: TUniDBEdit;
    DBEditCPF: TUniDBEdit;
    DBEdit23: TUniDBEdit;
    DBComboBox1: TUniDBComboBox;
    DBEdit26: TUniDBEdit;
    DBEdit27: TUniDBEdit;
    DBEdit30: TUniDBEdit;
    DBEdit32: TUniDBEdit;
    DBEdit34: TUniDBEdit;
    DBEdit83: TUniDBEdit;
    DBEdit4: TUniDBEdit;
    DBEdit20: TUniDBEdit;
    DBComboBox4: TUniDBComboBox;
    TabSheetAdvogados: TUniTabSheet;
    lbl3: TUniLabel;
    Label50: TUniLabel;
    Button2: TUniButton;
    Memoobsadvogado: TUniMemo;
    DBGrid3: TUniDBGrid;
    Button3: TUniButton;
    TabSheetEndereco: TUniTabSheet;
    Label28: TUniLabel;
    Label29: TUniLabel;
    Label30: TUniLabel;
    Label31: TUniLabel;
    Label32: TUniLabel;
    Label33: TUniLabel;
    Label34: TUniLabel;
    Label35: TUniLabel;
    lbl2: TUniLabel;
    DBEdit10: TUniDBEdit;
    DBEdit11: TUniDBEdit;
    DBEdit12: TUniDBEdit;
    DBEdit13: TUniDBEdit;
    DBEditcep: TUniDBEdit;
    DBEditfone: TUniDBEdit;
    DBEdit17: TUniDBEdit;
    TabSheetHistorico: TUniTabSheet;
    Label53: TUniLabel;
    Label54: TUniLabel;
    DBGrid1: TUniDBGrid;
    Button1: TUniButton;
    DBMemo1: TUniDBMemo;
    MemoDescricao: TUniMemo;
    DateTimePickerHistorico: TUniDateTimePicker;
    TabSheetFotos: TUniTabSheet;
    FOTO: TUniLabel;
    Label6: TUniLabel;
    Label7: TUniLabel;
    Label8: TUniLabel;
    Label9: TUniLabel;
    Label14: TUniLabel;
    Label15: TUniLabel;
    DBNavigator3: TUniDBNavigator;
    TabSheetMovAnterior: TUniTabSheet;
    DBMemo2: TUniDBMemo;
    TabSheetMapa: TUniTabSheet;
    Label61: TUniLabel;
    Label70: TUniLabel;
    Label71: TUniLabel;
    Label72: TUniLabel;
    Label75: TUniLabel;
    Label81: TUniLabel;
    Label85: TUniLabel;
    Label84: TUniLabel;
    Label86: TUniLabel;
    Label87: TUniLabel;
    Label88: TUniLabel;
    Label89: TUniLabel;
    DBEdit15: TUniDBEdit;
    DBEdit16: TUniDBEdit;
    DBComboBox7: TUniDBComboBox;
    DBEdit18: TUniDBEdit;
    DBEdit37: TUniDBEdit;
    DBEdit38: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBComboBoxSexo: TUniDBComboBox;
    UniLabel1: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    UniDBCheckBoxStatus: TUniDBCheckBox;
    UniLabel3: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniRadioGroupStatus: TUniRadioGroup;
    UniPanelFoto: TUniPanel;
    Label17: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    Label44: TUniLabel;
    DBEdit6: TUniDBEdit;
    DBGrid4: TUniDBGrid;
    Label16: TUniLabel;
    UniLabel4: TUniLabel;
    dsdataservidor: TDataSource;
    dstdataservidor: TDataSetProvider;
    SQLdataservidor: TSQLQuery;
    cdsdataservidor: TClientDataSet;
    UniPanel1: TUniPanel;
    DBImageFOTOPERFIL: TUniDBImage;
    UniPanel2: TUniPanel;
    DBImagetatuagem1: TUniDBImage;
    UniPanel3: TUniPanel;
    DBImageFOTO_SINAIS: TUniDBImage;
    UniPanel4: TUniPanel;
    DBImageFOTO_SINAIS1: TUniDBImage;
    UniPanel5: TUniPanel;
    UniPanel6: TUniPanel;
    UniPanel7: TUniPanel;
    DBImageFOTO_SINAIS2: TUniDBImage;
    DBImageFOTO_SINAIS3: TUniDBImage;
    DBImageFOTO_SINAIS4: TUniDBImage;
    UniPanel8: TUniPanel;
    DBImageOutras: TUniDBImage;
    UniLabelProcedencia: TUniLabel;
    UniBitBtnProcedencia: TUniBitBtn;
    UniDBEditProcedencia: TUniDBEdit;
    UniLabelFaccao: TUniLabel;
    UniBitBtnFaccao: TUniBitBtn;
    UniDBEditFaccao: TUniDBEdit;
    UniDBEditCondicao: TUniDBEdit;
    UniBitBtnCondicao: TUniBitBtn;
    UniLabelCondicao: TUniLabel;
    UniDBEditOrigem: TUniDBEdit;
    UniBitBtnOrigem: TUniBitBtn;
    UniLabelOrigem: TUniLabel;
    UniDBEditPresidioOrigem: TUniDBEdit;
    UniBitBtnPresidioOrigem: TUniBitBtn;
    UniLabelPresidioOrigem: TUniLabel;
    UniBitBtnNaturalidade: TUniBitBtn;
    UniLabelNaturalidade: TUniLabel;
    UniDBEditNaturalidade: TUniDBEdit;
    UniLabelNacionalidade: TUniLabel;
    UniBitBtnNacionalidade: TUniBitBtn;
    UniDBEditNacionalidade: TUniDBEdit;
    UniDBEditRaca: TUniDBEdit;
    UniBitBtnRaca: TUniBitBtn;
    UniLabelRaca: TUniLabel;
    UniDBEditProfissao: TUniDBEdit;
    UniBitBtnProfissao: TUniBitBtn;
    UniLabelProfissao: TUniLabel;
    UniDBEditEscolaridade: TUniDBEdit;
    UniBitBtnEscolaridade: TUniBitBtn;
    UniLabelEscolaridade: TUniLabel;
    UniDBEditAdvogado: TUniDBEdit;
    UniBitBtnAdvogado: TUniBitBtn;
    UniLabelAdvogado: TUniLabel;
    UniDBEditCidade: TUniDBEdit;
    UniBitBtnCidade: TUniBitBtn;
    UniLabelCidade: TUniLabel;
    UniDBEditPais: TUniDBEdit;
    UniBitBtnPais: TUniBitBtn;
    UniLabelPais: TUniLabel;
    UniPanel9: TUniPanel;
    DBImageFOTOInterno: TUniDBImage;
    UniLabelNaturalidade2: TUniLabel;
    UniLabelCidade2: TUniLabel;
    UniLabelEscolaridade2: TUniLabel;
    UniDBImage1: TUniDBImage;
    UniLabelOrigem2: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    UniDBEditOrigem2: TUniDBEdit;
    UniBitBtnNaturalidade2: TUniBitBtn;
    UniDBEditNaturalidade2: TUniDBEdit;
    UniDBEditCidade2: TUniDBEdit;
    UniBitBtn2: TUniBitBtn;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniDBDateTimePicker3: TUniDBDateTimePicker;
    UniDBDateTimePicker4: TUniDBDateTimePicker;
    UniDBDateTimePicker5: TUniDBDateTimePicker;
    UniDBDateTimePicker6: TUniDBDateTimePicker;
    UniDBDateTimePicker7: TUniDBDateTimePicker;
    procedure EditLocalizarChange(Sender: TObject);
    procedure UniBtnFiltrarClick(Sender: TObject);
    procedure EditLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditarClick(Sender: TObject);
    procedure DBImageFOTOInternoClick(Sender: TObject);
    procedure DsFotoDataChange(Sender: TObject; Field: TField);
    procedure DBImageFOTOPERFILClick(Sender: TObject);
    procedure DBImageFOTO_SINAISClick(Sender: TObject);
    procedure DBImageFOTO_SINAIS1Click(Sender: TObject);
    procedure DBImageFOTO_SINAIS2Click(Sender: TObject);
    procedure DBImageFOTO_SINAIS3Click(Sender: TObject);
    procedure DBImageFOTO_SINAIS4Click(Sender: TObject);
    procedure UniFileUploadOutrasFotosCompleted(Sender: TObject;
      AStream: TFileStream);
    procedure DBImageOutrasClick(Sender: TObject);
    procedure CdsFotoAfterInsert(DataSet: TDataSet);
    procedure NovoClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniFormCreate(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure DBImagetatuagem1Click(Sender: TObject);
    procedure UniBitBtnProcedenciaClick(Sender: TObject);
    procedure UniDBEditProcedenciaExit(Sender: TObject);
    procedure UniDBEditFaccaoExit(Sender: TObject);
    procedure UniBitBtnFaccaoClick(Sender: TObject);
    procedure UniDBEditCondicaoExit(Sender: TObject);
    procedure UniBitBtnCondicaoClick(Sender: TObject);
    procedure UniDBEditOrigemExit(Sender: TObject);
    procedure UniBitBtnOrigemClick(Sender: TObject);
    procedure UniDBEditPresidioOrigemExit(Sender: TObject);
    procedure UniBitBtnPresidioOrigemClick(Sender: TObject);
    procedure UniDBEditNaturalidadeExit(Sender: TObject);
    procedure UniBitBtnNaturalidadeClick(Sender: TObject);
    procedure UniDBEditNacionalidadeExit(Sender: TObject);
    procedure UniBitBtnNacionalidadeClick(Sender: TObject);
    procedure UniDBEditRacaExit(Sender: TObject);
    procedure UniBitBtnRacaClick(Sender: TObject);
    procedure UniDBEditEscolaridadeExit(Sender: TObject);
    procedure UniBitBtnEscolaridadeClick(Sender: TObject);
    procedure UniDBEditProfissaoExit(Sender: TObject);
    procedure UniBitBtnProfissaoClick(Sender: TObject);
    procedure UniDBEditAdvogadoExit(Sender: TObject);
    procedure UniBitBtnAdvogadoClick(Sender: TObject);
    procedure UniDBEditCidadeExit(Sender: TObject);
    procedure UniBitBtnCidadeClick(Sender: TObject);
    procedure UniDBEditPaisExit(Sender: TObject);
    procedure UniBitBtnPaisClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    sNomeCampoFoto: string;
    FID_INTERNO: Integer;
    procedure AbrirTabelas;
    procedure Procedencia;
    { Private declarations }
  public
    property ID_INTERNO: Integer read FID_INTERNO write FID_INTERNO;
    { Public declarations }
  end;

function FrmInterno: TFrmInterno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, Lib, ServerModule, Main,
  UniEditFormat, Aguarde, Consulta;

function FrmInterno: TFrmInterno;
begin
  Result := TFrmInterno(UniMainModule.GetFormInstance(TFrmInterno));
end;

procedure TFrmInterno.Button1Click(Sender: TObject);
begin
  inherited;

  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger :=
    Generator('idhistorico_interno');
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.DateTime);
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString :=
    MemoDescricao.Lines.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Inclus�o';
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    dm.GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;

  TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);

  MemoDescricao.Lines.Clear;

end;

procedure TFrmInterno.Button2Click(Sender: TObject);
begin
  inherited;

  if UniDBEditAdvogado.Field.AsInteger <= 0 then
  begin
    ShowMessage('Informe o Advogado/Escrit�rio.');
    exit;
  end;

  MessageDlg('Contituir este Advogado/Escrit�rio?', mtConfirmation, mbYesNo,
    procedure(Res: Integer)
    begin
      if Res = mrYes then
      begin
        dsADVOGADO_INTERNO.DataSet.close;
        dsADVOGADO_INTERNO.DataSet.Open;

        dsADVOGADO_INTERNO.DataSet.Append;
        dsADVOGADO_INTERNO.DataSet.fieldbyname('id_ADVOGADOs_INTERNOs')
          .AsInteger := 0;
        dsADVOGADO_INTERNO.DataSet.fieldbyname('id_interno').AsInteger :=
          DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
        dsADVOGADO_INTERNO.DataSet.fieldbyname('OBSadvogado_interno').AsString
          := Memoobsadvogado.Lines.Text;
        dsADVOGADO_INTERNO.DataSet.fieldbyname('ID_ADVOGADO').AsInteger :=
          UniDBEditAdvogado.Field.AsInteger;
        dsADVOGADO_INTERNO.DataSet.Post;

        DSHISTORICO_interno.DataSet.Append;
        DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno')
          .AsInteger := 0;
        DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
          DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
        DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := Date;
        DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString :=
          'Constituiu o Advogado/Escrit�rio: ' + UniLabelAdvogado.Caption +
          ', Obs: ' + Memoobsadvogado.Lines.Text;
        DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Jur�dico';
        DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
          dm.GLOBAL_ID_FUNCIONARIO;
        DSHISTORICO_interno.DataSet.Post;

        Memoobsadvogado.Lines.Clear;
        UniDBEditAdvogado.Field.AsVariant := null;
        UniDBEditAdvogadoExit(nil);

      end;
    end);

end;

procedure TFrmInterno.Button3Click(Sender: TObject);
begin
  inherited;
  if dsADVOGADO_INTERNO.DataSet.IsEmpty then
    exit;

  MessageDlg('Descontituir o Advogado/Escrit�rio?', mtConfirmation, mbYesNo,
    procedure(Res: Integer)
    begin
      if Res = mrYes then
      begin
        DSHISTORICO_interno.DataSet.Append;
        DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno')
          .AsInteger := 0;
        DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
          DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
        DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := Date;
        DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString :=
          'Desconstituiu o Advogado/Escrit�rio: ' +
          dsADVOGADO_INTERNO.DataSet.fieldbyname('ADVOGADO/ESCRIT�RIO')
          .AsString + '.';
        DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Jur�dico';
        DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
          dm.GLOBAL_ID_FUNCIONARIO;
        DSHISTORICO_interno.DataSet.Post;

        dsADVOGADO_INTERNO.DataSet.Delete;
      end;
    end);

end;

procedure TFrmInterno.CdsFotoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('IDFOTO_INTERNO').AsInteger := 0;
  DataSet.fieldbyname('DESCRICAO').AsString := 'FOTO';
  DataSet.fieldbyname('ID_INTERNO').AsInteger := DsCadastro.DataSet.fieldbyname
    ('id_interno').AsInteger;
  DataSet.fieldbyname('DATA').AsDateTime := Date;

end;

procedure TFrmInterno.DBGrid1CellClick(Column: TUniDBGridColumn);
var
  ontem: TDateTime;
  amanha: TDateTime;
  data_servidor: TDateTime;
begin
  inherited;

  data_servidor := now;
  ontem := data_servidor - 1;
  amanha := data_servidor + 1;

  if (DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime > ontem)
    and (DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime <
    amanha) then
  begin
    DBMemo1.ReadOnly := False;
  end
  else
    DBMemo1.ReadOnly := True;

end;

procedure TFrmInterno.DBGridConsultaDblClick(Sender: TObject);
begin
  // inherited;
  PageControlModeloCadastro.ActivePageIndex := 0;
  Editar.OnClick(nil);
end;

procedure TFrmInterno.DBImageFOTOInternoClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    MainForm.NomeImagemUpload := 'FOTO-idinterno-' +
      DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsString;
    MainForm.NomeCampoUpload := TUniDBImage(Sender).DataField;
    MainForm.DsUploadImagem := DsCadastro;
    MainForm.UniFileUploadImagem.Execute;
  end;
end;

procedure TFrmInterno.DBImageFOTOPERFILClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    MainForm.NomeImagemUpload := 'FOTOPERFIL-idinterno-' +
      DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsString;
    MainForm.NomeCampoUpload := TUniDBImage(Sender).DataField;
    MainForm.DsUploadImagem := DsCadastro;
    MainForm.UniFileUploadImagem.Execute;
  end;

end;

procedure TFrmInterno.DBImageFOTO_SINAIS1Click(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    MainForm.NomeImagemUpload := 'FOTO_SINAIS1-idinterno-' +
      DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsString;
    MainForm.NomeCampoUpload := TUniDBImage(Sender).DataField;
    MainForm.DsUploadImagem := DsCadastro;
    MainForm.UniFileUploadImagem.Execute;
  end;

end;

procedure TFrmInterno.DBImageFOTO_SINAIS2Click(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    MainForm.NomeImagemUpload := 'FOTO_SINAIS2-idinterno-' +
      DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsString;
    MainForm.NomeCampoUpload := TUniDBImage(Sender).DataField;
    MainForm.DsUploadImagem := DsCadastro;
    MainForm.UniFileUploadImagem.Execute;
  end;

end;

procedure TFrmInterno.DBImageFOTO_SINAIS3Click(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    MainForm.NomeImagemUpload := 'FOTO_SINAIS3-idinterno-' +
      DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsString;
    MainForm.NomeCampoUpload := TUniDBImage(Sender).DataField;
    MainForm.DsUploadImagem := DsCadastro;
    MainForm.UniFileUploadImagem.Execute;
  end;

end;

procedure TFrmInterno.DBImageFOTO_SINAIS4Click(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    MainForm.NomeImagemUpload := 'FOTO_SINAIS4-idinterno-' +
      DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsString;
    MainForm.NomeCampoUpload := TUniDBImage(Sender).DataField;
    MainForm.DsUploadImagem := DsCadastro;
    MainForm.UniFileUploadImagem.Execute;
  end;
end;

procedure TFrmInterno.DBImageFOTO_SINAISClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    MainForm.NomeImagemUpload := 'FOTO_SINAIS-idinterno-' +
      DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsString;
    MainForm.NomeCampoUpload := TUniDBImage(Sender).DataField;
    MainForm.DsUploadImagem := DsCadastro;
    MainForm.UniFileUploadImagem.Execute;
  end;

end;

procedure TFrmInterno.DBImageOutrasClick(Sender: TObject);
begin
  inherited;
  if DsFoto.DataSet.State in [dsedit, dsinsert] then
  begin
    MainForm.NomeImagemUpload := 'OUTRAS_FOTOS-idinterno-' +
      FormatDateTime('DDMMYYYYMMSSZZZ', now) + DsCadastro.DataSet.fieldbyname
      ('ID_INTERNO').AsString;
    MainForm.NomeCampoUpload := TUniDBImage(Sender).DataField;
    MainForm.DsUploadImagem := DsFoto;
    MainForm.UniFileUploadImagem.Execute;
  end;

end;

procedure TFrmInterno.DBImagetatuagem1Click(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    MainForm.NomeImagemUpload := 'FOTO_TATUAGEM-idinterno-' +
      DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsString;
    MainForm.NomeCampoUpload := TUniDBImage(Sender).DataField;
    MainForm.DsUploadImagem := DsCadastro;
    MainForm.UniFileUploadImagem.Execute;
  end;

end;

procedure TFrmInterno.DsFotoDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CdsFoto.Active then
  begin
    UniPanelFoto.Enabled := (CdsFoto.State in [dsedit, dsinsert]);
  end;

end;

procedure TFrmInterno.EditarClick(Sender: TObject);
begin
  PageControlInterno.ActivePageIndex := 0;
  AbrirTabelas;
  if CdsConsulta.Active then
  begin
    if not CdsConsulta.IsEmpty then
    begin
      if SqlCadastro.Tag <> CdsConsulta.fieldbyname('ID_INTERNO').AsInteger then
      begin
        SqlCadastro.Tag := CdsConsulta.fieldbyname('ID_INTERNO').AsInteger;

        SqlCadastro.SQL.Text := SqlConstanteInterno +
          ' FROM INTERNO WHERE INTERNO.ID_INTERNO=' + CdsConsulta.fieldbyname
          ('ID_INTERNO').AsString;

        CdsCadastro.close;
        CdsCadastro.Open;
        PageControlModeloCadastro.ActivePageIndex := 0;

        SqlFoto.ParamByName('id_interno').AsInteger :=
          DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;

        DsFoto.DataSet.close;
        DsFoto.DataSet.Open;

      end;
    end;
  end;

  inherited;

  UniDBEditProcedenciaExit(nil);
  UniDBEditFaccaoExit(nil);
  UniDBEditCondicaoExit(nil);
  UniDBEditOrigemExit(nil);
  UniDBEditPresidioOrigemExit(nil);
  UniDBEditNaturalidadeExit(nil);
  UniDBEditNacionalidadeExit(nil);
  UniDBEditRacaExit(nil);
  UniDBEditEscolaridadeExit(nil);
  UniDBEditProfissaoExit(nil);
  UniDBEditAdvogadoExit(nil);
  UniDBEditCidadeExit(nil);
  UniDBEditPaisExit(nil);
  DBEdit2.SetFocus;

  StatusBar1.Panels[1].Text := CdsCADASTRO.fieldbyname('NOME_INTERNO').AsString;

end;

procedure TFrmInterno.EditLocalizarChange(Sender: TObject);
begin
  // inherited;

end;

procedure TFrmInterno.EditLocalizarKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    UniBtnFiltrarClick(nil);
  end;

end;

procedure TFrmInterno.NovoClick(Sender: TObject);
begin
  inherited;
  dm.SqlExecute.SQL.Text :=
    'select gen_id (cod_up, 0) || gen_id (ID_INTERNO, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.close;
  dm.DsExecute.DataSet.Open;
  DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger :=
    dm.DsExecute.DataSet.fieldbyname('ID').AsInteger;
  dm.DsExecute.DataSet.close;

  PageControlInterno.ActivePageIndex := 0;
  DsCadastro.DataSet.fieldbyname('DATA_ENTRADA').AsDateTime := Date;
  DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger := dm.GLOBAL_ID_UP;
  DsCadastro.DataSet.fieldbyname('SEXO').AsString := 'M';
  DsCadastro.DataSet.fieldbyname('ST').AsString := 'A';

  SqlFoto.ParamByName('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname
    ('id_interno').AsInteger;

  DsFoto.DataSet.close;
  DsFoto.DataSet.Open;

  DBEdit2.SetFocus;

end;

procedure TFrmInterno.SalvarClick(Sender: TObject);
begin
  DsCadastro.DataSet.fieldbyname('id_up').AsInteger := dm.GLOBAL_ID_UP;
  DsCadastro.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    dm.GLOBAL_ID_FUNCIONARIO;

  if DsCadastro.DataSet.State in [dsinsert] then
  begin
    if VerificaInternoExiste(DsCadastro.DataSet.fieldbyname('nome_interno')
      .AsString, DsCadastro.DataSet.fieldbyname('mae').AsString) then
    begin
      ShowMessage
        ('Nome de interno com este Nome de M�e, j� existe no confere!');
      exit;
    end;
  end;

  inherited;

end;

procedure TFrmInterno.UniBitBtnAdvogadoClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_Advogado codigo, Advogado descricao from Advogado ' +
      ' order by Advogado ';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditAdvogado.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelAdvogado.Caption := FrmConsulta.DsCadastro.DataSet.fieldbyname
            ('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditAdvogado.Focused then
            UniDBEditAdvogado.SetFocus;
        end;
      end);
  end;

end;

procedure TFrmInterno.UniBitBtnCidadeClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' +
      ' order by cidade, uf';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditCidade.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelCidade.Caption := FrmConsulta.DsCadastro.DataSet.fieldbyname
            ('DESCRICAO').AsString;
          UniLabelCidade2.Caption := FrmConsulta.DsCadastro.DataSet.fieldbyname
            ('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditCidade.Focused then
            UniDBEditCidade.SetFocus;
          if UniDBEditCidade2.Focused then
            UniDBEditCidade2.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnCondicaoClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select idcondicao_interno codigo, descricao from condicao_interno' +
      ' order by descricao';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditCondicao.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelCondicao.Caption := FrmConsulta.DsCadastro.DataSet.fieldbyname
            ('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditCondicao.Focused then
            UniDBEditCondicao.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnEscolaridadeClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_Escolaridade CODIGO, Escolaridade DESCRICAO from Escolaridade '
      + ' order by Escolaridade ';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditEscolaridade.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelEscolaridade.Caption :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('DESCRICAO').AsString;
          UniLabelEscolaridade2.Caption :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditEscolaridade.Focused then
            UniDBEditEscolaridade.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnFaccaoClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_faccao CODIGO, faccao descricao from faccao' +
      ' order by faccao';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditFaccao.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelFaccao.Caption := FrmConsulta.DsCadastro.DataSet.fieldbyname
            ('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditFaccao.Focused then
            UniDBEditFaccao.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnNacionalidadeClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_nacionalidade codigo, nacionalidade descricao from nacionalidade '
      + ' order by nacionalidade ';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditNacionalidade.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelNacionalidade.Caption :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditNacionalidade.Focused then
            UniDBEditNacionalidade.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnNaturalidadeClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' +
      ' order by cidade, uf';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditNaturalidade.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelNaturalidade.Caption :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('DESCRICAO').AsString;
          UniLabelNaturalidade2.Caption :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditNaturalidade.Focused then
            UniDBEditNaturalidade.SetFocus;
          if UniDBEditNaturalidade2.Focused then
            UniDBEditNaturalidade2.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnOrigemClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' +
      ' order by cidade, uf';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditOrigem.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;

          UniLabelOrigem.Caption := FrmConsulta.DsCadastro.DataSet.fieldbyname
            ('DESCRICAO').AsString;
          UniLabelOrigem2.Caption := FrmConsulta.DsCadastro.DataSet.fieldbyname
            ('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditOrigem.Focused then
            UniDBEditOrigem.SetFocus;

          if UniDBEditOrigem2.Focused then
            UniDBEditOrigem2.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnPaisClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_nacionalidade codigo, nacionalidade descricao from nacionalidade '
      + ' order by nacionalidade ';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditPais.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelPais.Caption := FrmConsulta.DsCadastro.DataSet.fieldbyname
            ('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditPais.Focused then
            UniDBEditPais.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnPresidioOrigemClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'SELECT ID_PROCEDENCIA CODIGO, IIF(CAPITAL=''S'',PROEDENCIA||'' - CAPITAL'',PROEDENCIA||'' - INTERIOR'') AS DESCRICAO  FROM PROCEDENCIA'
      + ' order by proedencia';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditPresidioOrigem.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelPresidioOrigem.Caption :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditPresidioOrigem.Focused then
            UniDBEditPresidioOrigem.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnProcedenciaClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'SELECT ID_PROCEDENCIA CODIGO, IIF(CAPITAL=''S'',PROEDENCIA||'' - CAPITAL'',PROEDENCIA||'' - INTERIOR'') AS DESCRICAO  FROM PROCEDENCIA'
      + ' order by proedencia';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditProcedencia.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelProcedencia.Caption :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditProcedencia.Focused then
            UniDBEditProcedencia.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBitBtnProfissaoClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_Profissao codigo, Profissao descricao from Profissao ' +
      ' order by Profissao ';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditProfissao.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelProfissao.Caption :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditProfissao.Focused then
            UniDBEditProfissao.SetFocus;
        end;
      end);
  end;
end;

procedure TFrmInterno.UniBitBtnRacaClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    FrmConsulta.SqlCadastro.SQL.Text :=
      'select id_raca CODIGO, raca DESCRICAO from raca ' + ' order by raca ';

    FrmConsulta.Coluna := 1;
    FrmConsulta.Height := Self.Height;
    FrmConsulta.Width := Self.Width;
    FrmConsulta.Top := Self.Top;
    FrmConsulta.Left := Self.Left;
    FrmConsulta.DsCadastro.DataSet.close;
    FrmConsulta.DsCadastro.DataSet.Open;
    FrmConsulta.EditLocalizar.SetFocus;
    FrmConsulta.ShowModal(
      procedure(Result: Integer)
      begin
        if Result = mrOk then
        begin
          UniDBEditRaca.Field.AsInteger :=
            FrmConsulta.DsCadastro.DataSet.fieldbyname('CODIGO').AsInteger;
          UniLabelRaca.Caption := FrmConsulta.DsCadastro.DataSet.fieldbyname
            ('DESCRICAO').AsString;
          FrmConsulta.SqlCadastro.SQL.Text := '';
          FrmConsulta.DsCadastro.DataSet.close;
          FrmConsulta.DBGridConsulta.Columns.Clear;
          FrmConsulta.EditLocalizar.Text := '';
          if UniDBEditRaca.Focused then
            UniDBEditRaca.SetFocus;
        end;
      end);

  end;

end;

procedure TFrmInterno.UniBtnFiltrarClick(Sender: TObject);
var
  Status, Campo: string;
begin
  // inherited;

  case UniRadioGroupStatus.ItemIndex of
    0:
      Status := ' and interno.st = ''A'' ';
    1:
      Status := ' ';
  end;

  Campo := 'NOME_INTERNO';

  if FID_INTERNO > 0 then
  begin
    SqlConsulta.SQL.Text := SqlConsultaBackup.SQL.Text +
      ' and INTERNO.ID_INTERNO=' + inttostr(FID_INTERNO) +
      ' order by interno.nome_interno ';
  end
  else
  begin
    if UniRadioGroupStatus.ItemIndex = 1 then
    begin
      SqlConsulta.SQL.Text := SqlConsultaBackup.SQL.Text + ' and interno.' +
        Campo + ' like ' + qs(EditLocalizar.Text + '%') +
        ' order by interno.nome_interno ';
    end
    else
    begin
      SqlConsulta.SQL.Text := SqlConsultaBackup.SQL.Text + Status +
        ' and interno.id_up=' + inttostr(dm.GLOBAL_ID_UP) + ' and interno.' +
        Campo + ' like ' + qs(EditLocalizar.Text + '%') +
        ' order by interno.nome_interno ';
    end;
  end;

  DsConsulta.DataSet.close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmInterno.UniDBEditAdvogadoExit(Sender: TObject);
begin
  inherited;
  UniLabelAdvogado.Caption := '(ADVOGADO)';
  if strtointdef(UniDBEditAdvogado.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_Advogado codigo, Advogado descricao from Advogado' +
      ' WHERE id_Advogado=' + UniDBEditAdvogado.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelAdvogado.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditAdvogado.SetFocus;
      ShowMessage('C�digo da Advogado inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;
end;

procedure TFrmInterno.UniDBEditCidadeExit(Sender: TObject);
begin
  inherited;
  UniLabelCidade.Caption := '(CIDADE)';
  if strtointdef(UniDBEditCidade.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' +
      ' WHERE id_cidade=' + UniDBEditCidade.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelCidade.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
      UniLabelCidade2.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditCidade.SetFocus;
      ShowMessage('C�digo da Cidade inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;
end;

procedure TFrmInterno.UniDBEditCondicaoExit(Sender: TObject);
begin
  inherited;
  UniLabelCondicao.Caption := '(CONDI��O)';
  if strtointdef(UniDBEditCondicao.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select idcondicao_interno codigo, descricao from condicao_interno ' +
      ' WHERE idcondicao_interno=' + UniDBEditCondicao.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelCondicao.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditCondicao.SetFocus;
      ShowMessage('C�digo da Condicao inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniDBEditEscolaridadeExit(Sender: TObject);
begin
  inherited;
  UniLabelEscolaridade.Caption := '(ESCOLARIDADE)';
  if strtointdef(UniDBEditEscolaridade.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_Escolaridade CODIGO, Escolaridade DESCRICAO from Escolaridade'
      + ' WHERE id_Escolaridade=' + UniDBEditEscolaridade.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelEscolaridade.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
      UniLabelEscolaridade2.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditEscolaridade.SetFocus;
      ShowMessage('C�digo da Ra�a inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniDBEditFaccaoExit(Sender: TObject);
begin
  inherited;
  UniLabelFaccao.Caption := '(FAC��O)';
  if strtointdef(UniDBEditFaccao.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_faccao codigo, faccao descricao from faccao ' +
      ' WHERE id_faccao=' + UniDBEditFaccao.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelFaccao.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditFaccao.SetFocus;
      ShowMessage('C�digo da Faccao inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniDBEditNacionalidadeExit(Sender: TObject);
begin
  inherited;
  UniLabelNacionalidade.Caption := '(NACIONALIDADE)';
  if strtointdef(UniDBEditNacionalidade.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_nacionalidade codigo, nacionalidade descricao from nacionalidade'
      + ' WHERE id_nacionalidade=' + UniDBEditNacionalidade.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelNacionalidade.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditNacionalidade.SetFocus;
      ShowMessage('C�digo da Nacionalidade inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniDBEditNaturalidadeExit(Sender: TObject);
begin
  inherited;
  UniLabelNaturalidade.Caption := '(NATURALIDADE)';
  if strtointdef(UniDBEditNaturalidade.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' +
      ' WHERE id_cidade=' + UniDBEditNaturalidade.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelNaturalidade.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
      UniLabelNaturalidade2.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditNaturalidade.SetFocus;
      ShowMessage('C�digo da Naturalidade inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniDBEditOrigemExit(Sender: TObject);
begin
  inherited;
  UniLabelOrigem.Caption := '(ORIGEM)';
  if strtointdef(UniDBEditOrigem.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' +
      ' WHERE id_cidade=' + UniDBEditOrigem.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelOrigem.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
      UniLabelOrigem2.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditOrigem.SetFocus;
      ShowMessage('C�digo da Origem inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniDBEditPaisExit(Sender: TObject);
begin
  inherited;
  UniLabelPais.Caption := '(PAIS)';
  if strtointdef(UniDBEditPais.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_nacionalidade codigo, nacionalidade descricao from nacionalidade'
      + ' WHERE id_nacionalidade=' + UniDBEditPais.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelPais.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditPais.SetFocus;
      ShowMessage('C�digo da Pais inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniDBEditPresidioOrigemExit(Sender: TObject);
begin
  inherited;
  UniLabelPresidioOrigem.Caption := '(PRESIDIO DE ORIGEM)';
  if strtointdef(UniDBEditPresidioOrigem.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select IIF(CAPITAL=''S'',PROEDENCIA||'' - CAPITAL'',PROEDENCIA||'' - INTERIOR'') AS DESCRICAO FROM PROCEDENCIA '
      + ' WHERE ID_PROCEDENCIA=' + UniDBEditPresidioOrigem.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelPresidioOrigem.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditPresidioOrigem.SetFocus;
      ShowMessage('C�digo da Presidio de Origem inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniDBEditProcedenciaExit(Sender: TObject);
begin
  inherited;
  UniLabelProcedencia.Caption := '(PROCEDENCIA)';
  if strtointdef(UniDBEditProcedencia.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select IIF(CAPITAL=''S'',PROEDENCIA||'' - CAPITAL'',PROEDENCIA||'' - INTERIOR'') AS DESCRICAO FROM PROCEDENCIA '
      + ' WHERE ID_PROCEDENCIA=' + UniDBEditProcedencia.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelProcedencia.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditProcedencia.SetFocus;
      ShowMessage('C�digo da Procedencia inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniDBEditProfissaoExit(Sender: TObject);
begin
  inherited;
  UniLabelProfissao.Caption := '(PROFISS�O)';
  if strtointdef(UniDBEditProfissao.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_Profissao codigo, Profissao descricao from Profissao' +
      ' WHERE id_Profissao=' + UniDBEditProfissao.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelProfissao.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditProfissao.SetFocus;
      ShowMessage('C�digo da Profissao inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;
end;

procedure TFrmInterno.UniDBEditRacaExit(Sender: TObject);
begin
  inherited;
  UniLabelRaca.Caption := '(RA�A)';
  if strtointdef(UniDBEditRaca.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text :=
      'select id_raca CODIGO, raca DESCRICAO from raca' + ' WHERE id_raca=' +
      UniDBEditRaca.Text;
    dm.SqlConsultaUnica.close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelRaca.Caption := dm.SqlConsultaUnica.fieldbyname
        ('descricao').AsString;
    end
    else
    begin
      UniDBEditRaca.SetFocus;
      ShowMessage('C�digo da Ra�a inv�lido!');
    end;
    dm.SqlConsultaUnica.close;
  end;

end;

procedure TFrmInterno.UniFileUploadOutrasFotosCompleted(Sender: TObject;
AStream: TFileStream);
var
  sArquivo, sNomeJpeg: string;
begin

  if not DirectoryExists(UniServerModule.StartPath + 'FotosSistema\') then
    ForceDirectories(UniServerModule.StartPath + 'FotosSistema\');

  sArquivo := UniServerModule.StartPath + 'FotosSistema\OUTRAS-FOTOS-' +
    FormatDateTime('yyyymmddhhmmsszzz', now) + '-idinterno-' +
    CdsCadastro.fieldbyname('ID_INTERNO').AsString +
    ExtractFileExt(AStream.FileName);

  CopyFile(PChar(AStream.FileName), PChar(sArquivo), False);

  with DsFoto.DataSet do
  begin
    if DsFoto.DataSet.State in [dsedit, dsinsert] then
    begin
      sNomeJpeg := JpgToBmp(AStream.FileName); // ConverterBmpParaJPeg();
      TBlobField(DsFoto.DataSet.fieldbyname('FOTO')).LoadFromFile(sNomeJpeg);
    end;
  end;

end;

procedure TFrmInterno.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FID_INTERNO := 0;
  DsConsulta.DataSet.close;
  EditLocalizar.Text := '';
  SqlCadastro.Tag := 0;
end;

procedure TFrmInterno.UniFormCreate(Sender: TObject);
begin
  inherited;
  FID_INTERNO := 0;
  if not ContemValor('I', dm.PERMISSAO_CONFERE) and
    not ContemValor('E', dm.PERMISSAO_CONFERE) and
    not ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', dm.PERMISSAO_CONFERE) and
    not ContemValor('E', dm.PERMISSAO_CONFERE) and
    not ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', dm.PERMISSAO_CONFERE) and
    ContemValor('E', dm.PERMISSAO_CONFERE) and
    not ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', dm.PERMISSAO_CONFERE) and
    ContemValor('E', dm.PERMISSAO_CONFERE) and
    ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', dm.PERMISSAO_CONFERE) and
    not ContemValor('E', dm.PERMISSAO_CONFERE) and
    ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', dm.PERMISSAO_CONFERE) and
    not ContemValor('E', dm.PERMISSAO_CONFERE) and
    ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', dm.PERMISSAO_CONFERE) and
    ContemValor('E', dm.PERMISSAO_CONFERE) and
    not ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmInterno.UniFormShow(Sender: TObject);
var
  mi: TMaskedInput;
begin

  mi := TMaskedInput.Create('999.999.999-99');
  mi.Format(TUniEdit(DBEditCPF));

  mi.mask := '999.999.999-99';
  mi.Format(TUniEdit(DBEditCPF));

  mi.mask := '99.999-999';
  mi.Format(TUniEdit(DBEditcep));

  mi.Free;

  inherited;
  Excluir.Visible := False;

  PageControlModeloCadastro.ActivePageIndex := 1;
  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
  end;

  if FID_INTERNO > 0 then
  BEGIN
    UniBtnFiltrarClick(nil);
    Editar.OnClick(nil);
  END;

  Novo.Enabled := False;

end;

procedure TFrmInterno.AbrirTabelas;
begin
  if not DSHISTORICO_interno.DataSet.Active then
    DSHISTORICO_interno.DataSet.Open;

  if not dsADVOGADO_INTERNO.DataSet.Active then
    dsADVOGADO_INTERNO.DataSet.Open;

  // end);

end;

procedure TFrmInterno.Procedencia();
begin
end;

end.
