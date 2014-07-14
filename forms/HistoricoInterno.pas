unit HistoricoInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniEdit, uniBasicGrid, uniDBGrid,
  uniRadioGroup, uniLabel, uniPanel, uniPageControl, uniGUIBaseClasses,
  uniDBMemo, uniButton, uniMemo, uniDateTimePicker, uniMultiItem, uniComboBox;

type
  TFrmHistoricoInterno = class(TUniForm)
    SQLHISTORICO_interno: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    DSHISTORICO_interno: TDataSource;
    SqlConsulta: TSQLQuery;
    Dspconsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlSelectInterno: TSQLQuery;
    PageControl1: TUniPageControl;
    TabSheet1: TUniTabSheet;
    Label1: TUniLabel;
    RadioGroupStatus: TUniRadioGroup;
    DBGridConsulta: TUniDBGrid;
    Editlocalizar: TUniEdit;
    PanelPrincipal: TUniPanel;
    Label53: TUniLabel;
    Label54: TUniLabel;
    DateTimePickerHistorico: TUniDateTimePicker;
    MemoDescricao: TUniMemo;
    Button1: TUniButton;
    DBMemo1: TUniDBMemo;
    UniPanel1: TUniPanel;
    DBGrid1: TUniDBGrid;
    UniComboBox1: TUniComboBox;
    UniLabel1: TUniLabel;
    procedure Button1Click(Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure EditlocalizarChange(Sender: TObject);
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmHistoricoInterno: TFrmHistoricoInterno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, Lib;

function FrmHistoricoInterno: TFrmHistoricoInterno;
begin
  Result := TFrmHistoricoInterno(UniMainModule.GetFormInstance(TFrmHistoricoInterno));
end;

procedure TFrmHistoricoInterno.Button1Click(Sender: TObject);
begin

  if UniComboBox1.ItemIndex = -1 then
  begin
    ShowMessage('Informe o Setor Responsável pelo Cadastramento!');
    UniComboBox1.setfocus;
    exit;
  end;

  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsConsulta.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Datetime);
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString :=
    UniComboBox1.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    Dm.GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;
  DM.Conexao.ExecuteDirect('EXECUTE PROCEDURE set_context(' + inttostr(Dm.GLOBAL_ID_FUNCIONARIO) + ')');
  TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);

  MemoDescricao.Lines.Clear;

end;

procedure TFrmHistoricoInterno.EditlocalizarChange(Sender: TObject);
var
  status: string;
begin

  case RadioGroupStatus.ItemIndex of
    0: Status := 'A';
    1: Status := 'I';
  end;

  SqlConsulta.sql.text := SqlSelectInterno.SQL.Text
  + ' where interno.st = ' + qs(Status)
  + ' and interno.id_up = ' + inttostr(dm.GLOBAL_ID_UP)
  + ' and interno.nome_interno like '
    + qs(EditLocalizar.text + '%') + ' and  strlen(coalesce(interno.nome_interno,''''))>5 order by interno.nome_interno ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmHistoricoInterno.DsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  PanelPrincipal.Enabled := False;

  if not DsConsulta.DataSet.Active then
    Exit;

  if DsConsulta.DataSet.IsEmpty then
    Exit;

  PanelPrincipal.Enabled := true;

end;

procedure TFrmHistoricoInterno.RadioGroupStatusClick(Sender: TObject);
begin
  if EditLocalizar.CanFocus then
  begin
    EditlocalizarChange(nil);
    EditLocalizar.SetFocus;
  end;
end;

procedure TFrmHistoricoInterno.UniFormCreate(Sender: TObject);
var
  iComp: Integer;
begin
  Self.WindowState := wsMaximized;

  for iComp := 0 to Componentcount - 1 do
  begin

    if (Components[iComp] is TSQLQuery) then
    begin
      TSQLQuery(Components[iComp]).SQLConnection := Dm.Conexao;
    end;

  end;

  if Dm.GLOBAL_IDCONEXAO > 0 then
  begin
    try
      DM.Conexao.ExecuteDirect('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(Dm.GLOBAL_IDCONEXAO));
    except
    end;
  end;

  DateTimePickerHistorico.Datetime := Date;
  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

end;

procedure TFrmHistoricoInterno.UniFormShow(Sender: TObject);
begin
  EditlocalizarChange(nil);
  DBGridConsulta.Columns[2].Title.Caption := dm.GLOBAL_NIVEL_1;
  DBGridConsulta.Columns[3].Title.Caption := dm.GLOBAL_NIVEL_2;
  DBGridConsulta.Columns[4].Title.Caption := dm.GLOBAL_NIVEL_3;
end;

end.
