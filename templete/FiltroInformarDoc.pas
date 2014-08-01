unit FiltroInformarDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniBitBtn, uniEdit,
  uniMultiItem, uniComboBox, uniLabel;

type
  TFrmFiltroInformarDoc = class(TUniForm)
    UniBitBtnCancelar: TUniBitBtn;
    UniBitBtnConfirma: TUniBitBtn;
    Label59: TUniLabel;
    UniEditNumero: TUniEdit;
    procedure UniBitBtnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmFiltroInformarDoc: TFrmFiltroInformarDoc;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal;

function FrmFiltroInformarDoc: TFrmFiltroInformarDoc;
begin
  Result := TFrmFiltroInformarDoc(UniMainModule.GetFormInstance(TFrmFiltroInformarDoc));
end;

procedure TFrmFiltroInformarDoc.UniBitBtnConfirmaClick(Sender: TObject);
begin
  dm.GLOBAL_OFICIO := UniEditNumero.Text ;
  self.ModalResult := mrok;
end;

end.
