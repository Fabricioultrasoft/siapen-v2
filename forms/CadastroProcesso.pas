unit CadastroProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, ModeloCadastro, Data.FMTBcd, uniDBText,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, uniMemo, uniDBMemo, uniSpeedButton, uniButton, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBEdit, Data.DB, MemDS, DBAccess, Uni,
  uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniEdit, uniPageControl, uniBitBtn, uniLabel, Vcl.Imaging.jpeg, uniImage,
  uniPanel, Vcl.Mask;

type
  TFrmCadastroProcesso = class(TFrmModeloCadastro)
    Label2: TUniLabel;
    dbeditcodigo: TUniDBEdit;
    DBComboBox7: TUniDBComboBox;
    Label155: TUniLabel;
    LabelComutacao: TUniLabel;
    Label7: TUniLabel;
    UniPageControl1: TUniPageControl;
    TabSheetInquerito: TUniTabSheet;
    BtnBuscarIP: TUniButton;
    Label16: TUniLabel;
    Label18: TUniLabel;
    Label6: TUniLabel;
    Label21: TUniLabel;
    DBEdit14: TUniDBEdit;
    DBEditDATA_INQUERITO: TUniDBEdit;
    DBEditDATA_FATO_CONDENACAO: TUniDBEdit;
    DBEditDATA_PRISAO: TUniDBEdit;
    Label36: TUniLabel;
    SpeedButton3: TUniSpeedButton;
    Label17: TUniLabel;
    Label19: TUniLabel;
    DBComboBox3: TUniDBComboBox;
    SpeedButton2: TUniSpeedButton;
    Label35: TUniLabel;
    DBEdit18: TUniDBEdit;
    Label20: TUniLabel;
    DBMemo1: TUniDBMemo;
    Button1: TUniButton;
    Label22: TUniLabel;
    DBComboBox9: TUniDBComboBox;
    UniTabSheet1: TUniTabSheet;
    UniButton1: TUniButton;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniSpeedButton1: TUniSpeedButton;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    UniSpeedButton2: TUniSpeedButton;
    UniLabel9: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniButton2: TUniButton;
    UniLabel11: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    Button2: TUniButton;
    Label72: TUniLabel;
    DBEdit4: TUniDBEdit;
    TabSheet1: TUniTabSheet;
    Label4: TLabel;
    Label37: TLabel;
    Label153: TUniLabel;
    Label151: TUniLabel;
    DBEdit2: TUniDBEdit;
    DBEditDATA_PROCESSO: TUniDBEdit;
    DBComboBox4: TUniDBComboBox;
    Label154: TUniLabel;
    Label162: TUniLabel;
    Label152: TUniLabel;
    DBEdit3: TUniDBEdit;
    DBComboBox5: TUniDBComboBox;
    DBComboBox6: TUniDBComboBox;
    Label139: TUniLabel;
    SpeedButton1: TUniSpeedButton;
    TabSheetCondenacao: TUniTabSheet;
    TabSheet4: TUniTabSheet;
    Label150: TUniLabel;
    DBEdit1: TUniDBEdit;
    BtnLimpaPena: TUniButton;
    Label9: TUniLabel;
    DBText1: TUniDBText;
    Label24: TUniLabel;
    DBEdit15: TUniDBEdit;
    Label23: TUniLabel;
    DBEdit17: TUniDBEdit;
    Label25: TUniLabel;
    DBEdit21: TUniDBEdit;
    Button3: TUniButton;
    Label26: TUniLabel;
    DBEdit16: TUniDBEdit;
    UniLabel13: TUniLabel;
    PanelCondenado: TUniPanel;
    Label27: TUniLabel;
    Label28: TUniLabel;
    Label8: TUniLabel;
    Label5: TUniLabel;
    DBEdit19: TUniDBEdit;
    DBEditDATA_PROCESSO_VEC: TUniDBEdit;
    DBComboBox8: TDBComboBox;
    Label73: TUniLabel;
    Label74: TUniLabel;
    Label75: TUniLabel;
    Label38: TUniLabel;
    Label29: TUniLabel;
    DBEdit5: TUniDBEdit;
    DBEdit6: TUniDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit7: TDBEdit;
    DBComboBox2: TUniDBComboBox;
    BtnCalcular: TUniBitBtn;
    UniPageControl2: TUniPageControl;
    UniTabSheet2: TUniTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    UniTabSheet3: TUniTabSheet;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox3: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    MemoLinhaTempo: TRichEdit;
    UniLabel12: TUniLabel;
    UniButton3: TUniButton;
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    DsConsulta: TDataSource;
    SqlLista: TSQLQuery;
    DspLista: TDataSetProvider;
    CdsLista: TClientDataSet;
    DsLista: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmCadastroProcesso: TFrmCadastroProcesso;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmCadastroProcesso: TFrmCadastroProcesso;
begin
  Result := TFrmCadastroProcesso(UniMainModule.GetFormInstance(TFrmCadastroProcesso));
end;

end.
