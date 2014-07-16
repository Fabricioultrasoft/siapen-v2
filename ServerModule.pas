unit ServerModule;

interface

uses
  SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, System.Classes,
  uniGUIBaseClasses, uniGUIClasses, uniTimer;

type
  TUniServerModule = class(TUniGUIServerModule)
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
  UniGUIVars, DmPrincipal;

function UniServerModule: TUniServerModule;
begin
  Result := TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

initialization

RegisterServerModuleClass(TUniServerModule);

end.
