unit ConsultaInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, uniEdit, uniButton, uniBitBtn,
  uniRadioGroup, uniLabel, uniPageControl, uniBasicGrid, uniDBGrid, uniToolBar,
  uniImage, uniDBImage, uniGUIBaseClasses, uniPanel, uniMultiItem, uniComboBox;

type
  TFrmConsultaInterno = class(TUniForm)
    DSOUTRONOEM: TDataSource;
    CDSOUTRONOME: TClientDataSet;
    DSPOUTRONOME: TDataSetProvider;
    SQLoutronome: TSQLQuery;
    dsvulgo: TDataSource;
    cdsvulgo: TClientDataSet;
    dspvulgo: TDataSetProvider;
    SQLvulgo: TSQLQuery;
    SqlConsulta: TSQLQuery;
    Dspconsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    Dsfiliacao: TDataSource;
    Cdsfiliacao: TClientDataSet;
    Dspfiliacao: TDataSetProvider;
    Sqlfiliacao: TSQLQuery;
    SqlSelectInterno: TSQLQuery;
    DsCadastro: TDataSource;
    CdsCadastro: TClientDataSet;
    DspCadastro: TDataSetProvider;
    SqlCadastro: TSQLQuery;
    PanelFoto: TUniPanel;
    DBImage1: TUniDBImage;
    ToolBarSetores: TUniToolBar;
    ToolButtonJuridico: TUniToolButton;
    DBGrid1: TUniDBGrid;
    PageControl1: TUniPageControl;
    TabSheet1: TUniTabSheet;
    Label1: TUniLabel;
    DBGridConsulta: TUniDBGrid;
    Editlocalizar: TUniEdit;
    TabSheet2: TUniTabSheet;
    Label2: TUniLabel;
    Editlocalizarvulgo: TUniEdit;
    DBGridVulgo: TUniDBGrid;
    TabSheet3: TUniTabSheet;
    Label3: TUniLabel;
    Editlocalizaoutronome: TUniEdit;
    DBGridOutroNome: TUniDBGrid;
    TabSheet4: TUniTabSheet;
    Label4: TUniLabel;
    DBGridFiliacao: TUniDBGrid;
    Editfiliacao: TUniEdit;
    RadioGroupfiliacao: TUniRadioGroup;
    Fechar: TUniBitBtn;
    RadioGroupTipoLocalizar: TUniComboBox;
    RadioGroupStatus: TUniComboBox;
    procedure EditLocalizarChange(Sender: TObject);
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure EditlocalizarvulgoChange(Sender: TObject);
    procedure EditfiliacaoChange(Sender: TObject);
    procedure RadioGroupfiliacaoClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure ToolButtonJuridicoClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure RadioGroupTipoLocalizarClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure EditlocalizaoutronomeChange(Sender: TObject);
    procedure FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmConsultaInterno: TFrmConsultaInterno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, VisualizarRelatorio, ServerModule,
  Lib, Aguarde;

function FrmConsultaInterno: TFrmConsultaInterno;
begin
  Result := TFrmConsultaInterno
    (UniMainModule.GetFormInstance(TFrmConsultaInterno));
end;

procedure TFrmConsultaInterno.EditLocalizarChange(Sender: TObject);
var
  status, Campo: string;
begin

  case RadioGroupStatus.ItemIndex of
    0:
      status := ' interno.st = ''A'' ';
    1:
      status := ' 1 = 1 ';
  end;

  case RadioGroupTipoLocalizar.ItemIndex of
    0:
      Campo := 'RGI';
    1:
      Campo := 'NOME_INTERNO';
  end;

  SqlConsulta.sql.text := SqlSelectInterno.sql.text +
    ' where strlen(coalesce(interno.nome_interno,''''))>5 and ' + status +
    ' and interno.' + Campo + ' like ' + qs(Editlocalizar.text + '%') +
    ' order by interno.nome_interno ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmConsultaInterno.RadioGroupStatusClick(Sender: TObject);
begin

  // O evendo onChange do editLocalizar está chamando o evento Edit1Change() ao inves do EditLocalizarChange()
  EditLocalizarChange(nil);
  if Editlocalizar.CanFocus then
    Editlocalizar.SetFocus;

end;

procedure TFrmConsultaInterno.EditlocalizarvulgoChange(Sender: TObject);
begin
  // if length(TEdit(sender).Text)<3 then
  // Exit;

  SQLvulgo.sql.text := SqlSelectInterno.sql.text +
    ' where strlen(coalesce(interno.nome_interno,''''))>5 and upper(vulgo) like upper('
    + qs(Editlocalizarvulgo.text + '%') + ') order by nome_interno';

  dsvulgo.DataSet.Close;
  dsvulgo.DataSet.Open;

end;

procedure TFrmConsultaInterno.FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultaInterno.EditfiliacaoChange(Sender: TObject);
var
  status: string;
begin

  // if length(TEdit(sender).Text)<3 then
  // Exit;

  case RadioGroupfiliacao.ItemIndex of
    0:
      status := 'mae';
    1:
      status := 'pai';
  end;

  if status = 'mae' then
  begin
    Sqlfiliacao.sql.text := SqlSelectInterno.sql.text +
      ' where strlen(coalesce(interno.nome_interno,''''))>5 and upper(interno.mae) like upper('
      + qs(Editfiliacao.text + '%') +
      ') order by interno.mae, interno.nome_interno ';
  end
  else
  begin
    Sqlfiliacao.sql.text := SqlSelectInterno.sql.text +
      ' where strlen(coalesce(interno.nome_interno,''''))>5 and upper(interno.pai) like upper('
      + qs(Editfiliacao.text + '%') +
      ') order by interno.pai, interno.nome_interno ';
  end;

  Dsfiliacao.DataSet.Close;
  Dsfiliacao.DataSet.Open;

