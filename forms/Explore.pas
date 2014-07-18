unit Explore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIFrame;

type
  TFrmExplore = class(TUniForm)
    procedure UniFormCreate(Sender: TObject);
  private
    FCurrentFrame : TUniFrame;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmExplore: TFrmExplore;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, FileExplorer_Frame;

function FrmExplore: TFrmExplore;
begin
  Result := TFrmExplore(UniMainModule.GetFormInstance(TFrmExplore));
end;

procedure TFrmExplore.UniFormCreate(Sender: TObject);
begin
  FCurrentFrame:=TUniFrameClass(FindClass('TframeFileExplorer')).Create(Self);
  FCurrentFrame.Align:=alClient;
  FCurrentFrame.Parent:= Self;
  TframeFileExplorer(FCurrentFrame).RootPath := 'c:\'
end;

initialization
  RegisterClasses( [TframeFileExplorer] );
  RegisterAppFormClass(TFrmExplore);

end.
