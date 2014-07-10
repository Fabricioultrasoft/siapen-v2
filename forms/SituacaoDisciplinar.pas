unit SituacaoDisciplinar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniRadioGroup, uniButton,
  uniBitBtn, uniDateTimePicker;

type
  TFrmSituacaoDisciplinar = class(TUniForm)
    UniRadioGroup1: TUniRadioGroup;
    UniBitBtn1: TUniBitBtn;
    UniDateTimePicker1: TUniDateTimePicker;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmSituacaoDisciplinar: TFrmSituacaoDisciplinar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Lib, DmPrincipal;

function FrmSituacaoDisciplinar: TFrmSituacaoDisciplinar;
begin
  Result := TFrmSituacaoDisciplinar
    (UniMainModule.GetFormInstance(TFrmSituacaoDisciplinar));
end;

procedure TFrmSituacaoDisciplinar.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  if FrmSituacaoDisciplinar.UniRadioGroup1.ItemIndex = 0 then
    Dm.var_disciplinar := '(1) SANCIONADO';

  if FrmSituacaoDisciplinar.UniRadioGroup1.ItemIndex = 1 then
    Dm.var_disciplinar := '(2) SEGURO';

  if FrmSituacaoDisciplinar.UniRadioGroup1.ItemIndex = 2 then
    Dm.var_disciplinar := '(3) OBSERVAÇÃO';

  if FrmSituacaoDisciplinar.UniRadioGroup1.ItemIndex = 3 then
    Dm.var_disciplinar := '(4) ISOLAMENTO PREVENTIVO';

  Dm.var_data_disciplinar := UniDateTimePicker1.DateTime;

end;

procedure TFrmSituacaoDisciplinar.UniFormCreate(Sender: TObject);
begin
  UniDateTimePicker1.DateTime := date;
end;

end.
