unit DmPrincipal;

interface

uses
  uniGUIISAPI,
  ComServ,
  Forms,
  uniGUIMainModule,
  SysUtils,
  Classes,
  SqlExpr,
  Inifiles,
  Data.DBXFirebird,
  Data.DB,
  IWSystem,
  Dialogs,
  Vcl.ImgList,
  Vcl.Controls,
  frxRich,
  frxBarcode,
  frxCross,
  frxDMPExport,
  frxDCtrl,
  frxOLE,
  frxChBox,
  frxClass,
  frxCrypt,
  frxGZip,
  frxExportMail,
  frxExportImage,
  frxExportCSV,
  frxExportRTF,
  frxExportText,
  frxExportHTML,
  frxExportXLS,
  frxExportXML,
  frxExportPDF,
  frxExportODF,
  frxDBSet,
  frxIBXComponents,
  frxDesgn,
  Datasnap.DBClient,
  frxGradient,
  Data.FMTBcd,
  Datasnap.Provider,
  uniGUIBaseClasses,
  uniGUIClasses,
  uniImageList,
  frxDBXComponents,
  uniTimer,
  DBAccess,
  Uni,
  InterBaseUniProvider,
  MemDS,
  frxChart;

type
  TDm = class(TUniGUIMainModule)
    Conexao: TSQLConnection;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxTIFFExport1: TfrxTIFFExport;
    frxDBDataset1: TfrxDBDataset;
    frxODTExport1: TfrxODTExport;
    frxODSExport1: TfrxODSExport;
    frxPDFExport1: TfrxPDFExport;
    frxXMLExport1: TfrxXMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxRTFExport1: TfrxRTFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxBMPExport1: TfrxBMPExport;
    frxCSVExport1: TfrxCSVExport;
    frxGIFExport1: TfrxGIFExport;
    frxMailExport1: TfrxMailExport;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxCrypt1: TfrxCrypt;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxOLEObject1: TfrxOLEObject;
    frxDialogControls1: TfrxDialogControls;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxCrossObject1: TfrxCrossObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    ImgOffLine: TUniImageList;
    ImageListExportacao: TUniImageList;
    SqlConsultaUnica: TSQLQuery;
    ImageListCadastro: TUniImageList;
    UniImageListBackup: TUniImageList;
    UniConnetion: TUniConnection;
    UniImageList24x24: TUniImageList;
    UniImageList48x48: TUniImageList;
    DsConsultaUnica: TDataSource;
    CdsConsultaUnica: TClientDataSet;
    DspCdsConsultaUnica: TDataSetProvider;
    SqlExecute: TUniQuery;
    SqlExecute2: TUniQuery;
    SqlExecute3: TUniQuery;
    frxDBXComponents1: TfrxDBXComponents;
    UniImageListStatus16x16: TUniImageList;
    frxChartObject1: TfrxChartObject;
    UniTransactionConexao: TUniTransaction;
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
    SQLQuery1: TSQLQuery;
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
    Cdsfornecedor: TClientDataSet;
    Dsfornecedor: TDataSource;
    SqlProcedimentos: TSQLQuery;
    DspProcedimentos: TDataSetProvider;
    CdsProcedimentos: TClientDataSet;
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
    Sqltiposaidao: TSQLQuery;
    Dsptiposaidao: TDataSetProvider;
    Cdstiposaidao: TClientDataSet;
    Dstiposaidao: TDataSource;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLQuery2: TSQLQuery;
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
    DsDigital: TDataSource;
    Sqlservidor: TSQLQuery;
    Dspservidor: TDataSetProvider;
    Cdsservidor: TClientDataSet;
    Dsservidor: TDataSource;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    FTD: TTransactionDesc; // Para os Lançamentos .
    FLiberado: boolean;
    FMaquinaDesenvolvimento: boolean;
    { Private declarations }
    FIDSENHA: Integer;
    FGLOBAL_ID_UP: Integer;
    Ffiltropostotrabalho: Integer;
    FGLOBAL_INDEX_DO_GRID: Integer;
    FGLOBAL_ID_INTERNO: Integer;
    FGLOBAL_ID_MOV_DIARIO_VISITANTES: Integer;
    FGLOBAL_ID_FUNCIONARIO: Integer;
    FGLOBAL_IDPOSTO_TRABALHO: Integer;
    FGLOBAL_IDCONEXAO: Integer;
    FPERMISSAO_CONFERE: String;
    FPERMISSAO_VISITANTE: String;
    FPERMISSAO_TRABALHO: String;
    FPERMISSAO_CADASTRO: String;
    FPERMISSAO_EDUCACAO: String;
    FPERMISSAO_PSICOSSOCIAL: String;
    FPERMISSAO_JURIDICA: String;
    FPERMISSAO_DISCIPLINA: String;
    FPERMISSAO_INTELIGENCIA: String;
    FPERMISSAO_ENFERMAGEM: String;
    FPERMISSAO_FARMACIA: String;
    FPERMISSAO_CLINICAMEDICA: String;
    FPERMISSAO_PSICOLOGIA: String;
    FPERMISSAO_PSIQUIATRIA: String;
    FPERMISSAO_SAUDE: String;
    FPERMISSAO_TERAPIAOCUPACIONAL: String;
    FPERMISSAO_ODONTOLOGIA: String;
    FPERMISSAO_PEDAGOGIA: String;
    FPERMISSAO_SERVICOSOCIAL: String;
    FPERMISSAO_ARMAS: String;
    FPERMISSAO_MONITORAMENTO: String;
    FPERMISSAO_OCORRENCIA: String;
    FPERMISSAO_CONSELHODISCIPLINAR: String;
    FPERMISSAO_TRANSFERENCIAINTERNO: String;
    FPERMISSAO_MUDANCACELA: String;
    FPERMISSAO_SAIDAO: String;
    FPERMISSAO_SAIDAO_CADASTRO: String;
    FPERMISSAO_CIRCULACAOINTERNO: String;
    FPERMISSAO_MOVIMENTOSEMIABERTO: String;
    FPERMISSAO_FUNCIONARIO: String;
    FPERMISSAO_FUNCAOFUNCIONARIO: String;
    FPERMISSAO_UNIDADEPENAL: String;
    FPERMISSAO_HORARIOFUNCIONARIO: String;
    FPERMISSAO_PADRAOSISTEMA: String;
    FPERMISSAO_EQUIPE: String;
    FPERMISSAO_LOCALPOSTOTRABALHO: String;
    FPERMISSAO_AGENTEPOREQUIPE: String;
    FPERMISSAO_REGRAVISITACAO: String;
    FGLOBAL_NIVEL_1: String;
    FGLOBAL_NIVEL_2: String;
    FGLOBAL_NIVEL_3: String;
    FGLOBAL_NIVEL_4: String;
    FGLOBAL_RGI: String;
    FGLOBAL_IDAGENDA_ATENDIMENTO: String;
    FGLOBAL_CONEXAO_PROCED: String;
    FGLOBAL_ACESSA_PROCED: String;
    FGLOBAL_ID_TRANSFERENCIA_INTERNO: String;
    FGLOBAL_ID_MUDANCA_CELA: String;
    FGLOBAL_WEBBROWSER: String;
    FGLOBAL_SPACECOM: String;
    FAISSE3_PATH_EXE: String;
    FPATH_MOMENTO: String;
    FStatusAgenda: String;
    Fstatusfiltroagenda: String;
    FUP_Logado: String;
    FGLOBAL_NOME_UP: String;
    FGLOBAL_NOME_FUNCIONARIO_LOGADO: String;
    FGLOBAL_PATCH_SISTEMA: String;
    FGLOBAL_MEUS_DOCUMENTOS: String;
    FGLOBAL_PATCH_RELATORIO: String;
    FGLOBAL_LOCAL: String;
    FGLOBAL_NOME: String;
    FGLOBAL_ULTIMA_DATA_PROCEDIMENTO: String;
    FGLOBAL_ORGAO: String;
    FGLOBAL_DEPARTAMENTO: String;
    FGLOBAL_DIRETORIA: String;
    FGLOBAL_PADRAO_SISTEMA: String;
    FGLOBAL_UF: String;
    FGLOBAL_ID_VISITANTE: String;
    FGLOBAL_PASTA_LOCAL: String;
    FGLOBAL_PASTA_DF: String;
    FGLOBAL_PASTA_MA: String;
    FGLOBAL_PASTA_MS: String;
    FGLOBAL_PASTA_MT: String;
    FCAMINHO_BIOMETRIA: String;
    FGLOBAL_PASTA_SPF: String;
    FGLOBAL_PASTA_PB: String;
    FTIPOCAPTURA: String;
    FCONFIGURACAO: String;
    FVISUALIZA_OUTRAS_UP: String;
    FPERMISSAO_ENTRADAVISITANTE: String;
    FLOGIN_CONECTADO: String;
    FGLOBAL_SENHA_USUARIO: String;
    FTIPO_SENHA: String;
    Fsenha_padrao: String;
    Fskin_padrao: String;
    Furl_imagem_empresa: String;
    FFECHA_AGENDA_ATENDIMENTO: Boolean;
    FGLOBAL_DATA: TDateTime;
  public
    property GLOBAL_DATA:TDateTime read FGLOBAL_DATA write FGLOBAL_DATA;
    property IDSENHA: Integer read FIDSENHA write FIDSENHA;
    property GLOBAL_ID_UP: Integer read FGLOBAL_ID_UP write FGLOBAL_ID_UP;
    property filtropostotrabalho: Integer read Ffiltropostotrabalho write Ffiltropostotrabalho;
    property GLOBAL_INDEX_DO_GRID: Integer read FGLOBAL_INDEX_DO_GRID write FGLOBAL_INDEX_DO_GRID;
    property GLOBAL_ID_INTERNO: Integer read FGLOBAL_ID_INTERNO write FGLOBAL_ID_INTERNO;
    property GLOBAL_ID_MOV_DIARIO_VISITANTES: Integer read FGLOBAL_ID_MOV_DIARIO_VISITANTES write FGLOBAL_ID_MOV_DIARIO_VISITANTES;
    property GLOBAL_ID_FUNCIONARIO: Integer read FGLOBAL_ID_FUNCIONARIO write FGLOBAL_ID_FUNCIONARIO;
    property GLOBAL_IDPOSTO_TRABALHO: Integer read FGLOBAL_IDPOSTO_TRABALHO write FGLOBAL_IDPOSTO_TRABALHO;
    property GLOBAL_IDCONEXAO: Integer read FGLOBAL_IDCONEXAO write FGLOBAL_IDCONEXAO;
    property PERMISSAO_CONFERE : String read FPERMISSAO_CONFERE write FPERMISSAO_CONFERE;
    property PERMISSAO_VISITANTE: String read FPERMISSAO_VISITANTE write FPERMISSAO_VISITANTE;
    property PERMISSAO_TRABALHO: String read FPERMISSAO_TRABALHO write FPERMISSAO_TRABALHO;
    property PERMISSAO_CADASTRO: String read FPERMISSAO_CADASTRO write FPERMISSAO_CADASTRO;
    property PERMISSAO_EDUCACAO: String read FPERMISSAO_EDUCACAO write FPERMISSAO_EDUCACAO;
    property PERMISSAO_PSICOSSOCIAL: String read FPERMISSAO_PSICOSSOCIAL write FPERMISSAO_PSICOSSOCIAL;
    property PERMISSAO_JURIDICA: String read FPERMISSAO_JURIDICA write FPERMISSAO_JURIDICA;
    property PERMISSAO_DISCIPLINA: String read FPERMISSAO_DISCIPLINA write FPERMISSAO_DISCIPLINA;
    property PERMISSAO_INTELIGENCIA: String read FPERMISSAO_INTELIGENCIA write FPERMISSAO_INTELIGENCIA;
    property PERMISSAO_ENFERMAGEM: String read FPERMISSAO_ENFERMAGEM write FPERMISSAO_ENFERMAGEM;
    property PERMISSAO_FARMACIA: String read FPERMISSAO_FARMACIA write FPERMISSAO_FARMACIA;
    property PERMISSAO_CLINICAMEDICA: String read FPERMISSAO_CLINICAMEDICA write FPERMISSAO_CLINICAMEDICA;
    property PERMISSAO_PSICOLOGIA: String read FPERMISSAO_PSICOLOGIA write FPERMISSAO_PSICOLOGIA;
    property PERMISSAO_PSIQUIATRIA: String read FPERMISSAO_PSIQUIATRIA write FPERMISSAO_PSIQUIATRIA;
    property PERMISSAO_SAUDE: String read FPERMISSAO_SAUDE write FPERMISSAO_SAUDE;
    property PERMISSAO_TERAPIAOCUPACIONAL: String read FPERMISSAO_TERAPIAOCUPACIONAL write FPERMISSAO_TERAPIAOCUPACIONAL;
    property PERMISSAO_ODONTOLOGIA: String read FPERMISSAO_ODONTOLOGIA write FPERMISSAO_ODONTOLOGIA;
    property PERMISSAO_PEDAGOGIA: String read FPERMISSAO_PEDAGOGIA write FPERMISSAO_PEDAGOGIA;
    property PERMISSAO_SERVICOSOCIAL: String read FPERMISSAO_SERVICOSOCIAL write FPERMISSAO_SERVICOSOCIAL;
    property PERMISSAO_ARMAS: String read FPERMISSAO_ARMAS write FPERMISSAO_ARMAS;
    property PERMISSAO_MONITORAMENTO: String read FPERMISSAO_MONITORAMENTO write FPERMISSAO_MONITORAMENTO;
    property PERMISSAO_OCORRENCIA: String read FPERMISSAO_OCORRENCIA write FPERMISSAO_OCORRENCIA;
    property PERMISSAO_CONSELHODISCIPLINAR: String read FPERMISSAO_CONSELHODISCIPLINAR write FPERMISSAO_CONSELHODISCIPLINAR;
    property PERMISSAO_TRANSFERENCIAINTERNO: String read FPERMISSAO_TRANSFERENCIAINTERNO write FPERMISSAO_TRANSFERENCIAINTERNO;
    property PERMISSAO_MUDANCACELA: String read FPERMISSAO_MUDANCACELA  write FPERMISSAO_MUDANCACELA ;
    property PERMISSAO_SAIDAO: String read FPERMISSAO_SAIDAO write FPERMISSAO_SAIDAO;
    property PERMISSAO_SAIDAO_CADASTRO: String read FPERMISSAO_SAIDAO_CADASTRO write FPERMISSAO_SAIDAO_CADASTRO;
    property PERMISSAO_CIRCULACAOINTERNO: String read FPERMISSAO_CIRCULACAOINTERNO write FPERMISSAO_CIRCULACAOINTERNO;
    property PERMISSAO_MOVIMENTOSEMIABERTO: String read FPERMISSAO_MOVIMENTOSEMIABERTO write FPERMISSAO_MOVIMENTOSEMIABERTO;
    property PERMISSAO_FUNCIONARIO: String read FPERMISSAO_FUNCIONARIO write FPERMISSAO_FUNCIONARIO;
    property PERMISSAO_FUNCAOFUNCIONARIO: String read FPERMISSAO_FUNCAOFUNCIONARIO write FPERMISSAO_FUNCAOFUNCIONARIO;
    property PERMISSAO_UNIDADEPENAL: String read FPERMISSAO_UNIDADEPENAL write FPERMISSAO_UNIDADEPENAL;
    property PERMISSAO_HORARIOFUNCIONARIO: String read FPERMISSAO_HORARIOFUNCIONARIO write FPERMISSAO_HORARIOFUNCIONARIO;
    property PERMISSAO_PADRAOSISTEMA: String read FPERMISSAO_PADRAOSISTEMA write FPERMISSAO_PADRAOSISTEMA;
    property PERMISSAO_EQUIPE: String read FPERMISSAO_EQUIPE write FPERMISSAO_EQUIPE;
    property PERMISSAO_LOCALPOSTOTRABALHO: String read FPERMISSAO_LOCALPOSTOTRABALHO write FPERMISSAO_LOCALPOSTOTRABALHO;
    property PERMISSAO_AGENTEPOREQUIPE: String read FPERMISSAO_AGENTEPOREQUIPE write FPERMISSAO_AGENTEPOREQUIPE;
    property PERMISSAO_REGRAVISITACAO: String read FPERMISSAO_REGRAVISITACAO write FPERMISSAO_REGRAVISITACAO;
    property GLOBAL_NIVEL_1: String read FGLOBAL_NIVEL_1 write FGLOBAL_NIVEL_1;
    property GLOBAL_NIVEL_2: String read FGLOBAL_NIVEL_2 write FGLOBAL_NIVEL_2;
    property GLOBAL_NIVEL_3: String read FGLOBAL_NIVEL_3 write FGLOBAL_NIVEL_3;
    property GLOBAL_NIVEL_4: String read FGLOBAL_NIVEL_4 write FGLOBAL_NIVEL_4;
    property GLOBAL_RGI: String read FGLOBAL_RGI write FGLOBAL_RGI;
    property GLOBAL_IDAGENDA_ATENDIMENTO: String read FGLOBAL_IDAGENDA_ATENDIMENTO write FGLOBAL_IDAGENDA_ATENDIMENTO;
    property GLOBAL_CONEXAO_PROCED: String read FGLOBAL_CONEXAO_PROCED write FGLOBAL_CONEXAO_PROCED;
    property GLOBAL_ACESSA_PROCED: String read FGLOBAL_ACESSA_PROCED write FGLOBAL_ACESSA_PROCED;
    property GLOBAL_ID_TRANSFERENCIA_INTERNO: String read FGLOBAL_ID_TRANSFERENCIA_INTERNO write FGLOBAL_ID_TRANSFERENCIA_INTERNO;
    property GLOBAL_ID_MUDANCA_CELA: String read FGLOBAL_ID_MUDANCA_CELA write FGLOBAL_ID_MUDANCA_CELA;
    property GLOBAL_WEBBROWSER: String read FGLOBAL_WEBBROWSER write FGLOBAL_WEBBROWSER;
    property GLOBAL_SPACECOM: String read FGLOBAL_SPACECOM write FGLOBAL_SPACECOM;
    property AISSE3_PATH_EXE: String read FAISSE3_PATH_EXE write FAISSE3_PATH_EXE;
    property PATH_MOMENTO: String read FPATH_MOMENTO write FPATH_MOMENTO;
    property StatusAgenda: String read FStatusAgenda write FStatusAgenda;
    property statusfiltroagenda: String read Fstatusfiltroagenda write Fstatusfiltroagenda;
    property UP_Logado: String read FUP_Logado write FUP_Logado;
    property GLOBAL_NOME_UP: String read FGLOBAL_NOME_UP write FGLOBAL_NOME_UP;
    property GLOBAL_NOME_FUNCIONARIO_LOGADO: String read FGLOBAL_NOME_FUNCIONARIO_LOGADO write FGLOBAL_NOME_FUNCIONARIO_LOGADO;
    property GLOBAL_PATCH_SISTEMA: String read FGLOBAL_PATCH_SISTEMA write FGLOBAL_PATCH_SISTEMA;
    property GLOBAL_MEUS_DOCUMENTOS: String read FGLOBAL_MEUS_DOCUMENTOS write FGLOBAL_MEUS_DOCUMENTOS;
    property GLOBAL_PATCH_RELATORIO: String read FGLOBAL_PATCH_RELATORIO write FGLOBAL_PATCH_RELATORIO;
    property GLOBAL_LOCAL: String read FGLOBAL_LOCAL write FGLOBAL_LOCAL;
    property GLOBAL_NOME: String read FGLOBAL_NOME write FGLOBAL_NOME;
    property GLOBAL_ULTIMA_DATA_PROCEDIMENTO: String read FGLOBAL_ULTIMA_DATA_PROCEDIMENTO write FGLOBAL_ULTIMA_DATA_PROCEDIMENTO;
    property GLOBAL_ORGAO: String read FGLOBAL_ORGAO write FGLOBAL_ORGAO;
    property GLOBAL_DEPARTAMENTO: String read FGLOBAL_DEPARTAMENTO write FGLOBAL_DEPARTAMENTO;
    property GLOBAL_DIRETORIA: String read FGLOBAL_DIRETORIA write FGLOBAL_DIRETORIA;
    property GLOBAL_PADRAO_SISTEMA: String read FGLOBAL_PADRAO_SISTEMA write FGLOBAL_PADRAO_SISTEMA;
    property GLOBAL_UF: String read FGLOBAL_UF write FGLOBAL_UF;
    property GLOBAL_ID_VISITANTE: String read FGLOBAL_ID_VISITANTE write FGLOBAL_ID_VISITANTE;
    property GLOBAL_PASTA_LOCAL: String read FGLOBAL_PASTA_LOCAL write FGLOBAL_PASTA_LOCAL;
    property GLOBAL_PASTA_DF: String read FGLOBAL_PASTA_DF write FGLOBAL_PASTA_DF;
    property GLOBAL_PASTA_MA: String read FGLOBAL_PASTA_MA write FGLOBAL_PASTA_MA;
    property GLOBAL_PASTA_MS: String read FGLOBAL_PASTA_MS write FGLOBAL_PASTA_MS;
    property GLOBAL_PASTA_MT: String read FGLOBAL_PASTA_MT write FGLOBAL_PASTA_MT;
    property CAMINHO_BIOMETRIA: String read FCAMINHO_BIOMETRIA write FCAMINHO_BIOMETRIA;
    property GLOBAL_PASTA_SPF: String read FGLOBAL_PASTA_SPF write FGLOBAL_PASTA_SPF;
    property GLOBAL_PASTA_PB: String read FGLOBAL_PASTA_PB write FGLOBAL_PASTA_PB;
    property TIPOCAPTURA: String read FTIPOCAPTURA write FTIPOCAPTURA;
    property CONFIGURACAO: String read FCONFIGURACAO write FCONFIGURACAO;
    property VISUALIZA_OUTRAS_UP: String read FVISUALIZA_OUTRAS_UP write FVISUALIZA_OUTRAS_UP;
    property PERMISSAO_ENTRADAVISITANTE: String read FPERMISSAO_ENTRADAVISITANTE write FPERMISSAO_ENTRADAVISITANTE;
    property LOGIN_CONECTADO: String read FLOGIN_CONECTADO write FLOGIN_CONECTADO;
    property GLOBAL_SENHA_USUARIO: String read FGLOBAL_SENHA_USUARIO write FGLOBAL_SENHA_USUARIO;
    property TIPO_SENHA: String read FTIPO_SENHA write FTIPO_SENHA;
    property senha_padrao: String read Fsenha_padrao write Fsenha_padrao;
    property skin_padrao: String read Fskin_padrao write Fskin_padrao;
    property url_imagem_empresa: String read Furl_imagem_empresa write Furl_imagem_empresa;
    property FECHA_AGENDA_ATENDIMENTO:Boolean read FFECHA_AGENDA_ATENDIMENTO write FFECHA_AGENDA_ATENDIMENTO;
    property Liberado: boolean read FLiberado write FLiberado;
    property MaquinaDesenvolvimento: boolean read FMaquinaDesenvolvimento write FMaquinaDesenvolvimento;

    function ConectaSiapen: boolean;
    function CancelaTransGeral: boolean;
    function FinalizaTransGeral: boolean;
    function IniciaTransGeral: boolean;
    function ReeiniciaTransGeral: boolean;
  end;

