unit CadastroFunciPorteArma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, ModeloCadastro, Data.FMTBcd, Data.DB, MemDS,
  DBAccess, Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, Vcl.Imaging.jpeg,
  uniImage, uniPanel, uniCheckBox, uniGroupBox, uniMultiItem,
  uniComboBox, uniDBLookupComboBox, uniDBEdit, uniDBImage, uniDBNavigator, uniDateTimePicker,
  uniDBDateTimePicker, uniMemo, uniDBMemo;

type
  TFrmCadastroFunciPorteArma = class(TFrmModeloCadastro)
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    Dspconsulta: TDataSetProvider;
    SqlConsulta: TSQLQuery;
    SqlSelectFuncionario: TSQLQuery;
    PageControlFuncionario: TUniPageControl;
    TabSheet1: TUniTabSheet;
    Label2: TUniLabel;
    Label3: TUniLabel;
    Label17: TUniLabel;
    Label4: TUniLabel;
    Label6: TUniLabel;
    Label7: TUniLabel;
    Label13: TUniLabel;
    Label16: TUniLabel;
    Label19: TUniLabel;
    Label14: TUniLabel;
    Label15: TUniLabel;
    Label18: TUniLabel;
    DBEditcodigo: TUniDBEdit;
    DBEdit2: TUniDBEdit;
    DBEdit12: TUniDBEdit;
    DBEdit3: TUniDBEdit;
    DBEditCPF: TUniDBEdit;
    DBEdit1: TUniDBEdit;
    DBEdit6: TUniDBEdit;
    DBEdit11: TUniDBEdit;
    DBEdit14: TUniDBEdit;
    DBEditadmissao: TUniDBEdit;
    DBEditnascimento: TUniDBEdit;
    DBEdit13: TUniDBEdit;
    CdsConsultaIDFUNCI_PORTE_ARMA: TIntegerField;
    CdsConsultaNOME_FUNCIONARIO: TStringField;
    CdsConsultaMATRICULA: TStringField;
    CdsConsultaCPF: TStringField;
    CdsCadastroIDFUNCI_PORTE_ARMA: TIntegerField;
    CdsCadastroID_FUNCIONARIO: TIntegerField;
    CdsCadastroID_NATURALIDADE: TIntegerField;
    CdsCadastroID_UP: TIntegerField;
    CdsCadastroID_CURSO: TIntegerField;
    CdsCadastroID_CIDADE: TIntegerField;
    CdsCadastroID_FUNCAO: TIntegerField;
    CdsCadastroNOME_FUNCIONARIO: TStringField;
    CdsCadastroMATRICULA: TStringField;
    CdsCadastroCPF: TStringField;
    CdsCadastroFUNCAO_TEMP: TStringField;
    CdsCadastroFUNCAO: TStringField;
    CdsCadastroADMISSAO: TSQLTimeStampField;
    CdsCadastroCLASSE: TStringField;
    CdsCadastroMAE: TStringField;
    CdsCadastroPAI: TStringField;
    CdsCadastroRG: TStringField;
    CdsCadastroORGAOEMISSOR: TStringField;
    CdsCadastroFATORRH: TStringField;
    CdsCadastroDTNASCIMENTO: TSQLTimeStampField;
    CdsCadastroCARGO: TStringField;
    CdsCadastroAREA: TStringField;
    CdsCadastroIMPRIMIR: TStringField;
    CdsCadastroENDERECO: TStringField;
    CdsCadastroBAIRRO: TStringField;
    CdsCadastroCOMPLEMENTO: TStringField;
    CdsCadastroCEP: TStringField;
    CdsCadastroFONE: TStringField;
    CdsCadastroCELULAR: TStringField;
    CdsCadastroEMAIL: TStringField;
    CdsCadastroNUMERO: TStringField;
    CdsCadastroDATA_LOTACAO: TSQLTimeStampField;
    CdsCadastroESCOLARIDADE: TStringField;
    CdsCadastroSEXO: TStringField;
    CdsCadastroPLANTAO_EXPEDIENTE: TStringField;
    CdsCadastroNFUNCIONAL: TIntegerField;
    CdsCadastroDIRETORIO_RELATORIO: TStringField;
    UniTabSheet1: TUniTabSheet;
    UniPanelSaveArma: TUniPanel;
    Button20: TUniButton;
    Button21: TUniButton;
    UniPanelEditArma: TUniPanel;
    UniButton7: TUniButton;
    UniButton8: TUniButton;
    UniDBNavigator3: TUniDBNavigator;
    DBGrid4: TUniDBGrid;
    CdsArma: TClientDataSet;
    SqlArma: TSQLQuery;
    DspArma: TDataSetProvider;
    DsArma: TDataSource;
    CdsArmaIDARMA: TIntegerField;
    CdsArmaIDFUNCI_PORTE_ARMA: TIntegerField;
    CdsArmaNOME: TStringField;
    CdsArmaCOMPLEMENTO: TStringField;
    CdsArmaMARCA: TStringField;
    CdsArmaMODELO: TStringField;
    CdsArmaESTADO: TStringField;
    CdsArmaVALOR: TFloatField;
    CdsArmaUTILIZACAO: TStringField;
    CdsArmaOBSERVACAO: TStringField;
    CdsArmaDATA_CADASTRO: TSQLTimeStampField;
    CdsArmaFOTO_PATRIMONIO: TBlobField;
    CdsArmaNOTA_FISCAL: TStringField;
    CdsArmaDATA_NOTA_FISCAL: TSQLTimeStampField;
    CdsArmaCNPJ_NOTA_FISCAL: TStringField;
    CdsArmaNUMERO_ARMA: TStringField;
    CdsArmaCAPACIDADE: TIntegerField;
    CdsArmaNUMEROS_CANOS: TIntegerField;
    CdsArmaNUMERO_RAIAS: TIntegerField;
    CdsArmaDATA_EXPEDICAO: TSQLTimeStampField;
    CdsArmaREGISTRO_DATA_EMISSAO: TSQLTimeStampField;
    CdsArmaREGISTRO_ESTADUAL: TStringField;
    CdsArmaREGISTRO_ORGAO_EXPEDIDOR: TStringField;
    CdsArmaREGISTRO_UF: TStringField;
    CdsArmaCADASTRO_SINARM: TStringField;
    CdsArmaESPECIE: TStringField;
    CdsArmaCALIBRE: TStringField;
    CdsArmaPAIS_FABRICACAO: TStringField;
    CdsArmaCOMPRIMENTO_CANO: TStringField;
    CdsArmaARMA_ALMA: TStringField;
    CdsArmaSENTIDO_RAIA: TStringField;
    CdsArmaFUNCAO_ARMA: TStringField;
    CdsArmaACABAMENTO: TStringField;
    CdsArmaSITUACAO_GERAL: TStringField;
    CdsArmaOBS_SITUACAO_GERAL: TStringField;
    CdsArmaORIGEM: TStringField;
    CdsArmaACESSORIOS: TStringField;
    CdsArmaDATA_ULTIMA_MANUTENCAO: TSQLTimeStampField;
    CdsArmaDATA_FABRICACAO: TSQLTimeStampField;
    CdsArmaQUANTIDADE: TFloatField;
    CdsArmaPESO: TFloatField;
    DBEdit21: TUniDBEdit;
    Label29: TUniLabel;
    UniLabelCidade: TUniLabel;
    UniBitBtnCidade: TUniBitBtn;
    UniDBEditCidade: TUniDBEdit;
    Label25: TUniLabel;
    DBEditcep: TUniDBEdit;
    Label26: TUniLabel;
    DBEditfone: TUniDBEdit;
    Label27: TUniLabel;
    DBEditcelular: TUniDBEdit;
    Label28: TUniLabel;
    DBEdit16: TUniDBEdit;
    Label24: TUniLabel;
    DBEdit15: TUniDBEdit;
    Label23: TUniLabel;
    DBEdit8: TUniDBEdit;
    Label9: TUniLabel;
    DBEdit22: TUniDBEdit;
    Label30: TUniLabel;
    UniBitBtnFichaDisciplinarInterno: TUniBitBtn;
    procedure EditarClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure UniBtnFiltrarClick(Sender: TObject);
    procedure UniBitBtnCidadeClick(Sender: TObject);
    procedure UniDBEditCidadeExit(Sender: TObject);
    procedure DsArmaStateChange(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure UniBitBtnFichaDisciplinarInternoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmCadastroFunciPorteArma: TFrmCadastroFunciPorteArma;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, Lib, Main, Aguarde, VisualizarRelatorio;

function FrmCadastroFunciPorteArma: TFrmCadastroFunciPorteArma;
begin
  Result := TFrmCadastroFunciPorteArma(UniMainModule.GetFormInstance(TFrmCadastroFunciPorteArma));
end;

procedure TFrmCadastroFunciPorteArma.UniBitBtnCidadeClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self, 'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' + ' order by cidade, uf', 'cidade||''/''||uf', 'CODIGO',
      'descricao', UniDBEditCidade, UniLabelCidade);

  end;

