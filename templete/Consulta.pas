unit Consulta;

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
  Data.FMTBcd,
  Data.DB,
  Data.SqlExpr,
  Datasnap.Provider,
  Datasnap.DBClient,
  uniBasicGrid,
  uniDBGrid,
  uniButton,
  uniEdit,
  uniLabel,
  uniPanel,
  uniPageControl,
  uniGUIBaseClasses,
  uniBitBtn;

type
  TFrmConsulta = class(TUniForm)
    DsConsultaObjetiva: TDataSource;
    CdsConsultaObjetiva: TClientDataSet;
    DspConsultaObjetiva: TDataSetProvider;
    SqlConsultaObjetiva: TSQLQuery;
    PanelLocalizaConsulta: TUniPanel;
    UniLabel2: TUniLabel;
    EditLocalizar: TUniEdit;
    UniBitBtnConfirma: TUniBitBtn;
    UniBtnFiltrar: TUniBitBtn;
    DBGridConsulta: TUniDBGrid;
    procedure UniBtnFiltrarClick(Sender: TObject);
    procedure UniBitBtnConfirmaClick(Sender: TObject);
    procedure EditLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormCreate(Sender: TObject);
  private
    FCOLUNA: Integer;
    FPreDescricao: string;
    FCampoWhereSql: string;
    { Private declarations }
  public
    property Coluna: Integer read FCOLUNA write FCOLUNA;
    property PreDescricao: String read FPreDescricao write FPreDescricao;
    property CampoWhereSql: String read FCampoWhereSql write FCampoWhereSql;
    { Public declarations }
  end;

function FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

uses
  MainModule,
  uniGUIApplication,
  DmPrincipal,
  Lib;

function FrmConsulta: TFrmConsulta;
begin
  Result := TFrmConsulta(UniMainModule.GetFormInstance(TFrmConsulta));
end;

procedure TFrmConsulta.DBGridConsultaDblClick(Sender: TObject);
begin
  UniBitBtnConfirma.OnClick(nil);
end;

procedure TFrmConsulta.EditLocalizarChange(Sender: TObject);
begin
  UniBtnFiltrar.OnClick(NIL);

end;

procedure TFrmConsulta.EditLocalizarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if not Self.DsConsultaObjetiva.DataSet.IsEmpty then
    begin
      UniBitBtnConfirma.OnClick(nil);
    end;
  end;

  if Key = VK_DOWN then
  begin
    if not DBGridConsulta.DataSource.DataSet.Eof then
      DBGridConsulta.DataSource.DataSet.Next;
  end;

  if Key = VK_UP then
  begin
    if not DBGridConsulta.DataSource.DataSet.Bof then
      DBGridConsulta.DataSource.DataSet.Prior;
  end;

end;

procedure TFrmConsulta.UniBitBtnConfirmaClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;

end;

procedure TFrmConsulta.UniBtnFiltrarClick(Sender: TObject);
var
  sSql, sWhere: String;
begin
  sSql := SqlConsultaObjetiva.SQL.Text;
  if FCampoWhereSql = '' then
  begin
    if EditLocalizar.Text <> '' then
    begin
      if DBGridConsulta.DataSource.DataSet.active then
      begin

        if DBGridConsulta.Columns.Items[FCOLUNA].Field.FieldKind in [fkdata]
        then
        begin

          if (DBGridConsulta.Columns.Items[FCOLUNA].Field.DataType
            in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftFMTBcd])
          then
          begin
            TClientDataSet(DBGridConsulta.DataSource.DataSet).Filter :=
              DBGridConsulta.Columns.Items[FCOLUNA].FieldName + ' = ' +
              EditLocalizar.Text;
          end
          else
          begin
            TClientDataSet(DBGridConsulta.DataSource.DataSet).Filter :=
              DBGridConsulta.Columns.Items[FCOLUNA].FieldName + ' LIKE ' +
              QuotedStr('%' + BuscaTroca(EditLocalizar.Text, 'ç', 'Ç') + '%');
          end;
          TClientDataSet(DBGridConsulta.DataSource.DataSet).Filtered := false;
          TClientDataSet(DBGridConsulta.DataSource.DataSet).Filtered := true;
        end;
      end;
    end
    else
    begin
      TClientDataSet(DBGridConsulta.DataSource.DataSet).Filtered := false;
    end;
  end
  else
  begin

    if (DBGridConsulta.Columns.Items[FCOLUNA].Field.DataType in [ftSmallint,
      ftInteger, ftWord, ftFloat, ftCurrency, ftFMTBcd]) then
    begin
      sWhere := FCampoWhereSql + ' = ' + EditLocalizar.Text;
    end
    else
    begin
      sWhere :=
        FCampoWhereSql+ ' LIKE ' +
        QuotedStr('%' + BuscaTroca(EditLocalizar.Text, 'ç', 'Ç') + '%');
    end;

    AddWhere(SqlConsultaObjetiva,sWhere);
    TClientDataSet(DBGridConsulta.DataSource.DataSet).Close;
    TClientDataSet(DBGridConsulta.DataSource.DataSet).Open;
    SqlConsultaObjetiva.SQL.Text := sSql;

  end;

end;

procedure TFrmConsulta.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  FCOLUNA := 1;
  FPreDescricao := '';
  FCampoWhereSql := '';
end;

procedure TFrmConsulta.UniFormCreate(Sender: TObject);
begin
  FCOLUNA := 1;
  FPreDescricao := '';
  FCampoWhereSql := '';
end;

procedure TFrmConsulta.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Self.Close;

  if Key = VK_F10 then
  begin
    UniBitBtnConfirma.OnClick(nil);
  end;

end;

procedure TFrmConsulta.UniFormShow(Sender: TObject);
begin
  TClientDataSet(DBGridConsulta.DataSource.DataSet).Filter := '';
  TClientDataSet(DBGridConsulta.DataSource.DataSet).Filtered := false;

  FrmConsulta.DsConsultaObjetiva.DataSet.Close;
  FrmConsulta.DsConsultaObjetiva.DataSet.Open;

  EditLocalizar.Text := FPreDescricao;
  EditLocalizar.SetFocus;

end;

end.