function Dm: TDm;

implementation

{$R *.dfm}

uses
  UniGUIVars, // ServerModule,
  uniGUIApplication,
  Lib,
  humanejs, ServerModule;

function Dm: TDm;
begin
  Result := TDm(UniApplication.UniMainModule)
end;

function TDm.ConectaSiapen: boolean;
var
  Parametros: TStrings;
  QualBanco, Arquivo: string;
  ini: TIniFile;
  SUBPASTA: boolean;
begin

  Parametros := TStringList.Create;
  Conexao.Connected := False;
  FLiberado := False;
  FMaquinaDesenvolvimento := False;
  try
    if FileExists(UniServerModule.StartPath + 'Config\Conexao.ini') then
    begin

      ini := TIniFile.Create(UniServerModule.StartPath + 'Config\Conexao.ini');
      SUBPASTA := (ini.ReadString('SGBD', 'ACESSA', '-') = 'SUBPASTA');
      FMaquinaDesenvolvimento := (ini.ReadString('SGBD', 'MaquinaDesenvolvimento', '') = 'Sim');
      senha_padrao := ini.ReadString('SIAPEN', 'PADRAO', 'IPCG');
      GLOBAL_LOCAL := UTF8Encode(ini.ReadString('SIAPEN', 'LOCAL', 'AGEPEN'));
      GLOBAL_NOME := UTF8Encode(ini.ReadString('SIAPEN', 'NOME', ''));
      GLOBAL_ORGAO := UTF8Encode(ini.ReadString('SIAPEN', 'ORGAO', ''));
      GLOBAL_DEPARTAMENTO := UTF8Encode(ini.ReadString('SIAPEN', 'DEPARTAMENTO', ''));
      GLOBAL_DIRETORIA := UTF8Encode(ini.ReadString('SIAPEN', 'DIRETORIA', ''));
      GLOBAL_WEBBROWSER := ini.ReadString('SIAPEN', 'GLOBAL_WEBBROWSER', 'http://spf.mj.gov.br');
      GLOBAL_UF := ini.ReadString('SIAPEN', 'GLOBAL_UF', '');

    end
    else
      showmessage('Arquivo de inicialização não encontrado: '+UniServerModule.StartPath + 'Config\Conexao.ini');

  finally
    ini.Free;
  end;

    if FileExists(UniServerModule.StartPath + 'Config\Firebird_conn.txt') then
    begin
      Arquivo := UniServerModule.StartPath + 'Config\Firebird_conn.txt';
      Conexao.DriverName := 'Firebird';
      Conexao.ConnectionName := 'FBConnection';
      Conexao.GetDriverFunc := 'getSQLDriverINTERBASE';
      Conexao.LibraryName := 'dbxfb.dll';
      Conexao.VendorLib := 'fbclient.dll';
    end
    else
      Showmessage('Arquivo de configuração do banco não encontrado: '+UniServerModule.StartPath + 'Config\Firebird_conn.txt');

  Parametros.LoadFromFile(Arquivo);
