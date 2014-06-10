unit EntradaVisitante;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.FMTBcd, Data.DB, MemDS,
  DBAccess, Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniButton, uniBitBtn, uniEdit, uniPageControl, uniToolBar, uniLabel,
  uniImage, uniPanel, uniDBNavigator,
  uniDateTimePicker, uniDBMemo, uniMemo, uniDBComboBox, uniDBImage,
  uniMultiItem, uniComboBox, uniDBLookupComboBox, uniDBEdit, uniSpeedButton,
  uniCheckBox, uniDBCheckBox, Vcl.Imaging.jpeg, uniRadioGroup, uniFileUpload,
  uniDBDateTimePicker, ModeloMovimento;

const
  SqlConstanteInterno
    : string =
    'SELECT ID_INTERNO,ID_UP,FOTO, NOME_INTERNO,NUMERO_ROUPA,CI,DATA_ENTRADA,' +
    'ST,EM_TRANSITO,RGI,DATA_ISOLAMENTO,' +
    'ID_PROCEDENCIA,SEXO,MAE,PAI,REGIME_ATUAL,ID_PROCEDENCIA, ID_FUNCIONARIO,' +
    'VULGO,DADOS_OUTRO_BANCO,IDPAVILHAO,IDGALERIA,IDSOLARIO,STATUS_ISOLAMENTO,'
    + 'IDCELA,DATA_SAIDA,CISAIDA,MOTIVO_SAIDA,IDCONDICAO_INTERNO,IDDESTINO, ' +
    'DATA_ISOLAMENTO,STATUS_ISOLAMENTO';

