unit Interno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, ModeloCadastro, Data.FMTBcd, Data.DB, MemDS,
  DBAccess, Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniButton, uniBitBtn, uniEdit, uniPageControl, uniToolBar, uniLabel,
  Vcl.Imaging.jpeg, uniImage, uniPanel, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, uniDBNavigator,
  uniDateTimePicker, uniDBMemo, uniMemo, uniDBComboBox, uniDBImage,
  uniMultiItem, uniComboBox, uniDBLookupComboBox, uniDBEdit, uniSpeedButton,
  uniCheckBox, uniDBCheckBox;

type
  TFrmInterno = class(TFrmModeloCadastro)
    SqlFaccao: TSQLQuery;
    DspFaccao: TDataSetProvider;
    CdsFaccao: TClientDataSet;
    DsFaccao: TDataSource;
    SqlConsultaBackup: TSQLQuery;
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlFilhos: TSQLQuery;
    DspFilhos: TDataSetProvider;
    CdsFilhos: TClientDataSet;
    CdsFilhosIDFILHOS: TIntegerField;
    CdsFilhosNOME: TStringField;
    CdsFilhosDATA_NASCIMENTO: TSQLTimeStampField;
    CdsFilhosESCOLA: TStringField;
    CdsFilhosENDERECO: TStringField;
    CdsFilhosIDCIDADE: TIntegerField;
    CdsFilhosNOME_MAE: TStringField;
    CdsFilhosIDINTERNO: TIntegerField;
    DsFilhos: TDataSource;
    SQLHISTORICO_interno: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    DSHISTORICO_interno: TDataSource;
    SqlFoto: TSQLQuery;
    DspFoto: TDataSetProvider;
    CdsFoto: TClientDataSet;
    DsFoto: TDataSource;
    SqlLista: TSQLQuery;
    DspLista: TDataSetProvider;
    CdsLista: TClientDataSet;
    DsLista: TDataSource;
    SqlSelectInternoInativo: TSQLQuery;
    SqlSelectInterno: TSQLQuery;
    SQLadvogadointerno: TSQLQuery;
    dspadvogadointerno: TDataSetProvider;
    cdsadvogadointerno: TClientDataSet;
    cdsadvogadointernoADVOGADOESCRITRIO: TStringField;
    cdsadvogadointernoID_ADVOGADOS_INTERNOS: TIntegerField;
    cdsadvogadointernoID_ADVOGADO: TIntegerField;
    cdsadvogadointernoID_INTERNO: TIntegerField;
    cdsadvogadointernoOBSADVOGADO_INTERNO: TStringField;
    dsADVOGADO_INTERNO: TDataSource;
    PageControlInterno: TUniPageControl;
    TabSheet1: TuniTabSheet;
    Label2: TUniLabel;
    Label3: TUniLabel;
    Label4: TUniLabel;
    Label10: TUniLabel;
    Label12: TUniLabel;
    Label40: TUniLabel;
    SpeedButton1: TUniSpeedButton;
    Label45: TUniLabel;
    Label43: TUniLabel;
    Label46: TUniLabel;
    SpeedButton2: TUniSpeedButton;
    Label27: TUniLabel;
    Label36: TUniLabel;
    Label55: TUniLabel;
    Label65: TUniLabel;
    Label66: TUniLabel;
    Label163: TUniLabel;
    lbl1: TUniLabel;
    Label38: TUniLabel;
    Label49: TUniLabel;
    Label62: TUniLabel;
    Label78: TUniLabel;
    Label79: TUniLabel;
    Label80: TUniLabel;
    Label82: TUniLabel;
    Label83: TUniLabel;
    Label67: TUniLabel;
    Label18: TUniLabel;
    SpeedButton8: TUniSpeedButton;
    Label51: TUniLabel;
    Label57: TUniLabel;
    Label58: TUniLabel;
    Label60: TUniLabel;
    DBEditCodigo: TUniDBEdit;
    DBEdit2: TUniDBEdit;
    DBEdit3: TUniDBEdit;
    DBEditdtentrada: TUniDBEdit;
    DBLookupComboBoxID_PROCEDENCIA: TUniDBLookupComboBox;
    DBEditdtprisao: TUniDBEdit;
    DBLookupComboBox1: TUniDBLookupComboBox;
    DBEdit7: TUniDBEdit;
    DBLookupComboBox2: TUniDBLookupComboBox;
    DBImageFOTOInterno: TUniDBImage;
    DBEdit24: TUniDBEdit;
    DBEdit25: TUniDBEdit;
    DBEdit29: TUniDBEdit;
    DBEdit35: TUniDBEdit;
    DBComboBox3: TUniDBComboBox;
    DBEdit86: TUniDBEdit;
    DBComboBox2: TUniDBComboBox;
    DBEditpermanencia: TUniDBEdit;
    BitBtn1: TUniBitBtn;
    DBEdit19: TUniDBEdit;
    DBEdit28: TUniDBEdit;
    DBEdit31: TUniDBEdit;
    DBEdit33: TUniDBEdit;
    DBComboBox5: TUniDBComboBox;
    DBComboBoxpericulosidade: TUniDBComboBox;
    DBEdit36: TUniDBEdit;
    DBLookupComboBoxFACCAO: TUniDBLookupComboBox;
    DBEdit84: TUniDBEdit;
    DBEdit8: TUniDBEdit;
    DBLookupComboBoxSolicitanteVaga: TUniDBLookupComboBox;
    DBLookupComboBoxPresidioOrigem: TUniDBLookupComboBox;
    DBComboBox6: TUniDBComboBox;
    TabSheet2: TuniTabSheet;
    Label11: TUniLabel;
    Label19: TUniLabel;
    Label21: TUniLabel;
    Label22: TUniLabel;
    Label23: TUniLabel;
    Label20: TUniLabel;
    Label37: TUniLabel;
    Label41: TUniLabel;
    Label42: TUniLabel;
    Label13: TUniLabel;
    SpeedButton4: TUniSpeedButton;
    SpeedButton5: TUniSpeedButton;
    SpeedButton6: TUniSpeedButton;
    SpeedButton7: TUniSpeedButton;
    SpeedButton9: TUniSpeedButton;
    Label5: TUniLabel;
    Label24: TUniLabel;
    Label25: TUniLabel;
    Label26: TUniLabel;
    Label39: TUniLabel;
    Label47: TUniLabel;
    Label52: TUniLabel;
    Label56: TUniLabel;
    Label63: TUniLabel;
    Label64: TUniLabel;
    Label149: TUniLabel;
    Label48: TUniLabel;
    Label77: TUniLabel;
    DBEdit1: TUniDBEdit;
    DBEdit5: TUniDBEdit;
    DBLookupComboBoxIDNATURALIDADE: TUniDBLookupComboBox;
    DBLookupComboBoxIDNACIONALIDADE: TUniDBLookupComboBox;
    DBLookupComboBoxIDRACA: TUniDBLookupComboBox;
    DBLookupComboBoxIDESCOLARIDADE: TUniDBLookupComboBox;
    DBEdit21: TUniDBEdit;
    DBEdit22: TUniDBEdit;
    DBLookupComboBoxIDPROFISSAO: TUniDBLookupComboBox;
    DBEditrg: TUniDBEdit;
    DBEditCPF: TUniDBEdit;
    DBEdit23: TUniDBEdit;
    DBComboBox1: TUniDBComboBox;
    DBEdit26: TUniDBEdit;
    DBEdit27: TUniDBEdit;
    DBEditdtrnascimento: TUniDBEdit;
    DBEdit30: TUniDBEdit;
    DBEdit32: TUniDBEdit;
    DBEdit34: TUniDBEdit;
    DBEdit83: TUniDBEdit;
    DBEdit4: TUniDBEdit;
    DBEdit20: TUniDBEdit;
    DBComboBox4: TUniDBComboBox;
    ts1: TuniTabSheet;
    lbl3: TUniLabel;
    btn2: TUniSpeedButton;
    Label50: TUniLabel;
    DBLookupComboBoxIDADVOGADO: TUniDBLookupComboBox;
    Button2: TUniButton;
    Memoobsadvogado: TUniMemo;
    DBGrid3: TUniDBGrid;
    Button3: TUniButton;
    TabSheet3: TuniTabSheet;
    Label28: TUniLabel;
    Label29: TUniLabel;
    Label30: TUniLabel;
    Label31: TUniLabel;
    Label32: TUniLabel;
    Label33: TUniLabel;
    Label34: TUniLabel;
    Label35: TUniLabel;
    SpeedButton11: TUniSpeedButton;
    lbl2: TUniLabel;
    btn1: TUniSpeedButton;
    DBEdit10: TUniDBEdit;
    DBEdit11: TUniDBEdit;
    DBEdit12: TUniDBEdit;
    DBEdit13: TUniDBEdit;
    DBEditcep: TUniDBEdit;
    DBEditfone: TUniDBEdit;
    DBEdit17: TUniDBEdit;
    DBLookupComboBoxIDCIDADE: TUniDBLookupComboBox;
    DBLookupComboBoxIDNACIONALIDADE1: TUniDBLookupComboBox;
    TabSheet5: TuniTabSheet;
    Label53: TUniLabel;
    Label54: TUniLabel;
    DBGrid1: TUniDBGrid;
    Button1: TUniButton;
    DBMemo1: TUniDBMemo;
    MemoDescricao: TUniMemo;
    DateTimePickerHistorico: TUniDateTimePicker;
    TabSheet6: TuniTabSheet;
    FOTO: TUniLabel;
    Label6: TUniLabel;
    Label7: TUniLabel;
    Label8: TUniLabel;
    Label9: TUniLabel;
    Label14: TUniLabel;
    Label15: TUniLabel;
    Label16: TUniLabel;
    Label17: TUniLabel;
    Label44: TUniLabel;
    DBImageFOTOPERFIL: TUniDBImage;
    DBImagetatuagem1: TUniDBImage;
    DBImageFOTO_SINAIS: TUniDBImage;
    DBImageFOTO_SINAIS1: TUniDBImage;
    DBImageFOTO_SINAIS2: TUniDBImage;
    DBImageFOTO_SINAIS3: TUniDBImage;
    DBImageFOTO_SINAIS4: TUniDBImage;
    DBImageOutras: TUniDBImage;
    DBGrid4: TUniDBGrid;
    DBEdit6: TUniDBEdit;
    DBNavigator3: TUniDBNavigator;
    TabSheet4: TuniTabSheet;
    DBMemo2: TUniDBMemo;
    TabSheet7: TuniTabSheet;
    Label61: TUniLabel;
    Label70: TUniLabel;
    Label71: TUniLabel;
    Label72: TUniLabel;
    Label75: TUniLabel;
    Label81: TUniLabel;
    Label85: TUniLabel;
    Label84: TUniLabel;
    Label86: TUniLabel;
    Label87: TUniLabel;
    Label88: TUniLabel;
    Label89: TUniLabel;
    DBLookupComboBox3: TUniDBLookupComboBox;
    DBEdit9: TUniDBEdit;
    DBLookupComboBox4: TUniDBLookupComboBox;
    DBEdit14: TUniDBEdit;
    DBLookupComboBox5: TUniDBLookupComboBox;
    DBEdit15: TUniDBEdit;
    DBEdit16: TUniDBEdit;
    DBComboBox7: TUniDBComboBox;
    DBLookupComboBox6: TUniDBLookupComboBox;
    DBEdit18: TUniDBEdit;
    DBEdit37: TUniDBEdit;
    DBEdit38: TUniDBEdit;
    Button4: TUniButton;
    UniLabel8: TUniLabel;
    UniDBComboBoxSexo: TUniDBComboBox;
    UniLabel1: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    UniDBCheckBoxStatus: TUniDBCheckBox;
    UniLabel3: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmInterno: TFrmInterno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmInterno: TFrmInterno;
begin
  Result := TFrmInterno(UniMainModule.GetFormInstance(TFrmInterno));
end;

end.
