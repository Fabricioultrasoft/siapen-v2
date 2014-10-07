unit CadastroInternoTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Interno, Data.FMTBcd, Data.DB, MemDS, DBAccess,
  Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniRadioGroup, uniEdit,
  uniDBNavigator, uniDBMemo, uniBasicGrid, uniDBGrid, uniMemo, uniButton,
  uniDateTimePicker, uniDBDateTimePicker, uniCheckBox, uniDBCheckBox,
  uniDBComboBox, uniMultiItem, uniComboBox, uniDBLookupComboBox, uniDBEdit,
  uniPageControl, uniDBImage, uniBitBtn, uniLabel, Vcl.Imaging.jpeg, uniImage,
  uniPanel, uniGroupBox, uniSpeedButton, Vcl.Menus, uniMainMenu, uniMenuButton;

type
  TFrmCadastroInternoTrabalho = class(TFrmInterno)
    UniTabSheetTrabalho: TUniTabSheet;
    dscertidao_trabalho: TDataSource;
    cdscertidao_trabalho: TClientDataSet;
    dspcertidao_trabalho: TDataSetProvider;
    SQLcertidao_trabalho: TSQLQuery;
    SQLhistorico_trabalho: TSQLQuery;
    dsphistorico_trabalho: TDataSetProvider;
    cdshistorico_trabalho: TClientDataSet;
    dshistorico_trabalho: TDataSource;
    dscalc_trabalho: TDataSource;
    cdscalc_trabalho: TClientDataSet;
    dspcalc_trabalho: TDataSetProvider;
    SQLcalc_trabalho: TSQLQuery;
    PageControlTrabalho: TUniPageControl;
    TabSheet5: TUniTabSheet;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    Label74: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    DBEditobstrabalho: TUniDBEdit;
    DBEditdoctrabalho: TUniDBEdit;
    DBComboBoxtipoatividade: TUniDBComboBox;
    TabSheet8: TUniTabSheet;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    Label68: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    Label73: TUniLabel;
    UniLabel19: TUniLabel;
    Label91: TUniLabel;
    DBEditentradasemanal: TUniDBEdit;
    DBEditsaidasemanal: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    DBEditentradasaidao: TUniDBEdit;
    DBEditsaidasaidao: TUniDBEdit;
    DBEditentradasabado: TUniDBEdit;
    DBEditsaidasabado: TUniDBEdit;
    DBEditentradadomingo: TUniDBEdit;
    DBEditsaidadomingo: TUniDBEdit;
    DBEdit41: TUniDBEdit;
    GroupBox2: TUniGroupBox;
    Label76: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel27: TUniLabel;
    Label90: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    DBEdit39: TUniDBEdit;
    DBEdit40: TUniDBEdit;
    DBEdit42: TUniDBEdit;
    BtnCopiar: TUniButton;
    UniDBMemo1: TUniDBMemo;
    UniDBEditFuncaoInterno: TUniDBEdit;
    UniBitBtnFuncaoInterno: TUniBitBtn;
    UniLabelFuncaoInterno: TUniLabel;
    UniLabelLocalTrabalho: TUniLabel;
    UniBitBtnLocalTrabalho: TUniBitBtn;
    UniDBEditLocalTrabalho: TUniDBEdit;
    UniLabelSetorTrabalho: TUniLabel;
    UniBitBtnSetorTrabalho: TUniBitBtn;
    UniDBEditSetorTrabalho: TUniDBEdit;
    UniTabSheet1: TUniTabSheet;
    PageControlRemicao: TUniPageControl;
    TabSheet4: TUniTabSheet;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniLabel31: TUniLabel;
    GroupBox1: TUniGroupBox;
    CHDomingo: TUniCheckBox;
    CHsabado: TUniCheckBox;
    UniButton1: TUniButton;
    PageControl3: TUniPageControl;
    TabSheet6: TUniTabSheet;
    DBGrid2: TUniDBGrid;
    DateTimePickerdatainicial: TUniDateTimePicker;
    DateTimePickerdatafinal: TUniDateTimePicker;
    Editdiastrabalhado: TUniEdit;
    UniButton2: TUniButton;
    TabSheet7: TUniTabSheet;
    UniLabel32: TUniLabel;
    UniLabel33: TUniLabel;
    UniLabel34: TUniLabel;
    UniLabel35: TUniLabel;
    UniLabel36: TUniLabel;
    Label59: TUniLabel;
    UniLabel37: TUniLabel;
    DateTimePickerdtinicialcertidao: TUniDateTimePicker;
    BitBtn1: TUniBitBtn;
    Editdiastrabalhadocertidao: TUniEdit;
    Editdiasremidocertidao: TUniEdit;
    Editsaldoanterior: TUniEdit;
    Editsaldoproximo: TUniEdit;
    UniDBGrid2: TUniDBGrid;
    BitBtn2: TUniBitBtn;
    Edittotaltrabalhado: TUniEdit;
    UniMenuButtonOpcoesTrabalho: TUniMenuButton;
    PopupMenuTrabalho: TUniPopupMenu;
    Liberar1: TUniMenuItem;
    EditarTrabalho1: TUniMenuItem;
    UniBitBtnExcluirCertidao: TUniBitBtn;
    UniBitBtnExcluirRemicao: TUniBitBtn;
    DateTimePickerdtfinalcertidao: TUniDateTimePicker;
    DBEditdtsetor: TUniDBDateTimePicker;
    procedure UniDBEditFuncaoInternoExit(Sender: TObject);
    procedure UniBitBtnFuncaoInternoClick(Sender: TObject);
    procedure UniDBEditLocalTrabalhoExit(Sender: TObject);
    procedure UniBitBtnLocalTrabalhoClick(Sender: TObject);
    procedure UniBitBtnSetorTrabalhoClick(Sender: TObject);
    procedure UniDBEditSetorTrabalhoExit(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure UniBitBtnExcluirCertidaoClick(Sender: TObject);
    procedure UniBitBtnExcluirRemicaoClick(Sender: TObject);
    procedure EditarTrabalho1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure BtnCopiarClick(Sender: TObject);
  private
    sttrabalho: string;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmCadastroInternoTrabalho: TFrmCadastroInternoTrabalho;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, Lib, MotivoDispensaTrabalho;

function FrmCadastroInternoTrabalho: TFrmCadastroInternoTrabalho;
begin
  Result := TFrmCadastroInternoTrabalho(UniMainModule.GetFormInstance(TFrmCadastroInternoTrabalho));
end;

procedure TFrmCadastroInternoTrabalho.UniBitBtnSetorTrabalhoClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self, 'select id_SETOR_TRABALHO CODIGO, SETOR_TRABALHO DESCRICAO from SETOR_TRABALHO ' + ' order by SETOR_TRABALHO ', 'SETOR_TRABALHO',
      'CODIGO', 'DESCRICAO', UniDBEditSetorTrabalho, UniLabelSetorTrabalho);

  end;

