unit Confere;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.FMTBcd, Data.DB, MemDS,
  DBAccess, Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniButton, uniBitBtn, uniEdit, uniPageControl, uniToolBar, uniLabel,
  uniImage, uniPanel, uniDBNavigator,
  uniDateTimePicker, uniDBMemo, uniMemo, uniDBComboBox, uniDBImage,
  uniMultiItem, uniComboBox, uniDBLookupComboBox, uniDBEdit, uniSpeedButton,
  uniCheckBox, uniDBCheckBox, Vcl.Imaging.jpeg, uniRadioGroup, uniFileUpload,
  uniDBDateTimePicker, ModeloMovimento;

const
  SqlConstanteInterno: string = 'SELECT ID_INTERNO,ID_UP,FOTO, NOME_INTERNO,NUMERO_ROUPA,CI,DATA_ENTRADA,' + 'ST,EM_TRANSITO,RGI,DATA_ISOLAMENTO,' +
    'ID_PROCEDENCIA,SEXO,MAE,PAI,REGIME_ATUAL,ID_PROCEDENCIA, ID_FUNCIONARIO,' + 'VULGO,DADOS_OUTRO_BANCO,IDPAVILHAO,IDGALERIA,IDSOLARIO,STATUS_ISOLAMENTO,' +
    'IDCELA,DATA_SAIDA,CISAIDA,MOTIVO_SAIDA,IDCONDICAO_INTERNO,IDDESTINO, ' + 'DATA_ISOLAMENTO,STATUS_ISOLAMENTO, ID_UP_DESTINO,DOC_TRABALHO,DATA_SETOR' +
    ',ID_FUNCAOINTERNO,ID_LOCAL_TRABALHO,IDSETOR_TRABALHO,OBSTRABALHO,DATA_MATRICULA' + ',IDSERIEESTUDO,TURMA,DEFICIENCIA,PERIODO,OBSEDUCACAO';

