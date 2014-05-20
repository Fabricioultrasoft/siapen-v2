unit Main;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIRegClasses,
  uniGUIForm,
  uniPanel,
  uniPageControl,
  Vcl.Imaging.jpeg,
  uniGUIBaseClasses,
  uniImage,
  uniButton,
  uniBitBtn,
  Data.FMTBcd,
  uniMultiItem,
  uniComboBox,
  uniDBComboBox,
  uniDBLookupComboBox,
  Data.DB,
  Data.SqlExpr,
  Datasnap.Provider,
  Datasnap.DBClient;

type
  TMainForm = class(TUniForm)
    UniImage1: TUniImage;
    UniPageControlPrincipal: TUniPageControl;
    UniTabSheetPrincipal: TUniTabSheet;
    UniTabSheetSetores: TUniTabSheet;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniBitBtn5: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    UniImage2: TUniImage;
    DsUP: TDataSource;
    CdsUP: TClientDataSet;
    DspUP: TDataSetProvider;
    SqlUP: TSQLQuery;
    UniDBLookupComboBoxUP: TUniDBLookupComboBox;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars,
  MainModule,
  uniGUIApplication,
  DmPrincipal,
  Confere,
  MenuRelatorio;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  FrmConfere.ShowModal();
end;

procedure TMainForm.UniBitBtn4Click(Sender: TObject);
begin
  FrmMenuRelatorio.ShowModal();
end;

initialization

RegisterAppFormClass(TMainForm);

end.
