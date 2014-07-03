unit FiltroPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniDateTimePicker, uniGUIBaseClasses,
  uniButton, uniBitBtn;

type
  TFrmFiltroPeriodo = class(TUniForm)
    UniBitBtnCancelar: TUniBitBtn;
    UniBitBtnConfirma: TUniBitBtn;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    procedure UniBitBtnConfirmaClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmFiltroPeriodo: TFrmFiltroPeriodo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal;

function FrmFiltroPeriodo: TFrmFiltroPeriodo;
begin
  Result := TFrmFiltroPeriodo(UniMainModule.GetFormInstance(TFrmFiltroPeriodo));
end;

procedure TFrmFiltroPeriodo.UniBitBtnConfirmaClick(Sender: TObject);
begin
  dm.GLOBAL_DATA_INICIAL := FormatDateTime('dd.mm.yyyy', UniDateTimePicker1.datetime) ;
  dm.GLOBAL_DATA_FINAL := FormatDateTime('dd.mm.yyyy', UniDateTimePicker2.datetime)  ;
  self.ModalResult := mrok;
end;

procedure TFrmFiltroPeriodo.UniFormShow(Sender: TObject);
begin
  UniDateTimePicker1.DateTime := date -1;
  UniDateTimePicker2.DateTime := date;
end;

end.