end;

procedure TFrmCadastroInternoTrabalho.BitBtn1Click(Sender: TObject);
var
  diastrabalhado, saldoanterior, diastrabalhadoanterior, diastrabalhadototal: integer;
begin
  inherited;

  diastrabalhado := 0;
  saldoanterior := 0;
  diastrabalhadoanterior := 0;
  diastrabalhadototal := 0;

  dm.SqlExecute.SQL.Text := 'select * from calc_setor_trabalho c where  c.id_interno = ' + DsCadastro.DataSet.fieldbyname('id_interno').asstring +
    ' and c.data_inicial >= ' + qs(formatdatetime('mm/dd/yyyy', DateTimePickerdtinicialcertidao.Datetime)) + ' and c.data_final <= ' +
    qs(formatdatetime('mm/dd/yyyy', DateTimePickerdtfinalcertidao.Datetime));

  dm.DsExecute.DataSet.close;
  dm.DsExecute.DataSet.Open;

  if dm.DsExecute.DataSet.RecordCount > 0 then
  begin
    dm.DsExecute.DataSet.First;
    while not dm.DsExecute.DataSet.eof do
    begin
      diastrabalhado := diastrabalhado + dm.DsExecute.DataSet.fieldbyname('qtdediastrabalhado').asinteger;

      dm.DsExecute.DataSet.Next;
    end;
    dm.DsExecute.DataSet.close;

    dm.SqlExecute.SQL.Text := 'select * from calc_setor_trabalho c where  c.id_interno = ' + DsCadastro.DataSet.fieldbyname('id_interno').asstring +
      ' and c.data_inicial < ' + qs(formatdatetime('mm/dd/yyyy', DateTimePickerdtinicialcertidao.Datetime));

    dm.DsExecute.DataSet.close;
    dm.DsExecute.DataSet.Open;

    if dm.DsExecute.DataSet.RecordCount > 0 then
    begin
      dm.DsExecute.DataSet.First;
      while not dm.DsExecute.DataSet.eof do
      begin

        diastrabalhadoanterior := diastrabalhadoanterior + dm.DsExecute.DataSet.fieldbyname('qtdediastrabalhado').asinteger;

        dm.DsExecute.DataSet.Next;
      end;
      dm.DsExecute.DataSet.close;
    end;

    Editsaldoanterior.Text := inttostr(diastrabalhadoanterior mod 3);
    if Editsaldoanterior.Text <> '' then
      diastrabalhadototal := (diastrabalhado + (strtoint(Editsaldoanterior.Text)))
    else
      diastrabalhadototal := diastrabalhado;
    Editdiastrabalhadocertidao.Text := inttostr(diastrabalhado);
    Edittotaltrabalhado.Text := inttostr(diastrabalhadototal);
    Editdiasremidocertidao.Text := inttostr(diastrabalhadototal div 3);
    Editsaldoproximo.Text := inttostr(diastrabalhadototal mod 3);

  end;