end;

procedure TFrmCadastroFunciPorteArma.UniBitBtnFichaDisciplinarInternoClick(Sender: TObject);
begin
  inherited;
  if DsArma.DataSet.fieldbyname('IDARMA').AsInteger > 0 then
  begin
    FrmAguarde.ShowModal(
      procedure(Sender: TComponent; Res: Integer)
      begin
        FrmVisualizarRelatorio.CarregarPorteDeArma(DsArma.DataSet.fieldbyname('IDARMA').AsInteger);
      end);
  end
  else
    showmessage('Arma não está com numero gerado pelo banco de dados, salve tudo e entre novamente.');

end;

procedure TFrmCadastroFunciPorteArma.UniBtnFiltrarClick(Sender: TObject);
begin
  // inherited;

  SqlConsulta.sql.text := SqlSelectFuncionario.sql.text + ' where nome_funcionario like upper(' + qs(EditLocalizar.text + '%') + ') order by nome_funcionario ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmCadastroFunciPorteArma.UniButton7Click(Sender: TObject);
begin
  inherited;
  DsArma.DataSet.Append;
  DsArma.DataSet.fieldbyname('IDARMA').AsInteger := 0;
  DsArma.DataSet.fieldbyname('IDFUNCI_PORTE_ARMA').AsInteger := DsCadastro.DataSet.fieldbyname('IDFUNCI_PORTE_ARMA').AsInteger;

