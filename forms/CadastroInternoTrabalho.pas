unit CadastroInternoTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Interno, Data.FMTBcd, Data.DB, MemDS, DBAccess,
  Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniRadioGroup, uniEdit,
  uniDBNavigator, uniDBMemo, uniBasicGrid, uniDBGrid, uniMemo, uniButton,
  uniDateTimePicker, uniDBDateTimePicker, uniCheckBox, uniDBCheckBox,
  uniDBComboBox, uniMultiItem, uniComboBox, uniDBLookupComboBox, uniDBEdit,
  uniPageControl, uniDBImage, uniBitBtn, uniLabel, Vcl.Imaging.jpeg, uniImage,
  uniPanel, uniGroupBox, uniSpeedButton;

type
  TFrmCadastroInternoTrabalho = class(TFrmInterno)
    UniTabSheetTrabalho: TUniTabSheet;
    dscertidao_trabalho: TDataSource;
    cdscertidao_trabalho: TClientDataSet;
    dspcertidao_trabalho: TDataSetProvider;
    SQLcertidao_trabalho: TSQLQuery;
    SQLhistorico_trabalho: TSQLQuery;
    dsphistorico_trabalho: TDataSetProvider;
    cdshistorico_trabalho: TClientDataSet;
    cdshistorico_trabalhoID_HISTORICO_TRABALHO: TIntegerField;
    cdshistorico_trabalhoDESCRICAO: TStringField;
    cdshistorico_trabalhoDATA: TSQLTimeStampField;
    cdshistorico_trabalhoID_FUNCIONARIO: TIntegerField;
    cdshistorico_trabalhoID_INTERNO: TIntegerField;
    cdshistorico_trabalhoID_SETOR_TRABALHO: TIntegerField;
    cdshistorico_trabalhoID_FUNCAO_INTERNO: TIntegerField;
    cdshistorico_trabalhoOBS: TStringField;
    cdshistorico_trabalhoDOCUMENTO: TStringField;
    cdshistorico_trabalhoID_LOCAL_TRABALHO: TIntegerField;
    cdshistorico_trabalhoDATA_SAIDA: TSQLTimeStampField;
    cdshistorico_trabalhoMOTIVO_SAIDA: TStringField;
    cdshistorico_trabalhoSetorTrabalho: TStringField;
    cdshistorico_trabalhoLocalTrabalho: TStringField;
    cdshistorico_trabalhoFuno: TStringField;
    cdshistorico_trabalhoDOCUMENTO_DESCLASSIFICACAO: TStringField;
    dshistorico_trabalho: TDataSource;
    dscalc_trabalho: TDataSource;
    cdscalc_trabalho: TClientDataSet;
    dspcalc_trabalho: TDataSetProvider;
    SQLcalc_trabalho: TSQLQuery;
    PageControl2: TUniPageControl;
    TabSheet5: TUniTabSheet;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    Label74: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    DBEditdtsetor: TUniDBEdit;
    DBEditobstrabalho: TUniDBEdit;
    DBEditdoctrabalho: TUniDBEdit;
    DBComboBoxtipoatividade: TUniDBComboBox;
    TabSheet8: TUniTabSheet;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    Label68: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    Label73: TUniLabel;
    UniLabel19: TUniLabel;
    Label91: TUniLabel;
    DBEditentradasemanal: TUniDBEdit;
    DBEditsaidasemanal: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    DBEditentradasaidao: TUniDBEdit;
    DBEditsaidasaidao: TUniDBEdit;
    DBEditentradasabado: TUniDBEdit;
    DBEditsaidasabado: TUniDBEdit;
    DBEditentradadomingo: TUniDBEdit;
    DBEditsaidadomingo: TUniDBEdit;
    DBEdit41: TUniDBEdit;
    GroupBox2: TUniGroupBox;
    Label76: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel27: TUniLabel;
    Label90: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    DBEdit39: TUniDBEdit;
    DBEdit40: TUniDBEdit;
    DBEdit42: TUniDBEdit;
    BtnCopiar: TUniButton;
    UniDBMemo1: TUniDBMemo;
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmCadastroInternoTrabalho: TFrmCadastroInternoTrabalho;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal;

function FrmCadastroInternoTrabalho: TFrmCadastroInternoTrabalho;
begin
  Result := TFrmCadastroInternoTrabalho
    (UniMainModule.GetFormInstance(TFrmCadastroInternoTrabalho));
end;

procedure TFrmCadastroInternoTrabalho.UniFormShow(Sender: TObject);
begin
  inherited;

  Dm.DSFUNCAOINTERNO.DataSet.close;
  Dm.DSFUNCAOINTERNO.DataSet.open;

  Dm.dslocaltrabalho.DataSet.close;
  Dm.dslocaltrabalho.DataSet.open;

  Dm.DsSetorTrabalho.DataSet.close;
  Dm.DsSetorTrabalho.DataSet.open;

end;

end.
