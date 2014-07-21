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
    UniLabel11: TUniLabel;
    UniLabel21: TUniLabel;
    DBLookupComboBoxfaltadisciplinar: TUniDBLookupComboBox;
    Editpdi: TUniEdit;
    ComboBoxconclusao: TUniComboBox;
    BitBtnIncluir: TUniBitBtn;
    DBGridFaltas: TUniDBGrid;
    ComboBoxClasConduta: TUniComboBox;
    EditNatureza: TUniEdit;
    Memo1: TUniMemo;
    PopupMenuIsolamento: TUniPopupMenu;
    Liberar1: TUniMenuItem;
    N1: TUniMenuItem;
    EditarFalta1: TUniMenuItem;
    N2: TUniMenuItem;
    Excluir1: TUniMenuItem;
    UniMenuButton1: TUniMenuButton;
    Editdtincidencia: TUniDateTimePicker;
    Sqlvincfaltadisciplinar: TSQLQuery;
    BtnBuscar: TUniBitBtn;
    EditDataInstPortaria: TUniDateTimePicker;
    N3: TUniMenuItem;
    ImprimirOficio1: TUniMenuItem;
    UniPageControlFaltaDisciplinar: TUniPageControl;
    UniTabSheetResultado: TUniTabSheet;
    UniLabel12: TUniLabel;
    Editresultado: TUniDateTimePicker;
    ComboBoxresultado: TUniComboBox;
    UniLabel13: TUniLabel;
    ComboBoxTipoSancao: TUniComboBox;
    UniLabel17: TUniLabel;
    EditInicioIsolamento: TUniDateTimePicker;
    UniLabel18: TUniLabel;
    EditQtdeDiasIsolamento: TUniEdit;
    UniLabel20: TUniLabel;
    EditFimIsolamento: TUniDateTimePicker;
    UniLabel19: TUniLabel;
    UniTabSheetRecurso: TUniTabSheet;
    RadioGroupRecurso: TUniRadioGroup;
    UniTabSheetProcedimento: TUniTabSheet;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel9: TUniLabel;
    RadioGroupHomologado: TUniRadioGroup;
    Editreabilitacao: TUniDateTimePicker;
    Editprocedimento: TUniDateTimePicker;
    Editnprocedimento: TUniEdit;
    ComboBoxtipoprocedimento: TUniComboBox;
    RadioGroupPreventivo: TUniRadioGroup;
    EditinicioisolamentoPrev: TUniDateTimePicker;
    UniLabel22: TUniLabel;
    EditqtdediasPrev: TUniEdit;
    UniLabel23: TUniLabel;
    EditfimisolamentoPrev: TUniDateTimePicker;
    UniLabel24: TUniLabel;
    Memoobs: TUniMemo;
    Label122: TUniLabel;
    UniEditLocalArquivo: TUniEdit;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    UniBitBtnUPOrigemProcesso: TUniBitBtn;
    UniLabelUPOrigemProcesso: TUniLabel;
    UniEditUPOrigemProcesso: TUniEdit;
    UniPanelRecurso: TUniPanel;
    ComboBoxDecisaoRecurso: TUniComboBox;
    Label59: TUniLabel;
    UniDateTimePickerRetornoRecurso: TUniDateTimePicker;
    UniLabel28: TUniLabel;
    UniDateTimePickerEnvioRecurso: TUniDateTimePicker;
    UniLabel27: TUniLabel;
    UniDateTimePickerTomouCiencia: TUniDateTimePicker;
    UniLabel29: TUniLabel;
    UniComboBoxResultadoCCT: TUniComboBox;
    UniLabel10: TUniLabel;
    ComunicaodeIsolamentoPreventivo1: TUniMenuItem;
    CIdeEncaminhamentoparaCCT1: TUniMenuItem;
    UniLabel31: TUniLabel;
    UniDateTimePickerCienciaCCT: TUniDateTimePicker;
    UniComboBoxSolicitante: TUniComboBox;
    UniLabel32: TUniLabel;
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
    procedure UniBitBtnUPOrigemProcessoClick(Sender: TObject);
    procedure UniEditUPOrigemProcessoExit(Sender: TObject);
    procedure EditInicioIsolamentoChange(Sender: TObject);
    procedure EditQtdeDiasIsolamentoChange(Sender: TObject);
    procedure ComunicaodeIsolamentoPreventivo1Click(Sender: TObject);
    procedure CIdeEncaminhamentoparaCCT1Click(Sender: TObject);
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
  Consulta, VisualizarRelatorio, ServerModule, FiltroInformarDoc;

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
    showmessage('Digite o N�mero do Documento!');
    exit;
  end;

  if not Dsvincfaltadisciplinar.DataSet.Active then
    Dsvincfaltadisciplinar.DataSet.Open;

  // verifica qual radio est� selecionado para que posteriormente seja gravado no banco de dados pela variavel preventivo
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

  // Dsvincfaltadisciplinar.DataSet.fieldbyname('TIPOFALTA').AsString :=   EditNatureza.Text; // Andr� Almeida

  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_incidencia').Asdatetime :=
    Editdtincidencia.datetime;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_reabilitacao').Asdatetime :=
    Editreabilitacao.datetime;
  // >>dois campos iguais
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_resultado').Asdatetime :=
    Editresultado.datetime;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_condenacao').Asdatetime :=
    Editresultado.datetime;
  // <<dois campos iguais
  Dsvincfaltadisciplinar.DataSet.fieldbyname('obs').AsString := Memoobs.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('conclusaocd').AsString :=
    ComboBoxconclusao.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero_pdi').AsString :=
    Editpdi.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('resultado').AsString :=
    ComboBoxresultado.Text;
  // data inicio, fim e quantidade do preventivo
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_inicio_isolamento').AsString :=
    EditinicioisolamentoPrev.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_fim_isolamento').AsString :=
    EditfimisolamentoPrev.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('qtde_dias_isolamento').AsString :=
    EditqtdediasPrev.Text;

  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_up').AsInteger :=
    Dm.GLOBAL_ID_UP;

  IF strtointdef(UniEditUPOrigemProcesso.Text, 0) > 0 then
    Dsvincfaltadisciplinar.DataSet.fieldbyname('id_up').AsInteger :=
      strtoint(UniEditUPOrigemProcesso.Text);

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
  // NOVO EM 21/07/2014
  Dsvincfaltadisciplinar.DataSet.fieldbyname('SOLICITANTE_CCT').AsString :=
    UniComboBoxSolicitante.Text;

  Dsvincfaltadisciplinar.DataSet.fieldbyname('classificacao_conduta').AsString
    := ComboBoxClasConduta.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('homologacao').AsString :=
    homologado;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('resultado_recurso_cct').AsString
    := UniComboBoxResultadoCCT.Text;

  // NOVO EM 07/07/2014
  Dsvincfaltadisciplinar.DataSet.fieldbyname('LOCAL_ARQUIVO').AsString :=
    UniEditLocalArquivo.Text;


  Dsvincfaltadisciplinar.DataSet.fieldbyname('DATA_ENVIO_RECURSO').Asdatetime :=
    UniDateTimePickerEnvioRecurso.datetime;

  Dsvincfaltadisciplinar.DataSet.fieldbyname('DATA_RETORNO_RECURSO').Asdatetime
    := UniDateTimePickerRetornoRecurso.datetime;

  Dsvincfaltadisciplinar.DataSet.fieldbyname('DATA_CIENCIA_PROCESSO').Asdatetime
    := UniDateTimePickerTomouCiencia.datetime;

  Dsvincfaltadisciplinar.DataSet.fieldbyname('DATA_CIENCIA_CCT').Asdatetime
    := UniDateTimePickerCienciaCCT.datetime;

  Dsvincfaltadisciplinar.DataSet.Post;
  Cdsvincfaltadisciplinar.ApplyUpdates(-1);

  Cdsvincfaltadisciplinar.close;
  Cdsvincfaltadisciplinar.Open;

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
  Limpa;
