unit Sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, uniButton, uniBitBtn, uniLabel, uniGUIBaseClasses, uniImage;

type
  TFrmSobre = class(TUniForm)
    Version: TUniLabel;
    Label1: TUniLabel;
    Image1: TUniImage;
    Label7: TUniLabel;
    Label2: TUniLabel;
    Label3: TUniLabel;
    BitBtn1: TUniBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmSobre: TFrmSobre;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmSobre: TFrmSobre;
begin
  Result := TFrmSobre(UniMainModule.GetFormInstance(TFrmSobre));
end;

procedure TFrmSobre.BitBtn1Click(Sender: TObject);
begin
close;

end;

end.
