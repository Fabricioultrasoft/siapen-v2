unit ConselhoDisciplinar;

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
  uniPanel, uniGroupBox, uniSpeedButton, Vcl.StdCtrls, uniMenuButton, Vcl.Menus,
  uniMainMenu, DateUtils;

type
  TFrmConselhoDisciplinar = class(TFrmInterno)
    TabSheetConcelhoDisciplinar: TUniTabSheet;
    DsFaltaDelete: TDataSource;
    CdsFaltaDelete: TClientDataSet;
    DspFaltaDelete: TDataSetProvider;
    SqlFaltaDelete: TSQLQuery;
    Dsfaltadisciplinar: TDataSource;
    Cdsfaltadisciplinar: TClientDataSet;
    Dspfaltadisciplinar: TDataSetProvider;
    Sqlfaltadisciplinar: TSQLQuery;
    Dspvincfaltadisciplinar: TDataSetProvider;
    Cdsvincfaltadisciplinar: TClientDataSet;
    Dsvincfaltadisciplinar: TDataSource;
    Label120: TUniLabel;
    UniLabel5: TUniLabel;
    Label121: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    Label122: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    DBLookupComboBoxfaltadisciplinar: TUniDBLookupComboBox;
    Editpdi: TUniEdit;
    ComboBoxconclusao: TUniComboBox;
    ComboBoxresultado: TUniComboBox;
    ComboBoxtipoprocedimento: TUniComboBox;
    Editnprocedimento: TUniEdit;
    Memoobs: TUniMemo;
    BitBtnIncluir: TUniBitBtn;
    DBGridFaltas: TUniDBGrid;
    GroupBox1: TUniGroupBox;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    EditqtdediasPrev: TUniEdit;
    RadioGroupPreventivo: TUniRadioGroup;
    ComboBoxTipoSancao: TUniComboBox;
    EditQtdeDiasIsolamento: TUniEdit;
    GroupBox2: TUniGroupBox;
    Label59: TUniLabel;
    RadioGroupRecurso: TUniRadioGroup;
    ComboBoxDecisaoRecurso: TUniComboBox;
    ComboBoxClasConduta: TUniComboBox;
    RadioGroupHomologado: TUniRadioGroup;
    EditNatureza: TUniEdit;
    Memo1: TUniMemo;
    PopupMenuIsolamento: TUniPopupMenu;
    Liberar1: TUniMenuItem;
    N1: TUniMenuItem;
    EditarFalta1: TUniMenuItem;
    N2: TUniMenuItem;
    Excluir1: TUniMenuItem;
    UniMenuButton1: TUniMenuButton;
    EditinicioisolamentoPrev: TUniDateTimePicker;
    Editdtincidencia: TUniDateTimePicker;
    Sqlvincfaltadisciplinar: TSQLQuery;
    BtnBuscar: TUniBitBtn;
    EditDataInstPortaria: TUniDateTimePicker;
    EditfimisolamentoPrev: TUniDateTimePicker;
    Editresultado: TUniDateTimePicker;
    EditFimIsolamento: TUniDateTimePicker;
    Editreabilitacao: TUniDateTimePicker;
    Editcondenacao: TUniDateTimePicker;
    Editprocedimento: TUniDateTimePicker;
    EditInicioIsolamento: TUniDateTimePicker;
    N3: TUniMenuItem;
    ImprimirOficio1: TUniMenuItem;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DBLookupComboBoxfaltadisciplinarClick(Sender: TObject);
    procedure DBLookupComboBoxfaltadisciplinarEnter(Sender: TObject);
    procedure DBLookupComboBoxfaltadisciplinarExit(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure EditarClick(Sender: TObject);
    procedure EditarFalta1Click(Sender: TObject);
    procedure EditDataInstPortariaKeyPress(Sender: TObject; var Key: Char);
    procedure EditQtdeDiasIsolamentoClick(Sender: TObject);
    procedure EditQtdeDiasIsolamentoExit(Sender: TObject);
    procedure EditqtdediasPrevClick(Sender: TObject);
    procedure EditqtdediasPrevExit(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure RadioGroupPreventivoClick(Sender: TObject);
    procedure RadioGroupRecursoClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure EditdtincidenciaExit(Sender: TObject);
    procedure ImprimirOficio1Click(Sender: TObject);
  private
    procedure Limpa;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmConselhoDisciplinar: TFrmConselhoDisciplinar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, VincFaltaDisiciplinar, DmPrincipal, Lib,
  Consulta, VisualizarRelatorio, ServerModule;

function FrmConselhoDisciplinar: TFrmConselhoDisciplinar;
begin
  Result := TFrmConselhoDisciplinar
    (UniMainModule.GetFormInstance(TFrmConselhoDisciplinar));
end;

procedure TFrmConselhoDisciplinar.BitBtnIncluirClick(Sender: TObject);
var
  temporeabilitacao: Integer;
  ItenRecord: TBookmark;
  preventivo, recurso, homologado: string;
begin
  ItenRecord := nil;

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

  // verifica qual radio está selecionado para que posteriormente seja gravado no banco de dados pela variavel preventivo
  if RadioGroupPreventivo.ItemIndex = 0 then
    preventivo := 'S'
  else
    preventivo := 'N';
  if RadioGroupRecurso.ItemIndex = 0 then
    recurso := 'S'
  else
    recurso := 'N';
  if RadioGroupHomologado.ItemIndex = 0 then
    homologado := 'S'
  else
    homologado := 'N';

  { Lancando na tabela de vinculo interno/faltadisciplinar }
  if not(Dsvincfaltadisciplinar.DataSet.State in dsEditModes) then
  begin
    Dsvincfaltadisciplinar.DataSet.Append;
    Dsvincfaltadisciplinar.DataSet.fieldbyname('ID_VINC_FALTA_DISCIPLINAR')
      .AsInteger := 0;
  end
  else
  begin
    ItenRecord := Cdsvincfaltadisciplinar.GetBookmark;
  end;

  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_falta_disciplinar').AsInteger
    := DBLookupComboBoxfaltadisciplinar.KeyValue;

  // Dsvincfaltadisciplinar.DataSet.fieldbyname('TIPOFALTA').AsString :=   EditNatureza.Text; // André Almeida

  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_incidencia').Asdatetime :=
    Editdtincidencia.datetime;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_reabilitacao').Asdatetime :=
    Editreabilitacao.datetime;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_condenacao').Asdatetime :=
    Editcondenacao.datetime;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('obs').AsString := Memoobs.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('conclusaocd').AsString :=
    ComboBoxconclusao.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero_pdi').AsString :=
    Editpdi.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('resultado').AsString :=
    ComboBoxresultado.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_resultado').Asdatetime :=
    Editresultado.datetime;
  // data inicio, fim e quantidade do preventivo
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_inicio_isolamento').AsString :=
    EditinicioisolamentoPrev.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_fim_isolamento').AsString :=
    EditfimisolamentoPrev.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('qtde_dias_isolamento').AsString :=
    EditqtdediasPrev.Text;

  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_up').AsInteger :=
    Dm.GLOBAL_ID_UP;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('tipo').AsString :=
    ComboBoxtipoprocedimento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_instauracao').Asdatetime :=
    Editprocedimento.datetime;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero').AsString :=
    Editnprocedimento.Text;

  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_inst_portaria').AsString :=
    EditDataInstPortaria.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('TIPO_SANCAO').AsString :=
    ComboBoxTipoSancao.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_inicio_isolamento')
    .Asdatetime := EditInicioIsolamento.datetime;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_fim_isolamento').Asdatetime
    := EditFimIsolamento.datetime;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('quantidade_dias_isolamento')
    .AsString := EditQtdeDiasIsolamento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('recurso').AsString := recurso;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('preventivo').AsString :=
    preventivo;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('decisao_recurso').AsString :=
    ComboBoxDecisaoRecurso.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('classificacao_conduta').AsString
    := ComboBoxClasConduta.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('homologacao').AsString :=
    homologado;

  Dsvincfaltadisciplinar.DataSet.Post;
  Cdsvincfaltadisciplinar.ApplyUpdates(-1);

  Cdsvincfaltadisciplinar.close;
  Cdsvincfaltadisciplinar.Open;

  DBGridFaltas.Enabled := true;
  DBGridFaltas.Refresh;

  { Limpar falta disciplinar e natureza da falta }
  Limpa;

  if assigned(ItenRecord) then
  begin
    try
      if Cdsvincfaltadisciplinar.BookmarkValid(ItenRecord) then
        Cdsvincfaltadisciplinar.GotoBookmark(ItenRecord);
    finally
      Cdsvincfaltadisciplinar.FreeBookmark(ItenRecord);
    end;
  end;

end;

procedure TFrmConselhoDisciplinar.EditarClick(Sender: TObject);
begin
  inherited;
  PageControlInterno.ActivePageIndex := 0;
  Limpa;
end;

procedure TFrmConselhoDisciplinar.btnBuscarClick(Sender: TObject);
begin
  inherited;

  FrmConsulta.SqlCadastro.SQL.Text :=
    'SELECT ID_FALTA_DISCIPLINAR as "Codigo", FALTA_DISCIPLINAR||'', Natureza:''||TIPOFALTA||'', Tempo de Reabilitação:''||TEMPOREABILITACAO as "Descrição" FROM FALTA_DISCIPLINAR ORDER BY FALTA_DISCIPLINAR ';
  FrmConsulta.Width := Self.Width;
  FrmConsulta.CampoWhereSql :=
    'FALTA_DISCIPLINAR||'', Natureza:''||TIPOFALTA||'', Tempo de Reabilitação:''||TEMPOREABILITACAO';
  FrmConsulta.Coluna := 1;
  FrmConsulta.Top := Self.Top;
  FrmConsulta.Left := Self.Left;
  FrmConsulta.DsCadastro.DataSet.close;
  FrmConsulta.DsCadastro.DataSet.Open;
  FrmConsulta.EditLocalizar.SetFocus;
  FrmConsulta.ShowModal(
    procedure(Result: Integer)
    begin
      if Result = mrOK then
      begin
        DBLookupComboBoxfaltadisciplinar.KeyValue :=
          FrmConsulta.DsCadastro.DataSet.fieldbyname('Codigo').AsInteger;
        Memo1.Text := DBLookupComboBoxfaltadisciplinar.Text;
        EditNatureza.Text := Dsfaltadisciplinar.DataSet.fieldbyname
          ('TIPOFALTA').AsString;
      end;
    end);

end;

procedure TFrmConselhoDisciplinar.EditDataInstPortariaKeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  // cria a mascara em tempo de execução está na lib
end;

procedure TFrmConselhoDisciplinar.EditdtincidenciaExit(Sender: TObject);
begin
  inherited;
  Editreabilitacao.datetime := Editdtincidencia.datetime +
    Dsfaltadisciplinar.DataSet.fieldbyname('TEMPOREABILITACAO').AsInteger;
end;

procedure TFrmConselhoDisciplinar.EditarFalta1Click(Sender: TObject);
begin
  { // inherited;
    // Frmvincfaltadisiciplinar := TFrmvincfaltadisiciplinar.Create(self);
    FrmVincFaltaDisiciplinar.sqlCadastro.sql.Text :=
    'SELECT * FROM vinc_falta_disciplinar where id_vinc_falta_disciplinar =' +
    Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('ID_vinc_falta_disciplinar').AsString;
    FrmVincFaltaDisiciplinar.ShowModal;
    // FreeAndNil(Frmvincfaltadisiciplinar);
  }

  Dsvincfaltadisciplinar.DataSet.edit;
  DBGridFaltas.Enabled := false;

  DBLookupComboBoxfaltadisciplinar.KeyValue :=
    Dsvincfaltadisciplinar.DataSet.fieldbyname('id_falta_disciplinar')
    .AsInteger;

  Memo1.Text := DBLookupComboBoxfaltadisciplinar.Text;
  EditNatureza.Text := Dsfaltadisciplinar.DataSet.fieldbyname
    ('TIPOFALTA').AsString;

  Editdtincidencia.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_incidencia').AsString;

  Editreabilitacao.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_reabilitacao').AsString;

  Editcondenacao.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_condenacao').AsString;

  Memoobs.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname('obs').AsString;

  ComboBoxconclusao.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('conclusaocd').AsString;

  Editpdi.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('numero_pdi').AsString;

  ComboBoxresultado.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('resultado').AsString;

  Editresultado.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_resultado').AsString;

  // data inicio, fim e quantidade do preventivo
  EditinicioisolamentoPrev.datetime :=
    Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_inicio_isolamento')
    .Asdatetime;

  EditfimisolamentoPrev.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('dt_fim_isolamento').AsString;
  EditqtdediasPrev.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('qtde_dias_isolamento').AsString;

  ComboBoxtipoprocedimento.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('tipo').AsString;

  Editprocedimento.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_instauracao').AsString;

  Editnprocedimento.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('numero').AsString;

  EditDataInstPortaria.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_inst_portaria').AsString;

  ComboBoxTipoSancao.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('TIPO_SANCAO').AsString;

  EditInicioIsolamento.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_inicio_isolamento').AsString;

  EditFimIsolamento.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_fim_isolamento').AsString;

  EditQtdeDiasIsolamento.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('quantidade_dias_isolamento').AsString;

  ComboBoxDecisaoRecurso.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('decisao_recurso').AsString;
  ComboBoxClasConduta.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('classificacao_conduta').AsString;

  if Dsvincfaltadisciplinar.DataSet.fieldbyname('preventivo').AsString = 'S'
  then
    RadioGroupPreventivo.ItemIndex := 0
  else
    RadioGroupPreventivo.ItemIndex := 1;

  if Dsvincfaltadisciplinar.DataSet.fieldbyname('recurso').AsString = 'S' then
    RadioGroupRecurso.ItemIndex := 0
  else
    RadioGroupRecurso.ItemIndex := 1;

  if Dsvincfaltadisciplinar.DataSet.fieldbyname('homologacao').AsString = 'S'
  then
    RadioGroupHomologado.ItemIndex := 0
  else
    RadioGroupHomologado.ItemIndex := 1;

end;

procedure TFrmConselhoDisciplinar.Liberar1Click(Sender: TObject);
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

procedure TFrmConselhoDisciplinar.RadioGroupPreventivoClick(Sender: TObject);
begin
  inherited;
  if RadioGroupPreventivo.ItemIndex = 0 then
  begin
    EditinicioisolamentoPrev.Enabled := true;
    EditfimisolamentoPrev.Enabled := true;
    EditqtdediasPrev.Enabled := true
  end
  else
  begin
    EditinicioisolamentoPrev.Enabled := false;
    EditfimisolamentoPrev.Enabled := false;
    EditqtdediasPrev.Enabled := false;
    EditinicioisolamentoPrev.Text := '';
    EditfimisolamentoPrev.Text := '';
    EditqtdediasPrev.Text := '';
  end;
end;

procedure TFrmConselhoDisciplinar.RadioGroupRecursoClick(Sender: TObject);
begin
  inherited;
  if RadioGroupRecurso.ItemIndex = 0 then
    ComboBoxDecisaoRecurso.Enabled := true
  else
  begin
    ComboBoxDecisaoRecurso.Enabled := false;
    ComboBoxDecisaoRecurso.ItemIndex := 0;
  end;
end;

procedure TFrmConselhoDisciplinar.Button1Click(Sender: TObject);
begin
  inherited;

  { Inserir Historico Conselho Disciplinar na tabela historico_interno }

  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.datetime);
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString :=
    MemoDescricao.Lines.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString :=
    'Conselho Disciplinar';
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    Dm.GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmConselhoDisciplinar.SalvarClick(Sender: TObject);
begin
  // Cdsvincfaltadisciplinar.CancelUpdates;
  inherited;
  { Limpar todos os componentes da aba conselho disciplinar }
  DBLookupComboBoxfaltadisciplinar.KeyValue := null;
  Editreabilitacao.Text := '';
  Editcondenacao.Text := '';
  Memoobs.Text := '';
  Editcondenacao.Text := '';
  Editpdi.Text := '';
  ComboBoxresultado.ItemIndex := 0;
  ComboBoxconclusao.ItemIndex := 0;
  Editdtincidencia.Text := datetostr(Date);
  EditinicioisolamentoPrev.Text := '';
  EditqtdediasPrev.Text := '';
  EditfimisolamentoPrev.Text := '';
  EditDataInstPortaria.Text := '';
  ComboBoxTipoSancao.ItemIndex := 0;
  EditInicioIsolamento.Text := '';
  EditFimIsolamento.Text := '';
  EditQtdeDiasIsolamento.Text := '';
  RadioGroupPreventivo.ItemIndex := 0;
  RadioGroupRecurso.ItemIndex := 0;
  RadioGroupHomologado.ItemIndex := 0;
  ComboBoxconclusao.ItemIndex := 0;
  Editresultado.Text := '';
  ComboBoxresultado.ItemIndex := 0;
  ComboBoxTipoSancao.ItemIndex := 0;
  ComboBoxClasConduta.ItemIndex := 0;
  ComboBoxDecisaoRecurso.ItemIndex := 0;
  ComboBoxtipoprocedimento.ItemIndex := 0;
  Editnprocedimento.Text := '';
  Editprocedimento.Text := '';
  EditNatureza.Text := '';

  { Abrir e fechar as tabelas para atualizar o grid }

  Dsfaltadisciplinar.DataSet.close;
  Dsfaltadisciplinar.DataSet.Open;

  Dsvincfaltadisciplinar.DataSet.close;
  Dsvincfaltadisciplinar.DataSet.Open;

  DSHISTORICO_interno.DataSet.close;
  DSHISTORICO_interno.DataSet.Open;

end;

procedure TFrmConselhoDisciplinar.UniFormShow(Sender: TObject);
begin
  inherited;
  TabSheetAdvogados.TabVisible := false;
  TabSheetEndereco.TabVisible := false;
  TabSheetHistorico.TabVisible := false;
  TabSheetFotos.TabVisible := false;
  TabSheetMovAnterior.TabVisible := false;
  TabSheetMapa.TabVisible := false;

  Dsvincfaltadisciplinar.DataSet.close;
  Dsvincfaltadisciplinar.DataSet.Open;

  Dsfaltadisciplinar.DataSet.close;
  Dsfaltadisciplinar.DataSet.Open;

  DSHISTORICO_interno.DataSet.close;
  DSHISTORICO_interno.DataSet.Open;

  // seta as caixas do radio para não e desabilita os edits preventivo para false;
  RadioGroupPreventivo.ItemIndex := 1;
  EditinicioisolamentoPrev.Enabled := false;
  EditfimisolamentoPrev.Enabled := false;
  EditqtdediasPrev.Enabled := false;

  RadioGroupRecurso.ItemIndex := 1;
  ComboBoxDecisaoRecurso.Enabled := false;

  RadioGroupHomologado.ItemIndex := 1;

  Editdtincidencia.Text := datetostr(Date);
  DateTimePickerHistorico.datetime := Date;

end;

procedure TFrmConselhoDisciplinar.FormCreate(Sender: TObject);
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

  if not ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    Excluir.Visible := false;
    Salvar.Visible := false;
  end;

  if ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Editar.Visible := false;
    Excluir.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Excluir.Visible := false;
  end;

  if not ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := false;
  end;

  if ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := false;
    Excluir.Visible := false;
  end;

  Dsfaltadisciplinar.DataSet.close;
  Dsfaltadisciplinar.DataSet.Open;
  Dsfaltadisciplinar.DataSet.Last;

end;

procedure TFrmConselhoDisciplinar.ImprimirOficio1Click(Sender: TObject);
begin
  inherited;
  if Dsvincfaltadisciplinar.DataSet.IsEmpty then
  begin
    showmessage('Não tem falta.');
    exit;
  end;
  //
  Prompt('Informe o número do ofício:', '', mtInformation, mbOKCancel,
    procedure(AResult: Integer; AText: string)
    begin
      if AResult = mrOK then
      begin
        Dm.GLOBAL_OFICIO := AText;
        Dm.GLOBAL_ID_FALTA_DISCIPLINAR :=
          Dsvincfaltadisciplinar.DataSet.fieldbyname
          ('ID_VINC_FALTA_DISCIPLINAR').AsString;
        FrmVisualizarRelatorio.FazExportacaoJPEG := true;
        FrmVisualizarRelatorio.Nome := 'OF. Comunicação de Falta Disciplinar';

        FrmVisualizarRelatorio.CaminhoFR3 := UniServerModule.StartPath +
          'SYSTEM\OF. Comunicação de Falta Disciplinar.fr3';

        if FileExists(UniServerModule.StartPath + 'SYSTEM\' +
          inttostr(Dm.GLOBAL_ID_UP) +
          '\OF. Comunicação de Falta Disciplinar.fr3') then
        begin
          FrmVisualizarRelatorio.CaminhoFR3 := UniServerModule.StartPath +
            'SYSTEM\' + inttostr(Dm.GLOBAL_ID_UP) +
            '\OF. Comunicação de Falta Disciplinar.fr3';
        end;

        FrmVisualizarRelatorio.ShowModal;

      end;
    end);

end;

procedure TFrmConselhoDisciplinar.DsCadastroDataChange(Sender: TObject;
Field: TField);
begin
  inherited;

  { Verifica as permissões que o usuário possui para esta tela
    e habilita ou não os respectivos botões.
    Estas verificações devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
    Ex. ContemValor('I', Dm.PERMISSAO_CONFERE). }

  if not ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    Excluir.Visible := false;
    Salvar.Visible := false;
  end;

  if ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Editar.Visible := false;
    Excluir.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Excluir.Visible := false;
  end;

  if not ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := false;
  end;

  if ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    ContemValor('E', Dm.PERMISSAO_CONSELHODISCIPLINAR) and
    not ContemValor('D', Dm.PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := false;
    Excluir.Visible := false;
  end;

end;

procedure TFrmConselhoDisciplinar.CancelarClick(Sender: TObject);
begin
  inherited;

  Dsvincfaltadisciplinar.DataSet.close;
  Dsvincfaltadisciplinar.DataSet.Open;

  DSHISTORICO_interno.DataSet.close;
  DSHISTORICO_interno.DataSet.Open;
end;

procedure TFrmConselhoDisciplinar.PageControlModeloCadastroChange
  (Sender: TObject);
begin
  // inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

procedure TFrmConselhoDisciplinar.EditqtdediasPrevClick(Sender: TObject);
begin
  inherited;
  // Conta os dias de diferença entre as datas inseridas nos Edits.
  if (EditfimisolamentoPrev.Text <> '') and (EditinicioisolamentoPrev.Text <> '')
  then
    EditqtdediasPrev.Text :=
      inttostr(Trunc(StrToDateTime(EditfimisolamentoPrev.Text)) -
      Trunc(StrToDateTime(EditinicioisolamentoPrev.Text)));
end;

procedure TFrmConselhoDisciplinar.EditQtdeDiasIsolamentoClick(Sender: TObject);
begin
  inherited;
  // Conta os dias de diferença entre as datas inseridas nos Edits.
  if (EditFimIsolamento.Text <> '') and (EditInicioIsolamento.Text <> '') then
    EditQtdeDiasIsolamento.Text :=
      inttostr(Trunc(StrToDateTime(EditFimIsolamento.Text)) -
      Trunc(StrToDateTime(EditInicioIsolamento.Text)));
end;

procedure TFrmConselhoDisciplinar.DBLookupComboBoxfaltadisciplinarExit
  (Sender: TObject);
begin
  inherited;
  Memo1.Text := DBLookupComboBoxfaltadisciplinar.Text;
  EditNatureza.Text := Dsfaltadisciplinar.DataSet.fieldbyname
    ('TIPOFALTA').AsString;
end;

procedure TFrmConselhoDisciplinar.DBLookupComboBoxfaltadisciplinarEnter
  (Sender: TObject);
begin
  inherited;
  Dsfaltadisciplinar.DataSet.Last;
end;

procedure TFrmConselhoDisciplinar.DBLookupComboBoxfaltadisciplinarClick
  (Sender: TObject);
begin
  inherited;
  Dsfaltadisciplinar.DataSet.Last;
end;

procedure TFrmConselhoDisciplinar.EditQtdeDiasIsolamentoExit(Sender: TObject);
var
  DataInicial: TDateTime;
  Dias: Integer;
begin
  inherited;
  if EditQtdeDiasIsolamento.Text <> '' then
  begin
    DataInicial := StrToDate(EditInicioIsolamento.Text);
    Dias := StrToInt(EditQtdeDiasIsolamento.Text);
    EditFimIsolamento.Text := datetostr(IncDay(DataInicial, Dias) - 1);
  end;
  { ValidaDataExit(Sender);
    if (EditfimisolamentoPrev.Text <> '') and (EditinicioisolamentoPrev.Text <> '') then
    EditqtdediasPrev.Text := IntToStr(Trunc(StrToDateTime(EditfimisolamentoPrev.Text)) -
    Trunc(StrToDateTime(EditinicioisolamentoPrev.Text))+1);

    if (EditFimIsolamento.Text <> '') and (EditInicioIsolamento.Text <> '') then
    Editqtdediasisolamento.Text := IntToStr(Trunc(StrToDateTime(Editfimisolamento.Text)) -
    Trunc(StrToDateTime(Editinicioisolamento.Text))+1); }
end;

procedure TFrmConselhoDisciplinar.EditqtdediasPrevExit(Sender: TObject);
var
  DataInicial: TDateTime;
  Dias: Integer;
begin
  inherited;
  if EditqtdediasPrev.Text <> '' then
  begin
    DataInicial := StrToDate(EditinicioisolamentoPrev.Text);
    Dias := StrToInt(EditqtdediasPrev.Text);
    EditfimisolamentoPrev.Text := datetostr(IncDay(DataInicial, Dias) - 1);
  end;
end;

procedure TFrmConselhoDisciplinar.Excluir1Click(Sender: TObject);
begin
  inherited;

  if not Dsvincfaltadisciplinar.DataSet.Active then
    Dsvincfaltadisciplinar.DataSet.Open;

  Dsvincfaltadisciplinar.DataSet.delete;
  showmessage
    ('Clique no botão SALVAR para confirmar a exclusão da falta disciplinar.');
end;

procedure TFrmConselhoDisciplinar.Limpa;
begin

  DBLookupComboBoxfaltadisciplinar.KeyValue := null;
  Memo1.Text := '';
  EditNatureza.Text := '';
  Editpdi.Text := '';
  Editdtincidencia.datetime := now;
  EditDataInstPortaria.Text := '';
  EditinicioisolamentoPrev.Text := '';
  RadioGroupPreventivo.ItemIndex := -1;
  EditqtdediasPrev.Text := '';
  EditfimisolamentoPrev.Text := '';
  ComboBoxconclusao.ItemIndex := -1;
  Editresultado.Text := '';
  ComboBoxresultado.ItemIndex := -1;
  ComboBoxTipoSancao.ItemIndex := -1;
  EditInicioIsolamento.Text := '';
  EditQtdeDiasIsolamento.Text := '';
  EditFimIsolamento.Text := '';
  RadioGroupRecurso.ItemIndex := -1;
  ComboBoxDecisaoRecurso.ItemIndex := -1;
  RadioGroupHomologado.ItemIndex := -1;
  ComboBoxClasConduta.ItemIndex := -1;
  ComboBoxtipoprocedimento.ItemIndex := -1;
  Editreabilitacao.Text := '';
  Editcondenacao.Text := '';
  Editnprocedimento.Text := '';
  Editprocedimento.Text := '';
  Memoobs.Text := '';

end;

end.