end;

procedure TFrmCadastroFunciPorteArma.UniButton8Click(Sender: TObject);
begin
  inherited;
  if not DsArma.DataSet.isempty then
  begin
    DsArma.DataSet.Edit;
  end;

end;

procedure TFrmCadastroFunciPorteArma.UniDBEditCidadeExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select cidade||''/''||uf descricao from cidade ' + ' WHERE id_cidade=', UniDBEditCidade, UniLabelCidade);

end;

function ContemValor(sCompare, sString: ShortString): Boolean;
var
  P: Byte;
begin
  try
    Result := False;
    P := Pos(sCompare, sString);
    if P > 0 then
      Result := True;
  except
  end;
end;

procedure TFrmCadastroFunciPorteArma.EditLocalizarChange(Sender: TObject);
begin
  inherited;
  SqlConsulta.sql.text := SqlSelectFuncionario.sql.text + ' where nome_funcionario like upper(' + qs(EditLocalizar.text + '%') + ') order by nome_funcionario ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmCadastroFunciPorteArma.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.fieldbyname('IDFUNCI_PORTE_ARMA').AsInteger := Generator('IDFUNCI_PORTE_ARMA');
  DsArma.DataSet.Close;
  DsArma.DataSet.Open;
end;

procedure TFrmCadastroFunciPorteArma.Button20Click(Sender: TObject);
begin
  inherited;
  DsArma.DataSet.Post;

end;

procedure TFrmCadastroFunciPorteArma.Button21Click(Sender: TObject);
begin
  inherited;
  DsArma.DataSet.Cancel;

end;

procedure TFrmCadastroFunciPorteArma.DsArmaStateChange(Sender: TObject);
begin
  inherited;
  if DsArma.State in [dsedit, dsinsert] then
  begin
    UniPanelEditArma.Enabled := False;
    UniPanelSaveArma.Enabled := True;
  end
  else
  begin
    UniPanelEditArma.Enabled := True;
    UniPanelSaveArma.Enabled := False;
  end;

end;

procedure TFrmCadastroFunciPorteArma.EditarClick(Sender: TObject);
begin

  SqlCadastro.sql.text := 'SELECT * FROM FUNCI_PORTE_ARMA WHERE IDFUNCI_PORTE_ARMA = ' + DsConsulta.DataSet.fieldbyname('IDFUNCI_PORTE_ARMA').AsString;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  DsArma.DataSet.Close;
  DsArma.DataSet.Open;

  inherited;

  PageControlFuncionario.ActivePageIndex := 0;
  UniDBEditCidade.OnExit(nil);

end;

procedure TFrmCadastroFunciPorteArma.PageControlModeloCadastroChange(Sender: TObject);
begin
  inherited;
  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
  end;
end;

procedure TFrmCadastroFunciPorteArma.SalvarClick(Sender: TObject);
begin
  if DsArma.State in [dsedit, dsinsert] then
    DsArma.DataSet.Post;
  inherited;

end;

end.
