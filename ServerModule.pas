unit ServerModule;

interface

uses
  Shellapi, Windows, System.DateUtils,
  Inifiles,
  SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, System.Classes,
  uniGUIBaseClasses, uniGUIClasses, uniTimer, Vcl.ExtCtrls;

type
  TUniServerModule = class(TUniGUIServerModule)
    Timer1: TTimer;
    procedure UniGUIServerModuleCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, DmPrincipal, Lib;

function UniServerModule: TUniServerModule;
begin
  Result := TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.Timer1Timer(Sender: TObject);
var
  ArqIni: TIniFile;
  dHoraAgora, dHoraUltimoAcesso, dHoraLimite: TDateTime;
  EXECUTAVEL_ENVIAEMAIL: String;
  ULTIMO_ACESSO_EMAIL: String;
begin
  inherited;

  try
    if FileExists(UniServerModule.StartPath + 'config\conf_timer.ini') then
    begin
      try
        ArqIni := TIniFile.Create(UniServerModule.StartPath + 'config\conf_timer.ini');

        dHoraAgora := now;
        ULTIMO_ACESSO_EMAIL := ArqIni.ReadString('CONEXAO', 'ULTIMO_ACESSO_EMAIL', '00:00:00');
        EXECUTAVEL_ENVIAEMAIL := ArqIni.ReadString('CONEXAO', 'EXECUTAVEL_ENVIAEMAIL', '');

        if trim(EXECUTAVEL_ENVIAEMAIL) <> '' then
        begin

          dHoraUltimoAcesso := StrToDateTimeDef(ULTIMO_ACESSO_EMAIL, 0);
          dHoraLimite := IncSecond(dHoraUltimoAcesso, 60);

          if dHoraAgora > dHoraLimite then
          begin
            try
              ShellExecute(HIDE_WINDOW, 'open', Pchar(EXECUTAVEL_ENVIAEMAIL), nil, nil, SW_NORMAL);
            except
            end;
          end;

        end
        else
          Timer1.enabled := false;

        ArqIni.Free;

      except
        ArqIni.Free;
      end;

    end;
  except
  end;

end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
var
  ini: TIniFile;
  iPorta: Word;
begin
  if FileExists(UniServerModule.StartPath + 'Config\Conexao.ini') then
  begin
    ini := TIniFile.Create(UniServerModule.StartPath + 'Config\Conexao.ini');
    iPorta := ini.ReadInteger('SIAPEN', 'PORTA', Self.Port);
    Self.Port := iPorta;
  end;
end;

initialization

RegisterServerModuleClass(TUniServerModule);

end.
