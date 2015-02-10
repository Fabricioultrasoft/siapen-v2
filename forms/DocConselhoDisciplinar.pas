unit DocConselhoDisciplinar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DocumentosDigitalizados, Data.FMTBcd, Data.DB, MemDS, DBAccess, Uni, uniScreenMask, uniGUIBaseClasses, uniGUIClasses,
  uniTimer, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniRadioGroup, uniURLFrame, uniCheckBox, uniEdit, uniDBNavigator,
  uniDateTimePicker, uniDBMemo, uniBasicGrid, uniDBGrid, uniMemo, uniButton, uniDBDateTimePicker, uniDBCheckBox, uniDBComboBox, uniMultiItem, uniComboBox,
  uniDBLookupComboBox, uniDBEdit, uniPageControl, uniDBImage, uniBitBtn, uniLabel, Vcl.Imaging.jpeg, uniImage, uniPanel;

type
  TFrmDocConselhoDisciplinar = class(TFrmDocumentosDigitalizados)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocConselhoDisciplinar: TFrmDocConselhoDisciplinar;

implementation

{$R *.dfm}

end.
