program DesignerFastReport;

uses
  ExceptionLog,
  Vcl.Forms,
  Sentinela in 'Sentinela.pas' {FrmSentinela},
  frxDBXComponents in 'C:\Program Files\FastReports\LibD16\frxDBXComponents.pas',
  humanejs in '..\lib\humanejs.pas';

{$R *.res}

begin
  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSentinela, FrmSentinela);
  Application.Run;
end.