end;

procedure TFrmConsultaInterno.EditlocalizaoutronomeChange(Sender: TObject);
begin
  SQLoutronome.sql.text := SqlSelectInterno.sql.text +
    ' where upper(OUTRO_NOME) like upper(' +
    qs(Editlocalizaoutronome.text + '%') + ') order by OUTRO_NOME';

  DSOUTRONOEM.DataSet.Close;
  DSOUTRONOEM.DataSet.Open;

end;

procedure TFrmConsultaInterno.RadioGroupfiliacaoClick(Sender: TObject);
begin
  Editfiliacao.text := '';
  EditfiliacaoChange(nil);
  if Editfiliacao.CanFocus then
    Editfiliacao.SetFocus;
end;

procedure TFrmConsultaInterno.TabSheet4Show(Sender: TObject);
begin
  RadioGroupfiliacao.ItemIndex := 0;
end;

procedure TFrmConsultaInterno.ToolButtonJuridicoClick(Sender: TObject);
begin

  FrmAguarde.ShowModal(
    procedure(Sender: TComponent; Res: integer)
    begin
      FrmVisualizarRelatorio.CarregarFichaDisciplinar
        (DsCadastro.DataSet.FieldByname('ID_INTERNO').asinteger);
      {
        FrmVisualizarRelatorio.Nome := 'Ficha Disciplinar';
        FrmVisualizarRelatorio.CaminhoFR3 := UniServerModule.StartPath +
        'SYSTEM\Ficha Disciplinar.fr3';
        if FileExists(UniServerModule.StartPath + 'SYSTEM\' +
        inttostr(Dm.GLOBAL_ID_UP) + '\Ficha Disciplinar.fr3') then
        begin
        FrmVisualizarRelatorio.CaminhoFR3 := UniServerModule.StartPath +
        'SYSTEM\' + inttostr(Dm.GLOBAL_ID_UP) + '\Ficha Disciplinar.fr3';
        end;
        FrmVisualizarRelatorio.ShowModal;
      }
    end);

end;

procedure TFrmConsultaInterno.UniFormCreate(Sender: TObject);
var
  iComp: integer;
begin

  for iComp := 0 to Componentcount - 1 do
  begin
    if (Components[iComp] is TSQLQuery) then
    begin
      TSQLQuery(Components[iComp]).SQLConnection := Dm.Conexao;
    end;
  end;

  EditLocalizarChange(nil);
  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

end;

procedure TFrmConsultaInterno.UniFormShow(Sender: TObject);
begin
  DBGridConsulta.Columns[5].Title.Caption := Dm.GLOBAL_NIVEL_1;
  DBGridConsulta.Columns[6].Title.Caption := Dm.GLOBAL_NIVEL_2;
  DBGridConsulta.Columns[7].Title.Caption := Dm.GLOBAL_NIVEL_3;
  DBGridConsulta.Columns[8].Title.Caption := Dm.GLOBAL_NIVEL_4;

  DBGridVulgo.Columns[5].Title.Caption := Dm.GLOBAL_NIVEL_1;
  DBGridVulgo.Columns[6].Title.Caption := Dm.GLOBAL_NIVEL_2;
  DBGridVulgo.Columns[7].Title.Caption := Dm.GLOBAL_NIVEL_3;
  DBGridVulgo.Columns[8].Title.Caption := Dm.GLOBAL_NIVEL_4;

  DBGridOutroNome.Columns[5].Title.Caption := Dm.GLOBAL_NIVEL_1;
  DBGridOutroNome.Columns[6].Title.Caption := Dm.GLOBAL_NIVEL_2;
  DBGridOutroNome.Columns[7].Title.Caption := Dm.GLOBAL_NIVEL_3;
  DBGridOutroNome.Columns[8].Title.Caption := Dm.GLOBAL_NIVEL_4;

  DBGridFiliacao.Columns[6].Title.Caption := Dm.GLOBAL_NIVEL_1;
  DBGridFiliacao.Columns[7].Title.Caption := Dm.GLOBAL_NIVEL_2;
  DBGridFiliacao.Columns[8].Title.Caption := Dm.GLOBAL_NIVEL_3;
  DBGridFiliacao.Columns[9].Title.Caption := Dm.GLOBAL_NIVEL_4;

  PageControl1.ActivePageIndex := 0;
  Editlocalizar.SetFocus;

end;

procedure TFrmConsultaInterno.PageControl1Change(Sender: TObject);
begin
  DsCadastro.DataSet.Close;
  if PageControl1.ActivePageIndex = 0 then
    CdsCadastro.MasterSource := DsConsulta;
  if PageControl1.ActivePageIndex = 1 then
    CdsCadastro.MasterSource := dsvulgo;
  if PageControl1.ActivePageIndex = 2 then
    CdsCadastro.MasterSource := DSOUTRONOEM;
  if PageControl1.ActivePageIndex = 3 then
    CdsCadastro.MasterSource := Dsfiliacao;
  DsCadastro.DataSet.Open;

end;

procedure TFrmConsultaInterno.DsCadastroDataChange(Sender: TObject;
Field: TField);
begin

  with DsCadastro.DataSet do
  begin
    Dm.GLOBAL_ID_INTERNO := -1;

    if not active then
      exit;

    if isempty then
      exit;

    Dm.GLOBAL_ID_INTERNO := FieldByname('ID_INTERNO').asinteger;

  end;

end;

procedure TFrmConsultaInterno.RadioGroupTipoLocalizarClick(Sender: TObject);
begin
  if Editlocalizar.CanFocus then
  begin
    Editlocalizar.SetFocus;
    Editlocalizar.text := '';
  end;
end;

end.
