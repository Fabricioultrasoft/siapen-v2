unit Disciplina;

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
  uniPanel, uniGroupBox, uniSpeedButton, uniMenuButton, Vcl.Menus, uniMainMenu,
  Vcl.StdCtrls;

type
  TFrmDisciplina = class(TFrmInterno)
    TabSheetDisciplina: TUniTabSheet;
    DScalcfaltadisciplinar: TDataSource;
    CDScalcfaltadisciplinar: TClientDataSet;
    DSPcalcfaltadisciplinar: TDataSetProvider;
    SQLcalcfaltadisciplinar: TSQLQuery;
    dshistoricoelogio: TDataSource;
    cdshistoricoelogio: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    dsphistoricoelogio: TDataSetProvider;
    SQLhistoricoelogio: TSQLQuery;
    Dsfaltadisciplinar: TDataSource;
    Cdsfaltadisciplinar: TClientDataSet;
    Dspfaltadisciplinar: TDataSetProvider;
    Sqlfaltadisciplinar: TSQLQuery;
    dsvincartigoperfil: TDataSource;
    cdsvincartigoperfil: TClientDataSet;
    DSPvincartigoperfil: TDataSetProvider;
    SQLvincartigoperfil: TSQLQuery;
    Dsvincfaltadisciplinar: TDataSource;
    Cdsvincfaltadisciplinar: TClientDataSet;
    Cdsvincfaltadisciplinarfalta_disciplinar: TStringField;
    CdsvincfaltadisciplinarID_FALTA_DISCIPLINAR: TIntegerField;
    CdsvincfaltadisciplinarID_VINC_FALTA_DISCIPLINAR: TIntegerField;
    CdsvincfaltadisciplinarID_INTERNO: TIntegerField;
    CdsvincfaltadisciplinarDATA_INCIDENCIA: TSQLTimeStampField;
    CdsvincfaltadisciplinarDATA_REABILITACAO: TSQLTimeStampField;
    CdsvincfaltadisciplinarOBS: TStringField;
    CdsvincfaltadisciplinarCONCLUSAOCD: TStringField;
    CdsvincfaltadisciplinarNUMERO_PDI: TStringField;
    CdsvincfaltadisciplinarDATA_CONDENACAO: TSQLTimeStampField;
    CdsvincfaltadisciplinarRESULTADO: TStringField;
    CdsvincfaltadisciplinarDATA_RESULTADO: TSQLTimeStampField;
    CdsvincfaltadisciplinarDT_INICIO_ISOLAMENTO: TSQLTimeStampField;
    CdsvincfaltadisciplinarDT_FIM_ISOLAMENTO: TSQLTimeStampField;
    CdsvincfaltadisciplinarQTDE_DIAS_ISOLAMENTO: TIntegerField;
    CdsvincfaltadisciplinarSTATUS: TStringField;
    CdsvincfaltadisciplinarID_UP: TIntegerField;
    CdsvincfaltadisciplinarNUMERO: TStringField;
    CdsvincfaltadisciplinarDATA_INSTAURACAO: TSQLTimeStampField;
    CdsvincfaltadisciplinarTIPO: TStringField;
    CdsvincfaltadisciplinarDATA_INST_PORTARIA: TSQLTimeStampField;
    Dspvincpfaltadisciplinar: TDataSetProvider;
    Sqlvincfaltadisciplinar: TSQLQuery;
    SqlvincfaltadisciplinarID_VINC_FALTA_DISCIPLINAR: TIntegerField;
    SqlvincfaltadisciplinarID_FALTA_DISCIPLINAR: TIntegerField;
    SqlvincfaltadisciplinarID_INTERNO: TIntegerField;
    SqlvincfaltadisciplinarDATA_INCIDENCIA: TSQLTimeStampField;
    SqlvincfaltadisciplinarDATA_REABILITACAO: TSQLTimeStampField;
    SqlvincfaltadisciplinarOBS: TStringField;
    SqlvincfaltadisciplinarCONCLUSAOCD: TStringField;
    SqlvincfaltadisciplinarNUMERO_PDI: TStringField;
    SqlvincfaltadisciplinarDATA_CONDENACAO: TSQLTimeStampField;
    SqlvincfaltadisciplinarRESULTADO: TStringField;
    SqlvincfaltadisciplinarDATA_RESULTADO: TSQLTimeStampField;
    SqlvincfaltadisciplinarDT_INICIO_ISOLAMENTO: TSQLTimeStampField;
    SqlvincfaltadisciplinarDT_FIM_ISOLAMENTO: TSQLTimeStampField;
    SqlvincfaltadisciplinarQTDE_DIAS_ISOLAMENTO: TIntegerField;
    SqlvincfaltadisciplinarSTATUS: TStringField;
    SqlvincfaltadisciplinarID_UP: TIntegerField;
    SqlvincfaltadisciplinarNUMERO: TStringField;
    SqlvincfaltadisciplinarDATA_INSTAURACAO: TSQLTimeStampField;
    SqlvincfaltadisciplinarTIPO: TStringField;
    SqlvincfaltadisciplinarDATA_INST_PORTARIA: TSQLTimeStampField;
    PageControlDisciplina: TUniPageControl;
    faltasdisciplinares: TUniTabSheet;
    Label120: TUniLabel;
    UniLabel5: TUniLabel;
    Label121: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel9: TUniLabel;
    SpeedButton12: TUniSpeedButton;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    Label122: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    DBLookupComboBoxfaltadisciplinar: TUniDBLookupComboBox;
    Memo1: TUniMemo;
    Editpdi: TUniEdit;
    DateTimePickerdataincidencia: TUniDateTimePicker;
    ComboBoxconclusao: TUniComboBox;
    Editcondenacao: TUniEdit;
    Editreabilitacao: TUniEdit;
    btnBuscar: TUniButton;
    ComboBoxresultado: TUniComboBox;
    Editresultado: TUniEdit;
    Editqtdedias: TUniEdit;
    Editinicioisolamento: TUniEdit;
    Memoobs: TUniMemo;
    BitBtn1: TUniBitBtn;
    DBGrid6: TUniDBGrid;
    ComboBoxtipoprocedimento: TUniComboBox;
    Editprocedimento: TUniEdit;
    Editnprocedimento: TUniEdit;
    EditDataInstPortaria: TUniEdit;
    ComboBoxNatureza: TUniComboBox;
    RadioGroup1: TUniRadioGroup;
    Editfimisolamento: TUniEdit;
    TabSheet1: TUniTabSheet;
    UniLabel21: TUniLabel;
    Label59: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniDBComboBox3: TUniDBComboBox;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    TabSheet20: TUniTabSheet;
    GroupBox1: TUniGroupBox;
    UniLabel24: TUniLabel;
    DBGrid5: TUniDBGrid;
    DBLookupComboBoxartigoperfil: TUniDBLookupComboBox;
    PopupMenuIsolamento: TUniPopupMenu;
    Liberar1: TUniMenuItem;
    N1: TUniMenuItem;
    EditarFalta1: TUniMenuItem;
    N2: TUniMenuItem;
    Excluir1: TUniMenuItem;
    SqlExecute: TSQLQuery;
    TabSheetElogio: TUniTabSheet;
    UniMenuButton1: TUniMenuButton;
    UniDBMemo1: TUniDBMemo;
    DBGrid2: TUniDBGrid;
    BitBtn2: TUniBitBtn;
    Memoelogio: TUniMemo;
    DateTimePickerelogio: TUniDateTimePicker;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    Label1: TUniLabel;
    Label68: TUniLabel;
    procedure UniFormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure EditarFalta1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure CdsvincfaltadisciplinarCalcFields(DataSet: TDataSet);
    procedure UniFormCreate(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmDisciplina: TFrmDisciplina;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, VincFaltaDisiciplinar, Lib;

function FrmDisciplina: TFrmDisciplina;
begin
  Result := TFrmDisciplina(UniMainModule.GetFormInstance(TFrmDisciplina));
end;

procedure TFrmDisciplina.BitBtn1Click(Sender: TObject);
var
  temporeabilitacao: Integer;
begin

  inherited;
  if DBLookupComboBoxfaltadisciplinar.Text = '' then
  begin
    showmessage('Digite a Falta Disciplinar!');
    exit;
  end;

  if Editpdi.Text = '' then
  begin
    showmessage('Digite o Número do Documento!');
    exit;
  end;

  if not Dsvincfaltadisciplinar.DataSet.Active then
    Dsvincfaltadisciplinar.DataSet.Open;

  { Lancando na tabela de vinculo interno/faltadisciplinar }
  Dsvincfaltadisciplinar.DataSet.Append;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('ID_vinc_falta_disciplinar')
    .AsInteger := 0;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_falta_disciplinar').AsInteger
    := DBLookupComboBoxfaltadisciplinar.KeyValue;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_incidencia').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerdataincidencia.DateTime);
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_reabilitacao').AsString :=
    Editreabilitacao.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_condenacao').AsString :=
    Editcondenacao.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('obs').AsString := Memoobs.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('conclusaocd').AsString :=
    ComboBoxconclusao.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero_pdi').AsString :=
    Editpdi.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('resultado').AsString :=
    ComboBoxresultado.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_resultado').AsString :=
    Editresultado.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_inicio_isolamento').AsString :=
    Editinicioisolamento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_fim_isolamento').AsString :=
    Editfimisolamento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('qtde_dias_isolamento').AsString :=
    Editqtdedias.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_up').AsInteger :=
    Dm.GLOBAL_ID_UP;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('tipo').AsString :=
    ComboBoxtipoprocedimento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_instauracao').AsString :=
    Editprocedimento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero').AsString :=
    Editnprocedimento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_inst_portaria').AsString :=
    EditDataInstPortaria.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('natureza').AsString :=
    ComboBoxNatureza.Text;

  Dsvincfaltadisciplinar.DataSet.Post;

  DBLookupComboBoxfaltadisciplinar.KeyValue := null;
  Editreabilitacao.Text := '';
  Editcondenacao.Text := '';
  Memoobs.Text := '';
  Editcondenacao.Text := '';
  Editpdi.Text := '';
  ComboBoxresultado.Text := '';
  ComboBoxconclusao.Text := '';
  DateTimePickerdataincidencia.DateTime := Date;
  Editinicioisolamento.Text := '';
  Editqtdedias.Text := '';
  Editfimisolamento.Text := '';
  Memo1.Text := '';

end;

procedure TFrmDisciplina.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dshistoricoelogio.DataSet.Append;
  dshistoricoelogio.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  dshistoricoelogio.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dshistoricoelogio.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerelogio.Datetime);
  dshistoricoelogio.DataSet.fieldbyname('descricao').AsString := Memoelogio.Lines.Text;
  dshistoricoelogio.DataSet.fieldbyname('setor').AsString := 'Disciplina';
  dshistoricoelogio.DataSet.fieldbyname('tipo_historico').AsString := 'Elogio';
  dshistoricoelogio.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    dm.GLOBAL_ID_FUNCIONARIO;
  dshistoricoelogio.DataSet.Post;

  Memoelogio.Lines.Clear;