end;

procedure TFrmCadastroInternoTrabalho.BitBtn2Click(Sender: TObject);
begin

  if Editdiastrabalhadocertidao.Text = '' then
  begin
    showmessage('Dias Trabalhado Inválido!');
    exit;
  end;

  dscertidao_trabalho.DataSet.Append;
  dscertidao_trabalho.DataSet.fieldbyname('id_atestado_trabalho').asinteger := 0;
  dscertidao_trabalho.DataSet.fieldbyname('id_interno').asinteger := DsCadastro.DataSet.fieldbyname('id_interno').asinteger;
  dscertidao_trabalho.DataSet.fieldbyname('data_inicial').asstring := formatdatetime('dd/mm/yyyy', DateTimePickerdtinicialcertidao.Datetime);
  dscertidao_trabalho.DataSet.fieldbyname('data_final').asstring := formatdatetime('dd/mm/yyyy', DateTimePickerdtfinalcertidao.Datetime);
  dscertidao_trabalho.DataSet.fieldbyname('dias_trabalhado').asstring := Editdiastrabalhadocertidao.Text;
  dscertidao_trabalho.DataSet.fieldbyname('dias_remido').asstring := Editdiasremidocertidao.Text;
  dscertidao_trabalho.DataSet.fieldbyname('saldo_anterior').asstring := Editsaldoanterior.Text;
  dscertidao_trabalho.DataSet.fieldbyname('total_dias').asstring := Edittotaltrabalhado.Text;
  dscertidao_trabalho.DataSet.fieldbyname('saldo_proxima').asstring := Editsaldoproximo.Text;
  dscertidao_trabalho.DataSet.Post;

  Editdiastrabalhadocertidao.Text := '';
  Editdiasremidocertidao.Text := '';
  Editsaldoanterior.Text := '';
  Editsaldoproximo.Text := '';
  Edittotaltrabalhado.Text := '';