// if SUBPASTA then
// Parametros.Values['Database'] := 'localhost:' + gsAppPath + 'database\' + UniServerModule.Title + '.fdb';

  UniConnetion.Connected := False;
  UniConnetion.Server := copy(Parametros.Values['Database'], 1, pos(':', Parametros.Values['Database']) - 1);
  UniConnetion.Database := copy(Parametros.Values['Database'], pos(':', Parametros.Values['Database']) + 1, length(Parametros.Values['Database']));
  UniConnetion.Username := Parametros.Values['User_Name'];
  UniConnetion.Password := Parametros.Values['Password'];

  Conexao.Params := Parametros;

  try
    Conexao.Connected := True;
    UniConnetion.Connected := True;
    Result := True;

// DsLocalCob.DataSet.Close;
// DsLocalCob.DataSet.Open;

// DsFornecedor.DataSet.Close;
// DsFornecedor.DataSet.Open;
//
// DsInvestidor.DataSet.Close;
// DsInvestidor.DataSet.Open;

  except
    on e: exception do
    begin
      ShowMessage('Hum... problema na conexão: ' + e.Message);
      Result := False;
    end;
  end;

end;

procedure TDm.UniGUIMainModuleCreate(Sender: TObject);
begin
  ConectaSiapen;
end;