end;

procedure TFrmDisciplina.CancelarClick(Sender: TObject);
begin
  inherited;

  Dsvincfaltadisciplinar.DataSet.Close;
  Dsvincfaltadisciplinar.DataSet.OPEN;

  dsvincartigoperfil.DataSet.Close;
  dsvincartigoperfil.DataSet.OPEN;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  dshistoricoelogio.DataSet.Close;
  dshistoricoelogio.DataSet.Open;
end;

procedure TFrmDisciplina.CdsvincfaltadisciplinarCalcFields(DataSet: TDataSet);
begin
  inherited;

  if DataSet.fieldbyname('ID_FALTA_DISCIPLINAR').AsString <> '' then
  begin

    SqlExecute.SQL.Text := 'SELECT FALTA_DISCIPLINAR FROM FALTA_DISCIPLINAR WHERE ID_FALTA_DISCIPLINAR=' +
      DataSet.fieldbyname('ID_FALTA_DISCIPLINAR').AsString;

    SqlExecute.Close;
    SqlExecute.Open;

    DataSet.fieldbyname('falta_disciplinar').AsString :=
      SqlExecute.FieldByName('FALTA_DISCIPLINAR').AsString;

  end;
end;

procedure TFrmDisciplina.EditarFalta1Click(Sender: TObject);
begin
  inherited;
  Frmvincfaltadisiciplinar.DsCadastro.DataSet.Close;
  Frmvincfaltadisiciplinar.sqlCadastro.Params[0].value :=
    Dsvincfaltadisciplinar.DataSet.fieldbyname('ID_vinc_falta_disciplinar')
    .AsInteger;
  Frmvincfaltadisiciplinar.DsCadastro.DataSet.Open;

  Frmvincfaltadisiciplinar.ShowModal;