end;

procedure TFrmCadastroInternoTrabalho.BtnCopiarClick(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_DOMINGO').Value := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEG').Value := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_TER').Value := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_QUA').Value := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_QUI').Value := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEX').Value := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SABADO').Value := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEMANAL').Value;

  DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_DOMINGO').Value := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEG').Value := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_TER').Value := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_QUA').Value := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_QUI').Value := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEX').Value := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SABADO').Value := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEMANAL').Value;

end;

procedure TFrmCadastroInternoTrabalho.Button2Click(Sender: TObject);
var
  naoremir: string;

begin
  naoremir := '';

  if CHDomingo.Checked = True then
    naoremir := naoremir + '0';

  if CHsabado.Checked = True then
    naoremir := naoremir + '6';

  Editdiastrabalhado.Text := inttostr(DiasUteis(DateTimePickerdatainicial.Datetime, DateTimePickerdatafinal.Datetime, naoremir));

end;

procedure TFrmCadastroInternoTrabalho.Button3Click(Sender: TObject);
begin
  if Editdiastrabalhado.Text = '' then
  begin
    showmessage('Pressione Botão Calcular!');
    exit;
  end;

  dscalc_trabalho.DataSet.Append;
  dscalc_trabalho.DataSet.fieldbyname('idcalc_setor_trabalho').asinteger := 0;
  dscalc_trabalho.DataSet.fieldbyname('id_interno').asinteger := DsCadastro.DataSet.fieldbyname('id_interno').asinteger;
  dscalc_trabalho.DataSet.fieldbyname('data_inicial').asstring := formatdatetime('dd/mm/yyyy', DateTimePickerdatainicial.Datetime);
  dscalc_trabalho.DataSet.fieldbyname('data_final').asstring := formatdatetime('dd/mm/yyyy', DateTimePickerdatafinal.Datetime);
  dscalc_trabalho.DataSet.fieldbyname('qtdediastrabalhado').asstring := Editdiastrabalhado.Text;
  dscalc_trabalho.DataSet.Post;

  Editdiastrabalhado.Text := '';

end;

procedure TFrmCadastroInternoTrabalho.EditarClick(Sender: TObject);
begin
  inherited;

  DateTimePickerdatainicial.Text := '';
  DateTimePickerdatafinal.Text := '';
  DateTimePickerdtinicialcertidao.Text := '';
  DateTimePickerdtfinalcertidao.Text := '';

  PageControlTrabalho.activepageindex := 0;
  PageControlRemicao.activepageindex := 0;
  UniDBEditLocalTrabalhoExit(nil);
  UniDBEditSetorTrabalhoExit(nil);
  UniDBEditFuncaoInternoExit(nil);

  sttrabalho := UniDBEditSetorTrabalho.Text;

  if sttrabalho <> '' then
  begin
    DBEditdtsetor.Enabled := false;
    DBEditobstrabalho.Enabled := false;
    DBEditdoctrabalho.Enabled := false;
    UniDBEditLocalTrabalho.Enabled := false;
    UniDBEditSetorTrabalho.Enabled := false;
    UniDBEditFuncaoInterno.Enabled := false;
    UniBitBtnLocalTrabalho.Enabled := false;
    UniBitBtnSetorTrabalho.Enabled := false;
    UniBitBtnFuncaoInterno.Enabled := false;
    DBComboBoxtipoatividade.Enabled := false;
  end
  else
  begin
    DBEditdtsetor.Enabled := True;
    DBEditobstrabalho.Enabled := True;
    DBEditdoctrabalho.Enabled := True;
    UniDBEditLocalTrabalho.Enabled := True;
    UniDBEditSetorTrabalho.Enabled := True;
    UniDBEditFuncaoInterno.Enabled := True;
    UniBitBtnLocalTrabalho.Enabled := True;
    UniBitBtnSetorTrabalho.Enabled := True;
    UniBitBtnFuncaoInterno.Enabled := True;
    DBComboBoxtipoatividade.Enabled := True;
  end;

  dshistorico_trabalho.DataSet.close;
  dshistorico_trabalho.DataSet.Open;

  dscalc_trabalho.DataSet.close;
  dscalc_trabalho.DataSet.Open;

  dscertidao_trabalho.DataSet.close;
  dscertidao_trabalho.DataSet.Open;

