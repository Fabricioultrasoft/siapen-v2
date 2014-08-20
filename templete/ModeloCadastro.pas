unit ModeloCadastro;

interface

uses
  Windows,
  Messages,
  StdCtrls,
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
  UniGUIApplication,
  Vcl.Imaging.jpeg,
  uniImage,
  uniGUIBaseClasses,
  uniPanel,
  uniLabel,
  uniToolBar,
  Data.FMTBcd,
  Data.DB,
  Datasnap.DBClient,
  Datasnap.Provider,
  Data.SqlExpr,
  uniEdit,
  uniPageControl,
  uniBasicGrid,
  uniDBGrid,
  uniStatusBar,
  uniDBEdit,
  uniMultiItem,
  uniComboBox,
  uniDBComboBox,
  uniDBLookupComboBox,
  Vcl.ImgList,
  uniScrollBox,
  uniButton,
  uniTimer,
  uniScreenMask,
  MemDS,
  DBAccess,
  Uni,
  uniBitBtn;

type
  TFrmModeloCadastro = class(TUniForm)
    PanelTituloModeloCadastro: TUniPanel;
    UniImage1: TUniImage;
    LabelTitulo: TUniLabel;
    PanelBotoes: TUniPanel;
    SqlCadastro: TSQLQuery;
    DspCadastro: TDataSetProvider;
    CdsCadastro: TClientDataSet;
    DsCadastro: TDataSource;
    PanelModeloCadastro: TUniPanel;
    PageControlModeloCadastro: TUniPageControl;
    TabSheetCadastro: TUniTabSheet;
    TabSheetConsulta: TUniTabSheet;
    PanelCadastro: TUniPanel;
    PanelLocalizaConsulta: TUniPanel;
    UniLabel2: TUniLabel;
    EditLocalizar: TUniEdit;
    DBGridConsulta: TUniDBGrid;
    StatusBar1: TUniStatusBar;
    UniTimerNovo: TUniTimer;
    UniScreenMaskNovo: TUniScreenMask;
    UniScreenMaskSalvar: TUniScreenMask;
    UniScreenMaskFiltrar: TUniScreenMask;
    UniScreenMaskEditLocalizar: TUniScreenMask;
    UniQueryCadastro: TUniQuery;
    UniImageLogoMarca: TUniImage;
    Fechar: TUniBitBtn;
    Excluir: TUniBitBtn;
    Salvar: TUniBitBtn;
    Cancelar: TUniBitBtn;
    Editar: TUniBitBtn;
    Novo: TUniBitBtn;
    UniBtnFiltrar: TUniBitBtn;
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure DBGridConsultaTitleClick(Column: TUniDBGridColumn);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniFormCreate(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniBtnFiltrarClick(Sender: TObject);
    procedure EditLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniFormShow(Sender: TObject);
    procedure UniToolButtonConfirmaSelecaoClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    function ValidarRegistro: Boolean;
    procedure UniTimerNovoTimer(Sender: TObject);
    procedure ClientDataSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  protected
    function CancelaTransCadastro: Boolean;
    function FinalizaTransCadastro: Boolean;
    function IniciaTransCadastro: Boolean;
    function ReeiniciaTransCadastro: Boolean;
  private
    { Private declarations }
    FDIRETO: Boolean;
    FTD: TTransactionDesc; // Para os Lan�amentos .
    CompLookupComboBox: array of TUniDBLookupComboBox;
    CompDBEdit: array of TUniDBEdit;
    CompClientDataSet: array of TClientDataSet;
    FConfirmarSelecao: Boolean;
    FTelaSelecao: String;
    FCOLUNA: Integer;
    FPreDescricao: string;
    FCampoWhereSql: string;
  public
    property Coluna: Integer read FCOLUNA write FCOLUNA;
    property PreDescricao: String read FPreDescricao write FPreDescricao;
    property CampoWhereSql: String read FCampoWhereSql write FCampoWhereSql;
    property ConfirmarSelecao: Boolean read FConfirmarSelecao
      write FConfirmarSelecao;
    property TelaSelecao: String read FTelaSelecao write FTelaSelecao;
    property TD: TTransactionDesc read FTD write FTD;
    property DIRETO: Boolean read FDIRETO write FDIRETO;
    procedure SQLDataSetPadraoAfterOpen(DataSet: TDataSet);
    { Public declarations }
  end;

function FrmModeloCadastro: TFrmModeloCadastro;

implementation

{$R *.dfm}

uses
  MainModule,
  DmPrincipal,
  ServerModule,
  humanejs,
  Lib;
// , DMSoftwareImobiliario; // , Lib;

function FrmModeloCadastro: TFrmModeloCadastro;
begin
  Result := TFrmModeloCadastro(UniMainModule.GetFormInstance
    (TFrmModeloCadastro));
end;

procedure TFrmModeloCadastro.EditarClick(Sender: TObject);
var
  CompEdit: TComponent;
begin
  if not Editar.Visible then
  begin
    ShowMessage('N�o tem acesso para editar!');
    exit;
  end;

  PageControlModeloCadastro.ActivePageIndex := 0;

  if DsCadastro.DataSet = CdsCadastro then
  begin

    CompEdit := FindComponent('DBEditCodigo');

    if not assigned(CompEdit) then
      CompEdit := FindComponent('DBEditID');

    if assigned(CompEdit) then
    begin
      DsCadastro.DataSet.FieldByName(TUniDBEdit(CompEdit).DataField)
        .ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
    end;
  end;

  TabSheetConsulta.Enabled := false;
  PanelCadastro.Enabled := true;
  // PageControlCadastro.ActivePageIndex := 0;
  StatusBar1.Panels[0].Text := 'EDI��O';

  Novo.Enabled := false;
  Editar.Enabled := false;
  Salvar.Enabled := true;
  Cancelar.Enabled := true;
  Excluir.Enabled := false;

  Self.DsCadastro.DataSet.Edit;

end;

procedure TFrmModeloCadastro.EditLocalizarChange(Sender: TObject);
begin
  UniBtnFiltrar.OnClick(NIL);
end;

procedure TFrmModeloCadastro.EditLocalizarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if not Self.DsCadastro.DataSet.IsEmpty then
    begin
      Editar.OnClick(nil);
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

procedure TFrmModeloCadastro.ExcluirClick(Sender: TObject);
begin
  if not Excluir.Visible then
  begin
    ShowMessage('N�o tem acesso para excluir!');
    exit;
  end;

  StatusBar1.Panels[0].Text := 'EXCLUINDO';

  MessageDlg('Excluir este registro?', mtWarning, mbYesNo,
    procedure(Sender: TComponent; Result: Integer)
    begin
      if Result = mrYes then
      begin
        try
          IniciaTransCadastro;
          DsCadastro.DataSet.Delete;
          if TClientDataSet(Self.DsCadastro.DataSet).ApplyUpdates(-1) = 0 then
          begin
            FinalizaTransCadastro;
            ShowMessage('Registro Exclu�do com Sucesso!');
          end
          else
            CancelaTransCadastro;

          PanelCadastro.Enabled := false;
        except
          on E: Exception do
          begin
            ShowMessage('Sistema diz: ' + E.Message);
            CancelaTransCadastro;
          end;
        end;

      end;

    end);

  StatusBar1.Panels[0].Text := '...';

end;

procedure TFrmModeloCadastro.NovoClick(Sender: TObject);
var
  CompEdit: TComponent;
begin
  if not Novo.Visible then
  begin
    ShowMessage('N�o tem acesso para inserir novo!');
    exit;
  end;
  if DsCadastro.DataSet = CdsCadastro then
  begin

    CompEdit := FindComponent('DBEditCodigo');

    if not assigned(CompEdit) then
      CompEdit := FindComponent('DBEditID');

    if assigned(CompEdit) then
    begin
      DsCadastro.DataSet.FieldByName(TUniDBEdit(CompEdit).DataField)
        .ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
    end;
  end;

  TabSheetConsulta.Enabled := false;
  PanelCadastro.Enabled := true;
  PageControlModeloCadastro.ActivePageIndex := 0;
  // PageControlCadastro.ActivePageIndex := 0;
  StatusBar1.Panels[0].Text := 'NOVO';

  Novo.Enabled := false;
  Editar.Enabled := false;
  Salvar.Enabled := true;
  Cancelar.Enabled := true;
  Excluir.Enabled := false;

  Self.DsCadastro.DataSet.Append;

  CompEdit := FindComponent('DBEditCodigo');

  if not assigned(CompEdit) then
    CompEdit := FindComponent('DBEditID');

  if assigned(CompEdit) then
  begin
    TUniDBEdit(CompEdit).Field.value := 0;
  end;

end;

procedure TFrmModeloCadastro.CancelarClick(Sender: TObject);
var
  iComp: Integer;
begin
  TabSheetConsulta.Enabled := true;

  Novo.Enabled := true;
  Editar.Enabled := true;
  Salvar.Enabled := false;
  Excluir.Enabled := true;
  Cancelar.Enabled := false;

  if Self.DsCadastro.DataSet.state in [dsedit, dsinsert] then
    Self.DsCadastro.DataSet.Cancel;

  StatusBar1.Panels[0].Text := '...';

  PanelCadastro.Enabled := false;
  // PageControlCadastro.ActivePageIndex := 0;

  PageControlModeloCadastro.ActivePageIndex := 1;
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;
  if FDIRETO then
  begin
    FDIRETO := false;
    Self.ModalResult := mrCancel;
  end

end;

procedure TFrmModeloCadastro.DBGridConsultaDblClick(Sender: TObject);
begin
  PageControlModeloCadastro.ActivePageIndex := 0;

  Editar.OnClick(nil);

end;

procedure TFrmModeloCadastro.DBGridConsultaKeyDown(Sender: TObject;
var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    Editar.OnClick(nil);
  end;

end;

procedure TFrmModeloCadastro.DBGridConsultaTitleClick(Column: TUniDBGridColumn);
begin
  if Column.Field.FieldKind in [fkdata] then
    TClientDataSet(Column.Field.DataSet).IndexFieldNames := Column.FieldName;

end;

function TFrmModeloCadastro.IniciaTransCadastro: Boolean;
begin

  try
    FTD.TransactionID := trunc(StrToFloat(FormatDateTime('yyyymmddhhnnsszzz',
      now)) / 2);
    FTD.IsolationLevel := xilREADCOMMITTED;
    Dm.Conexao.StartTransaction(FTD);
  except // se der erro para abrir uma TransCadastro
    begin // tente uma nova
      try
        Result := false;
        FTD.TransactionID := FTD.TransactionID + 1;
        FTD.IsolationLevel := xilREADCOMMITTED;
        Dm.Conexao.StartTransaction(FTD);
      except
      end;
    end;
  end;

end;

function TFrmModeloCadastro.ReeiniciaTransCadastro: Boolean;
begin
  try
    FinalizaTransCadastro;
    FTD.TransactionID := FTD.TransactionID + 1;
    FTD.IsolationLevel := xilREADCOMMITTED;
    Dm.Conexao.StartTransaction(FTD);
  except
  end;
end;

procedure TFrmModeloCadastro.SalvarClick(Sender: TObject);
var
  erro_transacao, iComp: Integer;
  ItenRecord: TBookmark;
  sNome, sMengTeste: String;
begin

  if ValidarRegistro then
  begin
    TabSheetConsulta.Enabled := true;
    // sNome := DBGridConsulta.Columns.Items[0].Field.AsString;

    Salvar.Tag := 1;

    ItenRecord := nil;

    if not DBGridConsulta.DataSource.DataSet.IsEmpty then
      ItenRecord := DBGridConsulta.DataSource.DataSet.GetBookmark;

    if PageControlModeloCadastro.CanFocus then
      PageControlModeloCadastro.SetFocus;

    try
      IniciaTransCadastro;

      StatusBar1.Panels[0].Text := 'SALVANDO';

      if Self.DsCadastro.DataSet.state in [dsedit, dsinsert] then
        Self.DsCadastro.DataSet.post;

      erro_transacao := 0;

      if Self.DsCadastro.DataSet <> UniQueryCadastro then
      begin

        for iComp := Low(CompClientDataSet) to High(CompClientDataSet) do
        begin
          if (CompClientDataSet[iComp] as TClientDataSet).active then
          begin
            if (CompClientDataSet[iComp] as TClientDataSet).state
              in [dsedit, dsinsert] then
              (CompClientDataSet[iComp] as TClientDataSet).post;
          end;
        end;

        erro_transacao := erro_transacao +
          TClientDataSet(Self.DsCadastro.DataSet).ApplyUpdates(-1);

        if erro_transacao = 0 then
        begin
          for iComp := Low(CompClientDataSet) to High(CompClientDataSet) do
          begin
            TClientDataSet(CompClientDataSet[iComp]).OnReconcileError :=
              ClientDataSetReconcileError;
            if (CompClientDataSet[iComp] as TClientDataSet).active then
            begin
              if (CompClientDataSet[iComp] as TClientDataSet).ChangeCount > 0
              then
              begin
                erro_transacao := erro_transacao +
                  (CompClientDataSet[iComp] as TClientDataSet).ApplyUpdates(-1);
              end;
            end;
          end;
        end;
      end;
    except
      on E: Exception do
      begin
        erro_transacao := 1;
        ShowMessage('Sistema diz: ' + E.Message);
        CancelaTransCadastro;
      end;
    end;

    Salvar.Tag := erro_transacao;

    if erro_transacao = 0 then
      FinalizaTransCadastro
    else
    begin
      CancelaTransCadastro;
      ShowMessage('<b><font Color=red>ATEN��O !!!</font></b><br>' +
        'Erro na transa��o, n�o salvou.');
      StatusBar1.Panels[0].Text := '...';
      exit;
    end;

    StatusBar1.Panels[0].Text := '...' + sMengTeste;
    PanelCadastro.Enabled := false;

    if Salvar.Tag = 0 then
    begin
      Novo.Enabled := true;
      Editar.Enabled := true;
      Excluir.Enabled := true;
      Salvar.Enabled := false;
      Cancelar.Enabled := false;

      DBGridConsulta.DataSource.DataSet.Close;
      DBGridConsulta.DataSource.DataSet.Open;
      // PageControlCadastro.ActivePageIndex := 0;
      ShowMessage('Registro Salvo com Sucesso!');
      PageControlModeloCadastro.ActivePageIndex := 1;
      // Self.EditLocalizar.Text := sNome;
      // Self.UniBtnFiltrar.OnClick(nil);
      if EditLocalizar.CanFocus then
        EditLocalizar.SetFocus;

      if FDIRETO then
      begin
        FDIRETO := false;
        Self.ModalResult := mrOk;
      end;

    end;

    if assigned(ItenRecord) then
    begin
      try
        if DBGridConsulta.DataSource.DataSet.BookmarkValid(ItenRecord) then
          DBGridConsulta.DataSource.DataSet.GotoBookmark(ItenRecord);
      finally
        DBGridConsulta.DataSource.DataSet.FreeBookmark(ItenRecord);
      end;
    end;
  end;
end;

procedure TFrmModeloCadastro.UniBtnFiltrarClick(Sender: TObject);
var
  sSql, sWhere: String;
begin
  sSql := SqlCadastro.SQL.Text;
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
              QuotedStr('%' + BuscaTroca(EditLocalizar.Text, '�', '�') + '%');
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
      sWhere := FCampoWhereSql + ' LIKE ' +
        QuotedStr('%' + BuscaTroca(EditLocalizar.Text, '�', '�') + '%');
    end;

    AddWhere(SqlCadastro, sWhere);
    TClientDataSet(DBGridConsulta.DataSource.DataSet).Close;
    TClientDataSet(DBGridConsulta.DataSource.DataSet).Open;
    SqlCadastro.SQL.Text := sSql;

  end;

end;

procedure TFrmModeloCadastro.UniFormClose(Sender: TObject;
var Action: TCloseAction);
begin
  FCOLUNA := 1;
  FPreDescricao := '';
  FCampoWhereSql := '';

  Cancelar.OnClick(nil);

  Self.DsCadastro.DataSet.Close;
  FConfirmarSelecao := false;

end;

procedure TFrmModeloCadastro.SQLDataSetPadraoAfterOpen(DataSet: TDataSet);
var
  lIdx: Integer;
  JaTem: Boolean;
begin
  JaTem := false;
  for lIdx := 0 to DataSet.Fields.Count - 1 do
  begin
    if ((not JaTem) and (copy(DataSet.Fields[lIdx].FieldName, 1, 2) = 'ID'))
    then
    begin
      DataSet.Fields[lIdx].ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
      JaTem := true;
    end
    else
      DataSet.Fields[lIdx].ProviderFlags := [pfInUpdate];
  end;
end;

procedure TFrmModeloCadastro.UniFormCreate(Sender: TObject);
var
  iComp: Integer;
begin
  FCOLUNA := 1;
  FPreDescricao := '';
  FCampoWhereSql := '';

  // PageControlCadastro.ActivePageIndex := 0;
  PanelCadastro.Enabled := false;

  for iComp := 0 to Componentcount - 1 do
  begin
    {
      if (Components[iComp] is TUniTabSheet) then
      begin
      TUniTabSheet(Components[iComp]).Caption :=
      '<a class="sexybutton sexymedium" href="#"><span><span>' +
      TUniTabSheet(Components[iComp]).Caption + '</span></span></a>';
      end;
    }
    if (Components[iComp] is TUniDBEdit) then
    begin
      SetLength(CompDBEdit, High(CompDBEdit) + 2);
      CompDBEdit[High(CompDBEdit)] := (Components[iComp] as TUniDBEdit);
      if TUniDBEdit(Components[iComp]).Tag = 0 then
        (Components[iComp] as TUniDBEdit).CharCase := ecUpperCase;

    end;

    if (Components[iComp] is TUniDBLookupComboBox) then
    begin
      SetLength(CompLookupComboBox, High(CompLookupComboBox) + 2);
      CompLookupComboBox[High(CompLookupComboBox)] :=
        (Components[iComp] as TUniDBLookupComboBox);
    end;

    if (Components[iComp] is TClientDataSet) then
    begin

      if TClientDataSet(Components[iComp]).Name <> CdsCadastro.Name then
      begin
        SetLength(CompClientDataSet, High(CompClientDataSet) + 2);
        CompClientDataSet[High(CompClientDataSet)] :=
          (Components[iComp] as TClientDataSet);
      end;

      TClientDataSet(Components[iComp]).OnReconcileError :=
        ClientDataSetReconcileError;

    end;

    if (Components[iComp] is TSQLQuery) then
    begin
      TSQLQuery(Components[iComp]).SQLConnection := Dm.Conexao;
      TSQLQuery(Components[iComp]).AfterOpen := SQLDataSetPadraoAfterOpen;
    end;

  end;

end;

procedure TFrmModeloCadastro.UniFormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin

  if Key = vk_escape then
    Self.Close;

  if Key = VK_F10 then
  begin
    Self.MessageDlg('Confirma salvar?', mtConfirmation, mbYesNoCancel, (
      procedure(Sender: TComponent; Result: Integer)
      begin
        if Result = mrYes then
          Salvar.OnClick(nil);
      end));
  end;

end;

procedure TFrmModeloCadastro.UniFormShow(Sender: TObject);
begin

  if Dm.GLOBAL_IDCONEXAO > 0 then
  begin
    try
      Dm.Conexao.ExecuteDirect('update conexao set tela_momento = ' +
        qs(Self.Caption) + ' where idconexao=' + IntToStr(Dm.GLOBAL_IDCONEXAO));
    except
    end;
  end;

  if FileExists(UniServerModule.StartPath + 'logo\logo_fundo.jpg') then
    UniImageLogoMarca.Picture.LoadFromFile(UniServerModule.StartPath +
      'logo\logo_fundo.jpg');

  if Dm.url_imagem_empresa <> '' then
    UniImageLogoMarca.Url := Dm.url_imagem_empresa;

  Novo.Enabled := true;
  Editar.Enabled := true;
  Salvar.Enabled := false;
  Excluir.Enabled := true;
  Cancelar.Enabled := false;

  PageControlModeloCadastro.ActivePageIndex := 1;
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

  PanelTituloModeloCadastro.Caption := Self.Caption;
  LabelTitulo.Caption := Self.Caption;

end;

procedure TFrmModeloCadastro.UniTimerNovoTimer(Sender: TObject);
begin
  UniTimerNovo.Enabled := false;
  if FDIRETO then
  begin
    Novo.OnClick(nil);
  end;
end;

procedure TFrmModeloCadastro.UniToolButtonConfirmaSelecaoClick(Sender: TObject);
begin

  Self.ModalResult := mrOk;

end;

function TFrmModeloCadastro.ValidarRegistro: Boolean;
begin
  Result := true;
end;

procedure TFrmModeloCadastro.FecharClick(Sender: TObject);
begin

  Self.Close;

end;

function TFrmModeloCadastro.FinalizaTransCadastro: Boolean;
begin
  try
    Result := false;

    if DsCadastro.DataSet <> CdsCadastro then
      Dm.UniTransactionConexao.Commit;

    if Dm.Conexao.InTransaction then
      Dm.Conexao.Commit(FTD);
    Result := true;
  except
  end;
end;

function TFrmModeloCadastro.CancelaTransCadastro: Boolean;
begin
  try

    if DsCadastro.DataSet <> CdsCadastro then
      Dm.UniTransactionConexao.Rollback;

    if Dm.Conexao.InTransaction then
      Dm.Conexao.Rollback(FTD);
  except
  end;

end;

procedure TFrmModeloCadastro.ClientDataSetReconcileError
  (DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
var Action: TReconcileAction);
var
  arquivo: TextFile;
  NomeArquivo: string;
  C: TUniClientInfoRec;
  sIp, sBrowser, sVersao, sOSType: string;
begin

  sIp := UniApplication.RemoteAddress;

  C := UniApplication.ClientInfoRec;

  sBrowser := C.BrowserType;
  sVersao := IntToStr(C.BrowserVersion);
  sOSType := C.OSType;

  try

    if not DirectoryExists('../log') then
      CreateDir('../log');

    NomeArquivo := '../log/' + UniServerModule.Title +
      FormatDateTime('yyyy-mm-dd-hh-mm-zzz', now) + '_Erro.txt';

    AssignFile(arquivo, NomeArquivo);
    Rewrite(arquivo);

    Writeln(arquivo, DateTimeToStr(now) + #13#10 + 'cds: ' + DataSet.Name +
      ' - ' + E.Message + ' Login:'+ Dm.LOGIN_CONECTADO + ', Senha:' +
      Dm.GLOBAL_SENHA_USUARIO + ', UP:' +inttostr( Dm.GLOBAL_ID_UP) + ', Funcion�rio:' +
      inttostr( Dm.GLOBAL_ID_FUNCIONARIO) + ', IP:' + sIp + ', ' + 'ENTRADA - Browser:' +
      sBrowser + ' Versao:' + sVersao + ' OSType:' + sOSType);

    CloseFile(arquivo);

    Action := raAbort;

    ShowMessage('Inconsist�ncia nos dados:' + (E.Message));

  except
    on E: Exception do
    begin
      ShowMessage('Sistema diz: ' + E.Message);
    end;
  end;

end;

end.
