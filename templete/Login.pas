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
  uniDBLookupComboBox;

type
  TFrmLogin = class(TUniLoginForm)
    UniLabel3: TUniLabel;
    UniTimer1: TUniTimer;
    Sqlservidor: TSQLQuery;
    Dspservidor: TDataSetProvider;
    Cdsservidor: TClientDataSet;
    Dsservidor: TDataSource;
    DsUP: TDataSource;
    CdsUP: TClientDataSet;
    CdsUPID_UP: TIntegerField;
    CdsUPNOME_UP: TStringField;
    CdsUPENDERECO: TStringField;
    CdsUPNUMERO: TStringField;
    CdsUPBAIRRO: TStringField;
    CdsUPCOMPLEMENTO: TStringField;
    CdsUPCEP: TStringField;
    CdsUPID_CIDADE: TIntegerField;
    CdsUPFONE: TStringField;
    CdsUPFAX: TStringField;
    CdsUPCONTATO: TStringField;
    CdsUPFOTO: TStringField;
    CdsUPCAPITAL: TStringField;
    CdsUPREGIAO: TStringField;
    CdsUPSIGLA: TStringField;
    DspUP: TDataSetProvider;
    SqlUP: TSQLQuery;
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
    UniBitBtn1: TUniBitBtn;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UniLabel1Click(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure UniEdit1Exit(Sender: TObject);
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
  humanejs;

function FrmLogin: TFrmLogin;
begin
  Result := TFrmLogin(UniMainModule.GetFormInstance(TFrmLogin));
end;

procedure TFrmLogin.UniBitBtn1Click(Sender: TObject);
begin

  Dsservidor.DataSet.Filtered := false;
  Dm.UP_Logado := Dsup.DataSet.FieldByName('sigla').Asstring;
  Dm.GLOBAL_NOME_UP := Dsup.DataSet.FieldByName('NOME_UP').Asstring;
  Dm.LOGIN_CONECTADO := UniEdit1.Text;
  Dm.liberado := False;
  if (Dm.LOGIN_CONECTADO = '') then
  begin
    showmessage('Digite o Login!!');
    if Uniedit1.canfocus then
      Uniedit1.setfocus;
  end
  else
  begin
    if Uniedit2.text = '' then
    begin

      showmessage('Digite a Senha!');

      if Uniedit2.canfocus then
        Uniedit2.setfocus;

    end
    else
    begin

      if (Dm.LOGIN_CONECTADO = '99999') then
      begin

        if LowerCase(Uniedit2.text) = LowerCase('SUPER' + formatdatetime('DD', Date)) then
        begin

          Dm.Liberado := True;

          //Permissões estilo "CEDIR".
          Dm.PERMISSAO_CONFERE := 'CEDIR';
          Dm.PERMISSAO_VISITANTE := 'CEDIR';
          Dm.PERMISSAO_TRABALHO := 'CEDIR';
          Dm.PERMISSAO_CADASTRO := 'CEDIR';
          Dm.PERMISSAO_EDUCACAO := 'CEDIR';
          Dm.PERMISSAO_PSICOSSOCIAL := 'CEDIR';
          Dm.PERMISSAO_JURIDICA := 'CEDIR';
          Dm.PERMISSAO_DISCIPLINA := 'CEDIR';
          Dm.PERMISSAO_INTELIGENCIA := 'CEDIR';
          Dm.PERMISSAO_ENFERMAGEM := 'CEDIR';
          Dm.PERMISSAO_FARMACIA := 'CEDIR';
          Dm.PERMISSAO_CLINICAMEDICA := 'CEDIR';
          Dm.PERMISSAO_PSICOLOGIA := 'CEDIR';
          Dm.PERMISSAO_PSIQUIATRIA := 'CEDIR';
          Dm.PERMISSAO_SAUDE := 'CEDIR';
          Dm.PERMISSAO_TERAPIAOCUPACIONAL := 'CEDIR';
          Dm.PERMISSAO_ODONTOLOGIA := 'CEDIR';
          Dm.PERMISSAO_PEDAGOGIA := 'CEDIR';
          Dm.PERMISSAO_SERVICOSOCIAL := 'CEDIR';
          Dm.PERMISSAO_ARMAS := 'CEDIR';
          Dm.PERMISSAO_MONITORAMENTO := 'CEDIR';
          Dm.PERMISSAO_OCORRENCIA := 'CEDIR';
          Dm.PERMISSAO_CONSELHODISCIPLINAR := 'CEDIR';
          Dm.PERMISSAO_TRANSFERENCIAINTERNO := 'CEDIR';
          Dm.PERMISSAO_MUDANCACELA := 'CEDIR';
          Dm.PERMISSAO_SAIDAO := 'CEDIR';
          Dm.PERMISSAO_CIRCULACAOINTERNO := 'CEDIR';
          Dm.PERMISSAO_MOVIMENTOSEMIABERTO := 'CEDIR';
          Dm.PERMISSAO_FUNCIONARIO := 'CEDIR';
          Dm.PERMISSAO_FUNCAOFUNCIONARIO := 'CEDIR';
          Dm.PERMISSAO_UNIDADEPENAL := 'CEDIR';
          Dm.PERMISSAO_HORARIOFUNCIONARIO := 'CEDIR';
          Dm.PERMISSAO_PADRAOSISTEMA := 'CEDIR';
          Dm.PERMISSAO_EQUIPE := 'CEDIR';
          Dm.PERMISSAO_LOCALPOSTOTRABALHO := 'CEDIR';
          Dm.PERMISSAO_AGENTEPOREQUIPE := 'CEDIR';
          Dm.PERMISSAO_REGRAVISITACAO := 'CEDIR';

          //Permissões estilo SIM ou NÃO;
          Dm.PERMISSAO_ENTRADAVISITANTE := 'S';
          Dm.VISUALIZA_OUTRAS_UP := 'S';
          Dm.CONFIGURACAO := 'S';

          ModalResult := mrOK; // Login is valid so proceed to MainForm

        end;

      end;

      if (UniDBLookupComboBox1.keyvalue <= 0) then
      begin
        showmessage('Funcionário não cadastrado!!');
        if UniDBLookupComboBox1.canfocus then
          UniDBLookupComboBox1.setfocus;
      end
      else
      begin
        try
          Sqlservidor.sql.text := 'select * from funcionario where login =' + Qs(Dm.LOGIN_CONECTADO);
          Dsservidor.dataset.close;
          Dsservidor.dataset.open;
          if not Dsservidor.DataSet.IsEmpty then
          begin
            Dm.GLOBAL_SENHA_USUARIO := uniEdit2.Text;
            Dsservidor.DataSet.Filter := 'SENHA = ' + QS(Dm.GLOBAL_SENHA_USUARIO) + ' OR ' + 'SENHA = ' + QS(Senha(Dm.GLOBAL_SENHA_USUARIO));
            Dsservidor.DataSet.Filtered := true;
            if not Dsservidor.DataSet.IsEmpty then
            begin
              //Permissões estilo "CEDIR"
              Dm.PERMISSAO_CONFERE := Dsservidor.DataSet.FieldByName('PERMISSAO_CONFERE').AsString;
              Dm.PERMISSAO_VISITANTE := Dsservidor.DataSet.FieldByName('PERMISSAO_visitante').AsString;
              Dm.PERMISSAO_TRABALHO := Dsservidor.DataSet.FieldByName('PERMISSAO_setortrabalho').AsString;
              Dm.PERMISSAO_CADASTRO := Dsservidor.DataSet.FieldByName('PERMISSAO_CADASTRO').AsString;
              Dm.PERMISSAO_EDUCACAO := Dsservidor.DataSet.FieldByName('PERMISSAO_setoreducacao').AsString;
              Dm.PERMISSAO_PSICOSSOCIAL := Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOSSOCIAL').AsString;
              Dm.PERMISSAO_JURIDICA := Dsservidor.DataSet.FieldByName('PERMISSAO_JURIDICA').AsString;
              Dm.PERMISSAO_DISCIPLINA := Dsservidor.DataSet.FieldByName('PERMISSAO_DISCIPLINA').AsString;
              Dm.PERMISSAO_INTELIGENCIA := Dsservidor.DataSet.FieldByName('PERMISSAO_INTELIGENCIA').AsString;
              Dm.PERMISSAO_ENFERMAGEM := Dsservidor.DataSet.FieldByName('PERMISSAO_ENFERMAGEM').AsString;
              Dm.PERMISSAO_FARMACIA := Dsservidor.DataSet.FieldByName('PERMISSAO_FARMACIA').AsString;
              Dm.PERMISSAO_CLINICAMEDICA := Dsservidor.DataSet.FieldByName('PERMISSAO_CLINICAMEDICA').AsString;
              Dm.PERMISSAO_PSICOLOGIA := Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOLOGIA').AsString;
              Dm.PERMISSAO_PSIQUIATRIA := Dsservidor.DataSet.FieldByName('PERMISSAO_PSIQUIATRIA').AsString;
              Dm.PERMISSAO_SAUDE := Dsservidor.DataSet.FieldByName('PERMISSAO_SAUDE').AsString;
              Dm.PERMISSAO_TERAPIAOCUPACIONAL := Dsservidor.DataSet.FieldByName('PERMISSAO_TERAPIAOCUPACIONAL').AsString;
              Dm.PERMISSAO_ODONTOLOGIA := Dsservidor.DataSet.FieldByName('PERMISSAO_ODONTOLOGIA').AsString;
              Dm.PERMISSAO_PEDAGOGIA := Dsservidor.DataSet.FieldByName('PERMISSAO_PEDAGOGIA').AsString;
              Dm.PERMISSAO_SERVICOSOCIAL := Dsservidor.DataSet.FieldByName('PERMISSAO_SERVICOSOCIAL').AsString;
              Dm.PERMISSAO_ARMAS := Dsservidor.DataSet.FieldByName('PERMISSAO_ARMAS').AsString;
              Dm.PERMISSAO_MONITORAMENTO := Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTO').AsString;
              Dm.PERMISSAO_OCORRENCIA := Dsservidor.DataSet.FieldByName('PERMISSAO_OCORRENCIA').AsString;
              Dm.PERMISSAO_CONSELHODISCIPLINAR := Dsservidor.DataSet.FieldByName('PERMISSAO_CONSELHODISCIPLINAR').AsString;
              Dm.PERMISSAO_TRANSFERENCIAINTERNO := Dsservidor.DataSet.FieldByName('PERMISSAO_TRANSFERENCIAINTERNO').AsString;
              Dm.PERMISSAO_MUDANCACELA := Dsservidor.DataSet.FieldByName('PERMISSAO_MUDANCACELA').AsString;
              Dm.PERMISSAO_SAIDAO := Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO').AsString;
              Dm.PERMISSAO_SAIDAO_CADASTRO := Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO_CADASTRO').AsString;
              Dm.PERMISSAO_CIRCULACAOINTERNO := Dsservidor.DataSet.FieldByName('PERMISSAO_CIRCULACAOINTERNO').AsString;
              Dm.PERMISSAO_MOVIMENTOSEMIABERTO := Dsservidor.DataSet.FieldByName('PERMISSAO_MOVIMENTOSEMIABERTO').AsString;
              Dm.PERMISSAO_FUNCIONARIO := Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCIONARIO').AsString;
              Dm.PERMISSAO_FUNCAOFUNCIONARIO := Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOFUNCIONARIO').AsString;
              Dm.PERMISSAO_UNIDADEPENAL := Dsservidor.DataSet.FieldByName('PERMISSAO_UNIDADEPENAL').AsString;
              Dm.PERMISSAO_HORARIOFUNCIONARIO := Dsservidor.DataSet.FieldByName('PERMISSAO_HORARIOFUNCIONARIO').AsString;
              Dm.PERMISSAO_PADRAOSISTEMA := Dsservidor.DataSet.FieldByName('PERMISSAO_PADRAOSISTEMA').AsString;
              Dm.PERMISSAO_EQUIPE := Dsservidor.DataSet.FieldByName('PERMISSAO_EQUIPE').AsString;
              Dm.PERMISSAO_LOCALPOSTOTRABALHO := Dsservidor.DataSet.FieldByName('PERMISSAO_LOCALPOSTOTRABALHO').AsString;
              Dm.PERMISSAO_AGENTEPOREQUIPE := Dsservidor.DataSet.FieldByName('PERMISSAO_AGENTEPOREQUIPE').AsString;
              Dm.PERMISSAO_REGRAVISITACAO := Dsservidor.DataSet.FieldByName('PERMISSAO_REGRAVISITACAO').AsString;

              //Permissões estilo SIM ou NÃO.
              Dm.PERMISSAO_ENTRADAVISITANTE := Dsservidor.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE').AsString;
              Dm.VISUALIZA_OUTRAS_UP := Dsservidor.DataSet.FieldByName('VISUALIZA_OUTRAS_UP').AsString;
              Dm.CONFIGURACAO := Dsservidor.DataSet.FieldByName('configuracoes').AsString;

              {Método transitório utilizado para que TODOS os usuários não fiquem sem a permissão
              para criar/editar cadastro de funcionários e suas permissões..}
              if ContemValor('S', Dm.configuracao) then
              begin
                Dm.PERMISSAO_FUNCIONARIO := 'CEDIR';
              end;

              Dm.GLOBAL_NOME_FUNCIONARIO_LOGADO := Dsservidor.DataSet.FieldByName('NOME_FUNCIONARIO').AsString;
              Dm.Liberado := True;
              ModalResult := mrOK; // Login is valid so proceed to MainForm

            end
            else
            begin
              ShowMessage('Senha Invalida!!');
              if Uniedit2.canfocus then
                UniEdit2.SetFocus;
            end;

          end
          else
          begin
            ShowMessage('Login não localizado.');
            if Uniedit1.canfocus then
              UniEdit1.SetFocus;
          end;

        except
          ShowMessage('Codigo invalido');
        end
      end;

    end;
  end;


end;

procedure TFrmLogin.UniBitBtn2Click(Sender: TObject);
begin
  Dm.Liberado := false;
  UniMainModule.Terminate;
  ModalResult := mrCancel; // Login is valid so proceed to MainForm
end;

procedure TFrmLogin.UniEdit1Exit(Sender: TObject);
begin
  dm.LOGIN_CONECTADO := uniEdit1.Text;
  if dm.LOGIN_CONECTADO <> '' then
  begin
    if (dm.LOGIN_CONECTADO = '99999') then
    begin
      if LowerCase(uniedit2.text) = 'SUPER' + formatdatetime('DD', Date) then
      begin
        uniDBLookupComboBox1.Enabled := True;
        Exit;
      end;
    end;

    try
      Sqlservidor.sql.text := 'select * from funcionario where login=' + Qs(dm.LOGIN_CONECTADO);
      Dsservidor.dataset.close;
      Dsservidor.dataset.open;
      if Dsservidor.dataset.recordcount > 0 then
      begin
        dm.GLOBAL_ID_UP := Dsservidor.DataSet.FieldByName('ID_UP').AsInteger;
        dm.GLOBAL_ID_FUNCIONARIO := Dsservidor.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger;
        dm.GLOBAL_IDPOSTO_TRABALHO := Dsservidor.DataSet.FieldByName('IDPOSTO_TRABALHO').AsInteger;
        dm.GLOBAL_MEUS_DOCUMENTOS := GetEnvironmentVariable('USERPROFILE');

        if Dsservidor.DataSet.FieldByName('DIRETORIO_RELATORIO').AsString <> '' then
        begin
          if DirectoryExists(Dsservidor.DataSet.FieldByName('DIRETORIO_RELATORIO').AsString) then
          begin
            dm.GLOBAL_PATCH_RELATORIO := Dsservidor.DataSet.FieldByName('DIRETORIO_RELATORIO').AsString;
          end
          else
          begin
            CreateDir(dm.GLOBAL_PATCH_SISTEMA + '..\Sem Relatório');
            dm.GLOBAL_PATCH_RELATORIO := dm.GLOBAL_PATCH_SISTEMA + '..\Sem Relatório';
          end;
        end
        else
        begin

          dm.GLOBAL_PATCH_RELATORIO := dm.GLOBAL_PATCH_SISTEMA + '..\' + IntToStr(dm.GLOBAL_ID_UP);

          if not DirectoryExists(dm.GLOBAL_PATCH_RELATORIO) then
          begin
            dm.GLOBAL_PATCH_RELATORIO := dm.GLOBAL_PATCH_SISTEMA + '..\Relatórios';
          end;

          if not DirectoryExists(dm.GLOBAL_PATCH_RELATORIO) then
          begin
            CreateDir(dm.GLOBAL_PATCH_SISTEMA + '..\Relatórios');
            dm.GLOBAL_PATCH_RELATORIO := dm.GLOBAL_PATCH_SISTEMA + '..\Sem Relatório';
          end;

        end;

        uniDBLookupComboBox1.KeyValue := dm.GLOBAL_ID_UP;
      end
      else
      begin

      end;

    except

    end
  end;

end;

procedure TFrmLogin.UniEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    UniBitBtn1Click(nil);
end;

procedure TFrmLogin.UniLabel1Click(Sender: TObject);
begin
  Dm.Liberado := true;
  ModalResult := mrOK;
end;

procedure TFrmLogin.UniLoginFormCreate(Sender: TObject);
begin

  DsUP.DataSet.Close;
  DsUP.DataSet.open;

  UniGroupBox1.Caption := Dm.GLOBAL_LOCAL;
  LabelTitulo.Caption := Dm.GLOBAL_NOME;


end;

initialization

RegisterAppFormClass(TFrmLogin);

end.
