unit Confere;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIForm,
  ModeloMovimento,
  Data.FMTBcd,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  uniScreenMask,
  uniGUIBaseClasses,
  uniTimer,
  Datasnap.DBClient,
  Datasnap.Provider,
  Data.SqlExpr,
  uniStatusBar,
  uniBasicGrid,
  uniDBGrid,
  uniPageControl,
  uniToolBar,
  uniButton,
  uniBitBtn,
  uniEdit,
  uniLabel,
  uniImage,
  uniPanel,
  uniRadioGroup,
  Vcl.Imaging.jpeg,
  uniDBEdit, uniDateTimePicker, uniDBDateTimePicker, uniCheckBox, uniDBCheckBox,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox;

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
    DsUP: TDataSource;
    CdsUP: TClientDataSet;
    DspUP: TDataSetProvider;
    SqlUP: TSQLQuery;
    DsVinc_Mudanca_Cela: TDataSource;
    CdsVinc_Mudanca_Cela: TClientDataSet;
    DspVinc_Mudanca_Cela: TDataSetProvider;
    SqlVinc_Mudanca_Cela: TSQLQuery;
    UniRadioGroupStatus: TUniRadioGroup;
    UniPageControl1: TUniPageControl;
    UniTabSheetDados: TUniTabSheet;
    UniTabSheetCela: TUniTabSheet;
    UniTabSheetSaida: TUniTabSheet;
    UniTabSheetDocInclusao: TUniTabSheet;
    UniDBEditNome: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBEditNUMERO_ROUPA: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniLabel6: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBComboBox1: TUniDBComboBox;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel12: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniLabel13: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBComboBox3: TUniDBComboBox;
    UniLabel14: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure UniRadioGroupStatusClick(Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmConfere: TFrmConfere;

implementation

{$R *.dfm}

uses
  MainModule,
  uniGUIApplication,
  Lib,
  DmPrincipal;

function FrmConfere: TFrmConfere;
begin
  Result := TFrmConfere(UniMainModule.GetFormInstance(TFrmConfere));
end;

procedure TFrmConfere.DsConsultaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CdsConsulta.Active then
  begin

    if SqlCadastro.Tag <> CdsConsulta.FieldByName('ID_INTERNO').AsInteger then
    begin
      SqlCadastro.Tag := CdsConsulta.FieldByName('ID_INTERNO').AsInteger;

      SqlCadastro.SQL.Text := 'SELECT * FROM INTERNO WHERE ID_INTERNO=' + CdsConsulta.FieldByName('ID_INTERNO').AsString;

      CdsCadastro.Close;
      CdsCadastro.Open;
    end;

  end;

end;

procedure TFrmConfere.EditLocalizarChange(Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;

  case UniRadioGroupStatus.ItemIndex of
  0: Status := ' interno.st = ''A'' ';
  1: Status := ' 1 = 1 ';
  end;

  Campo := 'NOME_INTERNO';

  if UniRadioGroupStatus.ItemIndex = 1 then
  begin
    SqlConsulta.SQL.Text := SqlConsultaTodos.SQL.Text + ' and interno.' + Campo + ' like ' + qs(EditLocalizar.Text + '%') + ' order by interno.nome_interno ';
  end
  else
  begin
    SqlConsulta.SQL.Text := SqlConsultaBackup.SQL.Text + ' and ' + Status + ' and interno.id_up=' + inttostr(Dm.GLOBAL_ID_UP) + ' and interno.' + Campo +
      ' like ' + qs(EditLocalizar.Text + '%') + ' order by interno.nome_interno ';
  end;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmConfere.UniFormCreate(Sender: TObject);
begin
  inherited;


// LabelPavilhao.Caption := Dm.GLOBAL_NIVEL_1;
// LabelGaleria.Caption := Dm.GLOBAL_NIVEL_2;
// LabelSolario.Caption := Dm.GLOBAL_NIVEL_3;
// LabelCela.Caption := Dm.GLOBAL_NIVEL_4;

  SqlPavilhao.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(Dm.GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  DsSolario.DataSet.Close;
  DsSolario.DataSet.Open;

  DsCela.DataSet.Close;
  DsCela.DataSet.Open;

  SqlPavAntes.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(Dm.GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavAntes.DataSet.Close;
  DsPavAntes.DataSet.Open;

  DsGalAntes.DataSet.Close;
  DsGalAntes.DataSet.Open;

  DsSolAntes.DataSet.Close;
  DsSolAntes.DataSet.Open;

  DsCelaAntes.DataSet.Close;
  DsCelaAntes.DataSet.Open;

// DataEntrada.MaxDate := date;
// DataSaida.MaxDate := date;
  SqlConsulta.SQL.Text := SqlConsultaBackup.SQL.Text + ' and interno.id_up=' + inttostr(Dm.GLOBAL_ID_UP) + ' order by interno.nome_interno ';
// MontaPavilhao(IntToStr(Dm.GLOBAL_ID_UP), DBRadioGroupPavilhao);
// PageControlEndereco.ActivePageIndex := 0;

  Dm.DsCondicaoInterno.DataSet.Close;
  Dm.DsCondicaoInterno.DataSet.Open;

  Dm.DsProcedencia.DataSet.Close;
  Dm.DsProcedencia.DataSet.Open;
  Dm.DsDestino.DataSet.Close;
  Dm.DsDestino.DataSet.Open;
  Dm.DsSetorTrabalho.DataSet.Close;
  Dm.DsSetorTrabalho.DataSet.Open;
  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.Open;
  Dm.DsUP.DataSet.Close;
  Dm.DsUP.DataSet.Open;

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  DsSolario.DataSet.Close;
  DsSolario.DataSet.Open;

  DsCela.DataSet.Close;
  DsCela.DataSet.Open;

// Dsdigital.DataSet.Close;
// Dsdigital.DataSet.Open;

// DBGridMudanca.Columns[1].Title.Caption := 'Saiu:' + Dm.GLOBAL_NIVEL_1;
// DBGridMudanca.Columns[2].Title.Caption := 'Saiu:' + Dm.GLOBAL_NIVEL_2;
// DBGridMudanca.Columns[3].Title.Caption := 'Saiu:' + Dm.GLOBAL_NIVEL_3;
// DBGridMudanca.Columns[4].Title.Caption := 'Saiu:' + Dm.GLOBAL_NIVEL_4;
//
// DBGridMudanca.Columns[5].Title.Caption := '>' + Dm.GLOBAL_NIVEL_1;
// DBGridMudanca.Columns[6].Title.Caption := '>' + Dm.GLOBAL_NIVEL_2;
// DBGridMudanca.Columns[7].Title.Caption := '>' + Dm.GLOBAL_NIVEL_3;
// DBGridMudanca.Columns[8].Title.Caption := '>' + Dm.GLOBAL_NIVEL_4;
//
  { Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', Dm.PERMISSAO_CONFERE). }

  if not ContemValor('I', Dm.PERMISSAO_CONFERE) and not ContemValor('E', Dm.PERMISSAO_CONFERE) and not ContemValor('D', Dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_CONFERE) and not ContemValor('E', Dm.PERMISSAO_CONFERE) and not ContemValor('D', Dm.PERMISSAO_CONFERE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_CONFERE) and ContemValor('E', Dm.PERMISSAO_CONFERE) and not ContemValor('D', Dm.PERMISSAO_CONFERE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_CONFERE) and ContemValor('E', Dm.PERMISSAO_CONFERE) and ContemValor('D', Dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_CONFERE) and not ContemValor('E', Dm.PERMISSAO_CONFERE) and ContemValor('D', Dm.PERMISSAO_CONFERE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_CONFERE) and not ContemValor('E', Dm.PERMISSAO_CONFERE) and ContemValor('D', Dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_CONFERE) and ContemValor('E', Dm.PERMISSAO_CONFERE) and not ContemValor('D', Dm.PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmConfere.UniFormShow(Sender: TObject);
begin
  inherited;
  UniRadioGroupStatusClick(nil);

  DBGridConsulta.Columns[4].Title.Caption := Dm.GLOBAL_NIVEL_1;
  DBGridConsulta.Columns[5].Title.Caption := Dm.GLOBAL_NIVEL_2;
  DBGridConsulta.Columns[6].Title.Caption := Dm.GLOBAL_NIVEL_3;

  DsDocumentos.DataSet.Close;
  DsDocumentos.DataSet.Open;

  DsUP.DataSet.Close;
  DsUP.DataSet.Open;

  DsTransferenciaInterno.DataSet.Close;
  DsTransferenciaInterno.DataSet.Open;

  Dsvinc_transferencia_interno.DataSet.Close;
  Dsvinc_transferencia_interno.DataSet.Open;

  dshistorico_trabalho.DataSet.Close;
  dshistorico_trabalho.DataSet.Open;

  dshistorico_estudo.DataSet.Close;
  dshistorico_estudo.DataSet.Open;

  DsMudancaCela.DataSet.Close;
  DsMudancaCela.DataSet.Open;

  DsVinc_Mudanca_Cela.DataSet.Close;
  DsVinc_Mudanca_Cela.DataSet.Open;

end;

procedure TFrmConfere.UniRadioGroupStatusClick(Sender: TObject);
begin
  inherited;

  SqlConsulta.SQL.Text := SqlConsultaBackup.SQL.Text + ' and interno.id_up=' + inttostr(Dm.GLOBAL_ID_UP) + ' order by interno.nome_interno ';
  SqlConsulta.SQL.SaveToFile('CONFERE.SQL');

  EditLocalizarChange(nil);
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

end;

end.
