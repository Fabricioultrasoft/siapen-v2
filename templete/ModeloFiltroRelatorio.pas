unit ModeloFiltroRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, Vcl.Imaging.jpeg, uniImage,
  uniGUIBaseClasses, uniPanel, uniStatusBar, uniTimer, uniButton, uniBitBtn;

type
  TFrmModeloFiltroRelatorio = class(TUniForm)
    PanelTituloModeloCadastro: TUniPanel;
    UniImage1: TUniImage;
    LabelTitulo: TUniLabel;
    UniPanelPrincipal: TUniPanel;
    UniPanelConfirma: TUniPanel;
    UniImageConfirma: TUniImage;
    UniBitBtnAbrir: TUniBitBtn;
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmModeloFiltroRelatorio: TFrmModeloFiltroRelatorio;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal;

function FrmModeloFiltroRelatorio: TFrmModeloFiltroRelatorio;
begin
  Result := TFrmModeloFiltroRelatorio(UniMainModule.GetFormInstance(TFrmModeloFiltroRelatorio));
end;

procedure TFrmModeloFiltroRelatorio.UniFormShow(Sender: TObject);
begin
  PanelTituloModeloCadastro.caption := Self.caption;
  LabelTitulo.caption := Self.caption;

end;

end.