end;

procedure TFrmCadastroInternoTrabalho.EditarTrabalho1Click(Sender: TObject);
begin
  inherited;
  if not ContemValor('E', dm.PERMISSAO_TRABALHO) then
  begin
    showmessage('Você não tem permissão para realizar esta operação!');
    exit;
  end;

  DBEditdtsetor.Enabled := True;
  DBEditobstrabalho.Enabled := True;
  DBEditdoctrabalho.Enabled := True;
  UniDBEditLocalTrabalho.Enabled := True;
  UniDBEditSetorTrabalho.Enabled := True;
  UniDBEditFuncaoInterno.Enabled := True;
  UniBitBtnLocalTrabalho.Enabled := True;
  UniBitBtnSetorTrabalho.Enabled := True;
  UniBitBtnFuncaoInterno.Enabled := True;
  DBComboBoxtipoatividade.Enabled := True;

end;

procedure TFrmCadastroInternoTrabalho.Liberar1Click(Sender: TObject);
begin
  inherited;

  if not ContemValor('E', dm.PERMISSAO_TRABALHO) then
  begin
    showmessage('Você não tem permissão para realizar esta operação!');
    exit;
  end;

  if dshistorico_trabalho.DataSet.fieldbyname('data_saida').asstring <> '' then
  begin
    showmessage('Trabalho já liberado!');
    exit;
  end;

  MessageDlg('Confirma liberação de Trabalho?', mtConfirmation, mbYesNo,
    procedure(Sender: TComponent; iRet: integer)
    begin
      if iRet = mrYes then
      begin
        FrmMotivoDispensaTrabalho.ShowModal(
          procedure(Sender: TComponent; iRet: integer)
          begin
            if iRet = mrOk then
            begin

              dshistorico_trabalho.DataSet.Edit;
              dshistorico_trabalho.DataSet.fieldbyname('DOCUMENTO_DESCLASSIFICACAO').asstring := FrmMotivoDispensaTrabalho.Editdocumento.Text;
              dshistorico_trabalho.DataSet.fieldbyname('data_saida').asstring := formatdatetime('dd/mm/yyyy',
                FrmMotivoDispensaTrabalho.adpDBDateTimePickerdtsaida.Datetime);
              dshistorico_trabalho.DataSet.fieldbyname('motivo_saida').asstring := FrmMotivoDispensaTrabalho.Memo1.Text;
              dshistorico_trabalho.DataSet.Post;
              {
                DsCadastro.DataSet.fieldbyname('DOC_TRABALHO').asstring := '';
                DsCadastro.DataSet.fieldbyname('DATA_SETOR').asstring := '';
                DsCadastro.DataSet.fieldbyname('ID_FUNCAOINTERNO').asstring := '';
                DsCadastro.DataSet.fieldbyname('ID_LOCAL_TRABALHO').asstring := '';
                DsCadastro.DataSet.fieldbyname('IDSETOR_TRABALHO').asstring := '';
                DsCadastro.DataSet.fieldbyname('OBSTRABALHO').asstring := '';
                DsCadastro.DataSet.fieldbyname('TIPO_ATIVIDADE').asstring := '';
              }
              DBEditdtsetor.Enabled := True;
              DBEditobstrabalho.Enabled := True;
              DBEditdoctrabalho.Enabled := True;

              UniDBEditLocalTrabalho.Enabled := True;
              UniDBEditSetorTrabalho.Enabled := True;
              UniDBEditFuncaoInterno.Enabled := True;
              UniBitBtnLocalTrabalho.Enabled := True;
              UniBitBtnSetorTrabalho.Enabled := True;
              UniBitBtnFuncaoInterno.Enabled := True;

            end;
          end);
      end;
    end);