type
  TFrmConfere = class(TFrmModeloMovimento)
    SQLdigital: TSQLQuery;
    dshistorico_estudo: TDataSource;
    cdshistorico_estudo: TClientDataSet;
    dsphistorico_estudo: TDataSetProvider;
    SQLhistorico_estudo: TSQLQuery;
    DsCelaAntes: TDataSource;
    CdsCelaAntes: TClientDataSet;
    DspCelaAntes: TDataSetProvider;
    SqlCelaAntes: TSQLQuery;
    Dsdigital: TDataSource;
    CDSdigital: TClientDataSet;
    DSPdigital: TDataSetProvider;
    DsSolAntes: TDataSource;
    CdsSolAntes: TClientDataSet;
    DspSolAntes: TDataSetProvider;
    SqlSolAntes: TSQLQuery;
    DsGalAntes: TDataSource;
    CdsGalAntes: TClientDataSet;
    DspGalAntes: TDataSetProvider;
    SqlGalAntes: TSQLQuery;
    SQLconspadrao: TSQLQuery;
    Dspconspadrao: TDataSetProvider;
    Cdsconspadrao: TClientDataSet;
    Dsconspadrao: TDataSource;
    DsList_Mudanca_Cela: TDataSource;
    CdsList_Mudanca_Cela: TClientDataSet;
    DspList_Mudanca_Cela: TDataSetProvider;
    SqlList_Mudanca_Cela: TSQLQuery;
    SqlPavAntes: TSQLQuery;
    DspPavAntes: TDataSetProvider;
    CdsPavAntes: TClientDataSet;
    DsPavAntes: TDataSource;
    DsMudancaCela: TDataSource;
    CdsMudancaCela: TClientDataSet;
    DspMudancaCela: TDataSetProvider;
    SqlMudancaCela: TSQLQuery;
    DsPavilhao: TDataSource;
    CdsPavilhao: TClientDataSet;
    DspPavilhao: TDataSetProvider;
    SqlPavilhao: TSQLQuery;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    SqlCela: TSQLQuery;
    DsSolario: TDataSource;
    CdsSolario: TClientDataSet;
    DspSolario: TDataSetProvider;
    SqlSolario: TSQLQuery;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleria: TSQLQuery;
    DSHISTORICO_interno: TDataSource;
    CDSHISTORICO_interno: TClientDataSet;
    CDSHISTORICO_internoIDHISTORICO_INTERNO: TIntegerField;
    CDSHISTORICO_internoDESCRICAO: TStringField;
    CDSHISTORICO_internoDATA_HORA: TSQLTimeStampField;
    CDSHISTORICO_internoIDINTERNO: TIntegerField;
    CDSHISTORICO_internoSTATUS: TStringField;
    CDSHISTORICO_internoMOTIVO_SAIDA: TStringField;
    CDSHISTORICO_internoIDPROCEDENCIA: TIntegerField;
    CDSHISTORICO_internoIDUP: TIntegerField;
    DSPHISTORICO_interno: TDataSetProvider;
    SQLHISTORICO_interno: TSQLQuery;
    DsMovimentacaoExterna: TDataSource;
    CdsMovimentacaoExterna: TClientDataSet;
    DspMovimentacaoExterna: TDataSetProvider;
    SqlMovimentacaoExterna: TSQLQuery;
    DspMovimento: TDataSetProvider;
    SqlMovimento: TSQLQuery;
    dshistorico_trabalho: TDataSource;
    cdshistorico_trabalho: TClientDataSet;
    dsphistorico_trabalho: TDataSetProvider;
    SQLhistorico_trabalho: TSQLQuery;
    SqlSelectInterno: TSQLQuery;
    DsDocumentos: TDataSource;
    CdsDocumentos: TClientDataSet;
    DspDocumentos: TDataSetProvider;
    SqlDocumentos: TSQLQuery;
    Sqlvinc_transferencia_interno: TSQLQuery;
    Dspvinc_transferencia_interno: TDataSetProvider;
    Cdsvinc_transferencia_interno: TClientDataSet;
    Dsvinc_transferencia_interno: TDataSource;
    DsTransferenciaInterno: TDataSource;
    CdsTransferenciaInterno: TClientDataSet;
    DspTransferenciaInterno: TDataSetProvider;
    SqlTransferenciaInterno: TSQLQuery;
    SqlSelectInternoInativo: TSQLQuery;
    SqlConsultaTodos: TSQLQuery;
    SqlSoundex: TSQLQuery;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    DspConsulta: TDataSetProvider;
    SqlConsulta: TSQLQuery;
    SqlConsultaBackup: TSQLQuery;
    DsVinc_Mudanca_Cela: TDataSource;
    CdsVinc_Mudanca_Cela: TClientDataSet;
    DspVinc_Mudanca_Cela: TDataSetProvider;
    SqlVinc_Mudanca_Cela: TSQLQuery;
    UniPageControlConfere: TUniPageControl;
    UniTabSheetDados: TUniTabSheet;
    UniTabSheetCela: TUniTabSheet;
    UniTabSheetSaida: TUniTabSheet;
    UniDBComboBoxSexo: TUniDBComboBox;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniDBEditMae: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniLabel13: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBComboBox3: TUniDBComboBox;
    UniLabel14: TUniLabel;
    LabelPavilhao: TUniLabel;
    DBLookupComboBoxPavilhao: TUniDBLookupComboBox;
    LabelGaleria: TUniLabel;
    DBLookupComboBoxGaleria: TUniDBLookupComboBox;
    LabelSolario: TUniLabel;
    DBLookupComboBoxSolario: TUniDBLookupComboBox;
    DBEditMotivoMudancaCela: TUniDBEdit;
    Label15: TUniLabel;
    DBEditDocumentoMudanca: TUniDBEdit;
    Label16: TUniLabel;
    Label17: TUniLabel;
    DBLookupComboBoxCela: TUniDBLookupComboBox;
    LabelCela: TUniLabel;
    Label9: TUniLabel;
    DBEditDocSaida: TUniDBEdit;
    ComboBoxTipoDocumento: TUniComboBox;
    Label3: TUniLabel;
    DBComboBoxMotivo: TUniDBComboBox;
    Label6: TUniLabel;
    Label5: TUniLabel;
    UniDBDateTimePickerSaida: TUniDBDateTimePicker;
    DBEditID: TUniDBEdit;
    UniLabel15: TUniLabel;
    DBEditDataMudanca: TUniDBDateTimePicker;
    PageControlDestino: TUniPageControl;
    TabSheetDestino: TUniTabSheet;
    TabSheetUnidade: TUniTabSheet;
    UniBitBtn1: TUniBitBtn;
    UniLabel16: TUniLabel;
    UniDBEditStatusIsolamento: TUniDBEdit;
    UniLabel17: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniRadioGroupStatus: TUniRadioGroup;
    UniToolBarSetores: TUniToolBar;
    UniLabel18: TUniLabel;
    UniToolButton1: TUniToolButton;
    CdsUP: TClientDataSet;
    DsUP: TDataSource;
    DspUP: TDataSetProvider;
    SqlUP: TSQLQuery;
    Label12: TUniLabel;
    UniDBEditProcedencia: TUniDBEdit;
    UniBitBtnProcedencia: TUniBitBtn;
    UniLabelProcedencia: TUniLabel;
    SqlConsultaInternoUnidade: TSQLQuery;
    UniDBEditCondicao: TUniDBEdit;
    UniBitBtnCondicao: TUniBitBtn;
    UniLabelCondicao: TUniLabel;
    UniPanel1: TUniPanel;
    UniDBImage1: TUniDBImage;
    UniPanel2: TUniPanel;
    UniDBEditNome: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBEditCI: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBDateTimePickerDataEntrada: TUniDBDateTimePicker;
    UniDBCheckBoxStatus: TUniDBCheckBox;
    UniDBCheckBoxTransito: TUniDBCheckBox;
    UniLabel3: TUniLabel;
    UniDBEditNUMERO_ROUPA: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEditRGI: TUniDBEdit;
    RadioGroupTipoLocalizar: TUniRadioGroup;
    UniDBEditDestino: TUniDBEdit;
    UniLabelDestino: TUniLabel;
    UniBitBtnDestino: TUniBitBtn;
    UniLabelID_UP_DESTINO: TUniLabel;
    UniBitBtnID_UP_DESTINO: TUniBitBtn;
    UniDBEditID_UP_DESTINO: TUniDBEdit;
    UniToolButton2: TUniToolButton;
    procedure UniFormCreate(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure UniBtnFiltrarClick(Sender: TObject);
    procedure EditLocalizarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CancelarClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure SalvarClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniToolButton1Click(Sender: TObject);
    procedure DBComboBoxMotivoSelect(Sender: TObject);
    procedure UniBitBtnProcedenciaClick(Sender: TObject);
    procedure UniDBEditProcedenciaExit(Sender: TObject);
    procedure UniBitBtnCondicaoClick(Sender: TObject);
    procedure UniDBEditCondicaoExit(Sender: TObject);
    procedure UniFormActivate(Sender: TObject);
    procedure DBEditDocSaidaChange(Sender: TObject);
    procedure UniDBEditDestinoExit(Sender: TObject);
    procedure UniBitBtnDestinoClick(Sender: TObject);
    procedure UniDBEditID_UP_DESTINOExit(Sender: TObject);
    procedure UniBitBtnID_UP_DESTINOClick(Sender: TObject);
    procedure UniToolButton2Click(Sender: TObject);
  private
    statusold, em_transito_old: string;
    idcela_old, idsolario_old, idgaleria_old, idpavilhao_old: string;
    cela_old, solario_old, galeria_old, pavilhao_old: string;
    procedure AbrirTabelas;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmConfere: TFrmConfere;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, Lib,
  SituacaoDisciplinar, ServerModule, Main, Aguarde, Interno, Consulta, CadastroProcesso;

function FrmConfere: TFrmConfere;
begin
  Result := TFrmConfere(UniMainModule.GetFormInstance(TFrmConfere));
end;

procedure TFrmConfere.CancelarClick(Sender: TObject);
begin
  inherited;
  PanelLocalizaConsulta.Enabled := true;
  UniPageControlConfere.ActivePageIndex := 0;
  SqlCadastro.Tag := 0;
  CdsCadastro.Close;
  UniDBCheckBoxStatus.Enabled := true;
  UniDBCheckBoxTransito.Enabled := true;

end;

procedure TFrmConfere.DBComboBoxMotivoSelect(Sender: TObject);
begin
  inherited;
  TabSheetDestino.TabVisible := false;
  TabSheetUnidade.TabVisible := false;

  if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transferência de Presidio') then
  begin
    TabSheetDestino.TabVisible := false;
    TabSheetUnidade.TabVisible := true;
  end
  else
  begin

    if ContemValor(UpperCase('Transf'), UpperCase(DBComboBoxMotivo.Text)) then
    begin
      TabSheetDestino.TabVisible := true;
      TabSheetUnidade.TabVisible := false;
    end;

    if (UpperCase(DBComboBoxMotivo.Text) <> UpperCase('Duplicidade de Registros')) and (UpperCase(DBComboBoxMotivo.Text) <> UpperCase('Pedido Indeferido')) then
    begin
      TabSheetDestino.TabVisible := true;
      TabSheetUnidade.TabVisible := false;
    end;

  end;

end;

procedure TFrmConfere.DBEditDocSaidaChange(Sender: TObject);
begin
  inherited;
  if UniDBCheckBoxStatus.checked then
  begin
    MessageDlg('Este interno está saindo?', mtWarning, mbYesNo,
      procedure(Sender: TComponent; Result: integer)
      begin
        if Result = mrYes then
        begin
          try
            UniDBCheckBoxStatus.checked := false;
            dscadastro.DataSet.FieldByName('ST').AsString := 'I';
            ShowMessage('O status, foi alterado para inativo. Após digitação salve para confirmar.');
          except
          end;
        end;

      end);

  end;

end;

procedure TFrmConfere.DsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  // preciso pegar o evento que muda o endereco do interno
  if CdsCadastro.Active then
  begin
    if not CdsCadastro.IsEmpty then
    begin
      if CdsCadastro.State in [dsedit, dsinsert] then
      begin
        if Assigned(Field) then
        begin

          if Field.FieldName = 'IDPAVILHAO' then
          begin
            if Field.Value <> Field.OldValue then
            begin
              CdsCadastro.FieldByName('IDGALERIA').AsVariant := null;
            end;

            DsGaleria.DataSet.Close;
            if CdsCadastro.FieldByName('idpavilhao').AsInteger > 0 then
            begin
              SqlGaleria.SQL.Text := 'select id_galeria, galeria from galeria where idpavilhao = ' + CdsCadastro.FieldByName('idpavilhao').AsString +
                ' order by galeria';
              DsGaleria.DataSet.Open;
            end;

          end;

          if Field.FieldName = 'IDGALERIA' then
          begin
            if Field.Value <> Field.OldValue then
            begin
              CdsCadastro.FieldByName('IDSOLARIO').AsVariant := null;
            end;

            DsSolario.DataSet.Close;
            if CdsCadastro.FieldByName('idgaleria').AsInteger > 0 then
            begin
              SqlSolario.SQL.Text := 'select id_solario, solario from solario where idgaleria = ' + CdsCadastro.FieldByName('idgaleria').AsString +
                ' order by solario';
              DsSolario.DataSet.Open;
            end;
          end;

          if Field.FieldName = 'IDSOLARIO' then
          begin
            if Field.Value <> Field.OldValue then
            begin
              CdsCadastro.FieldByName('IDCELA').AsVariant := null;
            end;

            DsCela.DataSet.Close;
            if CdsCadastro.FieldByName('idsolario').AsInteger > 0 then
            begin
              SqlCela.SQL.Text := 'select id_cela, cela from cela where idsolario = ' + CdsCadastro.FieldByName('idsolario').AsString + ' order by cela';
              DsCela.DataSet.Open;
            end;
          end;

          if Field.FieldName = 'IDCELA' then
          begin
            if Field.Value <> Field.OldValue then
            begin
              CdsCadastro.FieldByName('DATA_SAIDA').AsVariant := null;
              CdsCadastro.FieldByName('STATUS_ISOLAMENTO').AsString := '';
              CdsCadastro.FieldByName('DATA_ISOLAMENTO').AsString := '';
            end;
          end;

          if Field.FieldName = 'DATA_SAIDA' then
          begin
            if Field.Value <> Field.OldValue then
            begin
              CdsCadastro.FieldByName('CISAIDA').AsVariant := null;
            end;
          end;

          if Field.FieldName = 'CISAIDA' then
          begin
            if Field.Value <> Field.OldValue then
            begin
              CdsCadastro.FieldByName('MOTIVO_SAIDA').AsVariant := null;
            end;
          end;

        end;

      end;
    end;
  end;
end;

procedure TFrmConfere.EditarClick(Sender: TObject);
begin
  PanelLocalizaConsulta.Enabled := false;
  UniPageControlConfere.ActivePageIndex := 0;
  AbrirTabelas;

  UniDBCheckBoxStatus.Enabled := true;
  UniDBCheckBoxTransito.Enabled := true;

  if CdsConsulta.Active then
  begin
    if not CdsConsulta.IsEmpty then
    begin
      if SqlCadastro.Tag <> CdsConsulta.FieldByName('ID_INTERNO').AsInteger then
      begin
        SqlCadastro.Tag := CdsConsulta.FieldByName('ID_INTERNO').AsInteger;

        SqlCadastro.SQL.Text := SqlConstanteInterno + ' FROM INTERNO WHERE ID_INTERNO=' + CdsConsulta.FieldByName('ID_INTERNO').AsString;

        CdsCadastro.Close;
        CdsCadastro.Open;

      end;
    end;
  end;

  inherited;
  {
    SQLconspadrao.SQL.Text := 'select * from padrao where cod_up =' +
    qs(inttostr(dm.global_id_up));
    Dsconspadrao.DataSet.Close;
    Dsconspadrao.DataSet.Open;
  }

  if CdsCadastro.FieldByName('ST').AsString = 'I' then
  begin

    statusold := dscadastro.DataSet.FieldByName('st').AsString;
    em_transito_old := dscadastro.DataSet.FieldByName('em_transito').AsString;
    dscadastro.DataSet.FieldByName('DATA_ENTRADA').AsDateTime := Date;
    dscadastro.DataSet.FieldByName('ST').AsString := 'A';
    { limpando os campos para entrada do interno }
    dscadastro.DataSet.FieldByName('idcondicao_interno').AsString := '';
    dscadastro.DataSet.FieldByName('ci').AsString := '';
    dscadastro.DataSet.FieldByName('data_entrada').AsString := '';
    dscadastro.DataSet.FieldByName('id_procedencia').AsString := '';
    { limpando os campos trabalho para entrada do interno }
    dscadastro.DataSet.FieldByName('DOC_TRABALHO').AsString := '';
    dscadastro.DataSet.FieldByName('DATA_SETOR').AsString := '';
    dscadastro.DataSet.FieldByName('ID_FUNCAOINTERNO').AsString := '';
    dscadastro.DataSet.FieldByName('ID_LOCAL_TRABALHO').AsString := '';
    dscadastro.DataSet.FieldByName('IDSETOR_TRABALHO').AsString := '';
    dscadastro.DataSet.FieldByName('OBSTRABALHO').AsString := '';
    { limpando os campos educacao para entrada do interno }
    dscadastro.DataSet.FieldByName('data_matricula').AsString := '';
    dscadastro.DataSet.FieldByName('IDSERIEESTUDO').AsString := '';
    dscadastro.DataSet.FieldByName('TURMA').AsString := '';
    dscadastro.DataSet.FieldByName('deficiencia').AsString := '';
    dscadastro.DataSet.FieldByName('PERIODO').AsString := '';
    dscadastro.DataSet.FieldByName('OBSEDUCACAO').AsString := '';
    dscadastro.DataSet.FieldByName('DATA_SAIDA').AsVariant := null;
    dscadastro.DataSet.FieldByName('CISAIDA').AsVariant := null;
    dscadastro.DataSet.FieldByName('MOTIVO_SAIDA').AsVariant := null;

    UniDBEditNome.setfocus;

    SQLconspadrao.SQL.Text := 'select first 1 id_pavilhao,id_galeria,id_solario,id_cela from padrao where cod_up =' + qs(inttostr(dm.global_id_up));

    Dsconspadrao.DataSet.Close;
    Dsconspadrao.DataSet.Open;

    DBLookupComboBoxPavilhao.KeyValue := Dsconspadrao.DataSet.FieldByName('id_pavilhao').AsVariant;

    dscadastro.DataSet.FieldByName('id_up').AsInteger := dm.global_id_up;

    dscadastro.DataSet.FieldByName('idpavilhao').AsInteger := Dsconspadrao.DataSet.FieldByName('id_pavilhao').AsVariant;

    DBLookupComboBoxGaleria.KeyValue := Dsconspadrao.DataSet.FieldByName('id_galeria').AsVariant;
    dscadastro.DataSet.FieldByName('idgaleria').AsInteger := Dsconspadrao.DataSet.FieldByName('id_galeria').AsVariant;

    DBLookupComboBoxSolario.KeyValue := Dsconspadrao.DataSet.FieldByName('id_solario').AsVariant;
    dscadastro.DataSet.FieldByName('idsolario').AsInteger := Dsconspadrao.DataSet.FieldByName('id_solario').AsVariant;

    DBLookupComboBoxCela.KeyValue := Dsconspadrao.DataSet.FieldByName('id_cela').AsVariant;
    dscadastro.DataSet.FieldByName('idcela').AsInteger := Dsconspadrao.DataSet.FieldByName('id_cela').AsVariant;

  end;

  if CdsCadastro.FieldByName('id_up').AsInteger > 0 then
  begin
    SqlPavilhao.SQL.Text := 'select id_pavilhao, pavilhao from pavilhao where id_up = ' + CdsCadastro.FieldByName('id_up').AsString + ' order by pavilhao';
    DsPavilhao.DataSet.Close;
    DsPavilhao.DataSet.Open;
  end;

  if CdsCadastro.FieldByName('idpavilhao').AsInteger > 0 then
  begin
    SqlGaleria.SQL.Text := 'select id_galeria, galeria from galeria where idpavilhao = ' + CdsCadastro.FieldByName('idpavilhao').AsString + ' order by galeria';
    DsGaleria.DataSet.Close;
    DsGaleria.DataSet.Open;
  end;

  if CdsCadastro.FieldByName('idgaleria').AsInteger > 0 then
  begin
    SqlSolario.SQL.Text := 'select id_solario, solario from solario where idgaleria = ' + CdsCadastro.FieldByName('idgaleria').AsString + ' order by solario';
    DsSolario.DataSet.Close;
    DsSolario.DataSet.Open;
  end;

  if CdsCadastro.FieldByName('idsolario').AsInteger > 0 then
  begin
    SqlCela.SQL.Text := 'select id_cela, cela from cela where idsolario = ' + CdsCadastro.FieldByName('idsolario').AsString + ' order by cela';
    DsCela.DataSet.Close;
    DsCela.DataSet.Open;
  end;

  idcela_old := dscadastro.DataSet.FieldByName('idcela').AsString;
  idsolario_old := dscadastro.DataSet.FieldByName('idsolario').AsString;
  idgaleria_old := dscadastro.DataSet.FieldByName('idgaleria').AsString;
  idpavilhao_old := dscadastro.DataSet.FieldByName('idpavilhao').AsString;

  cela_old := DBLookupComboBoxCela.Text;
  solario_old := DBLookupComboBoxSolario.Text;
  galeria_old := DBLookupComboBoxGaleria.Text;
  pavilhao_old := DBLookupComboBoxPavilhao.Text;

  UniPageControlConfere.ActivePageIndex := 0;

  DBEditDataMudanca.Enabled := true;
  DBEditDocumentoMudanca.Enabled := true;
  DBEditMotivoMudancaCela.Enabled := true;

  UniDBEditProcedenciaExit(nil);
  UniDBEditCondicaoExit(nil);

end;

procedure TFrmConfere.EditLocalizarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FrmAguarde.UniLabel1.Caption := 'Aguarde...';
    FrmAguarde.Width := 180;
    FrmAguarde.ShowModal(
      procedure(Sender: TComponent; Res: integer)
      begin
        UniBtnFiltrar.OnClick(nil);
      end);
  end;

end;

procedure TFrmConfere.NovoClick(Sender: TObject);
var
  sNovoNome: string;
begin
  PanelLocalizaConsulta.Enabled := false;

  UniDBEditProcedenciaExit(nil);
  UniDBEditCondicaoExit(nil);

  statusold := 'X';

  AbrirTabelas;

  UniDBCheckBoxStatus.Enabled := false;
  UniDBCheckBoxTransito.Enabled := false;

  sNovoNome := EditLocalizar.Text;
  EditLocalizar.Text := '';

  UniPageControlConfere.ActivePageIndex := 0;
  SqlCadastro.Tag := 0;
  SqlCadastro.SQL.Text := SqlConstanteInterno + ' FROM INTERNO WHERE ID_INTERNO=-1';
  CdsCadastro.Close;
  CdsCadastro.Open;
  inherited;

  dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (ID_INTERNO, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;

  dscadastro.DataSet.FieldByName('ID_INTERNO').AsInteger := dm.DsExecute.DataSet.FieldByName('ID').AsInteger;

  dscadastro.DataSet.FieldByName('SEXO').AsString := dm.DsUP.DataSet.FieldByName('GENERO').AsString;

  dscadastro.DataSet.FieldByName('NOME_INTERNO').AsString := sNovoNome;

  dm.DsExecute.DataSet.Close;

  { Atribuir RGI automático }
  if dm.GLOBAL_RGI = 'S' then
  begin
    { selecionar o generator do RGI }
    dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (RGI, 1) as ID from rdb$database';
    dm.DsExecute.DataSet.Close;
    dm.DsExecute.DataSet.Open;
    { atribuir valor do generator ao campo rgi }
    dscadastro.DataSet.FieldByName('RGI').AsInteger := dm.DsExecute.DataSet.FieldByName('ID').AsInteger;
  end;

  dscadastro.DataSet.FieldByName('DATA_ENTRADA').AsDateTime := Date;
  dscadastro.DataSet.FieldByName('ST').AsString := 'A';
  UniDBEditNome.setfocus;

  SQLconspadrao.SQL.Text := 'select first 1 id_pavilhao,id_galeria,id_solario,id_cela from padrao where cod_up =' + qs(inttostr(dm.global_id_up));
  Dsconspadrao.DataSet.Close;
  Dsconspadrao.DataSet.Open;

  dscadastro.DataSet.FieldByName('id_up').AsInteger := dm.global_id_up;

  DBLookupComboBoxPavilhao.KeyValue := Dsconspadrao.DataSet.FieldByName('id_pavilhao').AsVariant;
  dscadastro.DataSet.FieldByName('idpavilhao').AsInteger := Dsconspadrao.DataSet.FieldByName('id_pavilhao').AsVariant;

  DBLookupComboBoxGaleria.KeyValue := Dsconspadrao.DataSet.FieldByName('id_galeria').AsVariant;
  dscadastro.DataSet.FieldByName('idgaleria').AsInteger := Dsconspadrao.DataSet.FieldByName('id_galeria').AsVariant;

  DBLookupComboBoxSolario.KeyValue := Dsconspadrao.DataSet.FieldByName('id_solario').AsVariant;
  dscadastro.DataSet.FieldByName('idsolario').AsInteger := Dsconspadrao.DataSet.FieldByName('id_solario').AsVariant;

  DBLookupComboBoxCela.KeyValue := Dsconspadrao.DataSet.FieldByName('id_cela').AsVariant;
  dscadastro.DataSet.FieldByName('idcela').AsInteger := Dsconspadrao.DataSet.FieldByName('id_cela').AsVariant;

  if CdsCadastro.FieldByName('id_up').AsInteger > 0 then
  begin
    SqlPavilhao.SQL.Text := 'select id_pavilhao, pavilhao from pavilhao where id_up = ' + CdsCadastro.FieldByName('id_up').AsString + ' order by pavilhao';
    DsPavilhao.DataSet.Close;
    DsPavilhao.DataSet.Open;
  end;

  if CdsCadastro.FieldByName('idpavilhao').AsInteger > 0 then
  begin
    SqlGaleria.SQL.Text := 'select id_galeria, galeria from galeria where idpavilhao = ' + CdsCadastro.FieldByName('idpavilhao').AsString + ' order by galeria';
    DsGaleria.DataSet.Close;
    DsGaleria.DataSet.Open;
  end;

  if CdsCadastro.FieldByName('idgaleria').AsInteger > 0 then
  begin
    SqlSolario.SQL.Text := 'select id_solario, solario from solario where idgaleria = ' + CdsCadastro.FieldByName('idgaleria').AsString + ' order by solario';
    DsSolario.DataSet.Close;
    DsSolario.DataSet.Open;
  end;

  if CdsCadastro.FieldByName('idsolario').AsInteger > 0 then
  begin
    SqlCela.SQL.Text := 'select id_cela, cela from cela where idsolario = ' + CdsCadastro.FieldByName('idsolario').AsString + ' order by cela';
    DsCela.DataSet.Close;
    DsCela.DataSet.Open;
  end;

  DBEditDataMudanca.Enabled := false;
  DBEditDocumentoMudanca.Enabled := false;
  DBEditMotivoMudancaCela.Enabled := false;

end;

procedure TFrmConfere.SalvarClick(Sender: TObject);
var
  sMovimento, sSqlExecute, MotivoSaida: string;
  iErro, LIMITE_POR_CELA: integer;
begin
  UniDBCheckBoxStatus.Enabled := true;
  UniDBCheckBoxTransito.Enabled := true;

  if UniDBEditNome.CanFocus then
    UniDBEditNome.setfocus;

  if (dscadastro.DataSet.State in [dsinsert]) and (dscadastro.DataSet.FieldByName('ST').AsString <> 'A') then
  begin
    ShowMessage('Não pode INSERIR direto como inativo!' + #13#10 + 'Salve o registro depois mude para inativo.');
    EXIT;
  end;

  if (dscadastro.DataSet.FieldByName('ST').AsString = 'A') then
  begin

    if dscadastro.DataSet.FieldByName('rgi').AsString = '' then
    begin
      UniPageControlConfere.ActivePageIndex := 0;
      ShowMessage('Informe o RGI (Prontuário)!');
      if UniDBEditRGI.CanFocus then
        UniDBEditRGI.setfocus;
      EXIT;
    end;

    if UniDBEditCI.Field.AsString = '' then
    begin
      UniPageControlConfere.ActivePageIndex := 0;
      ShowMessage('Informe a CI/OF. MOVIMENTO');
      if UniDBEditCI.CanFocus then
        UniDBEditCI.setfocus;
      EXIT;
    end;

    if DBLookupComboBoxPavilhao.KeyValue = null then
    begin
      UniPageControlConfere.ActivePageIndex := 1;
      ShowMessage('Informe o ' + dm.GLOBAL_NIVEL_1 + '!');
      if DBLookupComboBoxPavilhao.CanFocus then
        DBLookupComboBoxPavilhao.setfocus;
      EXIT;
    end;

    if DBLookupComboBoxGaleria.KeyValue = null then
    begin
      UniPageControlConfere.ActivePageIndex := 1;
      ShowMessage('Informe o ' + dm.GLOBAL_NIVEL_2 + '!');
      if DBLookupComboBoxGaleria.CanFocus then
        DBLookupComboBoxGaleria.setfocus;
      EXIT;
    end;

    if DBLookupComboBoxSolario.KeyValue = null then
    begin
      UniPageControlConfere.ActivePageIndex := 1;
      ShowMessage('Informe o ' + dm.GLOBAL_NIVEL_3 + '!');
      if DBLookupComboBoxSolario.CanFocus then
        DBLookupComboBoxSolario.setfocus;
      EXIT;
    end;

    if DBLookupComboBoxCela.KeyValue = null then
    begin
      UniPageControlConfere.ActivePageIndex := 1;
      ShowMessage('Informe o ' + dm.GLOBAL_NIVEL_4 + '!');
      if DBLookupComboBoxCela.CanFocus then
        DBLookupComboBoxCela.setfocus;
      EXIT;
    end;

    if dscadastro.DataSet.State in [dsinsert] then
    begin
      if VerificaInternoExiste(dscadastro.DataSet.FieldByName('nome_interno').AsString, dscadastro.DataSet.FieldByName('mae').AsString) then
      begin
        ShowMessage('Interno com este Nome de Mãe, já existe no confere!');
        EXIT;
      end;

      if VerificaRGIExiste(dscadastro.DataSet.FieldByName('rgi').AsString) then
      begin
        ShowMessage('Interno com este RGI(Prontuário):' + dscadastro.DataSet.FieldByName('rgi').AsString + ', já existe!');
        EXIT;
      end;

    end;

    dscadastro.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger := dm.GLOBAL_ID_FUNCIONARIO;

    if UniDBDateTimePickerDataEntrada.Field.AsVariant = null then
    begin
      UniPageControlConfere.ActivePageIndex := 0;
      ShowMessage('Digite a Data de Entrada!');
      if UniDBDateTimePickerDataEntrada.CanFocus then
        UniDBDateTimePickerDataEntrada.setfocus;
      EXIT;
    end;

    if dscadastro.DataSet.FieldByName('id_procedencia').AsString = '' then
    begin
      UniPageControlConfere.ActivePageIndex := 0;
      ShowMessage('Digite a Procedência!');
      if UniDBEditProcedencia.CanFocus then
        UniDBEditProcedencia.setfocus;
      EXIT;
    end;

  end;

  if UniDBEditNome.Text = '' then
  begin
    ShowMessage('Informe o Nome do Interno!');
    if UniDBEditNome.CanFocus then
      UniDBEditNome.setfocus;
    EXIT;
  end;

  if UniDBComboBoxSexo.ItemIndex = -1 then
  begin
    ShowMessage('Informe o sexo!');
    if UniDBComboBoxSexo.CanFocus then
      UniDBComboBoxSexo.setfocus;
    EXIT;
  end;

  { Saída do interno }
  if ((dscadastro.DataSet.State in [dsedit]) and (not UniDBCheckBoxStatus.checked)) then
  begin

    if (dscadastro.DataSet.FieldByName('ST').AsString <> statusold) then
    begin

      if UniDBDateTimePickerSaida.Field.AsVariant = null then
      begin
        UniPageControlConfere.ActivePageIndex := 2;
        ShowMessage('Digite a Data da Saída!');
        UniDBDateTimePickerSaida.setfocus;
        EXIT;
      end;

      if DBComboBoxMotivo.Text = '' then
      begin
        UniPageControlConfere.ActivePageIndex := 2;
        ShowMessage('Digite o Motivo!');
        DBComboBoxMotivo.setfocus;
        EXIT;
      end;

      if DBEditDocSaida.Text = '' then
      begin
        UniPageControlConfere.ActivePageIndex := 2;
        ShowMessage('Digite a CI/OF SAÍDA!');
        DBEditDocSaida.setfocus;
        EXIT;
      end;

      if TabSheetDestino.TabVisible then
      begin
        if (UniDBEditDestino.Text = '') then
        begin
          UniPageControlConfere.ActivePageIndex := 2;
          ShowMessage('Digite o Destino!');
          UniDBEditDestino.setfocus;
          EXIT;
        end;
      end
      else
      begin
        if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transferência de Presidio') then
        // if TabSheetUnidade.TabVisible then
        begin
          if (UniDBEditID_UP_DESTINO.Text = '') then
          begin
            UniPageControlConfere.ActivePageIndex := 2;
            ShowMessage('Digite a Unidade de Destino!');
            if UniDBEditID_UP_DESTINO.CanFocus then
              UniDBEditID_UP_DESTINO.setfocus;
            EXIT;
          end;

          if UniDBEditID_UP_DESTINO.Field.AsInteger = dm.global_id_up then
          begin
            if UniDBEditID_UP_DESTINO.CanFocus then
              UniDBEditID_UP_DESTINO.setfocus;
            ShowMessage('Unidade prisional, não pode ser a mesma!');
            EXIT;
          end;

          SQLconspadrao.SQL.Text := 'select * from padrao where (id_pavilhao+id_galeria+id_solario+id_cela) is not null and cod_up =' +
            vartostrdef(UniDBEditID_UP_DESTINO.Field.AsInteger, '0');

          Dsconspadrao.DataSet.Close;
          Dsconspadrao.DataSet.Open;

          if Dsconspadrao.DataSet.IsEmpty then
          begin
            ShowMessage('Destino: ' + UniDBEditID_UP_DESTINO.Text + ' não tem cela padrão! Transferência não pode ser realizada!');
            EXIT;
          end;

        end;
      end;

      { lANÇANDO A SAIDA DO INTERNO NO HISTÓRICO }
      DSHISTORICO_interno.DataSet.Append;
      DSHISTORICO_interno.DataSet.FieldByName('idhistorico_interno').AsInteger := Generator('idhistorico_interno');
      DSHISTORICO_interno.DataSet.FieldByName('idinterno').AsInteger := dscadastro.DataSet.FieldByName('id_interno').AsInteger;
      DSHISTORICO_interno.DataSet.FieldByName('data_hora').AsDateTime := dscadastro.DataSet.FieldByName('data_saida').AsDateTime;

      if TabSheetDestino.TabVisible then
      begin
        DSHISTORICO_interno.DataSet.FieldByName('descricao').AsString := 'Saída da Unidade Penal: ' + dm.GLOBAL_NOME_UP + ', Destino: ' +
          UniLabelDestino.Caption + ', Motivo: ' + DBComboBoxMotivo.Text + ', Conforme ' + ComboBoxTipoDocumento.Text + ': ' + DBEditDocSaida.Text + '.';
      end
      else
      begin
        if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transferência de Presidio') then
        // if TabSheetUnidade.TabVisible then
        begin
          DSHISTORICO_interno.DataSet.FieldByName('descricao').AsString := 'Saída da Unidade Penal: ' + dm.GLOBAL_NOME_UP + ', Destino: ' +
            UniLabelID_UP_DESTINO.Caption + ', Motivo: ' + DBComboBoxMotivo.Text + ', Conforme ' + ComboBoxTipoDocumento.Text + ': ' +
            DBEditDocSaida.Text + '.';
        end
        else
        begin
          DSHISTORICO_interno.DataSet.FieldByName('descricao').AsString := 'Saída da Unidade Penal: ' + dm.GLOBAL_NOME_UP + ', Destino: ' +
            UniLabelID_UP_DESTINO.Caption + ', Motivo: ' + DBComboBoxMotivo.Text + ', Conforme ' + ComboBoxTipoDocumento.Text + ': ' +
            DBEditDocSaida.Text + '.';
        end;
      end;

      DSHISTORICO_interno.DataSet.FieldByName('status').AsString := 'S';
      DSHISTORICO_interno.DataSet.FieldByName('motivo_saida').AsString := DBComboBoxMotivo.Text;
      DSHISTORICO_interno.DataSet.FieldByName('IDUP').AsInteger := dscadastro.DataSet.FieldByName('ID_UP').AsInteger;
      DSHISTORICO_interno.DataSet.Post;

      { Fazendo saida do interno na tabela historico_trabalho }
      SQLhistorico_trabalho.SQL.Text := 'select * from historico_trabalho where coalesce(data_saida,'' + '')='' + '' and id_interno =' +
        dscadastro.DataSet.FieldByName('id_interno').AsString;

      dshistorico_trabalho.DataSet.Close;
      dshistorico_trabalho.DataSet.Open;

      if dshistorico_trabalho.DataSet.RecordCount > 0 then
      begin
        dshistorico_trabalho.DataSet.Edit;
        dshistorico_trabalho.DataSet.FieldByName('data_saida').AsString := formatdatetime('dd/mm/yyy', Date);
        dshistorico_trabalho.DataSet.FieldByName('motivo_saida').AsString := 'Saida do Presídio';
        dshistorico_trabalho.DataSet.Post;
      end;

      { Fazendo saida do interno na tabela historico_educacao }
      SQLhistorico_estudo.SQL.Text := 'select * from historico_estudo where coalesce(data_saida,'' + '')='' + '' and id_interno =' +
        dscadastro.DataSet.FieldByName('id_interno').AsString;

      dshistorico_estudo.DataSet.Close;
      dshistorico_estudo.DataSet.Open;

      if dshistorico_estudo.DataSet.RecordCount > 0 then
      begin
        dshistorico_estudo.DataSet.Edit;
        dshistorico_estudo.DataSet.FieldByName('data_saida').AsString := formatdatetime('dd/mm/yyy', Date);
        dshistorico_estudo.DataSet.FieldByName('motivo_saida').AsString := 'Saida do Presídio';
        dshistorico_estudo.DataSet.Post;
        dshistorico_estudo.DataSet.Append;
        dshistorico_estudo.DataSet.FieldByName('id_historico_estudo').AsInteger := Generator('idhistorico_estudo');
        dshistorico_estudo.DataSet.FieldByName('id_interno').AsString := dscadastro.DataSet.FieldByName('id_interno').AsString;
        dshistorico_estudo.DataSet.FieldByName('data_historico').AsDateTime := Date;
        dshistorico_estudo.DataSet.FieldByName('historico').AsString := 'Cancelamento de Matrícula. Saida do Presidio';
        dshistorico_estudo.DataSet.Post;
      end;

      // se é transferencia/saidas para outros destinos, não faz quando duplicidade de registros;
      if ContemValor(UpperCase('Transf'), UpperCase(DBComboBoxMotivo.Text)) then
      begin

        DsTransferenciaInterno.DataSet.Append;
        DsTransferenciaInterno.DataSet.FieldByName('ID_TRANSFERENCIA_INTERNO').AsInteger := Generator('ID_TRANSFERENCIA_INTERNO');
        DsTransferenciaInterno.DataSet.FieldByName('ID_ORIGEM').AsInteger := dm.global_id_up;
        DsTransferenciaInterno.DataSet.FieldByName('DATA').AsDateTime := Date;
        DsTransferenciaInterno.DataSet.FieldByName('MOTIVO_MOVIMENTACAO').AsString := UpperCase(DBComboBoxMotivo.Text);
        DsTransferenciaInterno.DataSet.FieldByName('TIPO_DOCUMENTO').AsString := ComboBoxTipoDocumento.Text;
        DsTransferenciaInterno.DataSet.FieldByName('LIBERADA').AsString := 'S';
        DsTransferenciaInterno.DataSet.FieldByName('RECEBIDA').AsString := 'S';
        DsTransferenciaInterno.DataSet.FieldByName('NUMERO_DOCUMENTO').AsString := DBEditDocSaida.Text;
        if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transferência de Presidio') then
        begin
          DsTransferenciaInterno.DataSet.FieldByName('TIPO_DESTINO').AsString := 'U';
          DsTransferenciaInterno.DataSet.FieldByName('ID_UP_DESTINO').AsInteger := UniDBEditID_UP_DESTINO.Field.AsInteger;
        end
        else
        begin
          DsTransferenciaInterno.DataSet.FieldByName('TIPO_DESTINO').AsString := 'O';
          DsTransferenciaInterno.DataSet.FieldByName('ID_DESTINO').AsInteger := UniDBEditDestino.Field.AsInteger;
        end;
        DsTransferenciaInterno.DataSet.Post;

        Dsvinc_transferencia_interno.DataSet.Append;
        Dsvinc_transferencia_interno.DataSet.FieldByName('ID_vinc_transferencia_interno').AsInteger := Generator('ID_vinc_transferencia_interno');
        Dsvinc_transferencia_interno.DataSet.FieldByName('id_transferencia_interno').AsInteger :=
          DsTransferenciaInterno.DataSet.FieldByName('ID_TRANSFERENCIA_INTERNO').AsInteger;
        Dsvinc_transferencia_interno.DataSet.FieldByName('id_interno').AsInteger := dscadastro.DataSet.FieldByName('id_interno').AsInteger;
        Dsvinc_transferencia_interno.DataSet.Post;

      end;
      (*
        if UpperCase(DBComboBoxMotivo.Text)
        = UpperCase('Transferência de Presidio') then
        // if TabSheetUnidade.TabVisible then
        begin
        sSqlExecute := 'UPDATE INTERNO SET ' + 'st=' + qs('A') +
        ',data_entrada=' + qs(formatdatetime('dd.mm.yyyy',
        dscadastro.DataSet.FieldByName('data_saida').AsDateTime)) + ',ci=' +
        qs(DBEditDocSaida.Text) + ',idpavilhao=' +
        Dsconspadrao.DataSet.FieldByName('id_pavilhao').AsString +
        ',idgaleria=' + Dsconspadrao.DataSet.FieldByName('id_galeria')
        .AsString + ',idsolario=' + Dsconspadrao.DataSet.FieldByName
        ('id_solario').AsString + ',idcela=' +
        Dsconspadrao.DataSet.FieldByName('id_cela').AsString + ',id_up=' +
        inttostr(DBLookupComboBoxUPDestino.KeyValue) + ',data_saida=null' +
        ',iddestino=null' + ',motivo_saida=null' + ',cisaida=null' +
        ' WHERE ID_INTERNO = ' + dscadastro.DataSet.FieldByName
        ('id_interno').AsString;

        DSHISTORICO_interno.DataSet.Append;
        DSHISTORICO_interno.DataSet.FieldByName('idhistorico_interno').AsInteger
        := Generator('idhistorico_interno');
        DSHISTORICO_interno.DataSet.FieldByName('idinterno').AsInteger :=
        dscadastro.DataSet.FieldByName('id_interno').AsInteger;
        DSHISTORICO_interno.DataSet.FieldByName('data_hora').AsString :=
        formatdatetime('dd/mm/yyy',
        dscadastro.DataSet.FieldByName('data_saida').AsDateTime);
        DSHISTORICO_interno.DataSet.FieldByName('descricao').AsString :=
        'Entrada na Unidade Penal: ' + DBLookupComboBoxUPDestino.Text +
        ', Procedente: ' + dm.GLOBAL_NOME_UP + ', Conforme ' +
        ComboBoxTipoDocumento.Text + ': ' + DBEditDocSaida.Text + '.';
        DSHISTORICO_interno.DataSet.FieldByName('status').AsString := 'E';
        DSHISTORICO_interno.DataSet.FieldByName('IDUP').AsInteger :=
        DBLookupComboBoxUPDestino.KeyValue;
        DSHISTORICO_interno.DataSet.Post;

        end;
      *)

      { limpando os campos para saida do interno }
      dscadastro.DataSet.FieldByName('idcondicao_interno').AsString := '';
      dscadastro.DataSet.FieldByName('CI').AsString := '';
      dscadastro.DataSet.FieldByName('data_entrada').AsString := '';
      dscadastro.DataSet.FieldByName('ID_PROCEDENCIA').AsString := '';
      { limpando os campos trabalho para saida do interno }
      dscadastro.DataSet.FieldByName('DOC_TRABALHO').AsString := '';
      dscadastro.DataSet.FieldByName('DATA_SETOR').AsString := '';
      dscadastro.DataSet.FieldByName('ID_FUNCAOINTERNO').AsString := '';
      dscadastro.DataSet.FieldByName('ID_LOCAL_TRABALHO').AsString := '';
      dscadastro.DataSet.FieldByName('IDSETOR_TRABALHO').AsString := '';
      dscadastro.DataSet.FieldByName('OBSTRABALHO').AsString := '';
      { limpando os campos educacao para saida do interno }
      dscadastro.DataSet.FieldByName('DATA_MATRICULA').AsString := '';
      dscadastro.DataSet.FieldByName('IDSERIEESTUDO').AsString := '';
      dscadastro.DataSet.FieldByName('TURMA').AsString := '';
      dscadastro.DataSet.FieldByName('deficiencia').AsString := '';
      dscadastro.DataSet.FieldByName('PERIODO').AsString := '';
      dscadastro.DataSet.FieldByName('OBSEDUCACAO').AsString := '';

      dscadastro.DataSet.FieldByName('DATA_SAIDA').AsVariant := null;
      dscadastro.DataSet.FieldByName('CISAIDA').AsVariant := null;
      MotivoSaida := DBComboBoxMotivo.Text;
      dscadastro.DataSet.FieldByName('MOTIVO_SAIDA').AsVariant := null;

      SQLconspadrao.SQL.Text := 'select * from padrao where cod_up =' + qs(inttostr(dm.global_id_up));
      Dsconspadrao.DataSet.Close;
      Dsconspadrao.DataSet.Open;
      // showmessage(SQLconspadrao.sql.text);

    end; // if (dscadastro.dataset.fieldbyname('ST').asstring <> statusold) then

    { Salvando }
    try
      StatusBar1.Panels[1].Text := 'SALVANDO';
      Novo.Enabled := true;
      Editar.Enabled := true;
      Excluir.Enabled := true;
      Salvar.Enabled := false;
      Cancelar.Enabled := false;

      if dscadastro.DataSet.State in [dsedit, dsinsert] then
        dscadastro.DataSet.Post;

      if (dscadastro.DataSet.FieldByName('ST').AsString <> statusold) then
      begin
        if DSHISTORICO_interno.DataSet.State in [dsedit, dsinsert] then
          DSHISTORICO_interno.DataSet.Post;

        if DsDocumentos.DataSet.State in [dsedit, dsinsert] then
          DsDocumentos.DataSet.Post;

        if dshistorico_trabalho.DataSet.State in [dsedit, dsinsert] then
          dshistorico_trabalho.DataSet.Post;

        if dshistorico_estudo.DataSet.State in [dsedit, dsinsert] then
          dshistorico_estudo.DataSet.Post;

        if Dsvinc_transferencia_interno.DataSet.State in [dsedit, dsinsert] then
          Dsvinc_transferencia_interno.DataSet.Post;

        if DsTransferenciaInterno.DataSet.State in [dsedit, dsinsert] then
          DsTransferenciaInterno.DataSet.Post;

      end;

      IniciaTransCadastro;

      iErro := TClientDataSet(dscadastro.DataSet).ApplyUpdates(0);
      if (dscadastro.DataSet.FieldByName('ST').AsString <> statusold) then
      begin

        iErro := iErro + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(DsDocumentos.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(dshistorico_trabalho.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(dshistorico_estudo.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(DsTransferenciaInterno.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(Dsvinc_transferencia_interno.DataSet).ApplyUpdates(0);

        if UpperCase(MotivoSaida) = UpperCase('Transferência de Presidio') then
        begin

          {
            dm.Conexao.ExecuteDirect(sSqlExecute);
            MotivoSaida := '';
          }
          iErro := iErro + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);

        end;

      end;

      Salvar.Tag := iErro;

      if iErro = 0 then
      begin
        finalizaTransCadastro;
        DBGridConsulta.Enabled := true;
      end
      else
        CancelaTransCadastro;

      StatusBar1.Panels[1].Text := '...';
      PanelCadastro.Enabled := false;
      TabSheetConsulta.Enabled := true;
      PanelLocalizaConsulta.Enabled := true;

      if Salvar.Tag = 0 then
      begin
        Novo.Enabled := true;
        Editar.Enabled := true;
        Excluir.Enabled := true;
        Salvar.Enabled := false;
        Cancelar.Enabled := false;

        DBGridConsulta.DataSource.DataSet.Close;
        // DBGridConsulta.DataSource.DataSet.Open;
        PageControlCadastro.ActivePageIndex := 0;
        ShowMessage('Registro Salvo com Sucesso!');
        // PageControlModeloCadastro.ActivePageIndex := 1;
        // Self.EditLocalizar.Text := sNome;
        // Self.UniBtnFiltrar.OnClick(nil);
        if EditLocalizar.CanFocus then
          EditLocalizar.setfocus;
      end;

    except
      on E: Exception do
      begin
        // erro_transacao := 1;
        ShowMessage('Não pode salvar com os dados digitados, erro: ' + E.Message);
        CancelaTransCadastro;
      end;
    end;
    // PageControlModeloCadastro.Enabled := false;

  end
  else
  begin
    { edição/inserção do interno ativo }

    dm.SqlExecute.SQL.Text := 'SELECT LIMITE_POR_CELA, ISOLAMENTO FROM CELA WHERE ID_CELA = ' + inttostr(DBLookupComboBoxCela.KeyValue);

    dm.DsExecute.DataSet.Close;
    dm.DsExecute.DataSet.Open;

    LIMITE_POR_CELA := dm.DsExecute.DataSet.FieldByName('LIMITE_POR_CELA').AsInteger;

    if dm.DsExecute.DataSet.FieldByName('ISOLAMENTO').AsString = 'S' then
    begin
      if dscadastro.DataSet.FieldByName('STATUS_ISOLAMENTO').AsString = '' then
      begin
        ShowMessage('Informe o motivo do isolamento!');
        EXIT;
      end;
    end;

    if DBLookupComboBoxCela.KeyValue = -1 then
    begin
      UniPageControlConfere.ActivePageIndex := 1;
      ShowMessage('Digite a Cela!');
      EXIT;
    end;

    if ((dscadastro.DataSet.State in [dsedit]) and (UniDBCheckBoxStatus.checked)) then
    begin
      if (dscadastro.DataSet.FieldByName('st').AsString = statusold) then
      begin
        if idcela_old <> dscadastro.DataSet.FieldByName('idcela').AsString then
        begin

          if DBEditMotivoMudancaCela.Text = '' then
          begin
            ShowMessage('Informe o Motivo da Mudança de Cela!');
            EXIT;
          end;

          if DBEditDocumentoMudanca.Text = '' then
          begin
            ShowMessage('Informe o Documento da Mudança de Cela!');
            EXIT;
          end;

        end;
      end;
    end;

    {
      if DM.DsExecute.DataSet.FieldByName('EM_MANUTENCAO').AsString = 'S' then
      begin
      UniPageControlConfere.ActivePageIndex := 1;
      ShowMessage('Cela em manutenção!' + #10#13 + 'Motivo: ' + DM.DsExecute.DataSet.FieldByName('MOTIVO_MANUTENCAO').AsString);
      if MessageDlg('Deseja alojar o preso na cela em manutenção, continuar?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      begin
      Exit;
      end;
      end;
    }

    if LIMITE_POR_CELA > 0 then
    begin
      dm.SqlExecute.SQL.Text := 'SELECT COUNT(*) TOTAL FROM INTERNO WHERE st = ''A'' and nome_interno is not null and IDCELA = ' +
        inttostr(DBLookupComboBoxCela.KeyValue);
      if dscadastro.DataSet.State in [dsedit] then
        dm.SqlExecute.SQL.Text := 'SELECT COUNT(*) TOTAL FROM INTERNO WHERE id_interno<>' + dscadastro.DataSet.FieldByName('id_interno').AsString +
          ' and st = ''A'' and nome_interno is not null and IDCELA = ' + inttostr(DBLookupComboBoxCela.KeyValue);

      dm.DsExecute.DataSet.Close;
      dm.DsExecute.DataSet.Open;
      if dm.DsExecute.DataSet.FieldByName('TOTAL').AsInteger >= LIMITE_POR_CELA then
      begin
        UniPageControlConfere.ActivePageIndex := 1;
        ShowMessage('Favor Informar Outra Cela!' + #10#13 + 'Cela com ' + inttostr(LIMITE_POR_CELA) + ' Preso(a).');
        EXIT;
      end;
    end;

    if (dscadastro.DataSet.State in [dsinsert]) then
    begin
      if UniDBEditMae.Text = '' then
      begin
        UniPageControlConfere.ActivePageIndex := 0;
        ShowMessage('Digite o Nome da Mãe!');
        UniDBEditMae.setfocus;
        EXIT;
      end;

      DSHISTORICO_interno.DataSet.Append;
      DSHISTORICO_interno.DataSet.FieldByName('idhistorico_interno').AsInteger := Generator('idhistorico_interno');
      DSHISTORICO_interno.DataSet.FieldByName('idinterno').AsInteger := dscadastro.DataSet.FieldByName('id_interno').AsInteger;
      DSHISTORICO_interno.DataSet.FieldByName('data_hora').AsDateTime := dscadastro.DataSet.FieldByName('data_ENTRADA').AsDateTime;
      DSHISTORICO_interno.DataSet.FieldByName('descricao').AsString := 'Entrada na Unidade Penal: ' + dm.GLOBAL_NOME_UP + ', Procedente: ' +
        UniLabelProcedencia.Caption + ', Conforme OF/CI ' + UniDBEditCI.Text + '.';
      DSHISTORICO_interno.DataSet.FieldByName('status').AsString := 'E';
      DSHISTORICO_interno.DataSet.FieldByName('idprocedencia').AsInteger := UniDBEditProcedencia.Field.AsInteger;
      DSHISTORICO_interno.DataSet.FieldByName('IDUP').AsInteger := dscadastro.DataSet.FieldByName('ID_UP').AsInteger;
      DSHISTORICO_interno.DataSet.Post;

      { limpando campos da saida, quando reativar cadastro }
      dscadastro.DataSet.FieldByName('data_saida').AsString := '';
      dscadastro.DataSet.FieldByName('motivo_saida').AsString := '';
      dscadastro.DataSet.FieldByName('cisaida').AsString := '';
      dscadastro.DataSet.FieldByName('iddestino').AsString := '';
    end;

    if (dscadastro.DataSet.State in [dsedit]) and (dscadastro.DataSet.FieldByName('em_transito').AsString <> em_transito_old) then
    begin
      DSHISTORICO_interno.DataSet.Append;
      DSHISTORICO_interno.DataSet.FieldByName('idhistorico_interno').AsInteger := Generator('idhistorico_interno');
      DSHISTORICO_interno.DataSet.FieldByName('idinterno').AsInteger := dscadastro.DataSet.FieldByName('id_interno').AsInteger;
      DSHISTORICO_interno.DataSet.FieldByName('data_hora').AsDateTime := Date;

      if dscadastro.DataSet.FieldByName('em_transito').AsString = 'S' then
      begin
        DSHISTORICO_interno.DataSet.FieldByName('descricao').AsString := 'Saiu em transito: ' + dm.GLOBAL_NOME_UP + ', Destino ' + UniLabelProcedencia.Caption +
          ', Conforme OF/CI ' + UniDBEditRGI.Text + '.';
      end
      else
      begin
        DSHISTORICO_interno.DataSet.FieldByName('descricao').AsString := 'Retorno do transito: ' + dm.GLOBAL_NOME_UP + ', Origem ' + UniLabelProcedencia.Caption
          + ', Conforme OF/CI ' + UniDBEditRGI.Text + '.';
      end;

      DSHISTORICO_interno.DataSet.FieldByName('status').AsString := 'S';
      DSHISTORICO_interno.DataSet.FieldByName('idprocedencia').AsInteger := UniDBEditProcedencia.Field.AsInteger;
      DSHISTORICO_interno.DataSet.FieldByName('IDUP').AsInteger := dscadastro.DataSet.FieldByName('ID_UP').AsInteger;
      DSHISTORICO_interno.DataSet.Post;
    end;

    if ((dscadastro.DataSet.State in [dsedit]) and (UniDBCheckBoxStatus.checked)) then
    begin
      if (dscadastro.DataSet.FieldByName('st').AsString = statusold) then
      begin
        if idcela_old <> dscadastro.DataSet.FieldByName('idcela').AsString then
        begin

          { LANÇANDO A MUDANÇA }

          DsMudancaCela.DataSet.Append;
          DsMudancaCela.DataSet.FieldByName('ID_MUDANCA_CELA').AsInteger := Generator('ID_MUDANCA_CELA');
          DsMudancaCela.DataSet.FieldByName('ID_UP').AsInteger := dm.global_id_up;
          DsMudancaCela.DataSet.FieldByName('DATA').AsDateTime := dscadastro.DataSet.FieldByName('DATA_SAIDA').AsDateTime;
          DsMudancaCela.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger := dm.GLOBAL_ID_FUNCIONARIO;
          DsMudancaCela.DataSet.FieldByName('MOTIVO_MOVIMENTACAO').AsString := DBEditMotivoMudancaCela.Text;
          DsMudancaCela.DataSet.FieldByName('CONFIRMADA').AsString := 'S';
          DsMudancaCela.DataSet.Post;

          DsVinc_Mudanca_Cela.DataSet.Append;
          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_VINC_MUDANCA_CELA').AsInteger := Generator('ID_VINC_MUDANCA_CELA');

          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_MUDANCA_CELA').AsInteger := DsMudancaCela.DataSet.FieldByName('ID_MUDANCA_CELA').AsInteger;

          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_INTERNO').AsInteger := dscadastro.DataSet.FieldByName('ID_INTERNO').AsInteger;

          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_PAVILHAO_ANTES').AsString := idpavilhao_old;
          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_GALERIA_ANTES').AsString := idgaleria_old;
          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_SOLARIO_ANTES').AsString := idsolario_old;
          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_CELA_ANTES').AsString := idcela_old;

          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_PAVILHAO_NOVO').AsInteger := DBLookupComboBoxPavilhao.KeyValue;
          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_GALERIA_NOVO').AsInteger := DBLookupComboBoxGaleria.KeyValue;
          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_SOLARIO_NOVO').AsInteger := DBLookupComboBoxSolario.KeyValue;
          DsVinc_Mudanca_Cela.DataSet.FieldByName('ID_CELA_NOVO').AsInteger := DBLookupComboBoxCela.KeyValue;

          DsVinc_Mudanca_Cela.DataSet.Post;

          { LANÇANDO A MUDANÇA DE CELA DO INTERNO NO HISTÓRICO }
          DSHISTORICO_interno.DataSet.Append;
          DSHISTORICO_interno.DataSet.FieldByName('idhistorico_interno').AsInteger := Generator('idhistorico_interno');
          DSHISTORICO_interno.DataSet.FieldByName('idinterno').AsInteger := dscadastro.DataSet.FieldByName('id_interno').AsInteger;
          DSHISTORICO_interno.DataSet.FieldByName('data_hora').AsDateTime := Date;
          DSHISTORICO_interno.DataSet.FieldByName('descricao').AsString := 'Mudança de Cela: ' + dm.GLOBAL_NOME_UP + ', Motivo: ' + DBEditMotivoMudancaCela.Text
            + ', Origem: ' + pavilhao_old + '/' + galeria_old + '/' + solario_old + '/' + cela_old + ', Destino: ' + DBLookupComboBoxPavilhao.Text + '/' +
            DBLookupComboBoxGaleria.Text + '/' + DBLookupComboBoxSolario.Text + '/' + DBLookupComboBoxCela.Text + ', Conforme Documento: ' +
            DBEditDocumentoMudanca.Text + '.';

          DSHISTORICO_interno.DataSet.FieldByName('status').AsString := 'M';
          DSHISTORICO_interno.DataSet.FieldByName('motivo_saida').AsString := 'Mudança de Cela';
          DSHISTORICO_interno.DataSet.FieldByName('IDUP').AsInteger := dm.global_id_up;
          DSHISTORICO_interno.DataSet.Post;
        end;
      end;
    end;

    inherited;

    PanelLocalizaConsulta.Enabled := true;
    SqlCadastro.Tag := 0;
    CdsCadastro.Close;
  end;

end;

procedure TFrmConfere.UniBitBtn1Click(Sender: TObject);
begin
  inherited;
  FrmSituacaoDisciplinar.ShowModal(
    procedure(Sender: TComponent; Result: integer)
    begin
      if Result = mrOk then
      begin
        dscadastro.DataSet.FieldByName('DATA_ISOLAMENTO').AsDateTime := dm.var_data_disciplinar;
        dscadastro.DataSet.FieldByName('STATUS_ISOLAMENTO').AsString := dm.var_disciplinar;
      end;
    end);

end;

procedure TFrmConfere.UniBitBtnCondicaoClick(Sender: TObject);
begin
  inherited;
  if dscadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    ConsultaTabela(Self, 'select idcondicao_interno codigo, descricao from condicao_interno' + ' order by descricao', 'descricao', 'CODIGO', 'descricao',
      UniDBEditCondicao, UniLabelCondicao);
  end;

end;

procedure TFrmConfere.UniBitBtnDestinoClick(Sender: TObject);
begin
  inherited;
  //
  if dscadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    ConsultaTabela(Self, 'select id_DESTINO codigo, DESTINO from DESTINO order by DESTINO', 'DESTINO', 'CODIGO', 'DESTINO', UniDBEditDestino, UniLabelDestino);
  end;

end;

procedure TFrmConfere.UniBitBtnID_UP_DESTINOClick(Sender: TObject);
begin
  inherited;
  //
  if dscadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    ConsultaTabela(Self, 'select id_up codigo, nome_up from UNIDADE_PENAL order by nome_up', 'nome_up', 'CODIGO', 'nome_up', UniDBEditID_UP_DESTINO,
      UniLabelID_UP_DESTINO);
  end;

end;

procedure TFrmConfere.UniBitBtnProcedenciaClick(Sender: TObject);
begin
  inherited;
  if dscadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    ConsultaTabela(Self,
      'SELECT ID_PROCEDENCIA CODIGO, IIF(CAPITAL=''S'',PROEDENCIA||'' - CAPITAL'',PROEDENCIA||'' - INTERIOR'') AS DESCRICAO  FROM PROCEDENCIA' +
      ' order by proedencia', 'PROEDENCIA', 'CODIGO', 'DESCRICAO', UniDBEditProcedencia, UniLabelProcedencia);
  end;

end;

procedure TFrmConfere.UniBtnFiltrarClick(Sender: TObject);
var
  Status, Campo: string;
begin
  DBGridConsulta.setfocus;

  case UniRadioGroupStatus.ItemIndex of
    0:
      Status := ' and interno.st = ''A'' ';
    1:
      Status := ' ';
  end;

  case RadioGroupTipoLocalizar.ItemIndex of
    0:
      Campo := 'RGI';
    1:
      Campo := 'NOME_INTERNO';
  end;

  if UniRadioGroupStatus.ItemIndex = 1 then
  begin
    SqlConsulta.SQL.Text := SqlConsultaTodos.SQL.Text + ' and interno.' + Campo + ' like ' + qs(EditLocalizar.Text + '%') + ' order by interno.nome_interno ';
  end
  else
  begin
    SqlConsulta.SQL.Text := SqlConsultaBackup.SQL.Text + Status + ' and interno.id_up=' + inttostr(dm.global_id_up) + ' and interno.' + Campo + ' like ' +
      qs(EditLocalizar.Text + '%') + ' order by interno.nome_interno ';
  end;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  // AbrirTabelas;

end;

procedure TFrmConfere.UniDBEditCondicaoExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select descricao from condicao_interno ' + ' WHERE idcondicao_interno=', UniDBEditCondicao, UniLabelCondicao);

end;

procedure TFrmConfere.UniDBEditDestinoExit(Sender: TObject);
begin
  inherited;
  //
  RetornaRegistro('SELECT DESTINO FROM DESTINO WHERE ID_DESTINO = ', UniDBEditDestino, UniLabelDestino);

end;

procedure TFrmConfere.UniDBEditID_UP_DESTINOExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('SELECT NOME_UP FROM UNIDADE_PENAL WHERE ID_UP = ', UniDBEditID_UP_DESTINO, UniLabelID_UP_DESTINO);

end;

procedure TFrmConfere.UniDBEditProcedenciaExit(Sender: TObject);
begin
  inherited;
  UniLabelProcedencia.Caption := '(PROCEDENCIA)';
  if strtointdef(UniDBEditProcedencia.Text, 0) > 0 then
  begin
    dm.SqlConsultaUnica.SQL.Text := 'select IIF(CAPITAL=''S'',PROEDENCIA||'' - CAPITAL'',PROEDENCIA||'' - INTERIOR'') AS DESCRICAO FROM PROCEDENCIA ' +
      ' WHERE ID_PROCEDENCIA=' + UniDBEditProcedencia.Text;
    dm.SqlConsultaUnica.Close;
    dm.SqlConsultaUnica.Open;
    if not dm.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelProcedencia.Caption := dm.SqlConsultaUnica.FieldByName('descricao').AsString;
    end
    else
    begin
      UniDBEditProcedencia.setfocus;
      ShowMessage('Código da Procedencia inválido!');
    end;
    dm.SqlConsultaUnica.Close;
  end;

end;

procedure TFrmConfere.UniFormActivate(Sender: TObject);
var
  iComp: integer;
begin

  PageControlCadastro.ActivePageIndex := 0;
  PanelCadastro.Enabled := false;

  for iComp := 0 to Componentcount - 1 do
  begin

    if (Components[iComp] is TClientDataSet) then
    begin
      TClientDataSet(Components[iComp]).OnReconcileError := ClientDataSetReconcileError;
    end;

    if (Components[iComp] is TSQLQuery) then
    begin
      TSQLQuery(Components[iComp]).SQLConnection := dm.Conexao;
      TSQLQuery(Components[iComp]).AfterOpen := SQLDataSetPadraoAfterOpen;
    end;

  end;

end;

procedure TFrmConfere.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if DsConsulta.DataSet.Active then
    DsConsulta.DataSet.Close;

  MainForm.UniTimerMostrarGrafico.Enabled := true;

end;

procedure TFrmConfere.UniFormCreate(Sender: TObject);
begin
  inherited;
  { Verifica as permissões que o usuário possui para esta tela
    e habilita ou não os respectivos botões.
    Estas verificações devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
    Ex. ContemValor('I', Dm.PERMISSAO_CONFERE). }

  if not ContemValor('I', dm.PERMISSAO_CONFERE) and not ContemValor('E', dm.PERMISSAO_CONFERE) and not ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    Excluir.Visible := false;
    Salvar.Visible := false;
  end;

  if ContemValor('I', dm.PERMISSAO_CONFERE) and not ContemValor('E', dm.PERMISSAO_CONFERE) and not ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Editar.Visible := false;
    Excluir.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if ContemValor('I', dm.PERMISSAO_CONFERE) and ContemValor('E', dm.PERMISSAO_CONFERE) and not ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Excluir.Visible := false;
  end;

  if not ContemValor('I', dm.PERMISSAO_CONFERE) and ContemValor('E', dm.PERMISSAO_CONFERE) and ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := false;
  end;

  if ContemValor('I', dm.PERMISSAO_CONFERE) and not ContemValor('E', dm.PERMISSAO_CONFERE) and ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', dm.PERMISSAO_CONFERE) and not ContemValor('E', dm.PERMISSAO_CONFERE) and ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', dm.PERMISSAO_CONFERE) and ContemValor('E', dm.PERMISSAO_CONFERE) and not ContemValor('D', dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := false;
    Excluir.Visible := false;
  end;

end;

procedure TFrmConfere.UniFormShow(Sender: TObject);
begin
  inherited;

  UniPageControlConfere.ActivePageIndex := 0;

  DBGridConsulta.Columns[3].Title.Caption := dm.GLOBAL_NIVEL_1;
  DBGridConsulta.Columns[4].Title.Caption := dm.GLOBAL_NIVEL_2;
  DBGridConsulta.Columns[5].Title.Caption := dm.GLOBAL_NIVEL_3;

  DsConsulta.DataSet.Close;
  EditLocalizar.Text := '';

end;

procedure TFrmConfere.UniToolButton1Click(Sender: TObject);
begin
  inherited;
  //
  if not CdsConsulta.IsEmpty then
  begin
    FrmInterno.ID_INTERNO := CdsConsulta.FieldByName('ID_INTERNO').AsInteger;
    FrmInterno.ShowModal();
  end
  else
    ShowMessage('Informe um interno(a)');
end;

procedure TFrmConfere.UniToolButton2Click(Sender: TObject);
begin
  inherited;
  if not CdsConsulta.IsEmpty then
  begin

    FrmAguarde.UniLabel1.Caption := 'Aguarde...';
    FrmAguarde.Width := 180;
    FrmAguarde.ShowModal(
      procedure(Sender: TComponent; Res: integer)
      begin
        FrmCadastroProcesso.ID_INTERNO := CdsConsulta.FieldByName('ID_INTERNO').AsInteger;
        FrmCadastroProcesso.ShowModal();
      end);
  end
  else
    ShowMessage('Informe um interno(a)');

end;

procedure TFrmConfere.AbrirTabelas;
begin

  if not DsDocumentos.DataSet.Active then
    DsDocumentos.DataSet.Open;

  if not DsUP.DataSet.Active then
    DsUP.DataSet.Open;

  if not dm.DsCondicaoInterno.DataSet.Active then
  begin
    dm.DsCondicaoInterno.DataSet.Open;
  end;

  if not dm.DsProcedencia.DataSet.Active then
  begin
    dm.DsProcedencia.DataSet.Open;
  end;

  if not dm.DsDestino.DataSet.Active then
  begin
    dm.DsDestino.DataSet.Open;
  end;

  if not dm.DsSetorTrabalho.DataSet.Active then
  begin
    dm.DsSetorTrabalho.DataSet.Open;
  end;

  if not DSHISTORICO_interno.DataSet.Active then
  begin
    DSHISTORICO_interno.DataSet.Open;
  end;

  if not DsTransferenciaInterno.DataSet.Active then
    DsTransferenciaInterno.DataSet.Open;

  if not Dsvinc_transferencia_interno.DataSet.Active then
    Dsvinc_transferencia_interno.DataSet.Open;

  if not dshistorico_trabalho.DataSet.Active then
    dshistorico_trabalho.DataSet.Open;

  if not dshistorico_estudo.DataSet.Active then
    dshistorico_estudo.DataSet.Open;

  if not DsMudancaCela.DataSet.Active then
    DsMudancaCela.DataSet.Open;

  if not DsVinc_Mudanca_Cela.DataSet.Active then
    DsVinc_Mudanca_Cela.DataSet.Open;

end;

end.