end;

procedure TFrmConselhoDisciplinar.btnBuscarClick(Sender: TObject);
begin
  inherited;

  {

    if ConsultaTabela(Self,
    'SELECT ID_FALTA_DISCIPLINAR as "Codigo", FALTA_DISCIPLINAR||'', Natureza:''||TIPOFALTA||'', Tempo de Reabilita��o:''||TEMPOREABILITACAO as "Descri��o" FROM FALTA_DISCIPLINAR ORDER BY FALTA_DISCIPLINAR ',
    'FALTA_DISCIPLINAR||'', Natureza:''||TIPOFALTA||'', Tempo de Reabilita��o:''||TEMPOREABILITACAO',
    'CODIGO', DBLookupComboBoxfaltadisciplinar.KeyValue) then
    begin
    Memo1.Text := DBLookupComboBoxfaltadisciplinar.Text;
    EditNatureza.Text := Dsfaltadisciplinar.DataSet.fieldbyname
    ('TIPOFALTA').AsString;

    end;
  }
  Dm.UniFormRetornoConsulta := self;
  Dm.SqlConsultaObjetiva :=
    'SELECT ID_FALTA_DISCIPLINAR as "Codigo", FALTA_DISCIPLINAR||'', Natureza:''||TIPOFALTA||'', Tempo de Reabilita��o:''||TEMPOREABILITACAO as "Descri��o" FROM FALTA_DISCIPLINAR ORDER BY FALTA_DISCIPLINAR ';
  Dm.CampoWhereSqlConsulta :=
    'FALTA_DISCIPLINAR||'', Natureza:''||TIPOFALTA||'', Tempo de Reabilita��o:''||TEMPOREABILITACAO';
  Dm.ID_RETORNO_FORM := 'Codigo';

  FrmConsulta.ShowModal(
    procedure(Result: Integer)
    begin
      if Result = mrOK then
      begin
        DBLookupComboBoxfaltadisciplinar.KeyValue := DM.ID_RETORNO_CONSULTAOBJETIVA;
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
  // cria a mascara em tempo de execu��o est� na lib
end;

procedure TFrmConselhoDisciplinar.EditdtincidenciaExit(Sender: TObject);
begin
  inherited;
  Editreabilitacao.datetime := Editdtincidencia.datetime +
    Dsfaltadisciplinar.DataSet.fieldbyname('TEMPOREABILITACAO').AsInteger;
end;

procedure TFrmConselhoDisciplinar.EditInicioIsolamentoChange(Sender: TObject);
begin
  inherited;

  EditQtdeDiasIsolamento.Text := '';
  EditFimIsolamento.Text := '';

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

  if Dsvincfaltadisciplinar.DataSet.fieldbyname('preventivo').AsString = 'S'
  then
    RadioGroupPreventivo.ItemIndex := 0
  else
    RadioGroupPreventivo.ItemIndex := 1;

  if Dsvincfaltadisciplinar.DataSet.fieldbyname('recurso').AsString = 'S' then
    RadioGroupRecurso.ItemIndex := 0
  else
    RadioGroupRecurso.ItemIndex := 1;

  RadioGroupRecurso.OnClick(nil);

  if Dsvincfaltadisciplinar.DataSet.fieldbyname('homologacao').AsString = 'S'
  then
    RadioGroupHomologado.ItemIndex := 0
  else
    RadioGroupHomologado.ItemIndex := 1;

  Memo1.Text := DBLookupComboBoxfaltadisciplinar.Text;
  EditNatureza.Text := Dsfaltadisciplinar.DataSet.fieldbyname
    ('TIPOFALTA').AsString;

  Editdtincidencia.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_incidencia').AsString;

  Editreabilitacao.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('data_reabilitacao').AsString;

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

  // NOVO EM 21/07/2014
  UniComboBoxSolicitante.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('SOLICITANTE_CCT').AsString;

  UniComboBoxResultadoCCT.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('resultado_recurso_cct').AsString;

  ComboBoxClasConduta.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('classificacao_conduta').AsString;

  // novo 07/07/2014
  UniEditLocalArquivo.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('LOCAL_ARQUIVO').AsString;

  UniDateTimePickerEnvioRecurso.datetime :=
    Dsvincfaltadisciplinar.DataSet.fieldbyname('DATA_ENVIO_RECURSO').Asdatetime;

  UniDateTimePickerRetornoRecurso.datetime :=
    Dsvincfaltadisciplinar.DataSet.fieldbyname('DATA_RETORNO_RECURSO')
    .Asdatetime;

  UniDateTimePickerTomouCiencia.datetime :=
    Dsvincfaltadisciplinar.DataSet.fieldbyname('DATA_CIENCIA_PROCESSO')
    .Asdatetime;

  UniDateTimePickerCienciaCCT.datetime :=
    Dsvincfaltadisciplinar.DataSet.fieldbyname('DATA_CIENCIA_CCT')
    .Asdatetime;

  UniEditUPOrigemProcesso.Text := Dsvincfaltadisciplinar.DataSet.fieldbyname
    ('ID_UP').AsString;

  UniEditUPOrigemProcesso.onexit(nil);

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
    MessageDlg('Confirma Libera��o da Pena?', mtConfirmation, mbYesNo,
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
    UniPanelRecurso.Enabled := true
  else
  begin
    UniPanelRecurso.Enabled := false;
    ComboBoxDecisaoRecurso.ItemIndex := 0;
  // NOVO EM 21/07/2014
    UniComboBoxSolicitante.ItemIndex := 0;
    UniComboBoxSolicitante.TEXT := '';
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
  Editdtincidencia.Text := '';
  Memoobs.Text := '';
  Editpdi.Text := '';
  UniPageControlFaltaDisciplinar.ActivePageIndex := 0;
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
  RadioGroupPreventivo.ItemIndex := 1;
  RadioGroupPreventivo.OnClick(nil);
  RadioGroupRecurso.ItemIndex := 1;
  RadioGroupRecurso.OnClick(nil);
  RadioGroupHomologado.ItemIndex := 0;
  ComboBoxconclusao.ItemIndex := 0;
  Editresultado.Text := '';
  ComboBoxresultado.ItemIndex := 0;
  ComboBoxTipoSancao.ItemIndex := 0;
  ComboBoxClasConduta.ItemIndex := 0;
  ComboBoxDecisaoRecurso.ItemIndex := 0;
  // NOVO EM 21/07/2014
  UniComboBoxSolicitante.ItemIndex := 0;
  ComboBoxtipoprocedimento.ItemIndex := 0;
  Editnprocedimento.Text := '';
  Editprocedimento.Text := '';
  EditNatureza.Text := '';

  // novo 07/07/2014
  UniEditLocalArquivo.Text := '';
  UniDateTimePickerTomouCiencia.Text := '';
  UniDateTimePickerEnvioRecurso.Text := '';
  UniDateTimePickerRetornoRecurso.Text := '';

  // novo 21/07/2014
  UniDateTimePickerCienciaCCT.Text := '';

  { Abrir e fechar as tabelas para atualizar o grid }

  Dsfaltadisciplinar.DataSet.close;
  Dsfaltadisciplinar.DataSet.Open;

  Dsvincfaltadisciplinar.DataSet.close;
  Dsvincfaltadisciplinar.DataSet.Open;

  DSHISTORICO_interno.DataSet.close;
  DSHISTORICO_interno.DataSet.Open;

end;

procedure TFrmConselhoDisciplinar.UniBitBtnUPOrigemProcessoClick
  (Sender: TObject);
begin
  inherited;
  ConsultaTabelaUniEdit(Self,
    'select ID_UP codigo, NOME_UP nome, sigla from UNIDADE_PENAL order by NOME_UP',
    'NOME_UP||sigla', 'codigo', 'nome', UniEditUPOrigemProcesso,
    UniLabelUPOrigemProcesso);

end;

procedure TFrmConselhoDisciplinar.UniEditUPOrigemProcessoExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select NOME_UP from UNIDADE_PENAL where ID_UP=',
    UniEditUPOrigemProcesso, UniLabelUPOrigemProcesso);
end;

procedure TFrmConselhoDisciplinar.UniFormShow(Sender: TObject);
begin
  inherited;
  Dsvincfaltadisciplinar.DataSet.close;
  Dsvincfaltadisciplinar.DataSet.Open;

  Dsfaltadisciplinar.DataSet.close;
  Dsfaltadisciplinar.DataSet.Open;

  DSHISTORICO_interno.DataSet.close;
  DSHISTORICO_interno.DataSet.Open;

  // seta as caixas do radio para n�o e desabilita os edits preventivo para false;
  RadioGroupPreventivo.ItemIndex := 1;
  EditinicioisolamentoPrev.Enabled := false;
  EditfimisolamentoPrev.Enabled := false;
  EditqtdediasPrev.Enabled := false;

  RadioGroupRecurso.ItemIndex := 1;
  UniPanelRecurso.Enabled := false;

  RadioGroupHomologado.ItemIndex := 1;

  Editdtincidencia.Text := datetostr(Date);
  DateTimePickerHistorico.datetime := Date;

end;

procedure TFrmConselhoDisciplinar.FormCreate(Sender: TObject);
begin

  inherited;

  { Verifica as permiss�es que o usu�rio possui para esta tela
    e habilita ou n�o os respectivos bot�es.
    Estas verifica��es devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
    Ex. ContemValor('I', Dm.PERMISSAO_CONFERE). }

  Novo.Visible := true;
  Editar.Visible := true;
  Salvar.Visible := true;

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

procedure TFrmConselhoDisciplinar.DsCadastroDataChange(Sender: TObject;
Field: TField);
begin
  inherited;

  { Verifica as permiss�es que o usu�rio possui para esta tela
    e habilita ou n�o os respectivos bot�es.
    Estas verifica��es devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
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

procedure TFrmConselhoDisciplinar.CIdeEncaminhamentoparaCCT1Click(
  Sender: TObject);
begin
  inherited;
  if Dsvincfaltadisciplinar.DataSet.IsEmpty then
  begin
    showmessage('N�o tem falta.');
    exit;
  end;

  //
  FrmFiltroInformarDoc.Showmodal(
    procedure(AResult: Integer)
    begin
      if AResult = mrOK then
      begin

        Dm.GLOBAL_ID_FALTA_DISCIPLINAR :=
          Dsvincfaltadisciplinar.DataSet.fieldbyname
          ('ID_VINC_FALTA_DISCIPLINAR').AsString;

        DM.GLOBAL_SOLICITANTE := Dsvincfaltadisciplinar.DataSet.fieldbyname
          ('SOLICITANTE_CCT').AsString;

        FrmVisualizarRelatorio.FazExportacaoJPEG := true;
        FrmVisualizarRelatorio.Nome := 'CI Encaminhamento CCT';

        FrmVisualizarRelatorio.CaminhoFR3 := UniServerModule.StartPath +
          'SYSTEM\CI Encaminhamento CCT.fr3';

        if FileExists(UniServerModule.StartPath + 'SYSTEM\' +
          inttostr(Dm.GLOBAL_ID_UP) +
          '\CI Encaminhamento CCT.fr3') then
        begin
          FrmVisualizarRelatorio.CaminhoFR3 := UniServerModule.StartPath +
            'SYSTEM\' + inttostr(Dm.GLOBAL_ID_UP) +
            '\CI Encaminhamento CCT.fr3';
        end;

        FrmVisualizarRelatorio.ShowModal;

      end;
    end);

end;

procedure TFrmConselhoDisciplinar.ComunicaodeIsolamentoPreventivo1Click(
  Sender: TObject);
begin
  inherited;
  if Dsvincfaltadisciplinar.DataSet.IsEmpty then
  begin
    showmessage('N�o tem falta.');
    exit;
  end;
  //
  Prompt('Informe o n�mero do of�cio:', '', mtInformation, mbOKCancel,
    procedure(AResult: Integer; AText: string)
    begin
      if AResult = mrOK then
      begin
        Dm.GLOBAL_OFICIO := AText;
        Dm.GLOBAL_ID_FALTA_DISCIPLINAR :=
          Dsvincfaltadisciplinar.DataSet.fieldbyname
          ('ID_VINC_FALTA_DISCIPLINAR').AsString;
        FrmVisualizarRelatorio.FazExportacaoJPEG := true;
        FrmVisualizarRelatorio.Nome := 'OF. Comunica��o de Falta Disciplinar';

        FrmVisualizarRelatorio.CaminhoFR3 := UniServerModule.StartPath +
          'SYSTEM\OF. Comunica��o de Falta Disciplinar.fr3';

        if FileExists(UniServerModule.StartPath + 'SYSTEM\' +
          inttostr(Dm.GLOBAL_ID_UP) +
          '\OF. Comunica��o de Falta Disciplinar.fr3') then
        begin
          FrmVisualizarRelatorio.CaminhoFR3 := UniServerModule.StartPath +
            'SYSTEM\' + inttostr(Dm.GLOBAL_ID_UP) +
            '\OF. Comunica��o de Falta Disciplinar.fr3';
        end;

        FrmVisualizarRelatorio.ShowModal;

      end;
    end);

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
  // Conta os dias de diferen�a entre as datas inseridas nos Edits.
  if (EditfimisolamentoPrev.Text <> '') and (EditinicioisolamentoPrev.Text <> '')
  then
    EditqtdediasPrev.Text :=
      inttostr(Trunc(StrToDateTime(EditfimisolamentoPrev.Text)) -
      Trunc(StrToDateTime(EditinicioisolamentoPrev.Text)));
end;

procedure TFrmConselhoDisciplinar.EditQtdeDiasIsolamentoChange(Sender: TObject);
var
  DataInicial: TDateTime;
  Dias: Integer;
begin
  inherited;
  if strtointdef(EditQtdeDiasIsolamento.Text, 0) > 0 then
  begin
    DataInicial := EditInicioIsolamento.datetime;
    Dias := strtoint(EditQtdeDiasIsolamento.Text);
    EditFimIsolamento.datetime := IncDay(DataInicial, Dias) - 1;
  end;

end;

procedure TFrmConselhoDisciplinar.EditQtdeDiasIsolamentoClick(Sender: TObject);
begin
  inherited;
  // Conta os dias de diferen�a entre as datas inseridas nos Edits.
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

procedure TFrmConselhoDisciplinar.EditqtdediasPrevExit(Sender: TObject);
var
  DataInicial: TDateTime;
  Dias: Integer;
begin
  inherited;
  if EditqtdediasPrev.Text <> '' then
  begin
    DataInicial := StrToDate(EditinicioisolamentoPrev.Text);
    Dias := strtoint(EditqtdediasPrev.Text);
    EditfimisolamentoPrev.Text := datetostr(IncDay(DataInicial, Dias) - 1);
  end;
end;

procedure TFrmConselhoDisciplinar.Excluir1Click(Sender: TObject);
begin
  inherited;
{
  if not Dsvincfaltadisciplinar.DataSet.Active then
    Dsvincfaltadisciplinar.DataSet.Open;

  Dsvincfaltadisciplinar.DataSet.delete;
}
  showmessage('Por favor solicite a exclus�o para o suporte.');

end;

procedure TFrmConselhoDisciplinar.Limpa;
begin

  DBGridFaltas.Enabled := true;
  DBGridFaltas.Refresh;

  UniPageControlFaltaDisciplinar.ActivePageIndex := 0;
  DBLookupComboBoxfaltadisciplinar.KeyValue := null;
  Memo1.Text := '';
  UniEditUPOrigemProcesso.Text := '';
  UniEditUPOrigemProcesso.onexit(nil);
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
  RadioGroupPreventivo.ItemIndex := 1;
  RadioGroupPreventivo.OnClick(nil);
  RadioGroupRecurso.ItemIndex := 1;
  RadioGroupRecurso.OnClick(nil);
  ComboBoxDecisaoRecurso.ItemIndex := -1;
  // NOVO EM 21/07/2014
  UniComboBoxSolicitante.ItemIndex := -1;
  RadioGroupHomologado.ItemIndex := -1;
  ComboBoxClasConduta.ItemIndex := -1;
  ComboBoxtipoprocedimento.ItemIndex := -1;
  UniComboBoxResultadoCCT.ItemIndex := -1;
  Editreabilitacao.Text := '';
  Editnprocedimento.Text := '';
  Editprocedimento.Text := '';
  Memoobs.Text := '';
  UniEditLocalArquivo.Text := '';
  UniDateTimePickerTomouCiencia.Text := '';
  UniDateTimePickerEnvioRecurso.Text := '';
  UniDateTimePickerRetornoRecurso.Text := '';
  Editdtincidencia.Text := '';
  UniDateTimePickerCienciaCCT.Text := '';

end;

end.
