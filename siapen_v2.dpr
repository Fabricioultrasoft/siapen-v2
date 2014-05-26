{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module'

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  siapen_v2;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  DmPrincipal in 'dm\DmPrincipal.pas' {Dm: TUniGUIMainModule},
  humanejs in 'lib\humanejs.pas',
  Lib in 'lib\Lib.pas',
  uTraducao in 'lib\uTraducao.pas',
  ConsultaDocReceitaFederal in 'templete\ConsultaDocReceitaFederal.pas' {FrmConsultaDocReceitaFederal: TUniForm},
  Login in 'templete\Login.pas' {FrmLogin: TUniLoginForm},
  ModeloMovimento in 'templete\ModeloMovimento.pas' {FrmModeloMovimento: TUniForm},
  ModeloFiltroRelatorio in 'templete\ModeloFiltroRelatorio.pas' {FrmModeloFiltroRelatorio: TUniForm},
  VisualizarRelatorio in 'templete\VisualizarRelatorio.pas' {FrmVisualizarRelatorio: TUniForm},
  UniEditFormat in 'lib\UniEditFormat.pas',
  ModeloCadastro in 'templete\ModeloCadastro.pas' {FrmModeloCadastro: TUniForm},
  Confere in 'forms\Confere.pas' {FrmConfere: TUniForm},
  MenuRelatorio in 'templete\MenuRelatorio.pas' {FrmMenuRelatorio: TUniForm},
  SituacaoDisciplinar in 'forms\SituacaoDisciplinar.pas' {FrmSituacaoDisciplinar: TUniForm},
  Interno in 'forms\Interno.pas' {FrmInterno: TUniForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