function TDm.IniciaTransGeral: boolean;
begin
  try
    FTD.TransactionID := trunc(StrToFloat(FormatDateTime('yyyymmddhhnnsszzz', now)) / 2);
    FTD.IsolationLevel := xilREADCOMMITTED;
    Dm.Conexao.StartTransaction(FTD);
  except // se der erro para abrir uma TransGeral
    begin // tente uma nova
      try
        Result := False;
        FTD.TransactionID := FTD.TransactionID + 1;
        FTD.IsolationLevel := xilREADCOMMITTED;
        Dm.Conexao.StartTransaction(FTD);
      except
      end;
    end;
  end;
end;

function TDm.ReeiniciaTransGeral: boolean;
begin
  try
    FinalizaTransGeral;
    FTD.TransactionID := FTD.TransactionID + 1;
    FTD.IsolationLevel := xilREADCOMMITTED;
    Dm.Conexao.StartTransaction(FTD);
  except
  end;
end;

function TDm.FinalizaTransGeral: boolean;
begin
  try
    Result := False;
    if Dm.Conexao.InTransaction then
      Dm.Conexao.Commit(FTD);
    Result := True;
  except
  end;
end;

function TDm.CancelaTransGeral: boolean;
begin
  try
    if Dm.Conexao.InTransaction then
      Dm.Conexao.Rollback(FTD);
  except
  end;

end;

initialization

RegisterMainModuleClass(TDm);

end.
