unit DmPrincipal;

interface

uses
  IWSystem,
  SysUtils, Classes, DB, SqlExpr,
  IniFiles, DBClient, Forms, FMTBcd, Provider, ImgList,
  Controls, Dialogs, Windows, Data.DBXFirebird;

type
  TDM = class(TDataModule)
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    SqlCela: TSQLQuery;
    DsCela: TDataSource;
    SqlProfissao: TSQLQuery;
    DspProfissao: TDataSetProvider;
    CdsProfissao: TClientDataSet;
    DsProfissao: TDataSource;
    SqlProcedencia: TSQLQuery;
    DspProcedencia: TDataSetProvider;
    CdsProcedencia: TClientDataSet;
    DsProcedencia: TDataSource;
    SqlGaleria: TSQLQuery;
    DspGaleria: TDataSetProvider;
    CdsGaleria: TClientDataSet;
    DsGaleria: TDataSource;
    SqlPavilhao: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    SqlSolario: TSQLQuery;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    SQLCidade: TSQLQuery;
    DSPCIDADE: TDataSetProvider;
    CDSCIDADE: TClientDataSet;
    DSCIDADE: TDataSource;
    SQLNACIONALIDADE: TSQLQuery;
    DSPNACIONALIDADE: TDataSetProvider;
    CDSNACIONALIDADE: TClientDataSet;
    DSNACIONALIDADE: TDataSource;
    SQLRACA: TSQLQuery;
    DSPRACA: TDataSetProvider;
    CDSRACA: TClientDataSet;
    DSRACA: TDataSource;
    SQLESCOLARIDADE: TSQLQuery;
    DSPESCOLARIDADE: TDataSetProvider;
    CDSESCOLARIDADE: TClientDataSet;
    DSESCOLARIDADE: TDataSource;
    SQLADVOGADO: TSQLQuery;
    DSPADVOGADO: TDataSetProvider;
    CDSADVOGADO: TClientDataSet;
    DsAdvogado: TDataSource;
    SqlVisitante: TSQLQuery;
    DspVisitante: TDataSetProvider;
    CdsVisitante: TClientDataSet;
    DsVisitante: TDataSource;

    SQLFUNCAOFUNCIONARIO: TSQLQuery;
    DSPFUNCAOFUNCIONARIO: TDataSetProvider;
    CDSFUNCAOFUNCIONARIO: TClientDataSet;
    DSFUNCAOFUNCIONARIO: TDataSource;
    SqlGrauParentesco: TSQLQuery;
    DspGrauParentesco: TDataSetProvider;
    CdsGrauParentesco: TClientDataSet;
    DSGrauParentesco: TDataSource;
    SqlUP: TSQLQuery;
    DspUP: TDataSetProvider;
    CdsUP: TClientDataSet;
    DsUP: TDataSource;
    SqlCondicaoInterno: TSQLQuery;
    DspCondicaoInterno: TDataSetProvider;
    CdsCondicaoInterno: TClientDataSet;
    DsCondicaoInterno: TDataSource;
    SqlDestino: TSQLQuery;
    DspDestino: TDataSetProvider;
    CdsDestino: TClientDataSet;
    DsDestino: TDataSource;
    CdsInterno: TClientDataSet;
    DspInterno: TDataSetProvider;
    SqlInterno: TSQLQuery;
    DsInterno: TDataSource;
    SqlSetorTrabalho: TSQLQuery;
    DspSetorTrabalho: TDataSetProvider;
    CdsSetorTrabalho: TClientDataSet;
    DsSetorTrabalho: TDataSource;
    SQLFUNCAOINTERNO: TSQLQuery;
    DSPFUNCAOINTERNO: TDataSetProvider;
    CDSFUNCAOINTERNO: TClientDataSet;
    DSFUNCAOINTERNO: TDataSource;
    SqlExecute: TSQLQuery;
    DspExecute: TDataSetProvider;
    CdsExecute: TClientDataSet;
    DsExecute: TDataSource;
    SQLfuncionario: TSQLQuery;
    dspfuncionario: TDataSetProvider;
    cdsfuncionario: TClientDataSet;
    DsFuncionario: TDataSource;
    SQLSERIEESTUDO: TSQLQuery;
    DSPSERIEESTUDO: TDataSetProvider;
    CDSSERIEESTUDO: TClientDataSet;
    DSSERIEESTUDO: TDataSource;
    DSrelation_fields: TDataSource;
    Cdsrelation_fields: TClientDataSet;
    Dsprelation_fields: TDataSetProvider;
    Sqlrelation_fields: TSQLQuery;
    SqlAssuntos: TSQLQuery;
    DspAssuntos: TDataSetProvider;
    CdsAssuntos: TClientDataSet;
    DsAssuntos: TDataSource;
    SqlSituacao: TSQLQuery;
    DspSituacao: TDataSetProvider;
    CdsSituacao: TClientDataSet;
    DsSituacao: TDataSource;
    SqlTipoContato: TSQLQuery;
    DspTipoContato: TDataSetProvider;
    CdsTipoContato: TClientDataSet;
    DsTipoContato: TDataSource;
    SqlFuncionarioLista: TSQLQuery;
    DspFuncionarioLista: TDataSetProvider;
    CdsFuncionarioLista: TClientDataSet;
    DsFuncionarioLista: TDataSource;
    SqlPais: TSQLQuery;
    DspPais: TDataSetProvider;
    CdsPais: TClientDataSet;
    DsPais: TDataSource;
    dsartigo_perfil: TDataSource;
    SQLartigo_perfil: TSQLQuery;
    DSPartigo_perfil: TDataSetProvider;
    cdsartigo_perfil: TClientDataSet;
    Sqlfaltadisciplinar: TSQLQuery;
    Dspfaltadisciplinar: TDataSetProvider;
    Cdsfaltadisciplinar: TClientDataSet;
    Dsfaltadisciplinar: TDataSource;
    Sqlartigo: TSQLQuery;
    Dspartigo: TDataSetProvider;
    Cdsartigo: TClientDataSet;
    Dsartigo: TDataSource;
    SqlFornecedor: TSQLQuery;
    Dspfornecedor: TDataSetProvider;
    SqlProcedimentos: TSQLQuery;
    DspProcedimentos: TDataSetProvider;
    Cdsfornecedor: TClientDataSet;
    CdsProcedimentos: TClientDataSet;
    Dsfornecedor: TDataSource;
    DsProcedimentos: TDataSource;
    SQLRemedio: TSQLQuery;
    DSPRemedio: TDataSetProvider;
    CDSRemedio: TClientDataSet;
    DSRemedio: TDataSource;
    SqlMovProcDetalhado: TSQLQuery;
    DspMovProcDetalhado: TDataSetProvider;
    CdsMovProcDetalhado: TClientDataSet;
    DsMovProcDetalhado: TDataSource;
    DSlivro: TDataSource;
    cdslivro: TClientDataSet;
    DSPlivro: TDataSetProvider;
    SQLlivro: TSQLQuery;
    DScalcpermanencia: TDataSource;
    CDScalcpermanencia: TClientDataSet;
    DSPcalcpermanencia: TDataSetProvider;
    SQLcalcpermanencia: TSQLQuery;
    SqlEquipe: TSQLQuery;
    DspEquipe: TDataSetProvider;
    CdsEquipe: TClientDataSet;
    DsEquipe: TDataSource;
    DsPostoTrabalho: TDataSource;
    CdsPostoTrabalho: TClientDataSet;
    DspPostoTrabalho: TDataSetProvider;
    SqlPostoTrabalho: TSQLQuery;
    DsOcorrencias: TDataSource;
    CdsOcorrencias: TClientDataSet;
    DspOcorrencias: TDataSetProvider;
    SqlOcorrencias: TSQLQuery;
    SQLcurso: TSQLQuery;
    dspcurso: TDataSetProvider;
    cdscurso: TClientDataSet;
    dscurso: TDataSource;
    SqlPostoTrabalhoRotativo: TSQLQuery;
    DspPostoTrabalhoRotativo: TDataSetProvider;
    CdsPostoTrabalhoRotativo: TClientDataSet;
    DsPostoTrabalhoRotativo: TDataSource;
    SqlEscalaPlantao: TSQLQuery;
    DspEscalaPlantao: TDataSetProvider;
    CdsEscalaPlantao: TClientDataSet;
    DsEscalaPlantao: TDataSource;
    SqlHorarioFuncionario: TSQLQuery;
    DspHorarioFuncionario: TDataSetProvider;
    CdsHorarioFuncionario: TClientDataSet;
    DsHorarioFuncionario: TDataSource;
    SqlTipoPatrimonio: TSQLQuery;
    DspTipoPatrimonio: TDataSetProvider;
    CdsTipoPatrimonio: TClientDataSet;
    DsTipoPatrimonio: TDataSource;
    SQLacessorios: TSQLQuery;
    dspacessorios: TDataSetProvider;
    cdsacessorios: TClientDataSet;
    dsacessorios: TDataSource;
    dsmedico: TDataSource;
    dstipodieta: TDataSource;
    cdstipodieta: TClientDataSet;
    cdsmedico: TClientDataSet;
    dspmedico: TDataSetProvider;
    dsptipodieta: TDataSetProvider;
    SQLmedico: TSQLQuery;
    SQLtipodieta: TSQLQuery;
    SqlPadrao: TSQLQuery;
    DspPadrao: TDataSetProvider;
    CdsPadrao: TClientDataSet;
    DsPadrao: TDataSource;
    ImageListSelecao: TImageList;
    Sqltiposaidao: TSQLQuery;
    Dsptiposaidao: TDataSetProvider;
    Cdstiposaidao: TClientDataSet;
    Dstiposaidao: TDataSource;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLQuery1: TSQLQuery;
    ImageListNetworkI: TImageList;
    ImageListNetworkII: TImageList;
    ImageListWordProcessing: TImageList;
    ImageListBusiness: TImageList;
    ImageListCorel1: TImageList;
    ImageListCorel2: TImageList;
    DataSource3: TDataSource;
    ClientDataSet3: TClientDataSet;
    DataSetProvider3: TDataSetProvider;
    SQLQuery3: TSQLQuery;
    SQLenfermidade: TSQLQuery;
    DSPenfermidade: TDataSetProvider;
    cdsenfermidade: TClientDataSet;
    dsenfermidade: TDataSource;
    SQLlocaltrabalho: TSQLQuery;
    dsplocaltrabalho: TDataSetProvider;
    cdslocaltrabalho: TClientDataSet;
    dslocaltrabalho: TDataSource;
    SQLdeficiencia: TSQLQuery;
    dspdeficiencia: TDataSetProvider;
    cdsdeficiencia: TClientDataSet;
    dsdeficiencia: TDataSource;
    SQLvacina: TSQLQuery;
    dspvacina: TDataSetProvider;
    cdsvacina: TClientDataSet;
    dsvacina: TDataSource;
    SQLOrgao: TSQLQuery;
    dspOrgao: TDataSetProvider;
    cdsOrgao: TClientDataSet;
    dsOrgao: TDataSource;
    SQLSolicitacaoVaga: TSQLQuery;
    SQLSolicitacaoVagaID_SOLICITACAO_VAGA: TIntegerField;
    SQLSolicitacaoVagaID_ORGAO: TIntegerField;
    SQLSolicitacaoVagaID_UP: TIntegerField;
    SQLSolicitacaoVagaQTD_VAGAS_SOLICITADAS: TIntegerField;
    SQLSolicitacaoVagaQTD_VAGAS_AUTORIZADAS: TIntegerField;
    SQLSolicitacaoVagaQTD_VAGAS_UTILIZADAS: TIntegerField;
    SQLSolicitacaoVagaDATA_AUTORIZA_VAGAS: TSQLTimeStampField;
    SQLSolicitacaoVagaOFICIO_DESC: TStringField;
    SQLSolicitacaoVagaQTD_VAGAS_SEM_EFEITO: TIntegerField;
    dspSolicitacaoVaga: TDataSetProvider;
    cdsSolicitacaoVaga: TClientDataSet;
    cdsSolicitacaoVagaID_SOLICITACAO_VAGA: TIntegerField;
    cdsSolicitacaoVagaID_ORGAO: TIntegerField;
    cdsSolicitacaoVagaID_UP: TIntegerField;
    cdsSolicitacaoVagaQTD_VAGAS_SOLICITADAS: TIntegerField;
    cdsSolicitacaoVagaQTD_VAGAS_AUTORIZADAS: TIntegerField;
    cdsSolicitacaoVagaQTD_VAGAS_UTILIZADAS: TIntegerField;
    cdsSolicitacaoVagaDATA_AUTORIZA_VAGAS: TSQLTimeStampField;
    cdsSolicitacaoVagaOFICIO_DESC: TStringField;
    cdsSolicitacaoVagaQTD_VAGAS_SEM_EFEITO: TIntegerField;
    dsSolicitacaoVaga: TDataSource;
    SQLEscolta: TSQLQuery;
    dspEscolta: TDataSetProvider;
    cdsEscolta: TClientDataSet;
    dsEscolta: TDataSource;
    SQLMeioTransporte: TSQLQuery;
    dspMeioTransporte: TDataSetProvider;
    cdsMeioTransporte: TClientDataSet;
    dsMeioTransporte: TDataSource;
    SQLItinerario: TSQLQuery;
    dspItinerario: TDataSetProvider;
    cdsItinerario: TClientDataSet;
    dsItinerario: TDataSource;
    SQLDocOficio: TSQLQuery;
    dspDocOficio: TDataSetProvider;
    cdsDocOficio: TClientDataSet;
    dsDocOficio: TDataSource;
    SQLInternoInclusao: TSQLQuery;
    dspInternoInclusao: TDataSetProvider;
    cdsInternoInclusao: TClientDataSet;
    dsInternoInclusao: TDataSource;
    SQLestado: TSQLQuery;
    dspestado: TDataSetProvider;
    cdsestado: TClientDataSet;
    dsestado: TDataSource;
    SQLvestimentas: TSQLQuery;
    dspvestimentas: TDataSetProvider;
    cdsvestimentas: TClientDataSet;
    dsvestimentas: TDataSource;
    SqlDigital: TSQLQuery;
    DspDigital: TDataSetProvider;
    CdsDigital: TClientDataSet;
    DsDigital: TDataSource;
    Sqlservidor: TSQLQuery;
    Dspservidor: TDataSetProvider;
    Cdsservidor: TClientDataSet;
    Dsservidor: TDataSource;
    CdsDigitalID_BIOMETRIA: TIntegerField;
    CdsDigitalID_INTERNO: TIntegerField;
    CdsDigitalIMAGEM_POLEGAR_DIREITO: TBlobField;
    CdsDigitalIMAGEM_INDICADOR_DIREITO: TBlobField;
    CdsDigitalIMAGEM_MEDIO_DIREITO: TBlobField;
    CdsDigitalIMAGEM_ANELAR_DIREITO: TBlobField;
    CdsDigitalIMAGEM_MINIMO_DIREITO: TBlobField;
    CdsDigitalIMAGEM_POLEGAR_ESQUERDO: TBlobField;
    CdsDigitalIMAGEM_INDICADOR_ESQUERDO: TBlobField;
    CdsDigitalIMAGEM_MEDIO_ESQUERDO: TBlobField;
    CdsDigitalIMAGEM_ANELAR_ESQUERDO: TBlobField;
    CdsDigitalIMAGEM_MINIMO_ESQUERDO: TBlobField;
    CdsDigitalCHAVE_POLEGAR_DIREITO: TStringField;
    CdsDigitalCHAVE_INDICADOR_DIREITO: TStringField;
    CdsDigitalCHAVE_MEDIO_DIREITO: TStringField;
    CdsDigitalCHAVE_ANELAR_DIREITO: TStringField;
    CdsDigitalCHAVE_MINIMO_DIREITO: TStringField;
    CdsDigitalCHAVE_POLEGAR_ESQUERDO: TStringField;
    CdsDigitalCHAVE_INDICADOR_ESQUERDO: TStringField;
    CdsDigitalCHAVE_MEDIO_ESQUERDO: TStringField;
    CdsDigitalCHAVE_ANELAR_ESQUERDO: TStringField;
    CdsDigitalCHAVE_MINIMO_ESQUERDO: TStringField;
    CdsDigitalNome_Interno: TStringField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Lib, MenuRelatorio;

{$R *.dfm}

end.