end;

procedure TFrmDisciplina.Excluir1Click(Sender: TObject);
begin
  inherited;
  if Dsvincfaltadisciplinar.DataSet.IsEmpty then
  begin
    showmessage('Não há PDI!.');
    exit;
  end;

  MessageDlg('Deseja excluir PDI Nº: ' + Dsvincfaltadisciplinar.DataSet.
    fieldbyname('numero_pdi').AsString + '?', mtConfirmation, mbYesNo,
    procedure(iRet: Integer)
    begin
      if iRet = mrYes then
      begin
        Dsvincfaltadisciplinar.DataSet.Delete;
      end;
    end);

end;

procedure TFrmDisciplina.Liberar1Click(Sender: TObject);
begin
  inherited;
  if Dsvincfaltadisciplinar.DataSet.fieldbyname('status').AsString = '' then
  begin

    MessageDlg('Confirma que o Isolamento Foi Cumprido?',
      mtConfirmation, mbYesNo,
      procedure(iRet: Integer)
      begin
        if iRet = mrYes then
        begin

          Dsvincfaltadisciplinar.DataSet.edit;
          Dsvincfaltadisciplinar.DataSet.fieldbyname('status').AsString :=
            'CUMPRIDO';
          Dsvincfaltadisciplinar.DataSet.Post;
        end;
      end);
  end
  else
  begin
    MessageDlg('Confirma Liberação da Pena?', mtConfirmation, mbYesNo,
      procedure(iRet: Integer)
      begin
        if iRet = mrYes then
        begin
          Dsvincfaltadisciplinar.DataSet.edit;
          Dsvincfaltadisciplinar.DataSet.fieldbyname('status').AsString := '';
          Dsvincfaltadisciplinar.DataSet.Post;
        end;
      end);
  end;

