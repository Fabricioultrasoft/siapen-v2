unit TipoProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses,
  uniRadioGroup;

type
  TFrmTipoProcesso = class(TUniForm)
    UniRadioGroup1: TUniRadioGroup;
    UniBitBtnConfirma: TUniBitBtn;
    UniBitBtnCancelar: TUniBitBtn;
    procedure UniBitBtnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmTipoProcesso: TFrmTipoProcesso;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal;

function FrmTipoProcesso: TFrmTipoProcesso;
begin
  Result := TFrmTipoProcesso(UniMainModule.GetFormInstance(TFrmTipoProcesso));
end;

procedure TFrmTipoProcesso.UniBitBtnConfirmaClick(Sender: TObject);
begin
  case FrmTipoProcesso.UniRadioGroup1.ItemIndex of
    0:
      dm.GLOBAL_TIPOPROCESSO := 'Condenado';
    1:
      dm.GLOBAL_TIPOPROCESSO := 'Processado';
    2:
      dm.GLOBAL_TIPOPROCESSO := 'Med. Segurança';
    3:
      dm.GLOBAL_TIPOPROCESSO := '(Em Branco)';
    4:
      dm.GLOBAL_TIPOPROCESSO := '';
  end;

  Self.ModalResult := mrOk;

end;

end.
