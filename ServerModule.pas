unit ServerModule;

interface

uses
  Inifiles,
  SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, System.Classes,
  uniGUIBaseClasses, uniGUIClasses, uniTimer;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleCreate(Sender: TObject);
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

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
var
  ini: TIniFile;
  iPorta: Word;
begin
  if FileExists(UniServerModule.StartPath + 'Config\Conexao.ini') then
  begin
    ini := TIniFile.Create(UniServerModule.StartPath+ 'Config\Conexao.ini');
    iPorta := ini.ReadInteger('SIAPEN', 'PORTA', Self.Port);
    Self.Port := iPorta;
  end;
end;

initialization

RegisterServerModuleClass(TUniServerModule);

end.