end;

procedure TFrmDisciplina.UniFormCreate(Sender: TObject);
begin
  inherited;
  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', Dm.PERMISSAO_CONFERE).}

  if not ContemValor('I', Dm.PERMISSAO_DISCIPLINA)
    and not ContemValor('E', Dm.PERMISSAO_DISCIPLINA)
    and not ContemValor('D', Dm.PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_DISCIPLINA)
    and not ContemValor('E', Dm.PERMISSAO_DISCIPLINA)
    and not ContemValor('D', Dm.PERMISSAO_DISCIPLINA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_DISCIPLINA)
    and ContemValor('E', Dm.PERMISSAO_DISCIPLINA)
    and not ContemValor('D', Dm.PERMISSAO_DISCIPLINA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_DISCIPLINA)
    and ContemValor('E', Dm.PERMISSAO_DISCIPLINA)
    and ContemValor('D', Dm.PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_DISCIPLINA)
    and not ContemValor('E', Dm.PERMISSAO_DISCIPLINA)
    and ContemValor('D', Dm.PERMISSAO_DISCIPLINA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_DISCIPLINA)
    and not ContemValor('E', Dm.PERMISSAO_DISCIPLINA)
    and ContemValor('D', Dm.PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_DISCIPLINA)
    and ContemValor('E', Dm.PERMISSAO_DISCIPLINA)
    and not ContemValor('D', Dm.PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
end;

procedure TFrmDisciplina.UniFormShow(Sender: TObject);
begin
  inherited;
  TabSheetAdvogados.TabVisible := false;
  TabSheetEndereco.TabVisible := false;
  TabSheetHistorico.TabVisible := false;
  TabSheetFotos.TabVisible := false;
  TabSheetMovAnterior.TabVisible := false;
  TabSheetMapa.TabVisible := false;

  DSvincartigoperfil.DataSet.Close;
  DSvincartigoperfil.DataSet.OPEN;

  Dsvincfaltadisciplinar.DataSet.Close;
  Dsvincfaltadisciplinar.DataSet.OPEN;

  PageControlDisciplina.ActivePageIndex := 0;
  DateTimePickerdataincidencia.DateTime := Date;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  dshistoricoelogio.DataSet.Close;
  dshistoricoelogio.DataSet.OPEN;

  DateTimePickerHistorico.DateTime := Date;
  DateTimePickerelogio.DateTime := Date;

end;

end.