end;

procedure TFrmCadastroInternoTrabalho.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin
  iErro := 0;
  DsCadastro.DataSet.fieldbyname('ID_FUNCIONARIO').asinteger := dm.GLOBAL_ID_FUNCIONARIO;

  { Inserir Historico Setor Trabalho }
  if (sttrabalho <> UniDBEditSetorTrabalho.Text) and (DsCadastro.DataSet.fieldbyname('idsetor_trabalho').asstring <> '') then
  begin

    dshistorico_trabalho.DataSet.Append;
    dshistorico_trabalho.DataSet.fieldbyname('id_historico_trabalho').asinteger := 0;
    dshistorico_trabalho.DataSet.fieldbyname('id_interno').asinteger := DsCadastro.DataSet.fieldbyname('id_interno').asinteger;
    dshistorico_trabalho.DataSet.fieldbyname('data').asstring := DsCadastro.DataSet.fieldbyname('data_setor').asstring;
    dshistorico_trabalho.DataSet.fieldbyname('id_funcionario').asinteger := dm.GLOBAL_ID_FUNCIONARIO;
    dshistorico_trabalho.DataSet.fieldbyname('id_setor_trabalho').asvariant := UniDBEditSetorTrabalho.field.asvariant;
    dshistorico_trabalho.DataSet.fieldbyname('id_local_trabalho').asvariant := UniDBEditLocalTrabalho.field.asvariant;
    dshistorico_trabalho.DataSet.fieldbyname('id_funcao_interno').asvariant := UniDBEditFuncaoInterno.field.asvariant;
    dshistorico_trabalho.DataSet.fieldbyname('documento').asstring := DsCadastro.DataSet.fieldbyname('doc_trabalho').asstring;
    dshistorico_trabalho.DataSet.fieldbyname('obs').asstring := DsCadastro.DataSet.fieldbyname('obstrabalho').asstring;
    dshistorico_trabalho.DataSet.Post;

    iErro := cdshistorico_trabalho.ApplyUpdates(-1);

  end;

  if (iErro = 0) then
    inherited;

  DSHISTORICO_interno.DataSet.close;
  DSHISTORICO_interno.DataSet.Open;

  dshistorico_trabalho.DataSet.close;
  dshistorico_trabalho.DataSet.Open;

  dscalc_trabalho.DataSet.close;
  dscalc_trabalho.DataSet.Open;

  dscertidao_trabalho.DataSet.close;
  dscertidao_trabalho.DataSet.Open;

end;

procedure TFrmCadastroInternoTrabalho.UniBitBtnExcluirCertidaoClick(Sender: TObject);
begin
  inherited;

  if not ContemValor('D', dm.PERMISSAO_TRABALHO) then
  begin
    showmessage('Você não tem permissão para Excluir!');
    exit;
  end;

  if dscertidao_trabalho.DataSet.IsEmpty then
  begin
    showmessage('Não há Atestado Cadastrado!');
    exit;
  end;

  MessageDlg('Deseja excluir Horas Cadastradas ?', mtConfirmation, mbYesNo,
    procedure(Sender: TComponent; iRet: integer)
    begin
      if iRet = mrYes then
      begin
        dscertidao_trabalho.DataSet.Delete;
      end;
    end);

end;

procedure TFrmCadastroInternoTrabalho.UniBitBtnExcluirRemicaoClick(Sender: TObject);
begin
  inherited;

  if not ContemValor('D', dm.PERMISSAO_TRABALHO) then
  begin
    showmessage('Você não tem permissão para Excluir!');
    exit;
  end;

  if dscalc_trabalho.DataSet.IsEmpty then
  begin
    showmessage('Não há Dias Cadastrados!');
    exit;
  end;

  MessageDlg('Deseja excluir Dias Cadastrados?', mtConfirmation, mbYesNo,
    procedure(Sender: TComponent; iRet: integer)
    begin
      if iRet = mrYes then
      begin
        dscalc_trabalho.DataSet.Delete;
      end;
    end);

