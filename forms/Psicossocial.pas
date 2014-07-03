unit Psicossocial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Interno, Data.FMTBcd, Data.DB, MemDS, DBAccess,
  Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniEdit, uniRadioGroup,
  uniDBDateTimePicker, uniDBNavigator, uniDateTimePicker, uniDBMemo,
  uniBasicGrid, uniDBGrid, uniMemo, uniButton, uniDBImage, uniCheckBox,
  uniDBCheckBox, uniDBComboBox, uniMultiItem, uniComboBox, uniDBLookupComboBox,
  uniDBEdit, uniPageControl, uniBitBtn, uniLabel, Vcl.Imaging.jpeg, uniImage,
  uniPanel, Vcl.StdCtrls, uniMenuButton, uniGroupBox, uniSpeedButton;

type
  TFrmPsicossocial = class(TFrmInterno)
    TabSheetPsicossocial: TUniTabSheet;
    PageControlPsicossocial: TUniPageControl;
    TabSheet12: TUniTabSheet;
    UniLabel5: TUniLabel;
    Label138: TUniLabel;
    Label160: TUniLabel;
    Label161: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    DBEdit39: TUniDBEdit;
    DBEdit40: TUniDBEdit;
    DBComboBox8: TUniDBComboBox;
    DBComboBox9: TUniDBComboBox;
    DBLookupComboBox10: TUniDBLookupComboBox;
    DBEdit41: TUniDBEdit;
    DBComboBox29: TUniDBComboBox;
    DBEdit91: TUniDBEdit;
    TabSheet13: TUniTabSheet;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    Label90: TUniLabel;
    Label91: TUniLabel;
    Label92: TUniLabel;
    Label93: TUniLabel;
    Label94: TUniLabel;
    Label95: TUniLabel;
    Label96: TUniLabel;
    Label97: TUniLabel;
    Label98: TUniLabel;
    Label99: TUniLabel;
    DBEdit42: TUniDBEdit;
    DBEdit43: TUniDBEdit;
    DBEdit44: TUniDBEdit;
    DBEdit45: TUniDBEdit;
    DBEdit47: TUniDBEdit;
    DBEdit48: TUniDBEdit;
    DBEdit49: TUniDBEdit;
    DBComboBox10: TUniDBComboBox;
    DBComboBox12: TUniDBComboBox;
    DBComboBox13: TUniDBComboBox;
    DBComboBox14: TUniDBComboBox;
    DBEdit46: TUniDBEdit;
    DBComboBox15: TUniDBComboBox;
    DBComboBox16: TUniDBComboBox;
    DBComboBox17: TUniDBComboBox;
    TabSheet14: TUniTabSheet;
    Label100: TUniLabel;
    Label101: TUniLabel;
    Label102: TUniLabel;
    Label103: TUniLabel;
    Label104: TUniLabel;
    Label105: TUniLabel;
    Label106: TUniLabel;
    Label107: TUniLabel;
    Label108: TUniLabel;
    Label109: TUniLabel;
    Label110: TUniLabel;
    DBComboBox18: TUniDBComboBox;
    DBEdit52: TUniDBEdit;
    DBComboBox19: TUniDBComboBox;
    DBComboBox20: TUniDBComboBox;
    DBEdit50: TUniDBEdit;
    DBEdit54: TUniDBEdit;
    DBEdit56: TUniDBEdit;
    DBEdit57: TUniDBEdit;
    DBComboBox21: TUniDBComboBox;
    DBComboBox22: TUniDBComboBox;
    DBComboBox23: TUniDBComboBox;
    TabSheet15: TUniTabSheet;
    Label111: TUniLabel;
    Label112: TUniLabel;
    DBLookupComboBox6: TUniDBLookupComboBox;
    DBEdit51: TUniDBEdit;
    TabSheet16: TUniTabSheet;
    Label113: TUniLabel;
    Label114: TUniLabel;
    Label115: TUniLabel;
    Label116: TUniLabel;
    Label117: TUniLabel;
    Label118: TUniLabel;
    Label119: TUniLabel;
    DBEdit53: TUniDBEdit;
    DBEdit55: TUniDBEdit;
    DBEdit58: TUniDBEdit;
    DBEdit59: TUniDBEdit;
    DBEdit60: TUniDBEdit;
    DBLookupComboBox7: TUniDBLookupComboBox;
    DBEdit61: TUniDBEdit;
    TabSheet18: TUniTabSheet;
    Label128: TUniLabel;
    Label129: TUniLabel;
    Label130: TUniLabel;
    Label131: TUniLabel;
    Label132: TUniLabel;
    Label133: TUniLabel;
    Label134: TUniLabel;
    DBEdit63: TUniDBEdit;
    DBEdit65: TUniDBEdit;
    DBEdit70: TUniDBEdit;
    DBEdit71: TUniDBEdit;
    DBEdit72: TUniDBEdit;
    DBEdit73: TUniDBEdit;
    DBLookupComboBox8: TUniDBLookupComboBox;
    TabSheet2: TUniTabSheet;
    Label165: TUniLabel;
    Label166: TUniLabel;
    Label167: TUniLabel;
    Label168: TUniLabel;
    Label169: TUniLabel;
    Label170: TUniLabel;
    Label171: TUniLabel;
    Label172: TUniLabel;
    Label173: TUniLabel;
    Label174: TUniLabel;
    Label175: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    DBEdit92: TUniDBEdit;
    DBEdit93: TUniDBEdit;
    DBEdit94: TUniDBEdit;
    DBEdit95: TUniDBEdit;
    DBEdit96: TUniDBEdit;
    DBComboBox26: TUniDBComboBox;
    DBComboBox27: TUniDBComboBox;
    DBEdit97: TUniDBEdit;
    DBEdit98: TUniDBEdit;
    DBEdit99: TUniDBEdit;
    DBEdit100: TUniDBEdit;
    DBEdit101: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    TabSheet3: TUniTabSheet;
    Label176: TUniLabel;
    Label177: TUniLabel;
    Label178: TUniLabel;
    Label179: TUniLabel;
    Label180: TUniLabel;
    Label181: TUniLabel;
    Label182: TUniLabel;
    Label183: TUniLabel;
    Label184: TUniLabel;
    DBEdit102: TUniDBEdit;
    DBEdit103: TUniDBEdit;
    DBEdit104: TUniDBEdit;
    DBEdit105: TUniDBEdit;
    DBEdit106: TUniDBEdit;
    DBEdit107: TUniDBEdit;
    DBEdit108: TUniDBEdit;
    DBEdit109: TUniDBEdit;
    DBEdit110: TUniDBEdit;
    DBRadioGroup3: TUniDBComboBox;
    DBRadioGroup4: TUniDBComboBox;
    DBRadioGroup5: TUniDBComboBox;
    DBRadioGroup9: TUniDBComboBox;
    DBRadioGroup8: TUniDBComboBox;
    DBRadioGroup7: TUniDBComboBox;
    DBRadioGroup6: TUniDBComboBox;
    TabSheet19: TUniTabSheet;
    Label135: TUniLabel;
    Label136: TUniLabel;
    Label137: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    DBMemo3: TUniDBMemo;
    Memo1: TUniMemo;
    DBLookupComboBox9: TUniDBLookupComboBox;
    UniButton1: TUniButton;
    DSATENDIMENTO: TDataSource;
    CDSATENDIMENTO: TClientDataSet;
    CDSATENDIMENTOID_ATENDIMENTO: TIntegerField;
    CDSATENDIMENTOIDINTERNO: TIntegerField;
    CDSATENDIMENTODATAATENDIMENTO: TSQLTimeStampField;
    CDSATENDIMENTOIDTECNICO: TIntegerField;
    CDSATENDIMENTODESCRICAO_ATENDIMENTO: TStringField;
    CDSATENDIMENTOTCNICOA: TStringField;
    DSPATENDIMENTO: TDataSetProvider;
    SQLATENDIMENTO: TSQLQuery;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    BitBtn1: TUniBitBtn;
    UniDBEdit2: TUniDBEdit;
    procedure EditarClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmPsicossocial: TFrmPsicossocial;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, Lib, PresencaLocal;

