//{$DEFINE UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module'

{$IFNDEF UNIGUI_VCL}
library
{$else}
program
{$ENDIF}
  siapen_v2;

uses
  uniGUIISAPI,
  Forms,
  System.SysUtils,
  ComServ,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  DmPrincipal in 'dm\DmPrincipal.pas' {Dm: TUniGUIMainModule},
  humanejs in 'lib\humanejs.pas',
  Lib in 'lib\Lib.pas',
  ConsultaDocReceitaFederal in 'templete\ConsultaDocReceitaFederal.pas' {FrmConsultaDocReceitaFederal: TUniForm},
  Login in 'templete\Login.pas' {FrmLogin: TUniLoginForm},
  ModeloMovimento in 'templete\ModeloMovimento.pas' {FrmModeloMovimento: TUniForm},
  ModeloFiltroRelatorio in 'templete\ModeloFiltroRelatorio.pas' {FrmModeloFiltroRelatorio: TUniForm},
  VisualizarRelatorio in 'templete\VisualizarRelatorio.pas' {FrmVisualizarRelatorio: TUniForm},
  UniEditFormat in 'lib\UniEditFormat.pas',
  ModeloCadastro in 'templete\ModeloCadastro.pas' {FrmModeloCadastro: TUniForm},
  Confere in 'forms\Confere.pas' {FrmConfere: TUniForm},
  MenuRelatorios in 'templete\MenuRelatorios.pas' {FrmMenuRelatorios: TUniForm},
  SituacaoDisciplinar in 'forms\SituacaoDisciplinar.pas' {FrmSituacaoDisciplinar: TUniForm},
  Interno in 'forms\Interno.pas' {FrmInterno: TUniForm},
  EntradaVisitante in 'forms\EntradaVisitante.pas' {FrmEntradaVisitante: TUniForm},
  Aguarde in 'templete\Aguarde.pas' {FrmAguarde: TUniForm},
  Consulta in 'templete\Consulta.pas' {FrmConsulta: TUniForm},
  AlterarSenha in 'templete\AlterarSenha.pas' {FrmAlterarSenha: TUniForm},
  Sobre in 'templete\Sobre.pas' {FrmSobre: TUniForm},
  Disciplina in 'forms\Disciplina.pas' {FrmDisciplina: TUniForm},
  VincFaltaDisiciplinar in 'forms\VincFaltaDisiciplinar.pas' {FrmVincFaltaDisiciplinar: TUniForm},
  ConselhoDisciplinar in 'forms\ConselhoDisciplinar.pas' {FrmConselhoDisciplinar: TUniForm},
  Psicossocial in 'forms\Psicossocial.pas' {FrmPsicossocial: TUniForm},
  PresencaLocal in 'forms\PresencaLocal.pas' {FrmPresencaLocal: TUniForm},
  PresencaLocalRegistro in 'forms\PresencaLocalRegistro.pas' {FrmPresencaLocalRegistro: TUniForm},
  CadastroFaltasDisciplinares in 'forms\CadastroFaltasDisciplinares.pas' {FrmCadastroFaltasDisciplinares: TUniForm},
  TipoProcesso in 'forms\TipoProcesso.pas' {FrmTipoProcesso: TUniForm},
  FiltroPeriodoServidor in 'templete\FiltroPeriodoServidor.pas' {frmFiltroPeriodoServidor: TUniForm},
  FiltroPeriodo in 'templete\FiltroPeriodo.pas' {FrmFiltroPeriodo: TUniForm},
  ConsultaInterno in 'forms\ConsultaInterno.pas' {FrmConsultaInterno: TUniForm},
  DocumentosDigitalizados in 'forms\DocumentosDigitalizados.pas' {FrmDocumentosDigitalizados: TUniForm},
  uTraducao in 'lib\uTraducao.pas',
  CentralDocumentosDigitalizados in 'forms\CentralDocumentosDigitalizados.pas' {FrmCentralDocumentosDigitalizados: TUniForm},
  HistoricoInterno in 'forms\HistoricoInterno.pas' {FrmHistoricoInterno: TUniForm},
  CadastroFuncionario in 'forms\CadastroFuncionario.pas' {FrmCadastroFuncionario: TUniForm},
  Explore in 'templete\Explore.pas' {FrmExplore: TUniForm},
  FileExplorer_Frame in 'templete\FileExplorer_Frame.pas' {frameFileExplorer: TUniFrame},
  FiltroInformarDoc in 'templete\FiltroInformarDoc.pas' {FrmFiltroInformarDoc: TUniForm},
  CadastroInternoTrabalho in 'forms\CadastroInternoTrabalho.pas' {FrmCadastroInternoTrabalho: TUniForm},
  MotivoDispensaTrabalho in 'forms\MotivoDispensaTrabalho.pas' {FrmMotivoDispensaTrabalho: TUniForm},
  CadastroProcesso in 'forms\CadastroProcesso.pas' {FrmCadastroProcesso: TUniForm};

{$R *.res}
{$IFNDEF UNIGUI_VCL}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$ENDIF}

begin
  FormatSettings.DateSeparator := '/';
  FormatSettings.CurrencyFormat := 0;
  FormatSettings.CurrencyString := 'R$';
  TTraducao.ChangeValues;
{$IFDEF UNIGUI_VCL}
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$ENDIF}

end.
