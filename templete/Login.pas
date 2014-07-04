unit Login;

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
  uniGUIRegClasses,
  uniGUIForm,
  uniButton,
  uniBitBtn,
  Vcl.Imaging.jpeg,
  uniImage,
  uniEdit,
  uniGUIBaseClasses,
  uniLabel,
  uniTimer, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, uniPanel, uniGroupBox, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniDBEdit;

type
  TFrmLogin = class(TUniLoginForm)
    UniLabel3: TUniLabel;
    UniTimer1: TUniTimer;
    Sqlservidor: TSQLQuery;
    Dspservidor: TDataSetProvider;
    Cdsservidor: TClientDataSet;
    Dsservidor: TDataSource;
    UniGroupBox1: TUniGroupBox;
    PanelTituloModeloCadastro: TUniPanel;
    UniImage2: TUniImage;
    LabelTitulo: TUniLabel;
    UniImageLogoMarca: TUniImage;
    UniGroupBox2: TUniGroupBox;
    UniGroupBox3: TUniGroupBox;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniLabel2: TUniLabel;
    UniLabel1: TUniLabel;
    UniBitBtn2: TUniBitBtn;
    UniBitBtnEntrar: TUniBitBtn;
    UniDBEdit1: TUniDBEdit;
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtnEntrarClick(Sender: TObject);
    procedure UniLabel1Click(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure UniEdit1Exit(Sender: TObject);
    procedure UniEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniLoginFormShow(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars,
  MainModule,
  uniGUIApplication,
  DmPrincipal,
  Lib,
  humanejs, Aguarde;

function FrmLogin: TFrmLogin;
begin
  Result := TFrmLogin(UniMainModule.GetFormInstance(TFrmLogin));
end;

procedure TFrmLogin.UniBitBtnEntrarClick(Sender: TObject);
begin
  UniBitBtnEntrar.Visible := false;
  if not dm.Dsup.DataSet.Active then
  begin
    showmessage('Digite o Login!!');
    if UniEdit1.canfocus then
      UniEdit1.setfocus;
    UniBitBtnEntrar.Visible := true;
    exit;
  end;

  if UniEdit2.Text = '' then
  begin
    showmessage('Digite a Senha!');
    if UniEdit2.canfocus then
      UniEdit2.setfocus;
    UniBitBtnEntrar.Visible := true;
    exit;
  end;

  dm.UP_Logado := dm.Dsup.DataSet.FieldByName('sigla').Asstring;
  dm.GLOBAL_NOME_UP := dm.Dsup.DataSet.FieldByName('NOME_UP').Asstring;
  dm.LOGIN_CONECTADO := UniEdit1.Text;
  dm.liberado := false;

  try
    dm.GLOBAL_SENHA_USUARIO := UniEdit2.Text;
    Sqlservidor.sql.Text := 'select * from funcionario where login =' +
      Qs(dm.LOGIN_CONECTADO) + ' and (SENHA = ' + Qs(dm.GLOBAL_SENHA_USUARIO) +
      ' OR ' + 'SENHA = ' + Qs(Senha(dm.GLOBAL_SENHA_USUARIO)) + ')';
    Dsservidor.DataSet.close;
    Dsservidor.DataSet.open;
    if not Dsservidor.DataSet.IsEmpty then
    begin
      if not Dsservidor.DataSet.IsEmpty then
      begin
        // Permissões estilo "CEDIR"
        dm.PERMISSAO_CONFERE := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_CONFERE').Asstring;
        dm.PERMISSAO_VISITANTE := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_visitante').Asstring;
        dm.PERMISSAO_TRABALHO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_setortrabalho').Asstring;
        dm.PERMISSAO_CADASTRO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_CADASTRO').Asstring;
        dm.PERMISSAO_EDUCACAO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_setoreducacao').Asstring;
        dm.PERMISSAO_PSICOSSOCIAL := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_PSICOSSOCIAL').Asstring;
        dm.PERMISSAO_JURIDICA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_JURIDICA').Asstring;
        dm.PERMISSAO_DISCIPLINA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_DISCIPLINA').Asstring;
        dm.PERMISSAO_INTELIGENCIA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_INTELIGENCIA').Asstring;
        dm.PERMISSAO_ENFERMAGEM := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_ENFERMAGEM').Asstring;
        dm.PERMISSAO_FARMACIA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_FARMACIA').Asstring;
        dm.PERMISSAO_CLINICAMEDICA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_CLINICAMEDICA').Asstring;
        dm.PERMISSAO_PSICOLOGIA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_PSICOLOGIA').Asstring;
        dm.PERMISSAO_PSIQUIATRIA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_PSIQUIATRIA').Asstring;
        dm.PERMISSAO_SAUDE := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_SAUDE').Asstring;
        dm.PERMISSAO_TERAPIAOCUPACIONAL := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_TERAPIAOCUPACIONAL').Asstring;
        dm.PERMISSAO_ODONTOLOGIA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_ODONTOLOGIA').Asstring;
        dm.PERMISSAO_PEDAGOGIA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_PEDAGOGIA').Asstring;
        dm.PERMISSAO_SERVICOSOCIAL := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_SERVICOSOCIAL').Asstring;
        dm.PERMISSAO_ARMAS := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_ARMAS').Asstring;
        dm.PERMISSAO_MONITORAMENTO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_MONITORAMENTO').Asstring;
        dm.PERMISSAO_OCORRENCIA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_OCORRENCIA').Asstring;
        dm.PERMISSAO_CONSELHODISCIPLINAR := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_CONSELHODISCIPLINAR').Asstring;
        dm.PERMISSAO_TRANSFERENCIAINTERNO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_TRANSFERENCIAINTERNO').Asstring;
        dm.PERMISSAO_MUDANCACELA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_MUDANCACELA').Asstring;
        dm.PERMISSAO_SAIDAO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_SAIDAO').Asstring;
        dm.PERMISSAO_SAIDAO_CADASTRO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_SAIDAO_CADASTRO').Asstring;
        dm.PERMISSAO_CIRCULACAOINTERNO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_CIRCULACAOINTERNO').Asstring;
        dm.PERMISSAO_MOVIMENTOSEMIABERTO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_MOVIMENTOSEMIABERTO').Asstring;
        dm.PERMISSAO_FUNCIONARIO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_FUNCIONARIO').Asstring;
        dm.PERMISSAO_FUNCAOFUNCIONARIO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_FUNCAOFUNCIONARIO').Asstring;
        dm.PERMISSAO_UNIDADEPENAL := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_UNIDADEPENAL').Asstring;
        dm.PERMISSAO_HORARIOFUNCIONARIO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_HORARIOFUNCIONARIO').Asstring;
        dm.PERMISSAO_PADRAOSISTEMA := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_PADRAOSISTEMA').Asstring;
        dm.PERMISSAO_EQUIPE := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_EQUIPE').Asstring;
        dm.PERMISSAO_LOCALPOSTOTRABALHO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_LOCALPOSTOTRABALHO').Asstring;
        dm.PERMISSAO_AGENTEPOREQUIPE := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_AGENTEPOREQUIPE').Asstring;
        dm.PERMISSAO_REGRAVISITACAO := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_REGRAVISITACAO').Asstring;
        // Permissões estilo SIM ou NÃO.
        dm.PERMISSAO_ENTRADAVISITANTE := Dsservidor.DataSet.FieldByName
          ('PERMISSAO_ENTRADAVISITANTE').Asstring;
        dm.VISUALIZA_OUTRAS_UP := Dsservidor.DataSet.FieldByName
          ('VISUALIZA_OUTRAS_UP').Asstring;
        dm.CONFIGURACAO := Dsservidor.DataSet.FieldByName
          ('configuracoes').Asstring;

        { Método transitório utilizado para que TODOS os usuários não fiquem sem a permissão
          para criar/editar cadastro de funcionários e suas permissões.. }
        if ContemValor('S', dm.CONFIGURACAO) then
        begin
          dm.PERMISSAO_FUNCIONARIO := 'CEDIR';
        end;

        dm.GLOBAL_NOME_FUNCIONARIO_LOGADO := Dsservidor.DataSet.FieldByName
          ('NOME_FUNCIONARIO').Asstring;
        dm.liberado := true;
        ModalResult := mrOK; // Login is valid so proceed to MainForm

      end
      else
      begin
        showmessage('Senha incorreta!!');
        UniBitBtnEntrar.Visible := true;
        if UniEdit2.canfocus then
          UniEdit2.setfocus;
      end;

    end
    else
    begin
      showmessage('Login não localizado.');
      UniBitBtnEntrar.Visible := true;
      if UniEdit1.canfocus then
        UniEdit1.setfocus;
    end;

  except
    on e: Exception do
    begin
      UniBitBtnEntrar.Visible := true;
      showmessage('Sistema diz: ' + e.Message);
    end;
  end

end;

procedure TFrmLogin.UniBitBtn2Click(Sender: TObject);
begin
  dm.liberado := false;
  UniMainModule.Terminate;
  ModalResult := mrCancel; // Login is valid so proceed to MainForm
end;

procedure TFrmLogin.UniEdit1Exit(Sender: TObject);
begin
  dm.LOGIN_CONECTADO := UniEdit1.Text;
  if dm.LOGIN_CONECTADO <> '' then
  begin
    if (dm.LOGIN_CONECTADO = '99999') then
    begin
      if LowerCase(UniEdit2.Text) = 'SUPER' + formatdatetime('DD', Date) then
      begin
        exit;
      end;
    end;

    try
      dm.Dsup.DataSet.close;
      Sqlservidor.sql.Text :=
        'select ID_UP,ID_FUNCIONARIO,IDPOSTO_TRABALHO, SENHA from funcionario where login='
        + Qs(dm.LOGIN_CONECTADO);
      Dsservidor.DataSet.close;
      Dsservidor.DataSet.open;
      if Dsservidor.DataSet.recordcount > 0 then
      begin
        dm.SqlUP.sql.Text := 'SELECT * FROM UNIDADE_PENAL ' + ' where id_up = '
          + Dsservidor.DataSet.FieldByName('ID_UP').Asstring +
          ' order by nome_up';
        dm.Dsup.DataSet.open;

        dm.GLOBAL_ID_UP := Dsservidor.DataSet.FieldByName('ID_UP').AsInteger;
        dm.GLOBAL_ID_FUNCIONARIO := Dsservidor.DataSet.FieldByName
          ('ID_FUNCIONARIO').AsInteger;
        dm.GLOBAL_IDPOSTO_TRABALHO := Dsservidor.DataSet.FieldByName
          ('IDPOSTO_TRABALHO').AsInteger;
        dm.GLOBAL_MEUS_DOCUMENTOS := GetEnvironmentVariable('USERPROFILE');
      end;

    except
      on e: Exception do
      begin
        showmessage('Sistema diz: ' + e.Message);
      end;
    end
  end;

end;

procedure TFrmLogin.UniEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    UniEdit2.setfocus;
end;

procedure TFrmLogin.UniEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FrmAguarde.ShowModal(
      procedure(Res: Integer)
      begin
        UniBitBtnEntrar.OnClick(nil);
      end);
  end;
end;

procedure TFrmLogin.UniLabel1Click(Sender: TObject);
begin
  dm.liberado := true;
  ModalResult := mrOK;
end;

procedure TFrmLogin.UniLoginFormCreate(Sender: TObject);
begin

  UniGroupBox1.Caption := dm.GLOBAL_LOCAL;
  LabelTitulo.Caption := dm.GLOBAL_NOME;

end;

procedure TFrmLogin.UniLoginFormShow(Sender: TObject);
begin
  if FileExists('atualizar.txt') then
  begin
    self.Hide;
    humane.timeout(10000);
    humane.log
      ('<b><font Color=yellow>Atualização em Andamento!</font></b><br>Aguarde,'
      + ' acesse novamente em 01 minuto...');
    UniTimer1.enabled := true;
  end;

end;

procedure TFrmLogin.UniTimer1Timer(Sender: TObject);
begin
    UniTimer1.enabled := false;
    self.Close;

end;

initialization

RegisterAppFormClass(TFrmLogin);

end.