function FrmPsicossocial: TFrmPsicossocial;
begin
  Result := TFrmPsicossocial(UniMainModule.GetFormInstance(TFrmPsicossocial));
end;

procedure TFrmPsicossocial.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FrmPresencaLocal.ID_INTERNO := DsCadastro.Dataset.FieldByname('ID_INTERNO')
    .AsInteger;
  FrmPresencaLocal.ShowModal;

end;

procedure TFrmPsicossocial.Button3Click(Sender: TObject);
begin
  inherited;
  if DBLookupComboBox9.KeyValue > 0 then
  begin
    DSATENDIMENTO.Dataset.Append;
    DSATENDIMENTO.Dataset.FieldByname('id_atendimento').AsInteger := 0;

    DSATENDIMENTO.Dataset.FieldByname('idinterno').AsInteger :=
      DsCadastro.Dataset.FieldByname('id_interno').AsInteger;
    DSATENDIMENTO.Dataset.FieldByname('dataatendimento').AsString :=
      UniDateTimePicker1.Text;
    DSATENDIMENTO.Dataset.FieldByname('idtecnico').AsInteger :=
      DBLookupComboBox9.KeyValue;
    DSATENDIMENTO.Dataset.FieldByname('descricao_atendimento').AsString :=
      Memo1.Text;
    DSATENDIMENTO.Dataset.Post;

    CDSATENDIMENTO.ApplyUpdates(-1);

    DSATENDIMENTO.Dataset.close;
    DSATENDIMENTO.Dataset.open;

    Memo1.Text := '';
  end;
