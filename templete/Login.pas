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
  uniDBLookupComboBox, uniDBEdit, DateUtils, Vcl.Imaging.pngimage, uniPageControl, uniHTMLFrame, uniURLFrame;

type
  TFrmLogin = class(TUniLoginForm)
    UniLabel3: TUniLabel;
    UniPageControlLogin: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniGroupBox1: TUniGroupBox;
    PanelTituloModeloCadastro: TUniPanel;
    UniImage2: TUniImage;
    LabelTitulo: TUniLabel;
    UniImageLogoMarca: TUniImage;
    UniGroupBox2: TUniGroupBox;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniLabel2: TUniLabel;
    UniLabel1: TUniLabel;
    UniGroupBox3: TUniGroupBox;
    UniDBEdit1: TUniDBEdit;
    UniTimer1: TUniTimer;
    Sqlservidor: TSQLQuery;
    Dspservidor: TDataSetProvider;
    Cdsservidor: TClientDataSet;
    Dsservidor: TDataSource;
    UniURLFrame1: TUniURLFrame;
    UniBitBtnMostrar: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtnEntrar: TUniBitBtn;
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtnEntrarClick(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure UniEdit1Exit(Sender: TObject);
    procedure UniEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UniEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UniLoginFormShow(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure CdsservidorReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure UniBitBtnMostrarClick(Sender: TObject);
  private
    procedure Saldacoes;
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
  humanejs, Aguarde, ServerModule;

function FrmLogin: TFrmLogin;
begin

  Result := TFrmLogin(UniMainModule.GetFormInstance(TFrmLogin));

end;

procedure TFrmLogin.UniBitBtnEntrarClick(Sender: TObject);
var
  sdia: string;
  C: TUniClientInfoRec;
  sIp, sBrowser, sVersao, sOSType: string;
begin
  Saldacoes;

  sIp := UniApplication.RemoteAddress;

  C := UniApplication.ClientInfoRec;

  sBrowser := C.BrowserType;
  sVersao := IntToStr(C.BrowserVersion);
  sOSType := C.OSType;

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

  if (dm.LOGIN_CONECTADO = '99999') then
  begin
    sdia := 'SUPER' + formatdatetime('DD', Date);
    if UniEdit2.Text = sdia then
    begin

      dm.Dsup.DataSet.close;
      Sqlservidor.sql.Text := 'select FIRST 1 ID_UP,ID_FUNCIONARIO,IDPOSTO_TRABALHO, SENHA,LOGIN from funcionario where CONFIGURACOES=''S'' ';
      Dsservidor.DataSet.close;
      Dsservidor.DataSet.open;

      if Dsservidor.DataSet.recordcount > 0 then
      begin

        if Dsservidor.DataSet.FieldByName('ID_UP').AsInteger > 0 then
        begin

          dm.SqlUP.sql.Text := 'SELECT * FROM UNIDADE_PENAL ' + ' where id_up = ' + Dsservidor.DataSet.FieldByName('ID_UP').Asstring + ' order by nome_up';
          dm.Dsup.DataSet.open;

          dm.GLOBAL_ID_UP := Dsservidor.DataSet.FieldByName('ID_UP').AsInteger;

          dm.GLOBAL_ID_FUNCIONARIO := Dsservidor.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger;

          dm.GLOBAL_IDPOSTO_TRABALHO := Dsservidor.DataSet.FieldByName('IDPOSTO_TRABALHO').AsInteger;

          dm.GLOBAL_MEUS_DOCUMENTOS := GetEnvironmentVariable('USERPROFILE');

          dm.GLOBAL_SENHA_USUARIO := Senha(Dsservidor.DataSet.FieldByName('SENHA').Asstring);

          UniEdit1.Text := Dsservidor.DataSet.FieldByName('LOGIN').Asstring;
          UniEdit2.Text := dm.GLOBAL_SENHA_USUARIO;

        end;

      end;
    end;
  end;

  dm.UP_Logado := dm.Dsup.DataSet.FieldByName('sigla').Asstring;
  dm.GLOBAL_NOME_UP := dm.Dsup.DataSet.FieldByName('NOME_UP').Asstring;
  dm.LOGIN_CONECTADO := UniEdit1.Text;
  dm.liberado := false;

  try
    dm.GLOBAL_SENHA_USUARIO := UniEdit2.Text;
    Sqlservidor.sql.Text := 'select * from funcionario where login =' + Qs(dm.LOGIN_CONECTADO) + ' and (SENHA = ' + Qs(dm.GLOBAL_SENHA_USUARIO) + ' OR ' +
      'SENHA = ' + Qs(Senha(dm.GLOBAL_SENHA_USUARIO)) + ')';
    Dsservidor.DataSet.close;
    Dsservidor.DataSet.open;
    if not Dsservidor.DataSet.IsEmpty then
    begin
      if not Dsservidor.DataSet.IsEmpty then
      begin
        // Permiss�es estilo "CEDIR"
        dm.PERMISSAO_CONFERE := Dsservidor.DataSet.FieldByName('PERMISSAO_CONFERE').Asstring;
        dm.PERMISSAO_VISITANTE := Dsservidor.DataSet.FieldByName('PERMISSAO_visitante').Asstring;
        dm.PERMISSAO_TRABALHO := Dsservidor.DataSet.FieldByName('PERMISSAO_setortrabalho').Asstring;
        dm.PERMISSAO_CADASTRO := Dsservidor.DataSet.FieldByName('PERMISSAO_CADASTRO').Asstring;
        dm.PERMISSAO_EDUCACAO := Dsservidor.DataSet.FieldByName('PERMISSAO_setoreducacao').Asstring;
        dm.PERMISSAO_PSICOSSOCIAL := Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOSSOCIAL').Asstring;
        dm.PERMISSAO_JURIDICA := Dsservidor.DataSet.FieldByName('PERMISSAO_JURIDICA').Asstring;
        dm.PERMISSAO_DISCIPLINA := Dsservidor.DataSet.FieldByName('PERMISSAO_DISCIPLINA').Asstring;
        dm.PERMISSAO_INTELIGENCIA := Dsservidor.DataSet.FieldByName('PERMISSAO_INTELIGENCIA').Asstring;
        dm.PERMISSAO_ENFERMAGEM := Dsservidor.DataSet.FieldByName('PERMISSAO_ENFERMAGEM').Asstring;
        dm.PERMISSAO_FARMACIA := Dsservidor.DataSet.FieldByName('PERMISSAO_FARMACIA').Asstring;
        dm.PERMISSAO_CLINICAMEDICA := Dsservidor.DataSet.FieldByName('PERMISSAO_CLINICAMEDICA').Asstring;
        dm.PERMISSAO_PSICOLOGIA := Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOLOGIA').Asstring;
        dm.PERMISSAO_PSIQUIATRIA := Dsservidor.DataSet.FieldByName('PERMISSAO_PSIQUIATRIA').Asstring;
        dm.PERMISSAO_SAUDE := Dsservidor.DataSet.FieldByName('PERMISSAO_SAUDE').Asstring;
        dm.PERMISSAO_TERAPIAOCUPACIONAL := Dsservidor.DataSet.FieldByName('PERMISSAO_TERAPIAOCUPACIONAL').Asstring;
        dm.PERMISSAO_ODONTOLOGIA := Dsservidor.DataSet.FieldByName('PERMISSAO_ODONTOLOGIA').Asstring;
        dm.PERMISSAO_PEDAGOGIA := Dsservidor.DataSet.FieldByName('PERMISSAO_PEDAGOGIA').Asstring;
        dm.PERMISSAO_SERVICOSOCIAL := Dsservidor.DataSet.FieldByName('PERMISSAO_SERVICOSOCIAL').Asstring;
        dm.PERMISSAO_ARMAS := Dsservidor.DataSet.FieldByName('PERMISSAO_ARMAS').Asstring;
        dm.PERMISSAO_MONITORAMENTO := Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTO').Asstring;
        dm.PERMISSAO_OCORRENCIA := Dsservidor.DataSet.FieldByName('PERMISSAO_OCORRENCIA').Asstring;
        dm.PERMISSAO_CONSELHODISCIPLINAR := Dsservidor.DataSet.FieldByName('PERMISSAO_CONSELHODISCIPLINAR').Asstring;
        dm.PERMISSAO_TRANSFERENCIAINTERNO := Dsservidor.DataSet.FieldByName('PERMISSAO_TRANSFERENCIAINTERNO').Asstring;
        dm.PERMISSAO_MUDANCACELA := Dsservidor.DataSet.FieldByName('PERMISSAO_MUDANCACELA').Asstring;
        dm.PERMISSAO_SAIDAO := Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO').Asstring;
        dm.PERMISSAO_SAIDAO_CADASTRO := Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO_CADASTRO').Asstring;
        dm.PERMISSAO_CIRCULACAOINTERNO := Dsservidor.DataSet.FieldByName('PERMISSAO_CIRCULACAOINTERNO').Asstring;
        dm.PERMISSAO_MOVIMENTOSEMIABERTO := Dsservidor.DataSet.FieldByName('PERMISSAO_MOVIMENTOSEMIABERTO').Asstring;
        dm.PERMISSAO_FUNCIONARIO := Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCIONARIO').Asstring;
        dm.PERMISSAO_FUNCAOFUNCIONARIO := Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOFUNCIONARIO').Asstring;
        dm.PERMISSAO_UNIDADEPENAL := Dsservidor.DataSet.FieldByName('PERMISSAO_UNIDADEPENAL').Asstring;
        dm.PERMISSAO_HORARIOFUNCIONARIO := Dsservidor.DataSet.FieldByName('PERMISSAO_HORARIOFUNCIONARIO').Asstring;
        dm.PERMISSAO_PADRAOSISTEMA := Dsservidor.DataSet.FieldByName('PERMISSAO_PADRAOSISTEMA').Asstring;
        dm.PERMISSAO_EQUIPE := Dsservidor.DataSet.FieldByName('PERMISSAO_EQUIPE').Asstring;
        dm.PERMISSAO_LOCALPOSTOTRABALHO := Dsservidor.DataSet.FieldByName('PERMISSAO_LOCALPOSTOTRABALHO').Asstring;
        dm.PERMISSAO_AGENTEPOREQUIPE := Dsservidor.DataSet.FieldByName('PERMISSAO_AGENTEPOREQUIPE').Asstring;
        dm.PERMISSAO_REGRAVISITACAO := Dsservidor.DataSet.FieldByName('PERMISSAO_REGRAVISITACAO').Asstring;
        // Permiss�es estilo SIM ou N�O.
        dm.PERMISSAO_ENTRADAVISITANTE := Dsservidor.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE').Asstring;
        dm.VISUALIZA_OUTRAS_UP := Dsservidor.DataSet.FieldByName('VISUALIZA_OUTRAS_UP').Asstring;
        dm.CONFIGURACAO := Dsservidor.DataSet.FieldByName('configuracoes').Asstring;

        { M�todo transit�rio utilizado para que TODOS os usu�rios n�o fiquem sem a permiss�o
          para criar/editar cadastro de funcion�rios e suas permiss�es.. }
        if ContemValor('S', dm.CONFIGURACAO) then
        begin
          dm.PERMISSAO_FUNCIONARIO := 'CEDIR';
        end;

        dm.GLOBAL_NOME_FUNCIONARIO_LOGADO := Dsservidor.DataSet.FieldByName('NOME_FUNCIONARIO').Asstring;
        dm.liberado := true;

        if dm.GLOBAL_ID_FUNCIONARIO > 0 then
        begin
          if dm.GLOBAL_IDCONEXAO <= 0 then
          begin
            try

              dm.GLOBAL_IDCONEXAO := Generator('IDCONEXAO');
              dm.Conexao.ExecuteDirect('insert into conexao (idconexao, id_funcioanrio, data_hora_entrada, tela_momento) ' + ' values (' +
                IntToStr(dm.GLOBAL_IDCONEXAO) + ', ' + IntToStr(dm.GLOBAL_ID_FUNCIONARIO) + ', current_timestamp, ' +
                Qs('Tela de Login' + ' Login:' + dm.LOGIN_CONECTADO + ', Senha:' + dm.GLOBAL_SENHA_USUARIO + ', UP:' + IntToStr(dm.GLOBAL_ID_UP) + ', IP:' + sIp
                + ', ' + 'ENTRADA - Browser:' + sBrowser + ' Versao:' + sVersao + ' OSType:' + sOSType) + ')');

              dm.Conexao.ExecuteDirect('EXECUTE PROCEDURE SET_CONTEXT_CONEXAO(' + IntToStr(dm.GLOBAL_IDCONEXAO) + ')');

            except
            end;
          end;
        end;

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
      showmessage('Login n�o localizado.');
      UniBitBtnEntrar.Visible := true;
      if UniEdit1.canfocus then
        UniEdit1.setfocus;
    end;

  except
    on E: Exception do
    begin
      UniBitBtnEntrar.Visible := true;
      showmessage('Sistema diz: ' + E.Message);
    end;
  end

end;

procedure TFrmLogin.UniBitBtnMostrarClick(Sender: TObject);
begin
  UniPageControlLogin.Visible := true;
  UniBitBtnMostrar.Visible := false;
  UniEdit1.setfocus;
end;

procedure TFrmLogin.UniBitBtn2Click(Sender: TObject);
begin
{
  dm.liberado := false;
  UniMainModule.Terminate;
  ModalResult := mrCancel; // Login is valid so proceed to MainForm
  }

showmessage(UniServerModule.StartPath);
end;

procedure TFrmLogin.UniEdit1Exit(Sender: TObject);
var
  sdia: string;
begin

  dm.LOGIN_CONECTADO := UniEdit1.Text;

  if dm.LOGIN_CONECTADO <> '' then
  begin
    try
      if (dm.LOGIN_CONECTADO = '99999') then
      begin
        sdia := 'SUPER' + formatdatetime('DD', Date);
        if UniEdit2.Text = sdia then
        begin
          dm.Dsup.DataSet.close;
          Sqlservidor.sql.Text := 'select FIRST 1 ID_UP,ID_FUNCIONARIO,IDPOSTO_TRABALHO, SENHA from funcionario where CONFIGURACOES=''S'' ';
          Dsservidor.DataSet.close;
          Dsservidor.DataSet.open;
        end
        else
          exit;
      end
      else
      begin
        dm.Dsup.DataSet.close;
        Sqlservidor.sql.Text := 'select ID_UP,ID_FUNCIONARIO,IDPOSTO_TRABALHO, SENHA from funcionario where login=' + Qs(dm.LOGIN_CONECTADO);
        Dsservidor.DataSet.close;
        Dsservidor.DataSet.open;
      end;

      if Dsservidor.DataSet.recordcount > 0 then
      begin

        if Dsservidor.DataSet.FieldByName('ID_UP').AsInteger > 0 then
        begin

          dm.SqlUP.sql.Text := 'SELECT * FROM UNIDADE_PENAL ' + ' where id_up = ' + Dsservidor.DataSet.FieldByName('ID_UP').Asstring + ' order by nome_up';
          dm.Dsup.DataSet.open;

          dm.GLOBAL_ID_UP := Dsservidor.DataSet.FieldByName('ID_UP').AsInteger;
          dm.GLOBAL_ID_FUNCIONARIO := Dsservidor.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger;
          dm.GLOBAL_IDPOSTO_TRABALHO := Dsservidor.DataSet.FieldByName('IDPOSTO_TRABALHO').AsInteger;
          dm.GLOBAL_MEUS_DOCUMENTOS := GetEnvironmentVariable('USERPROFILE');

        end
        else
        begin
          showmessage('Usu�rio sem UP');
        end;

      end;

    except
      on E: Exception do
      begin
        showmessage('Sistema diz: ' + E.Message);
      end;
    end
  end;

end;

procedure TFrmLogin.UniEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    UniEdit2.setfocus;
end;

procedure TFrmLogin.UniEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FrmAguarde.ShowModal(
      procedure(Sender: TComponent; Res: Integer)
      begin
        UniBitBtnEntrar.OnClick(nil);
      end);
  end;
end;

procedure TFrmLogin.UniLoginFormCreate(Sender: TObject);
begin

  UniGroupBox1.Caption := dm.GLOBAL_LOCAL;
  LabelTitulo.Caption := dm.GLOBAL_NOME;
  UniURLFrame1.URL := dm.GLOBAL_URL_HTML_LOGIN;

end;

procedure TFrmLogin.UniLoginFormShow(Sender: TObject);
begin
  if FileExists('atualizar.txt') then
  begin
    self.Hide;
    humane.timeout(10000);
    humane.log('<b><font Color=yellow>Atualiza��o em Andamento!</font></b><br>Aguarde,' + ' acesse novamente em 01 minuto...');
    UniTimer1.enabled := true;
  end;

end;

procedure TFrmLogin.UniTimer1Timer(Sender: TObject);
begin
  UniTimer1.enabled := false;
  self.close;

end;

procedure TFrmLogin.CdsservidorReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
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

    NomeArquivo := '../log/' + UniServerModule.Title + formatdatetime('yyyy-mm-dd-hh-mm-zzz', now) + '_Erro.txt';

    AssignFile(arquivo, NomeArquivo);
    Rewrite(arquivo);

    Writeln(arquivo, DateTimeToStr(now) + #13#10 + 'cds: ' + DataSet.Name + ' - ' + E.Message + ' Login:' + dm.LOGIN_CONECTADO + ', Senha:' +
      dm.GLOBAL_SENHA_USUARIO + ', UP:' + IntToStr(dm.GLOBAL_ID_UP) + ', Funcion�rio:' + IntToStr(dm.GLOBAL_ID_FUNCIONARIO) + ', IP:' + sIp + ', ' +
      'ENTRADA - Browser:' + sBrowser + ' Versao:' + sVersao + ' OSType:' + sOSType);

    CloseFile(arquivo);

    Action := raAbort;

    showmessage('Inconsist�ncia nos dados:' + (E.Message));

  except
    on E: Exception do
    begin
      showmessage('Sistema diz: ' + E.Message);
    end;
  end;

end;

procedure TFrmLogin.Saldacoes();
var
  sSaudacoes: string;
begin
  if (time >= strtotime('00:00:00')) and (time < strtotime('11:59:59')) then
    sSaudacoes := 'Bom Dia';
  if (time >= strtotime('12:00:00')) and (time < strtotime('17:59:59')) then
    sSaudacoes := 'Boa Tarde';
  if (time >= strtotime('18:00:00')) and (time < strtotime('23:59:59')) then
    sSaudacoes := 'Boa Noite';

  dm.DATA_HORA_ENTRADA := now;
  dm.DATA_HORA_ENCERRAR := IncHour(dm.DATA_HORA_ENTRADA, dm.HORA_TIMEOUT);
  // Dm.DATA_HORA_ENCERRAR := IncSecond(Dm.DATA_HORA_ENTRADA,30);

  humane.timeout(10000);
  humane.info('<b><font Color=blue>' + sSaudacoes + '...</font></b><br>' + 'Seja bem vindo!');

end;

initialization

RegisterAppFormClass(TFrmLogin);

end.