type
  TFrmEntradaVisitante = class(TFrmModeloMovimento)
    SQLdigital: TSQLQuery;
    dshistorico_estudo: TDataSource;
    cdshistorico_estudo: TClientDataSet;
    dsphistorico_estudo: TDataSetProvider;
    SQLhistorico_estudo: TSQLQuery;
    DsCelaAntes: TDataSource;
    CdsCelaAntes: TClientDataSet;
    DspCelaAntes: TDataSetProvider;
    SqlCelaAntes: TSQLQuery;
    Dsdigital: TDataSource;
    CDSdigital: TClientDataSet;
    DSPdigital: TDataSetProvider;
    DsSolAntes: TDataSource;
    CdsSolAntes: TClientDataSet;
    DspSolAntes: TDataSetProvider;
    SqlSolAntes: TSQLQuery;
    DsGalAntes: TDataSource;
    CdsGalAntes: TClientDataSet;
    DspGalAntes: TDataSetProvider;
    SqlGalAntes: TSQLQuery;
    SQLconspadrao: TSQLQuery;
    Dspconspadrao: TDataSetProvider;
    Cdsconspadrao: TClientDataSet;
    Dsconspadrao: TDataSource;
    DsList_Mudanca_Cela: TDataSource;
    CdsList_Mudanca_Cela: TClientDataSet;
    DspList_Mudanca_Cela: TDataSetProvider;
    SqlList_Mudanca_Cela: TSQLQuery;
    SqlPavAntes: TSQLQuery;
    DspPavAntes: TDataSetProvider;
    CdsPavAntes: TClientDataSet;
    DsPavAntes: TDataSource;
    DsMudancaCela: TDataSource;
    CdsMudancaCela: TClientDataSet;
    DspMudancaCela: TDataSetProvider;
    SqlMudancaCela: TSQLQuery;
    DsPavilhao: TDataSource;
    CdsPavilhao: TClientDataSet;
    DspPavilhao: TDataSetProvider;
    SqlPavilhao: TSQLQuery;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    SqlCela: TSQLQuery;
    DsSolario: TDataSource;
    CdsSolario: TClientDataSet;
    DspSolario: TDataSetProvider;
    SqlSolario: TSQLQuery;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleria: TSQLQuery;
    DSHISTORICO_interno: TDataSource;
    CDSHISTORICO_interno: TClientDataSet;
    CDSHISTORICO_internoIDHISTORICO_INTERNO: TIntegerField;
    CDSHISTORICO_internoDESCRICAO: TStringField;
    CDSHISTORICO_internoDATA_HORA: TSQLTimeStampField;
    CDSHISTORICO_internoIDINTERNO: TIntegerField;
    CDSHISTORICO_internoSTATUS: TStringField;
    CDSHISTORICO_internoMOTIVO_SAIDA: TStringField;
    CDSHISTORICO_internoIDPROCEDENCIA: TIntegerField;
    CDSHISTORICO_internoIDUP: TIntegerField;
    DSPHISTORICO_interno: TDataSetProvider;
    SQLHISTORICO_interno: TSQLQuery;
    DsMovimentacaoExterna: TDataSource;
    CdsMovimentacaoExterna: TClientDataSet;
    DspMovimentacaoExterna: TDataSetProvider;
    SqlMovimentacaoExterna: TSQLQuery;
    DspMovimento: TDataSetProvider;
    SqlMovimento: TSQLQuery;
    dshistorico_trabalho: TDataSource;
    cdshistorico_trabalho: TClientDataSet;
    dsphistorico_trabalho: TDataSetProvider;
    SQLhistorico_trabalho: TSQLQuery;
    SqlSelectInterno: TSQLQuery;
    DsDocumentos: TDataSource;
    CdsDocumentos: TClientDataSet;
    DspDocumentos: TDataSetProvider;
    SqlDocumentos: TSQLQuery;
    Sqlvinc_transferencia_interno: TSQLQuery;
    Dspvinc_transferencia_interno: TDataSetProvider;
    Cdsvinc_transferencia_interno: TClientDataSet;
    Dsvinc_transferencia_interno: TDataSource;
    DsTransferenciaInterno: TDataSource;
    CdsTransferenciaInterno: TClientDataSet;
    DspTransferenciaInterno: TDataSetProvider;
    SqlTransferenciaInterno: TSQLQuery;
    SqlSelectInternoInativo: TSQLQuery;
    SqlConsultaTodos: TSQLQuery;
    SqlSoundex: TSQLQuery;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    DspConsulta: TDataSetProvider;
    SqlConsulta: TSQLQuery;
    SqlConsultaBackup: TSQLQuery;
    DsVinc_Mudanca_Cela: TDataSource;
    CdsVinc_Mudanca_Cela: TClientDataSet;
    DspVinc_Mudanca_Cela: TDataSetProvider;
    SqlVinc_Mudanca_Cela: TSQLQuery;
    UniPageControlConfere: TUniPageControl;
    UniTabSheetDados: TUniTabSheet;
    UniDBEditNome: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBEditNUMERO_ROUPA: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBEditCI: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBDateTimePickerDataEntrada: TUniDBDateTimePicker;
    UniDBCheckBoxStatus: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniLabel6: TUniLabel;
    UniDBEditRGI: TUniDBEdit;
    UniLabel7: TUniLabel;
    DBLookupComboBoxID_PROCEDENCIA: TUniDBLookupComboBox;
    UniDBComboBoxSexo: TUniDBComboBox;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniDBEditMae: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel12: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniLabel13: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBComboBox3: TUniDBComboBox;
    UniLabel14: TUniLabel;
    DBEditID: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniDBImage1: TUniDBImage;
    UniFileUploadFoto: TUniFileUpload;
    UniRadioGroupStatus: TUniRadioGroup;
    procedure CancelarClick(Sender: TObject);
  private
    statusold, em_transito_old: string;
    idcela_old, idsolario_old, idgaleria_old, idpavilhao_old: string;
    cela_old, solario_old, galeria_old, pavilhao_old: string;
    procedure AbrirTabelas;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmEntradaVisitante: TFrmEntradaVisitante;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, Lib, ServerModule,
  SituacaoDisciplinar;

function FrmEntradaVisitante: TFrmEntradaVisitante;
begin
  Result := TFrmEntradaVisitante(UniMainModule.GetFormInstance(TFrmEntradaVisitante));
end;

procedure TFrmEntradaVisitante.AbrirTabelas;
begin

end;

procedure TFrmEntradaVisitante.CancelarClick(Sender: TObject);
begin
  inherited;
  UniPageControlConfere.ActivePageIndex := 0;
  SqlCadastro.Tag := 0;
  CdsCadastro.Close;

end;

end.