end;

procedure TFrmPsicossocial.EditarClick(Sender: TObject);
begin
  inherited;

  PageControlPsicossocial.ActivePageIndex := 0;

  if not DSATENDIMENTO.Dataset.active then
    DSATENDIMENTO.Dataset.open;

  if not dm.dsadvogado.Dataset.active then
    dm.dsadvogado.Dataset.open;

  if not dm.DsFuncionario.Dataset.active then
    dm.DsFuncionario.Dataset.open;

  if not dm.DSESCOLARIDADE.Dataset.active then
    dm.DSESCOLARIDADE.Dataset.open;

end;

procedure TFrmPsicossocial.UniDBGrid1CellClick(Column: TUniDBGridColumn);
var
  ontem: TDateTime;
  amanha, data_servidor: TDateTime;
begin
  inherited;
  data_servidor := now;
  ontem := data_servidor - 1;
  amanha := data_servidor + 1;
  if (DSATENDIMENTO.Dataset.FieldByname('DATAATENDIMENTO').AsDateTime > ontem)
    and (DSATENDIMENTO.Dataset.FieldByname('DATAATENDIMENTO').AsDateTime <
    amanha) then
  begin
    DBMemo3.ReadOnly := false;
  end
  else
    DBMemo3.ReadOnly := True;

end;

procedure TFrmPsicossocial.UniFormCreate(Sender: TObject);
begin
  inherited;

  { Verifica as permissões que o usuário possui para esta tela
    e habilita ou não os respectivos botões.
    Estas verificações devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
    Ex. ContemValor('I', Dm.PERMISSAO_CONFERE). }

  Novo.Visible := True;
  Editar.Visible := True;
  Salvar.Visible := True;

  if not ContemValor('I', dm.PERMISSAO_PSICOSSOCIAL) and
    not ContemValor('E', dm.PERMISSAO_PSICOSSOCIAL) and
    not ContemValor('D', dm.PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    Excluir.Visible := false;
    Salvar.Visible := false;
  end;

  if ContemValor('I', dm.PERMISSAO_PSICOSSOCIAL) and
    not ContemValor('E', dm.PERMISSAO_PSICOSSOCIAL) and
    not ContemValor('D', dm.PERMISSAO_PSICOSSOCIAL) then
  begin
    Editar.Visible := false;
    Excluir.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if ContemValor('I', dm.PERMISSAO_PSICOSSOCIAL) and
    ContemValor('E', dm.PERMISSAO_PSICOSSOCIAL) and
    not ContemValor('D', dm.PERMISSAO_PSICOSSOCIAL) then
  begin
    Excluir.Visible := false;
  end;

  if not ContemValor('I', dm.PERMISSAO_PSICOSSOCIAL) and
    ContemValor('E', dm.PERMISSAO_PSICOSSOCIAL) and
    ContemValor('D', dm.PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := false;
  end;

  if ContemValor('I', dm.PERMISSAO_PSICOSSOCIAL) and
    not ContemValor('E', dm.PERMISSAO_PSICOSSOCIAL) and
    ContemValor('D', dm.PERMISSAO_PSICOSSOCIAL) then
  begin
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', dm.PERMISSAO_PSICOSSOCIAL) and
    not ContemValor('E', dm.PERMISSAO_PSICOSSOCIAL) and
    ContemValor('D', dm.PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', dm.PERMISSAO_PSICOSSOCIAL) and
    ContemValor('E', dm.PERMISSAO_PSICOSSOCIAL) and
    not ContemValor('D', dm.PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := false;
    Excluir.Visible := false;
  end;

end;

procedure TFrmPsicossocial.UniFormShow(Sender: TObject);
begin
  inherited;
  TabSheetAdvogados.TabVisible := false;
  TabSheetEndereco.TabVisible := false;
  TabSheetHistorico.TabVisible := false;
  TabSheetFotos.TabVisible := false;
  TabSheetMovAnterior.TabVisible := false;
  TabSheetMapa.TabVisible := false;

  DBLookupComboBox9.KeyValue := dm.GLOBAL_ID_FUNCIONARIO;

end;

end.
