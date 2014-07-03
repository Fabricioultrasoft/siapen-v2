unit Aguarde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniLabel, uniTimer, uniImage,
  Vcl.Imaging.GIFImg;

type
  TFrmAguarde = class(TUniForm)
    UniLabel1: TUniLabel;
    UniTimer1: TUniTimer;
    UniImageLogoMarca: TUniImage;
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmAguarde: TFrmAguarde;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmAguarde: TFrmAguarde;
begin
  Result := TFrmAguarde(UniMainModule.GetFormInstance(TFrmAguarde));
end;

procedure TFrmAguarde.UniFormCreate(Sender: TObject);
begin
UniTimer1.Enabled := true;
end;

procedure TFrmAguarde.UniTimer1Timer(Sender: TObject);
begin
UniTimer1.Enabled := false;
self.Close;
end;

end.
