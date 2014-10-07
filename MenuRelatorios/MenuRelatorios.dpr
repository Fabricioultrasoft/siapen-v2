program MenuRelatorios;

uses
  SysUtils,
  DiaLogs,
  Vcl.Forms,
  DmPrincipal in 'DmPrincipal.pas' {DM: TDataModule},
  Lib in 'Lib.pas',
  MenuRelatorio in 'MenuRelatorio.pas' {FrmMenuRelatorio},
  frx2xto30 in '..\lib\frx2xto30.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmMenuRelatorio, FrmMenuRelatorio);
  Application.Run;
end.