end;

procedure TFrmCadastroInternoTrabalho.UniBitBtnFuncaoInternoClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self, 'select id_FUNCAO_INTERNO CODIGO, FUNCAO_INTERNO DESCRICAO from FUNCAO_INTERNO ' + ' order by FUNCAO_INTERNO ', 'FUNCAO_INTERNO',
      'CODIGO', 'DESCRICAO', UniDBEditFuncaoInterno, UniLabelFuncaoInterno);

  end;

end;

procedure TFrmCadastroInternoTrabalho.UniBitBtnLocalTrabalhoClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self, 'select id_LOCAL_TRABALHO CODIGO, LOCAL_TRABALHO DESCRICAO from LOCAL_TRABALHO ' + ' order by LOCAL_TRABALHO ', 'LOCAL_TRABALHO',
      'CODIGO', 'DESCRICAO', UniDBEditLocalTrabalho, UniLabelLocalTrabalho);

  end;

end;

procedure TFrmCadastroInternoTrabalho.UniDBEditFuncaoInternoExit(Sender: TObject);
begin
  inherited;

  RetornaRegistro('select FUNCAO_INTERNO DESCRICAO from FUNCAO_INTERNO WHERE id_FUNCAO_INTERNO=', UniDBEditFuncaoInterno, UniLabelFuncaoInterno);

end;

procedure TFrmCadastroInternoTrabalho.UniDBEditLocalTrabalhoExit(Sender: TObject);
begin
  inherited;

  RetornaRegistro('select LOCAL_TRABALHO DESCRICAO from LOCAL_TRABALHO WHERE id_LOCAL_TRABALHO=', UniDBEditLocalTrabalho, UniLabelLocalTrabalho);

end;

procedure TFrmCadastroInternoTrabalho.UniDBEditSetorTrabalhoExit(Sender: TObject);
begin
  inherited;

  RetornaRegistro('select SETOR_TRABALHO DESCRICAO from SETOR_TRABALHO WHERE id_SETOR_TRABALHO=', UniDBEditSetorTrabalho, UniLabelSetorTrabalho);

end;

procedure TFrmCadastroInternoTrabalho.UniFormCreate(Sender: TObject);
begin
  inherited;
  if not ContemValor('I', dm.PERMISSAO_TRABALHO) and not ContemValor('E', dm.PERMISSAO_TRABALHO) and not ContemValor('D', dm.PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    Excluir.Visible := false;
    Salvar.Visible := false;
  end;

  if ContemValor('I', dm.PERMISSAO_TRABALHO) and not ContemValor('E', dm.PERMISSAO_TRABALHO) and not ContemValor('D', dm.PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := false;
    Excluir.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if ContemValor('I', dm.PERMISSAO_TRABALHO) and ContemValor('E', dm.PERMISSAO_TRABALHO) and not ContemValor('D', dm.PERMISSAO_TRABALHO) then
  begin
    Excluir.Visible := false;
  end;

  if not ContemValor('I', dm.PERMISSAO_TRABALHO) and ContemValor('E', dm.PERMISSAO_TRABALHO) and ContemValor('D', dm.PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := false;
  end;

  if ContemValor('I', dm.PERMISSAO_TRABALHO) and not ContemValor('E', dm.PERMISSAO_TRABALHO) and ContemValor('D', dm.PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', dm.PERMISSAO_TRABALHO) and not ContemValor('E', dm.PERMISSAO_TRABALHO) and ContemValor('D', dm.PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', dm.PERMISSAO_TRABALHO) and ContemValor('E', dm.PERMISSAO_TRABALHO) and not ContemValor('D', dm.PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := false;
    Excluir.Visible := false;
  end;

end;

end.
