unit MotivoDispensaTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniDBDateTimePicker, uniEdit,
  uniButton, uniBitBtn, uniMemo, uniGUIBaseClasses, uniLabel;

type
  TFrmMotivoDispensaTrabalho = class(TUniForm)
    Label1: TUniLabel;
    Label2: TUniLabel;
    Label3: TUniLabel;
    Memo1: TUniMemo;
    BitBtn1: TUniBitBtn;
    Editdocumento: TUniEdit;
    adpDBDateTimePickerdtsaida: TUniDBDateTimePicker;
    UniBitBtnCancelar: TUniBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmMotivoDispensaTrabalho: TFrmMotivoDispensaTrabalho;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmMotivoDispensaTrabalho: TFrmMotivoDispensaTrabalho;
begin
  Result := TFrmMotivoDispensaTrabalho(UniMainModule.GetFormInstance(TFrmMotivoDispensaTrabalho));
end;

end.
