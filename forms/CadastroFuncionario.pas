unit CadastroFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, ModeloCadastro, Data.FMTBcd, Data.DB, MemDS,
  DBAccess, Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, Vcl.Imaging.jpeg,
  uniImage, uniPanel, uniCheckBox, uniGroupBox, uniDBComboBox, uniMultiItem,
  uniComboBox, uniDBLookupComboBox, uniDBEdit, uniDBImage;

type
  TFrmCadastroFuncionario = class(TFrmModeloCadastro)
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    Dspconsulta: TDataSetProvider;
    SqlConsulta: TSQLQuery;
    SqlSelectFuncionario: TSQLQuery;
    PageControlFuncionario: TUniPageControl;
    TabSheet1: TUniTabSheet;
    Label2: TUniLabel;
    Label3: TUniLabel;
    Label17: TUniLabel;
    Label4: TUniLabel;
    Label6: TUniLabel;
    Label7: TUniLabel;
    Label13: TUniLabel;
    Label16: TUniLabel;
    Label19: TUniLabel;
    Label14: TUniLabel;
    Label15: TUniLabel;
    Label18: TUniLabel;
    FOTO: TUniLabel;
    Label37: TUniLabel;
    DBImageFOTOFUNCIONARIO: TUniDBImage;
    DBEditcodigo: TUniDBEdit;
    DBEdit2: TUniDBEdit;
    DBEdit12: TUniDBEdit;
    DBEdit3: TUniDBEdit;
    DBEditCPF: TUniDBEdit;
    DBEdit1: TUniDBEdit;
    DBEdit6: TUniDBEdit;
    DBEdit11: TUniDBEdit;
    DBEdit14: TUniDBEdit;
    DBEditadmissao: TUniDBEdit;
    DBEditnascimento: TUniDBEdit;
    DBEdit13: TUniDBEdit;
    DBEdit5: TUniDBEdit;
    TabSheet2: TUniTabSheet;
    Label9: TUniLabel;
    Label23: TUniLabel;
    Label24: TUniLabel;
    Label25: TUniLabel;
    Label26: TUniLabel;
    Label27: TUniLabel;
    Label28: TUniLabel;
    Label29: TUniLabel;
    Label30: TUniLabel;
    DBEdit8: TUniDBEdit;
    DBEdit15: TUniDBEdit;
    DBEdit16: TUniDBEdit;
    DBEditcep: TUniDBEdit;
    DBEditfone: TUniDBEdit;
    DBEditcelular: TUniDBEdit;
    DBEdit21: TUniDBEdit;
    DBEdit22: TUniDBEdit;
    TabSheetPermissao: TUniTabSheet;
    Label8: TUniLabel;
    Label5: TUniLabel;
    Label12: TUniLabel;
    DBRadioGroup2: TUniDBComboBox;
    DBEdit7: TUniDBEdit;
    DBEdit4: TUniDBEdit;
    Edit1: TUniEdit;
    DBRadioGroupVISUALIZA_OUTRAS_UP: TUniDBComboBox;
    DBRadioGroupAutorizadoWeb: TUniDBComboBox;
    PageControlpermissao: TUniPageControl;
    TabSheet5: TUniTabSheet;
    GroupBox1: TUniGroupBox;
    CHEditarConfere: TUniCheckBox;
    CHdeletarconfere: TUniCheckBox;
    CHConsultarConfere: TUniCheckBox;
    CHInserirConfere: TUniCheckBox;
    CHTodasConfere: TUniCheckBox;
    chrelatorioconfere: TUniCheckBox;
    GroupBox2: TUniGroupBox;
    chEditarVisitante: TUniCheckBox;
    chdeletarVisitante: TUniCheckBox;
    chConsultarVisitante: TUniCheckBox;
    chInserirVisitante: TUniCheckBox;
    chTodasVisitante: TUniCheckBox;
    chrelatoriovisitante: TUniCheckBox;
    GroupBox5: TUniGroupBox;
    chconsultarcadastro: TUniCheckBox;
    cheditarcadastro: TUniCheckBox;
    chdeletarcadastro: TUniCheckBox;
    chinserircadastro: TUniCheckBox;
    chtodascadastro: TUniCheckBox;
    chrelatoriocadastro: TUniCheckBox;
    GroupBox20: TUniGroupBox;
    chConsultaOcorrencia: TUniCheckBox;
    chEditaOcorrencia: TUniCheckBox;
    chDeletaOcorrencia: TUniCheckBox;
    chInsereOcorrencia: TUniCheckBox;
    chRelatorioOcorrencia: TUniCheckBox;
    chTodasOcorrencia: TUniCheckBox;
    chDespachoOcorrencia: TUniCheckBox;
    DBrgEntradaVisitante: TUniDBComboBox;
    TabSheet6: TUniTabSheet;
    GroupBox3: TUniGroupBox;
    cheditartrabalho: TUniCheckBox;
    chdeletartrabalho: TUniCheckBox;
    chConsultartrabalho: TUniCheckBox;
    chinserirtrabalho: TUniCheckBox;
    chtodastrabalho: TUniCheckBox;
    chrelatoriotrabalho: TUniCheckBox;
    GroupBox4: TUniGroupBox;
    cheditareducacao: TUniCheckBox;
    chdeletareducacao: TUniCheckBox;
    chconsultareducacao: TUniCheckBox;
    chinserireducacao: TUniCheckBox;
    chtodaseducacao: TUniCheckBox;
    chrelatorioeducacao: TUniCheckBox;
    GroupBox7: TUniGroupBox;
    chconsultarjuridica: TUniCheckBox;
    cheditarjuridica: TUniCheckBox;
    chdeletarjuridica: TUniCheckBox;
    chinserirjuridica: TUniCheckBox;
    chtodasjuridica: TUniCheckBox;
    chrelatoriojuridico: TUniCheckBox;
    GroupBox8: TUniGroupBox;
    chconsultardisciplina: TUniCheckBox;
    cheditardisciplina: TUniCheckBox;
    chdeletardisciplina: TUniCheckBox;
    chinserirdisciplina: TUniCheckBox;
    chtodasdisciplina: TUniCheckBox;
    chrelatoriodisciplina: TUniCheckBox;
    GroupBox6: TUniGroupBox;
    chconsultarpsicossocial: TUniCheckBox;
    cheditarpsicossocial: TUniCheckBox;
    chdeletarpsicossocial: TUniCheckBox;
    chinserirpsicossocial: TUniCheckBox;
    chtodaspsicossocial: TUniCheckBox;
    chrelatoriopsicossocial: TUniCheckBox;
    GroupBox9: TUniGroupBox;
    chconsultarclinicamedica: TUniCheckBox;
    cheditarclinicamedica: TUniCheckBox;
    chdeletarclinicamedica: TUniCheckBox;
    chinserirclinicamedica: TUniCheckBox;
    chtodasclinicamedica: TUniCheckBox;
    chrelatorioclinicamedica: TUniCheckBox;
    GroupBox10: TUniGroupBox;
    chconsultarenfermagem: TUniCheckBox;
    cheditarenfermagem: TUniCheckBox;
    chdeletarenfermagem: TUniCheckBox;
    chinserirenfermagem: TUniCheckBox;
    chtodasenfermagem: TUniCheckBox;
    chrelatorioenfermagem: TUniCheckBox;
    GroupBox11: TUniGroupBox;
    chconsultarodontologia: TUniCheckBox;
    cheditarodontologia: TUniCheckBox;
    chdeletarodontologia: TUniCheckBox;
    chinserirodontologia: TUniCheckBox;
    chtodasodontologia: TUniCheckBox;
    chrelatorioodontologia: TUniCheckBox;
    GroupBox12: TUniGroupBox;
    chconsultarfarmacia: TUniCheckBox;
    cheditarfarmacia: TUniCheckBox;
    chdeletarfarmacia: TUniCheckBox;
    chinserirfarmacia: TUniCheckBox;
    chtodasfarmacia: TUniCheckBox;
    chrelatoriofaramcia: TUniCheckBox;
    GroupBox13: TUniGroupBox;
    chconsultarpedagogia: TUniCheckBox;
    cheditarpedagogia: TUniCheckBox;
    chdeletarpedagogia: TUniCheckBox;
    chinserirpedagogia: TUniCheckBox;
    chtodaspedagogia: TUniCheckBox;
    chrelatoriopedagogia: TUniCheckBox;
    GroupBox14: TUniGroupBox;
    chconsultarterapiaocupacional: TUniCheckBox;
    cheditarterapiaocupacional: TUniCheckBox;
    chdeletarterapiaocupacional: TUniCheckBox;
    chinserirterapiaocupacional: TUniCheckBox;
    chtodasterapiaocupacional: TUniCheckBox;
    chrelatorioterapiaocupacional: TUniCheckBox;
    GroupBox15: TUniGroupBox;
    chconsultarservicosocial: TUniCheckBox;
    cheditarservicosocial: TUniCheckBox;
    chdeletarservicosocial: TUniCheckBox;
    chinserirservicosocial: TUniCheckBox;
    chtodasservicosocial: TUniCheckBox;
    chrelatorioservicosocial: TUniCheckBox;
    GroupBox16: TUniGroupBox;
    chconsultarpsicologia: TUniCheckBox;
    cheditarpsicologia: TUniCheckBox;
    chdeletarpsicologia: TUniCheckBox;
    chinserirpsicologia: TUniCheckBox;
    chtodaspsicologia: TUniCheckBox;
    chrelatoriopsicologia: TUniCheckBox;
    GroupBox17: TUniGroupBox;
    chconsultarpsiquiatria: TUniCheckBox;
    cheditarpsiquiatria: TUniCheckBox;
    chdeletarpsiquiatria: TUniCheckBox;
    chinserirpsiquiatria: TUniCheckBox;
    chtodaspsiquiatria: TUniCheckBox;
    chrelatoriopsiquiatria: TUniCheckBox;
    GroupBox18: TUniGroupBox;
    chconsultarsaude: TUniCheckBox;
    cheditarsaude: TUniCheckBox;
    chdeletarsaude: TUniCheckBox;
    chinserirsaude: TUniCheckBox;
    chtodassaude: TUniCheckBox;
    chrelatoriosaude: TUniCheckBox;
    GbConselhoDisciplinar: TUniGroupBox;
    chConsultarConsDisciplinar: TUniCheckBox;
    chEditarConsDisciplinar: TUniCheckBox;
    chDeletarConsDisciplinar: TUniCheckBox;
    chInserirConsDisciplinar: TUniCheckBox;
    chRelatorioConsDisciplinar: TUniCheckBox;
    chTodasConsDisciplinar: TUniCheckBox;
    TabSheet3: TUniTabSheet;
    GbTransferenciaInterno: TUniGroupBox;
    chConsultarTransferenciaInterno: TUniCheckBox;
    chEditarTransferenciaInterno: TUniCheckBox;
    chDeletarTransferenciaInterno: TUniCheckBox;
    chInserirTransferenciaInterno: TUniCheckBox;
    chRelatorioTransferenciaInterno: TUniCheckBox;
    chTodasTransferenciaInterno: TUniCheckBox;
    GbMudancaCela: TUniGroupBox;
    ChConsultarMudancaCela: TUniCheckBox;
    ChEditarMudancaCela: TUniCheckBox;
    ChDeletarMudancaCela: TUniCheckBox;
    ChInserirMudancaCela: TUniCheckBox;
    ChRelatorioMudancaCela: TUniCheckBox;
    ChTodasMudancaCela: TUniCheckBox;
    GbSaidao: TUniGroupBox;
    ChConsultarSaidao: TUniCheckBox;
    ChEditarSaidao: TUniCheckBox;
    ChDeletarSaidao: TUniCheckBox;
    ChInserirSaidao: TUniCheckBox;
    ChRelatorioSaidao: TUniCheckBox;
    ChTodasSaidao: TUniCheckBox;
    GbCirculacaoInterno: TUniGroupBox;
    ChConsultarCirculacaoInterno: TUniCheckBox;
    ChEditarCirculacaoInterno: TUniCheckBox;
    ChDeletarCirculacaoInterno: TUniCheckBox;
    ChInserirCirculacaoInterno: TUniCheckBox;
    ChRelatorioCirculacaoInterno: TUniCheckBox;
    ChTodasCirculacaoInterno: TUniCheckBox;
    GbMovimentoSemiAberto: TUniGroupBox;
    ChConsultarMovimentoSemiAberto: TUniCheckBox;
    ChEditarMovimentoSemiAberto: TUniCheckBox;
    ChDeletarMovimentoSemiAberto: TUniCheckBox;
    ChInserirMovimentoSemiAberto: TUniCheckBox;
    ChRelatorioMovimentoSemiAberto: TUniCheckBox;
    ChTodasMovimentoSemiAberto: TUniCheckBox;
    GBPortariaSaidao: TUniGroupBox;
    ChConsultarSaidaoCadastro: TUniCheckBox;
    ChEditarSaidaoCadastro: TUniCheckBox;
    ChDeletarSaidaoCadastro: TUniCheckBox;
    ChInserirSaidaoCadastro: TUniCheckBox;
    chRelatorioSaidaoCadastro: TUniCheckBox;
    ChTodasSaidaoCadastro: TUniCheckBox;
    TabSheet4: TUniTabSheet;
    GroupBoxinteligencia: TUniGroupBox;
    chconsultarinteligencia: TUniCheckBox;
    cheditarinteligencia: TUniCheckBox;
    chdeletarinteligencia: TUniCheckBox;
    chinseririnteligencia: TUniCheckBox;
    chrelatoriointeligencia: TUniCheckBox;
    chtodasinteligencia: TUniCheckBox;
    GroupBox19: TUniGroupBox;
    chconsultararmas: TUniCheckBox;
    cheditararmas: TUniCheckBox;
    chdeletararmas: TUniCheckBox;
    chinserirarmas: TUniCheckBox;
    chrelatorioarmas: TUniCheckBox;
    chtodasarmas: TUniCheckBox;
    Monitoramento: TUniGroupBox;
    chconsultarmonitoramento: TUniCheckBox;
    cheditarmonitoramento: TUniCheckBox;
    chdeletarmonitoramento: TUniCheckBox;
    chinserirmonitoramento: TUniCheckBox;
    chrelatoriomonitoramento: TUniCheckBox;
    chtodasmonitoramento: TUniCheckBox;
    TabSheet7: TUniTabSheet;
    GbFuncionario: TUniGroupBox;
    ChConsultarFuncionario: TUniCheckBox;
    ChEditarFuncionario: TUniCheckBox;
    ChDeletarFuncionario: TUniCheckBox;
    ChInserirFuncionario: TUniCheckBox;
    ChRelatorioFuncionario: TUniCheckBox;
    ChTodasFuncionario: TUniCheckBox;
    GbFuncaoFuncionario: TUniGroupBox;
    ChConsultarFuncaoFuncionario: TUniCheckBox;
    ChEditarFuncaoFuncionario: TUniCheckBox;
    ChDeletarFuncaoFuncionario: TUniCheckBox;
    ChInserirFuncaoFuncionario: TUniCheckBox;
    ChRelatorioFuncaoFuncionario: TUniCheckBox;
    ChTodasFuncaoFuncionario: TUniCheckBox;
    GbUnidadePenal: TUniGroupBox;
    ChConsultarUnidadePenal: TUniCheckBox;
    ChEditarUnidadePenal: TUniCheckBox;
    ChDeletarUnidadePenal: TUniCheckBox;
    ChInserirUnidadePenal: TUniCheckBox;
    ChRelatorioUnidadePenal: TUniCheckBox;
    ChTodasUnidadePenal: TUniCheckBox;
    GbHorarioFuncionario: TUniGroupBox;
    ChConsultarHorarioFuncionario: TUniCheckBox;
    ChEditarHorarioFuncionario: TUniCheckBox;
    ChDeletarHorarioFuncionario: TUniCheckBox;
    ChInserirHorarioFuncionario: TUniCheckBox;
    ChRelatorioHorarioFuncionario: TUniCheckBox;
    ChTodasHorarioFuncionario: TUniCheckBox;
    GbPadraoSistema: TUniGroupBox;
    ChConsultarPadraoSistema: TUniCheckBox;
    ChEditarPadraoSistema: TUniCheckBox;
    ChDeletarPadraoSistema: TUniCheckBox;
    ChInserirPadraoSistema: TUniCheckBox;
    ChRelatorioPadraoSistema: TUniCheckBox;
    ChTodasPadraoSistema: TUniCheckBox;
    GbEquipe: TUniGroupBox;
    ChConsultarEquipe: TUniCheckBox;
    ChEditarEquipe: TUniCheckBox;
    ChDeletarEquipe: TUniCheckBox;
    ChInserirEquipe: TUniCheckBox;
    ChRelatorioEquipe: TUniCheckBox;
    ChTodasEquipe: TUniCheckBox;
    GbPostoLocalTrabalho: TUniGroupBox;
    ChConsultarPostoLocalTrabalho: TUniCheckBox;
    ChEditarPostoLocalTrabalho: TUniCheckBox;
    ChDeletarPostoLocalTrabalho: TUniCheckBox;
    ChInserirPostoLocalTrabalho: TUniCheckBox;
    ChRelatorioPostoLocalTrabalho: TUniCheckBox;
    ChTodasPostoLocalTrabalho: TUniCheckBox;
    GbAgenteEquipe: TUniGroupBox;
    ChConsultarAgenteEquipe: TUniCheckBox;
    ChEditarAgenteEquipe: TUniCheckBox;
    ChDeletarAgenteEquipe: TUniCheckBox;
    ChInserirAgenteEquipe: TUniCheckBox;
    ChRelatorioAgenteEquipe: TUniCheckBox;
    ChTodasAgenteEquipe: TUniCheckBox;
    GbRegraVisitacao: TUniGroupBox;
    ChConsultarRegraVisitacao: TUniCheckBox;
    ChEditarRegraVisitacao: TUniCheckBox;
    ChDeletarRegraVisitacao: TUniCheckBox;
    ChInserirRegraVisitacao: TUniCheckBox;
    ChRelatorioRegraVisitacao: TUniCheckBox;
    ChTodasRegraVisitacao: TUniCheckBox;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabelUnidadePenal: TUniLabel;
    UniBitBtnUnidadePenal: TUniBitBtn;
    UniDBEditUnidadePenal: TUniDBEdit;
    UniBitBtnNaturalidade: TUniBitBtn;
    UniLabelNaturalidade: TUniLabel;
    UniDBEditNaturalidade: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabelCurso: TUniLabel;
    UniBitBtnCurso: TUniBitBtn;
    UniDBEditCurso: TUniDBEdit;
    UniLabelPosto: TUniLabel;
    UniBitBtnPosto: TUniBitBtn;
    UniDBEditPosto: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniBitBtnCidade: TUniBitBtn;
    UniLabelCidade: TUniLabel;
    UniDBEditCidade: TUniDBEdit;
    CdsConsultaNOME_FUNCIONARIO: TStringField;
    CdsConsultaMATRICULA: TStringField;
    CdsConsultaLOGIN: TStringField;
    CdsConsultaID_FUNCIONARIO: TIntegerField;
    procedure chConsultaOcorrenciaClick(Sender: TObject);
    procedure ChConsultarAgenteEquipeClick(Sender: TObject);
    procedure chconsultararmasClick(Sender: TObject);
    procedure chconsultarcadastroClick(Sender: TObject);
    procedure ChConsultarCirculacaoInternoClick(Sender: TObject);
    procedure chconsultarclinicamedicaClick(Sender: TObject);
    procedure CHConsultarConfereClick(Sender: TObject);
    procedure chConsultarConsDisciplinarClick(Sender: TObject);
    procedure chconsultardisciplinaClick(Sender: TObject);
    procedure chconsultareducacaoClick(Sender: TObject);
    procedure chconsultarenfermagemClick(Sender: TObject);
    procedure ChConsultarEquipeClick(Sender: TObject);
    procedure chconsultarfarmaciaClick(Sender: TObject);
    procedure ChConsultarFuncaoFuncionarioClick(Sender: TObject);
    procedure ChConsultarFuncionarioClick(Sender: TObject);
    procedure ChConsultarHorarioFuncionarioClick(Sender: TObject);
    procedure chconsultarinteligenciaClick(Sender: TObject);
    procedure chconsultarjuridicaClick(Sender: TObject);
    procedure chconsultarmonitoramentoClick(Sender: TObject);
    procedure ChConsultarMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChConsultarMudancaCelaClick(Sender: TObject);
    procedure chconsultarodontologiaClick(Sender: TObject);
    procedure ChConsultarPadraoSistemaClick(Sender: TObject);
    procedure chconsultarpedagogiaClick(Sender: TObject);
    procedure ChConsultarPostoLocalTrabalhoClick(Sender: TObject);
    procedure chconsultarpsicologiaClick(Sender: TObject);
    procedure chconsultarpsicossocialClick(Sender: TObject);
    procedure chconsultarpsiquiatriaClick(Sender: TObject);
    procedure ChConsultarRegraVisitacaoClick(Sender: TObject);
    procedure ChConsultarSaidaoCadastroClick(Sender: TObject);
    procedure ChConsultarSaidaoClick(Sender: TObject);
    procedure chconsultarsaudeClick(Sender: TObject);
    procedure chconsultarservicosocialClick(Sender: TObject);
    procedure chconsultarterapiaocupacionalClick(Sender: TObject);
    procedure chConsultartrabalhoClick(Sender: TObject);
    procedure chConsultarTransferenciaInternoClick(Sender: TObject);
    procedure ChConsultarUnidadePenalClick(Sender: TObject);
    procedure chConsultarVisitanteClick(Sender: TObject);
    procedure chDeletaOcorrenciaClick(Sender: TObject);
    procedure ChDeletarAgenteEquipeClick(Sender: TObject);
    procedure chdeletararmasClick(Sender: TObject);
    procedure chdeletarcadastroClick(Sender: TObject);
    procedure ChDeletarCirculacaoInternoClick(Sender: TObject);
    procedure chdeletarclinicamedicaClick(Sender: TObject);
    procedure CHdeletarconfereClick(Sender: TObject);
    procedure chDeletarConsDisciplinarClick(Sender: TObject);
    procedure chdeletardisciplinaClick(Sender: TObject);
    procedure chdeletareducacaoClick(Sender: TObject);
    procedure chdeletarenfermagemClick(Sender: TObject);
    procedure ChDeletarEquipeClick(Sender: TObject);
    procedure chdeletarfarmaciaClick(Sender: TObject);
    procedure ChDeletarFuncaoFuncionarioClick(Sender: TObject);
    procedure ChDeletarFuncionarioClick(Sender: TObject);
    procedure ChDeletarHorarioFuncionarioClick(Sender: TObject);
    procedure chdeletarinteligenciaClick(Sender: TObject);
    procedure chdeletarjuridicaClick(Sender: TObject);
    procedure chdeletarmonitoramentoClick(Sender: TObject);
    procedure ChDeletarMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChDeletarMudancaCelaClick(Sender: TObject);
    procedure chdeletarodontologiaClick(Sender: TObject);
    procedure ChDeletarPadraoSistemaClick(Sender: TObject);
    procedure chdeletarpedagogiaClick(Sender: TObject);
    procedure ChDeletarPostoLocalTrabalhoClick(Sender: TObject);
    procedure chdeletarpsicologiaClick(Sender: TObject);
    procedure chdeletarpsicossocialClick(Sender: TObject);
    procedure chdeletarpsiquiatriaClick(Sender: TObject);
    procedure ChDeletarRegraVisitacaoClick(Sender: TObject);
    procedure ChDeletarSaidaoCadastroClick(Sender: TObject);
    procedure ChDeletarSaidaoClick(Sender: TObject);
    procedure chdeletarsaudeClick(Sender: TObject);
    procedure chdeletarservicosocialClick(Sender: TObject);
    procedure chdeletarterapiaocupacionalClick(Sender: TObject);
    procedure chdeletartrabalhoClick(Sender: TObject);
    procedure chDeletarTransferenciaInternoClick(Sender: TObject);
    procedure ChDeletarUnidadePenalClick(Sender: TObject);
    procedure chdeletarVisitanteClick(Sender: TObject);
    procedure chDespachoOcorrenciaClick(Sender: TObject);
    procedure chEditaOcorrenciaClick(Sender: TObject);
    procedure ChEditarAgenteEquipeClick(Sender: TObject);
    procedure cheditararmasClick(Sender: TObject);
    procedure cheditarcadastroClick(Sender: TObject);
    procedure ChEditarCirculacaoInternoClick(Sender: TObject);
    procedure cheditarclinicamedicaClick(Sender: TObject);
    procedure CHEditarConfereClick(Sender: TObject);
    procedure chEditarConsDisciplinarClick(Sender: TObject);
    procedure cheditardisciplinaClick(Sender: TObject);
    procedure cheditareducacaoClick(Sender: TObject);
    procedure cheditarenfermagemClick(Sender: TObject);
    procedure ChEditarEquipeClick(Sender: TObject);
    procedure cheditarfarmaciaClick(Sender: TObject);
    procedure ChEditarFuncaoFuncionarioClick(Sender: TObject);
    procedure ChEditarFuncionarioClick(Sender: TObject);
    procedure ChEditarHorarioFuncionarioClick(Sender: TObject);
    procedure cheditarinteligenciaClick(Sender: TObject);
    procedure cheditarjuridicaClick(Sender: TObject);
    procedure cheditarmonitoramentoClick(Sender: TObject);
    procedure ChEditarMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChEditarMudancaCelaClick(Sender: TObject);
    procedure cheditarodontologiaClick(Sender: TObject);
    procedure ChEditarPadraoSistemaClick(Sender: TObject);
    procedure cheditarpedagogiaClick(Sender: TObject);
    procedure ChEditarPostoLocalTrabalhoClick(Sender: TObject);
    procedure cheditarpsicologiaClick(Sender: TObject);
    procedure cheditarpsicossocialClick(Sender: TObject);
    procedure cheditarpsiquiatriaClick(Sender: TObject);
    procedure ChEditarRegraVisitacaoClick(Sender: TObject);
    procedure ChEditarSaidaoCadastroClick(Sender: TObject);
    procedure ChEditarSaidaoClick(Sender: TObject);
    procedure cheditarsaudeClick(Sender: TObject);
    procedure cheditarservicosocialClick(Sender: TObject);
    procedure cheditarterapiaocupacionalClick(Sender: TObject);
    procedure cheditartrabalhoClick(Sender: TObject);
    procedure chEditarTransferenciaInternoClick(Sender: TObject);
    procedure ChEditarUnidadePenalClick(Sender: TObject);
    procedure chEditarVisitanteClick(Sender: TObject);
    procedure chInsereOcorrenciaClick(Sender: TObject);
    procedure ChInserirAgenteEquipeClick(Sender: TObject);
    procedure chinserirarmasClick(Sender: TObject);
    procedure chinserircadastroClick(Sender: TObject);
    procedure ChInserirCirculacaoInternoClick(Sender: TObject);
    procedure chinserirclinicamedicaClick(Sender: TObject);
    procedure CHInserirConfereClick(Sender: TObject);
    procedure chInserirConsDisciplinarClick(Sender: TObject);
    procedure chinserirdisciplinaClick(Sender: TObject);
    procedure chinserireducacaoClick(Sender: TObject);
    procedure chinserirenfermagemClick(Sender: TObject);
    procedure ChInserirEquipeClick(Sender: TObject);
    procedure chinserirfarmaciaClick(Sender: TObject);
    procedure ChInserirFuncaoFuncionarioClick(Sender: TObject);
    procedure ChInserirFuncionarioClick(Sender: TObject);
    procedure ChInserirHorarioFuncionarioClick(Sender: TObject);
    procedure chinseririnteligenciaClick(Sender: TObject);
    procedure chinserirjuridicaClick(Sender: TObject);
    procedure chinserirmonitoramentoClick(Sender: TObject);
    procedure ChInserirMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChInserirMudancaCelaClick(Sender: TObject);
    procedure chinserirodontologiaClick(Sender: TObject);
    procedure ChInserirPadraoSistemaClick(Sender: TObject);
    procedure chinserirpedagogiaClick(Sender: TObject);
    procedure ChInserirPostoLocalTrabalhoClick(Sender: TObject);
    procedure chinserirpsicologiaClick(Sender: TObject);
    procedure chinserirpsicossocialClick(Sender: TObject);
    procedure chinserirpsiquiatriaClick(Sender: TObject);
    procedure ChInserirRegraVisitacaoClick(Sender: TObject);
    procedure ChInserirSaidaoCadastroClick(Sender: TObject);
    procedure ChInserirSaidaoClick(Sender: TObject);
    procedure chinserirsaudeClick(Sender: TObject);
    procedure chinserirservicosocialClick(Sender: TObject);
    procedure chinserirterapiaocupacionalClick(Sender: TObject);
    procedure chinserirtrabalhoClick(Sender: TObject);
    procedure chInserirTransferenciaInternoClick(Sender: TObject);
    procedure ChInserirUnidadePenalClick(Sender: TObject);
    procedure chInserirVisitanteClick(Sender: TObject);
    procedure ChRelatorioAgenteEquipeClick(Sender: TObject);
    procedure chrelatorioarmasClick(Sender: TObject);
    procedure chrelatoriocadastroClick(Sender: TObject);
    procedure ChRelatorioCirculacaoInternoClick(Sender: TObject);
    procedure chrelatorioclinicamedicaClick(Sender: TObject);
    procedure chrelatorioconfereClick(Sender: TObject);
    procedure chRelatorioConsDisciplinarClick(Sender: TObject);
    procedure chrelatoriodisciplinaClick(Sender: TObject);
    procedure chrelatorioeducacaoClick(Sender: TObject);
    procedure chrelatorioenfermagemClick(Sender: TObject);
    procedure ChRelatorioEquipeClick(Sender: TObject);
    procedure chrelatoriofaramciaClick(Sender: TObject);
    procedure ChRelatorioFuncaoFuncionarioClick(Sender: TObject);
    procedure ChRelatorioFuncionarioClick(Sender: TObject);
    procedure ChRelatorioHorarioFuncionarioClick(Sender: TObject);
    procedure chrelatoriointeligenciaClick(Sender: TObject);
    procedure chrelatoriojuridicoClick(Sender: TObject);
    procedure chrelatoriomonitoramentoClick(Sender: TObject);
    procedure ChRelatorioMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChRelatorioMudancaCelaClick(Sender: TObject);
    procedure chRelatorioOcorrenciaClick(Sender: TObject);
    procedure chrelatorioodontologiaClick(Sender: TObject);
    procedure ChRelatorioPadraoSistemaClick(Sender: TObject);
    procedure chrelatoriopedagogiaClick(Sender: TObject);
    procedure ChRelatorioPostoLocalTrabalhoClick(Sender: TObject);
    procedure chrelatoriopsicologiaClick(Sender: TObject);
    procedure chrelatoriopsicossocialClick(Sender: TObject);
    procedure chrelatoriopsiquiatriaClick(Sender: TObject);
    procedure ChRelatorioRegraVisitacaoClick(Sender: TObject);
    procedure chRelatorioSaidaoCadastroClick(Sender: TObject);
    procedure ChRelatorioSaidaoClick(Sender: TObject);
    procedure chrelatoriosaudeClick(Sender: TObject);
    procedure chrelatorioservicosocialClick(Sender: TObject);
    procedure chrelatorioterapiaocupacionalClick(Sender: TObject);
    procedure chrelatoriotrabalhoClick(Sender: TObject);
    procedure chRelatorioTransferenciaInternoClick(Sender: TObject);
    procedure ChRelatorioUnidadePenalClick(Sender: TObject);
    procedure chrelatoriovisitanteClick(Sender: TObject);
    procedure ChTodasAgenteEquipeClick(Sender: TObject);
    procedure chtodasarmasClick(Sender: TObject);
    procedure chtodascadastroClick(Sender: TObject);
    procedure ChTodasCirculacaoInternoClick(Sender: TObject);
    procedure chtodasclinicamedicaClick(Sender: TObject);
    procedure CHTodasConfereClick(Sender: TObject);
    procedure chTodasConsDisciplinarClick(Sender: TObject);
    procedure chtodasdisciplinaClick(Sender: TObject);
    procedure chtodaseducacaoClick(Sender: TObject);
    procedure chtodasenfermagemClick(Sender: TObject);
    procedure ChTodasEquipeClick(Sender: TObject);
    procedure chtodasfarmaciaClick(Sender: TObject);
    procedure ChTodasFuncaoFuncionarioClick(Sender: TObject);
    procedure ChTodasFuncionarioClick(Sender: TObject);
    procedure ChTodasHorarioFuncionarioClick(Sender: TObject);
    procedure chtodasinteligenciaClick(Sender: TObject);
    procedure chtodasjuridicaClick(Sender: TObject);
    procedure chtodasmonitoramentoClick(Sender: TObject);
    procedure ChTodasMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChTodasMudancaCelaClick(Sender: TObject);
    procedure chTodasOcorrenciaClick(Sender: TObject);
    procedure chtodasodontologiaClick(Sender: TObject);
    procedure ChTodasPadraoSistemaClick(Sender: TObject);
    procedure chtodaspedagogiaClick(Sender: TObject);
    procedure ChTodasPostoLocalTrabalhoClick(Sender: TObject);
    procedure chtodaspsicologiaClick(Sender: TObject);
    procedure chtodaspsicossocialClick(Sender: TObject);
    procedure chtodaspsiquiatriaClick(Sender: TObject);
    procedure ChTodasRegraVisitacaoClick(Sender: TObject);
    procedure ChTodasSaidaoCadastroClick(Sender: TObject);
    procedure ChTodasSaidaoClick(Sender: TObject);
    procedure chtodassaudeClick(Sender: TObject);
    procedure chtodasservicosocialClick(Sender: TObject);
    procedure chtodasterapiaocupacionalClick(Sender: TObject);
    procedure chtodastrabalhoClick(Sender: TObject);
    procedure chTodasTransferenciaInternoClick(Sender: TObject);
    procedure ChTodasUnidadePenalClick(Sender: TObject);
    procedure chTodasVisitanteClick(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure DBImagedIGITALClick(Sender: TObject);
    procedure DBImageFOTOFUNCIONARIOClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure ValidaPermissao(chConsulta, chEditar, chDeletar, chInserir,
      chrelatorio, chTodas: TUniCheckBox; sNomeCampo: string);
    procedure ValidaPermissaoOcorrencia(chConsulta, chEditar, chDeletar,
      chInserir, chrelatorio, chdespacho, chTodas: TUniCheckBox;
      sNomeCampo: string);
    procedure ValidaPermissaoTodas(chConsulta, chEditar, chDeletar, chInserir,
      chrelatorio, chTodas: TUniCheckBox);
    procedure ValidaPermissaoTodasOcorrencia(chConsulta, chEditar, chDeletar,
      chInserir, chrelatorio, chdespacho, chTodas: TUniCheckBox);
    procedure UniBtnFiltrarClick(Sender: TObject);
    procedure UniDBEditUnidadePenalExit(Sender: TObject);
    procedure UniBitBtnUnidadePenalClick(Sender: TObject);
    procedure UniBitBtnNaturalidadeClick(Sender: TObject);
    procedure UniDBEditNaturalidadeExit(Sender: TObject);
    procedure UniDBEditCursoExit(Sender: TObject);
    procedure UniBitBtnCursoClick(Sender: TObject);
    procedure UniBitBtnPostoClick(Sender: TObject);
    procedure UniDBEditPostoExit(Sender: TObject);
    procedure UniBitBtnCidadeClick(Sender: TObject);
    procedure UniDBEditCidadeExit(Sender: TObject);
  private
    procedure ValidaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmCadastroFuncionario: TFrmCadastroFuncionario;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, Lib;

function FrmCadastroFuncionario: TFrmCadastroFuncionario;
begin
  Result := TFrmCadastroFuncionario
    (UniMainModule.GetFormInstance(TFrmCadastroFuncionario));
end;

procedure TFrmCadastroFuncionario.UniBitBtnCidadeClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self,
      'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' +
      ' order by cidade, uf', 'cidade||''/''||uf', 'CODIGO', 'descricao',
      UniDBEditCidade, UniLabelCidade);

  end;

end;

procedure TFrmCadastroFuncionario.UniBitBtnCursoClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self, 'select id_CURSO codigo, CURSO from CURSO ' +
      ' order by CURSO', 'CURSO', 'CODIGO', 'CURSO', UniDBEditCurso,
      UniLabelCurso);

  end;

end;

procedure TFrmCadastroFuncionario.UniBitBtnNaturalidadeClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self,
      'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' +
      ' order by cidade, uf', 'cidade||''/''||uf', 'CODIGO', 'descricao',
      UniDBEditNaturalidade, UniLabelNaturalidade);

  end;

end;

procedure TFrmCadastroFuncionario.UniBitBtnPostoClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self,
      'select idPOSTO_TRABALHO codigo, POSTO_TRABALHO from POSTO_TRABALHO ' +
      ' order by POSTO_TRABALHO', 'POSTO_TRABALHO', 'CODIGO', 'POSTO_TRABALHO',
      UniDBEditPosto, UniLabelPosto);

  end;

end;

procedure TFrmCadastroFuncionario.UniBitBtnUnidadePenalClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self,
      'select ID_UP codigo, NOME_UP||'' - ''||sigla nome from UNIDADE_PENAL order by NOME_UP',
      'NOME_UP||sigla', 'codigo', 'nome', UniDBEditUnidadePenal,
      UniLabelUnidadePenal);
  end;
end;

procedure TFrmCadastroFuncionario.UniBtnFiltrarClick(Sender: TObject);
begin
  // inherited;

  SqlConsulta.sql.text := SqlSelectFuncionario.sql.text +
    ' where nome_funcionario like upper(' + qs(EditLocalizar.text + '%') +
    ') order by nome_funcionario ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmCadastroFuncionario.UniDBEditCidadeExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select cidade||''/''||uf descricao from cidade ' +
    ' WHERE id_cidade=', UniDBEditCidade, UniLabelCidade);

end;

procedure TFrmCadastroFuncionario.UniDBEditCursoExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select CURSO from CURSO ' + ' WHERE id_CURSO=',
    UniDBEditCurso, UniLabelCurso);

end;

procedure TFrmCadastroFuncionario.UniDBEditNaturalidadeExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select cidade||''/''||uf descricao from cidade ' +
    ' WHERE id_cidade=', UniDBEditNaturalidade, UniLabelNaturalidade);

end;

procedure TFrmCadastroFuncionario.UniDBEditPostoExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select POSTO_TRABALHO from POSTO_TRABALHO ' +
    ' WHERE idPOSTO_TRABALHO=', UniDBEditCurso, UniLabelCurso);

end;

procedure TFrmCadastroFuncionario.UniDBEditUnidadePenalExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select NOME_UP from UNIDADE_PENAL where ID_UP=',
    UniDBEditUnidadePenal, UniLabelUnidadePenal);

end;

procedure TFrmCadastroFuncionario.UniFormCreate(Sender: TObject);
begin
  inherited;
  // DBRadioGroupVISUALIZA_OUTRAS_UP.Visible := (VISUALIZA_OUTRAS_UP = 'S');

  { if not DirectoryExists(Dm.GLOBAL_PATCH_RELATORIO) then
    begin
    ShowMessage('Não existe a pasta: ' + Dm.GLOBAL_PATCH_RELATORIO);
    DirectoryListBox1.Directory := Dm.GLOBAL_PATCH_SISTEMA;
    DirectoryListBoxTeste.Directory := Dm.GLOBAL_PATCH_SISTEMA;
    end
    else
    begin
    DirectoryListBoxTeste.Directory := Dm.GLOBAL_PATCH_RELATORIO;
    DirectoryListBox1.Directory := Dm.GLOBAL_PATCH_RELATORIO;
    end; }

  { Verifica as permissões que o usuário possui para esta tela
    e habilita ou não os respectivos botões.
    Estas verificações devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
    Ex. ContemValor('I', Dm.PERMISSAO_CONFERE). }

  if not ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroFuncionario.ValidaPermissao(chConsulta, chEditar,
  chDeletar, chInserir, chrelatorio, chTodas: TUniCheckBox; sNomeCampo: string);
var
  permissao: string;
begin
  if chConsulta.Checked and chEditar.Checked and chDeletar.Checked and
    chInserir.Checked and chrelatorio.Checked then
    chTodas.Checked := True
  else if chTodas.Checked then
    chTodas.Checked := False;

  if chEditar.Checked or chDeletar.Checked or chInserir.Checked then
    chConsulta.Checked := True;

  permissao := '';

  if chConsulta.Checked then
    permissao := permissao + 'C';
  if chEditar.Checked then
    permissao := permissao + 'E';
  if chDeletar.Checked then
    permissao := permissao + 'D';
  if chInserir.Checked then
    permissao := permissao + 'I';
  if chrelatorio.Checked then
    permissao := permissao + 'R';

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
    DsCadastro.DataSet.FieldByName(sNomeCampo).AsString := permissao;

end;

procedure TFrmCadastroFuncionario.ValidaPermissaoOcorrencia(chConsulta,
  chEditar, chDeletar, chInserir, chrelatorio, chdespacho,
  chTodas: TUniCheckBox; sNomeCampo: string);
var
  permissao: string;
begin
  if chConsulta.Checked and chEditar.Checked and chDeletar.Checked and
    chInserir.Checked and chrelatorio.Checked and chdespacho.Checked then
    chTodas.Checked := True
  else if chTodas.Checked then
    chTodas.Checked := False;

  if chEditar.Checked or chDeletar.Checked or chInserir.Checked or chdespacho.Checked
  then
    // chConsulta.Checked := True;
    chConsultaOcorrencia.Checked := True;

  permissao := '';

  if chConsulta.Checked then
    permissao := permissao + 'C';
  if chEditar.Checked then
    permissao := permissao + 'E';
  if chDeletar.Checked then
    permissao := permissao + 'D';
  if chInserir.Checked then
    permissao := permissao + 'I';
  if chrelatorio.Checked then
    permissao := permissao + 'R';
  if chdespacho.Checked then
    permissao := permissao + 'P';

  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
    DsCadastro.DataSet.FieldByName(sNomeCampo).AsString := permissao;

end;

procedure TFrmCadastroFuncionario.ValidaPermissaoTodas(chConsulta, chEditar,
  chDeletar, chInserir, chrelatorio, chTodas: TUniCheckBox);
var
  permissao: string;
begin

  if chTodas.Checked then
  begin
    (chConsulta.Checked := True);
    (chEditar.Checked := True);
    (chDeletar.Checked := True);
    (chInserir.Checked := True);
    (chrelatorio.Checked := True);
  end
  else if chConsulta.Checked and chEditar.Checked and chDeletar.Checked and
    chInserir.Checked and chrelatorio.Checked then
  begin
    (chEditar.Checked := False);
    (chDeletar.Checked := False);
    (chInserir.Checked := False);
    (chrelatorio.Checked := False);
    (chConsulta.Checked := False);
  end;

end;

procedure TFrmCadastroFuncionario.ValidaPermissaoTodasOcorrencia(chConsulta,
  chEditar, chDeletar, chInserir, chrelatorio, chdespacho,
  chTodas: TUniCheckBox);
var
  permissao: string;
begin

  if chTodas.Checked then
  begin
    (chConsulta.Checked := True);
    (chEditar.Checked := True);
    (chDeletar.Checked := True);
    (chInserir.Checked := True);
    (chrelatorio.Checked := True);
    (chdespacho.Checked := True);
  end
  else if chConsulta.Checked and chEditar.Checked and chDeletar.Checked and
    chInserir.Checked and chrelatorio.Checked and chdespacho.Checked then
  begin
    (chEditar.Checked := False);
    (chDeletar.Checked := False);
    (chInserir.Checked := False);
    (chrelatorio.Checked := False);
    (chdespacho.Checked := False);
    (chConsulta.Checked := False);
  end;

end;

procedure TFrmCadastroFuncionario.CHConsultarConfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere,
    CHInserirConfere, chrelatorioconfere, CHTodasConfere, 'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.CHEditarConfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere,
    CHInserirConfere, chrelatorioconfere, CHTodasConfere, 'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.CHdeletarconfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere,
    CHInserirConfere, chrelatorioconfere, CHTodasConfere, 'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.CHInserirConfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere,
    CHInserirConfere, chrelatorioconfere, CHTodasConfere, 'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.CHTodasConfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(CHConsultarConfere, CHEditarConfere, CHdeletarconfere,
    CHInserirConfere, chrelatorioconfere, CHTodasConfere);
end;

procedure TFrmCadastroFuncionario.chConsultarVisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, chdeletarVisitante,
    chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');
end;

procedure TFrmCadastroFuncionario.chEditarVisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, chdeletarVisitante,
    chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');
end;

procedure TFrmCadastroFuncionario.chdeletarVisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, chdeletarVisitante,
    chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');
end;

procedure TFrmCadastroFuncionario.chInserirVisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, chdeletarVisitante,
    chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');
end;

procedure TFrmCadastroFuncionario.chTodasVisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarVisitante, chEditarVisitante,
    chdeletarVisitante, chInserirVisitante, chrelatoriovisitante,
    chTodasVisitante);
end;

procedure TFrmCadastroFuncionario.chtodastrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultartrabalho, cheditartrabalho, chdeletartrabalho,
    chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho);
end;

procedure TFrmCadastroFuncionario.chConsultartrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho,
    chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');
end;

procedure TFrmCadastroFuncionario.cheditartrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho,
    chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');
end;

procedure TFrmCadastroFuncionario.chdeletartrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho,
    chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');
end;

procedure TFrmCadastroFuncionario.chinserirtrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho,
    chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');
end;

procedure TFrmCadastroFuncionario.chconsultareducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao,
    chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');
end;

procedure TFrmCadastroFuncionario.cheditareducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao,
    chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');
end;

procedure TFrmCadastroFuncionario.chdeletareducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao,
    chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');
end;

procedure TFrmCadastroFuncionario.chinserireducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao,
    chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');
end;

procedure TFrmCadastroFuncionario.chtodaseducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultareducacao, cheditareducacao, chdeletareducacao,
    chinserireducacao, chrelatorioeducacao, chtodaseducacao);
end;

function ContemValor(sCompare, sString: ShortString): Boolean;
var
  P: Byte;
begin
  try
    Result := False;
    P := Pos(sCompare, sString);
    if P > 0 then
      Result := True;
  except
  end;
end;

procedure TFrmCadastroFuncionario.ValidaCampos;
var
  CONFERE, VISITANTE, TRABALHO, CADASTRO, EDUCACAO, PSICOSSOCIAL, JURIDICA,
    DISCIPLINA, INTELIGENCIA: string;
  ENFERMAGEM, FARMACIA, CLINICAMEDICA, PSICOLOGIA, PSIQUIATRIA, SAUDE,
    TERAPIAOCUPACIONAL, ODONTOLOGIA: string;
  PEDAGOGIA, SERVICOSOCIAL, ARMAS, Monitoramento, OCORRENCIA,
    CONSELHODISCIPLINAR, TRANSFERENCIAINTERNO: string;
  MUDANCACELA, SAIDAO, SAIDAO_CADASTRO, CIRCULACAOINTERNO,
    MOVIMENTOSEMIABERTO: string;
  FUNCIONARIO, FUNCAOFUNCIONARIO, UNIDADEPENAL, HORARIOFUNCIONARIO: string;
  PADRAOSISTEMA, EQUIPE, LOCALPOSTOTRABALHO, AGENTEPOREQUIPE,
    REGRAVISITACAO: string;
begin

  if DsCadastro.DataSet.State in dseditmodes then
  begin

    CONFERE := DsCadastro.DataSet.FieldByName('PERMISSAO_CONFERE').AsString;
    VISITANTE := DsCadastro.DataSet.FieldByName('PERMISSAO_VISITANTE').AsString;
    TRABALHO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_SETORTRABALHO').AsString;
    CADASTRO := DsCadastro.DataSet.FieldByName('PERMISSAO_CADASTRO').AsString;
    EDUCACAO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_SETOREDUCACAO').AsString;
    PSICOSSOCIAL := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_PSICOSSOCIAL').AsString;
    JURIDICA := DsCadastro.DataSet.FieldByName('PERMISSAO_JURIDICA').AsString;
    DISCIPLINA := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_DISCIPLINA').AsString;
    INTELIGENCIA := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_INTELIGENCIA').AsString;
    ENFERMAGEM := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_ENFERMAGEM').AsString;
    FARMACIA := DsCadastro.DataSet.FieldByName('PERMISSAO_FARMACIA').AsString;
    CLINICAMEDICA := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_CLINICAMEDICA').AsString;
    PSICOLOGIA := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_PSICOLOGIA').AsString;
    PSIQUIATRIA := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_PSIQUIATRIA').AsString;
    SAUDE := DsCadastro.DataSet.FieldByName('PERMISSAO_SAUDE').AsString;
    TERAPIAOCUPACIONAL := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_TERAPIAOCUPACIONAL').AsString;
    ODONTOLOGIA := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_ODONTOLOGIA').AsString;
    PEDAGOGIA := DsCadastro.DataSet.FieldByName('PERMISSAO_PEDAGOGIA').AsString;
    SERVICOSOCIAL := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_SERVICOSOCIAL').AsString;
    ARMAS := DsCadastro.DataSet.FieldByName('PERMISSAO_ARMAS').AsString;
    Monitoramento := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_MONITORAMENTO').AsString;
    OCORRENCIA := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_OCORRENCIA').AsString;
    CONSELHODISCIPLINAR := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_CONSELHODISCIPLINAR').AsString;
    TRANSFERENCIAINTERNO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_TRANSFERENCIAINTERNO').AsString;
    MUDANCACELA := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_MUDANCACELA').AsString;
    SAIDAO := DsCadastro.DataSet.FieldByName('PERMISSAO_SAIDAO').AsString;
    SAIDAO_CADASTRO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_SAIDAO_CADASTRO').AsString;
    CIRCULACAOINTERNO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_CIRCULACAOINTERNO').AsString;
    MOVIMENTOSEMIABERTO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_MOVIMENTOSEMIABERTO').AsString;
    FUNCIONARIO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_FUNCIONARIO').AsString;
    FUNCAOFUNCIONARIO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_FUNCAOFUNCIONARIO').AsString;
    UNIDADEPENAL := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_UNIDADEPENAL').AsString;
    HORARIOFUNCIONARIO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_HORARIOFUNCIONARIO').AsString;
    PADRAOSISTEMA := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_PADRAOSISTEMA').AsString;
    EQUIPE := DsCadastro.DataSet.FieldByName('PERMISSAO_EQUIPE').AsString;
    LOCALPOSTOTRABALHO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_LOCALPOSTOTRABALHO').AsString;
    AGENTEPOREQUIPE := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_AGENTEPOREQUIPE').AsString;
    REGRAVISITACAO := DsCadastro.DataSet.FieldByName
      ('PERMISSAO_REGRAVISITACAO').AsString;

    chconsultarcadastro.Checked := ContemValor('C', CADASTRO);
    cheditarcadastro.Checked := ContemValor('E', CADASTRO);
    chdeletarcadastro.Checked := ContemValor('D', CADASTRO);
    chinserircadastro.Checked := ContemValor('I', CADASTRO);
    chrelatoriocadastro.Checked := ContemValor('R', CADASTRO);
    chtodascadastro.Checked := ContemValor('CEDIR', CADASTRO);

    CHConsultarConfere.Checked := ContemValor('C', CONFERE);
    CHEditarConfere.Checked := ContemValor('E', CONFERE);
    CHdeletarconfere.Checked := ContemValor('D', CONFERE);
    CHInserirConfere.Checked := ContemValor('I', CONFERE);
    chrelatorioconfere.Checked := ContemValor('R', CONFERE);
    CHTodasConfere.Checked := ContemValor('CEDIR', CONFERE);

    chConsultarVisitante.Checked := ContemValor('C', VISITANTE);
    chEditarVisitante.Checked := ContemValor('E', VISITANTE);
    chdeletarVisitante.Checked := ContemValor('D', VISITANTE);
    chInserirVisitante.Checked := ContemValor('I', VISITANTE);
    chrelatoriovisitante.Checked := ContemValor('R', VISITANTE);
    chTodasVisitante.Checked := ContemValor('CEDIR', VISITANTE);

    chconsultarinteligencia.Checked := ContemValor('C', INTELIGENCIA);
    cheditarinteligencia.Checked := ContemValor('E', INTELIGENCIA);
    chdeletarinteligencia.Checked := ContemValor('D', INTELIGENCIA);
    chinseririnteligencia.Checked := ContemValor('I', INTELIGENCIA);
    chrelatoriointeligencia.Checked := ContemValor('R', INTELIGENCIA);
    chtodasinteligencia.Checked := ContemValor('CEDIR', INTELIGENCIA);

    chconsultararmas.Checked := ContemValor('C', ARMAS);
    cheditararmas.Checked := ContemValor('E', ARMAS);
    chdeletararmas.Checked := ContemValor('D', ARMAS);
    chinserirarmas.Checked := ContemValor('I', ARMAS);
    chrelatorioarmas.Checked := ContemValor('R', ARMAS);
    chtodasarmas.Checked := ContemValor('CEDIR', ARMAS);

    chConsultaOcorrencia.Checked := ContemValor('C', OCORRENCIA);
    chEditaOcorrencia.Checked := ContemValor('E', OCORRENCIA);
    chDeletaOcorrencia.Checked := ContemValor('D', OCORRENCIA);
    chInsereOcorrencia.Checked := ContemValor('I', OCORRENCIA);
    chRelatorioOcorrencia.Checked := ContemValor('R', OCORRENCIA);
    chDespachoOcorrencia.Checked := ContemValor('P', OCORRENCIA);
    chTodasOcorrencia.Checked := ContemValor('CEDIRP', OCORRENCIA);

    chconsultarmonitoramento.Checked := ContemValor('C', Monitoramento);
    cheditarmonitoramento.Checked := ContemValor('E', Monitoramento);
    chdeletarmonitoramento.Checked := ContemValor('D', Monitoramento);
    chinserirmonitoramento.Checked := ContemValor('I', Monitoramento);
    chrelatoriomonitoramento.Checked := ContemValor('R', Monitoramento);
    chtodasmonitoramento.Checked := ContemValor('CEDIR', Monitoramento);

    chConsultartrabalho.Checked := ContemValor('C', TRABALHO);
    cheditartrabalho.Checked := ContemValor('E', TRABALHO);
    chdeletartrabalho.Checked := ContemValor('D', TRABALHO);
    chinserirtrabalho.Checked := ContemValor('I', TRABALHO);
    chrelatoriotrabalho.Checked := ContemValor('R', TRABALHO);
    chtodastrabalho.Checked := ContemValor('CEDIR', TRABALHO);

    chconsultareducacao.Checked := ContemValor('C', EDUCACAO);
    cheditareducacao.Checked := ContemValor('E', EDUCACAO);
    chdeletareducacao.Checked := ContemValor('D', EDUCACAO);
    chinserireducacao.Checked := ContemValor('I', EDUCACAO);
    chrelatorioeducacao.Checked := ContemValor('R', EDUCACAO);
    chtodaseducacao.Checked := ContemValor('CEDIR', EDUCACAO);

    chconsultarpsicossocial.Checked := ContemValor('C', PSICOSSOCIAL);
    cheditarpsicossocial.Checked := ContemValor('E', PSICOSSOCIAL);
    chdeletarpsicossocial.Checked := ContemValor('D', PSICOSSOCIAL);
    chinserirpsicossocial.Checked := ContemValor('I', PSICOSSOCIAL);
    chrelatoriopsicossocial.Checked := ContemValor('R', PSICOSSOCIAL);
    chtodaspsicossocial.Checked := ContemValor('CEDIR', PSICOSSOCIAL);

    chconsultarenfermagem.Checked := ContemValor('C', ENFERMAGEM);
    cheditarenfermagem.Checked := ContemValor('E', ENFERMAGEM);
    chdeletarenfermagem.Checked := ContemValor('D', ENFERMAGEM);
    chinserirenfermagem.Checked := ContemValor('I', ENFERMAGEM);
    chrelatorioenfermagem.Checked := ContemValor('R', ENFERMAGEM);
    chtodasenfermagem.Checked := ContemValor('CEDIR', ENFERMAGEM);

    chconsultarfarmacia.Checked := ContemValor('C', FARMACIA);
    cheditarfarmacia.Checked := ContemValor('E', FARMACIA);
    chdeletarfarmacia.Checked := ContemValor('D', FARMACIA);
    chinserirfarmacia.Checked := ContemValor('I', FARMACIA);
    chrelatoriofaramcia.Checked := ContemValor('R', FARMACIA);
    chtodasfarmacia.Checked := ContemValor('CEDIR', FARMACIA);

    chconsultarpsiquiatria.Checked := ContemValor('C', PSIQUIATRIA);
    cheditarpsiquiatria.Checked := ContemValor('E', PSIQUIATRIA);
    chdeletarpsiquiatria.Checked := ContemValor('D', PSIQUIATRIA);
    chinserirpsiquiatria.Checked := ContemValor('I', PSIQUIATRIA);
    chrelatoriopsiquiatria.Checked := ContemValor('R', PSIQUIATRIA);
    chtodaspsiquiatria.Checked := ContemValor('CEDIR', PSIQUIATRIA);

    chconsultarservicosocial.Checked := ContemValor('C', SERVICOSOCIAL);
    cheditarservicosocial.Checked := ContemValor('E', SERVICOSOCIAL);
    chdeletarservicosocial.Checked := ContemValor('D', SERVICOSOCIAL);
    chinserirservicosocial.Checked := ContemValor('I', SERVICOSOCIAL);
    chrelatorioservicosocial.Checked := ContemValor('R', SERVICOSOCIAL);
    chtodasservicosocial.Checked := ContemValor('CEDIR', SERVICOSOCIAL);

    chconsultarterapiaocupacional.Checked :=
      ContemValor('C', TERAPIAOCUPACIONAL);
    cheditarterapiaocupacional.Checked := ContemValor('E', TERAPIAOCUPACIONAL);
    chdeletarterapiaocupacional.Checked := ContemValor('D', TERAPIAOCUPACIONAL);
    chinserirterapiaocupacional.Checked := ContemValor('I', TERAPIAOCUPACIONAL);
    chrelatorioterapiaocupacional.Checked :=
      ContemValor('R', TERAPIAOCUPACIONAL);
    chtodasterapiaocupacional.Checked :=
      ContemValor('CEDIR', TERAPIAOCUPACIONAL);

    chconsultarjuridica.Checked := ContemValor('C', JURIDICA);
    cheditarjuridica.Checked := ContemValor('E', JURIDICA);
    chdeletarjuridica.Checked := ContemValor('D', JURIDICA);
    chinserirjuridica.Checked := ContemValor('I', JURIDICA);
    chrelatoriojuridico.Checked := ContemValor('R', JURIDICA);
    chtodasjuridica.Checked := ContemValor('CEDIR', JURIDICA);

    chconsultardisciplina.Checked := ContemValor('C', DISCIPLINA);
    cheditardisciplina.Checked := ContemValor('E', DISCIPLINA);
    chdeletardisciplina.Checked := ContemValor('D', DISCIPLINA);
    chinserirdisciplina.Checked := ContemValor('I', DISCIPLINA);
    chrelatoriodisciplina.Checked := ContemValor('R', DISCIPLINA);
    chtodasdisciplina.Checked := ContemValor('CEDIR', DISCIPLINA);

    chconsultarclinicamedica.Checked := ContemValor('C', CLINICAMEDICA);
    cheditarclinicamedica.Checked := ContemValor('E', CLINICAMEDICA);
    chdeletarclinicamedica.Checked := ContemValor('D', CLINICAMEDICA);
    chinserirclinicamedica.Checked := ContemValor('I', CLINICAMEDICA);
    chrelatorioclinicamedica.Checked := ContemValor('R', CLINICAMEDICA);
    chtodasclinicamedica.Checked := ContemValor('CEDIR', CLINICAMEDICA);

    chconsultarodontologia.Checked := ContemValor('C', ODONTOLOGIA);
    cheditarodontologia.Checked := ContemValor('E', ODONTOLOGIA);
    chdeletarodontologia.Checked := ContemValor('D', ODONTOLOGIA);
    chinserirodontologia.Checked := ContemValor('I', ODONTOLOGIA);
    chrelatorioodontologia.Checked := ContemValor('R', ODONTOLOGIA);
    chtodasodontologia.Checked := ContemValor('CEDIR', ODONTOLOGIA);

    chconsultarpedagogia.Checked := ContemValor('C', PEDAGOGIA);
    cheditarpedagogia.Checked := ContemValor('E', PEDAGOGIA);
    chdeletarpedagogia.Checked := ContemValor('D', PEDAGOGIA);
    chinserirpedagogia.Checked := ContemValor('I', PEDAGOGIA);
    chrelatoriopedagogia.Checked := ContemValor('R', PEDAGOGIA);
    chtodaspedagogia.Checked := ContemValor('CEDIR', PEDAGOGIA);

    chconsultarpsicologia.Checked := ContemValor('C', PSICOLOGIA);
    cheditarpsicologia.Checked := ContemValor('E', PSICOLOGIA);
    chdeletarpsicologia.Checked := ContemValor('D', PSICOLOGIA);
    chinserirpsicologia.Checked := ContemValor('I', PSICOLOGIA);
    chrelatoriopsicologia.Checked := ContemValor('R', PSICOLOGIA);
    chtodaspsicologia.Checked := ContemValor('CEDIR', PSICOLOGIA);

    chconsultarsaude.Checked := ContemValor('C', SAUDE);
    cheditarsaude.Checked := ContemValor('E', SAUDE);
    chdeletarsaude.Checked := ContemValor('D', SAUDE);
    chinserirsaude.Checked := ContemValor('I', SAUDE);
    chrelatoriosaude.Checked := ContemValor('R', SAUDE);
    chtodassaude.Checked := ContemValor('CEDIR', SAUDE);

    chConsultarConsDisciplinar.Checked := ContemValor('C', CONSELHODISCIPLINAR);
    chEditarConsDisciplinar.Checked := ContemValor('E', CONSELHODISCIPLINAR);
    chDeletarConsDisciplinar.Checked := ContemValor('D', CONSELHODISCIPLINAR);
    chInserirConsDisciplinar.Checked := ContemValor('I', CONSELHODISCIPLINAR);
    chRelatorioConsDisciplinar.Checked := ContemValor('R', CONSELHODISCIPLINAR);
    chTodasConsDisciplinar.Checked := ContemValor('CEDIR', CONSELHODISCIPLINAR);

    chConsultarTransferenciaInterno.Checked :=
      ContemValor('C', TRANSFERENCIAINTERNO);
    chEditarTransferenciaInterno.Checked :=
      ContemValor('E', TRANSFERENCIAINTERNO);
    chDeletarTransferenciaInterno.Checked :=
      ContemValor('D', TRANSFERENCIAINTERNO);
    chInserirTransferenciaInterno.Checked :=
      ContemValor('I', TRANSFERENCIAINTERNO);
    chRelatorioTransferenciaInterno.Checked :=
      ContemValor('R', TRANSFERENCIAINTERNO);
    chTodasTransferenciaInterno.Checked :=
      ContemValor('CEDIR', TRANSFERENCIAINTERNO);

    ChConsultarMudancaCela.Checked := ContemValor('C', MUDANCACELA);
    ChEditarMudancaCela.Checked := ContemValor('E', MUDANCACELA);
    ChDeletarMudancaCela.Checked := ContemValor('D', MUDANCACELA);
    ChInserirMudancaCela.Checked := ContemValor('I', MUDANCACELA);
    ChRelatorioMudancaCela.Checked := ContemValor('R', MUDANCACELA);
    ChTodasMudancaCela.Checked := ContemValor('CEDIR', MUDANCACELA);

    ChConsultarSaidao.Checked := ContemValor('C', SAIDAO);
    ChEditarSaidao.Checked := ContemValor('E', SAIDAO);
    ChDeletarSaidao.Checked := ContemValor('D', SAIDAO);
    ChInserirSaidao.Checked := ContemValor('I', SAIDAO);
    ChRelatorioSaidao.Checked := ContemValor('R', SAIDAO);
    ChTodasSaidao.Checked := ContemValor('CEDIR', SAIDAO);

    ChConsultarSaidaoCadastro.Checked := ContemValor('C', SAIDAO_CADASTRO);
    ChEditarSaidaoCadastro.Checked := ContemValor('E', SAIDAO_CADASTRO);
    ChDeletarSaidaoCadastro.Checked := ContemValor('D', SAIDAO_CADASTRO);
    ChInserirSaidaoCadastro.Checked := ContemValor('I', SAIDAO_CADASTRO);
    chRelatorioSaidaoCadastro.Checked := ContemValor('R', SAIDAO_CADASTRO);
    ChTodasSaidaoCadastro.Checked := ContemValor('CEDIR', SAIDAO_CADASTRO);

    ChConsultarCirculacaoInterno.Checked := ContemValor('C', CIRCULACAOINTERNO);
    ChEditarCirculacaoInterno.Checked := ContemValor('E', CIRCULACAOINTERNO);
    ChDeletarCirculacaoInterno.Checked := ContemValor('D', CIRCULACAOINTERNO);
    ChInserirCirculacaoInterno.Checked := ContemValor('I', CIRCULACAOINTERNO);
    ChRelatorioCirculacaoInterno.Checked := ContemValor('R', CIRCULACAOINTERNO);
    ChTodasCirculacaoInterno.Checked := ContemValor('CEDIR', CIRCULACAOINTERNO);

    ChConsultarMovimentoSemiAberto.Checked :=
      ContemValor('C', MOVIMENTOSEMIABERTO);
    ChEditarMovimentoSemiAberto.Checked :=
      ContemValor('E', MOVIMENTOSEMIABERTO);
    ChDeletarMovimentoSemiAberto.Checked :=
      ContemValor('D', MOVIMENTOSEMIABERTO);
    ChInserirMovimentoSemiAberto.Checked :=
      ContemValor('I', MOVIMENTOSEMIABERTO);
    ChRelatorioMovimentoSemiAberto.Checked :=
      ContemValor('R', MOVIMENTOSEMIABERTO);
    ChTodasMovimentoSemiAberto.Checked :=
      ContemValor('CEDIR', MOVIMENTOSEMIABERTO);

    ChConsultarFuncionario.Checked := ContemValor('C', FUNCIONARIO);
    ChEditarFuncionario.Checked := ContemValor('E', FUNCIONARIO);
    ChDeletarFuncionario.Checked := ContemValor('D', FUNCIONARIO);
    ChInserirFuncionario.Checked := ContemValor('I', FUNCIONARIO);
    ChRelatorioFuncionario.Checked := ContemValor('R', FUNCIONARIO);
    ChTodasFuncionario.Checked := ContemValor('CEDIR', FUNCIONARIO);

    ChConsultarFuncaoFuncionario.Checked := ContemValor('C', FUNCAOFUNCIONARIO);
    ChEditarFuncaoFuncionario.Checked := ContemValor('E', FUNCAOFUNCIONARIO);
    ChDeletarFuncaoFuncionario.Checked := ContemValor('D', FUNCAOFUNCIONARIO);
    ChInserirFuncaoFuncionario.Checked := ContemValor('I', FUNCAOFUNCIONARIO);
    ChRelatorioFuncaoFuncionario.Checked := ContemValor('R', FUNCAOFUNCIONARIO);
    ChTodasFuncaoFuncionario.Checked := ContemValor('CEDIR', FUNCAOFUNCIONARIO);

    ChConsultarUnidadePenal.Checked := ContemValor('C', UNIDADEPENAL);
    ChEditarUnidadePenal.Checked := ContemValor('E', UNIDADEPENAL);
    ChDeletarUnidadePenal.Checked := ContemValor('D', UNIDADEPENAL);
    ChInserirUnidadePenal.Checked := ContemValor('I', UNIDADEPENAL);
    ChRelatorioUnidadePenal.Checked := ContemValor('R', UNIDADEPENAL);
    ChTodasUnidadePenal.Checked := ContemValor('CEDIR', UNIDADEPENAL);

    ChConsultarHorarioFuncionario.Checked :=
      ContemValor('C', HORARIOFUNCIONARIO);
    ChEditarHorarioFuncionario.Checked := ContemValor('E', HORARIOFUNCIONARIO);
    ChDeletarHorarioFuncionario.Checked := ContemValor('D', HORARIOFUNCIONARIO);
    ChInserirHorarioFuncionario.Checked := ContemValor('I', HORARIOFUNCIONARIO);
    ChRelatorioHorarioFuncionario.Checked :=
      ContemValor('R', HORARIOFUNCIONARIO);
    ChTodasHorarioFuncionario.Checked :=
      ContemValor('CEDIR', HORARIOFUNCIONARIO);

    ChConsultarPadraoSistema.Checked := ContemValor('C', PADRAOSISTEMA);
    ChEditarPadraoSistema.Checked := ContemValor('E', PADRAOSISTEMA);
    ChDeletarPadraoSistema.Checked := ContemValor('D', PADRAOSISTEMA);
    ChInserirPadraoSistema.Checked := ContemValor('I', PADRAOSISTEMA);
    ChRelatorioPadraoSistema.Checked := ContemValor('R', PADRAOSISTEMA);
    ChTodasPadraoSistema.Checked := ContemValor('CEDIR', PADRAOSISTEMA);

    ChConsultarEquipe.Checked := ContemValor('C', EQUIPE);
    ChEditarEquipe.Checked := ContemValor('E', EQUIPE);
    ChDeletarEquipe.Checked := ContemValor('D', EQUIPE);
    ChInserirEquipe.Checked := ContemValor('I', EQUIPE);
    ChRelatorioEquipe.Checked := ContemValor('R', EQUIPE);
    ChTodasEquipe.Checked := ContemValor('CEDIR', EQUIPE);

    ChConsultarPostoLocalTrabalho.Checked :=
      ContemValor('C', LOCALPOSTOTRABALHO);
    ChEditarPostoLocalTrabalho.Checked := ContemValor('E', LOCALPOSTOTRABALHO);
    ChDeletarPostoLocalTrabalho.Checked := ContemValor('D', LOCALPOSTOTRABALHO);
    ChInserirPostoLocalTrabalho.Checked := ContemValor('I', LOCALPOSTOTRABALHO);
    ChRelatorioPostoLocalTrabalho.Checked :=
      ContemValor('R', LOCALPOSTOTRABALHO);
    ChTodasPostoLocalTrabalho.Checked :=
      ContemValor('CEDIR', LOCALPOSTOTRABALHO);

    ChConsultarAgenteEquipe.Checked := ContemValor('C', AGENTEPOREQUIPE);
    ChEditarAgenteEquipe.Checked := ContemValor('E', AGENTEPOREQUIPE);
    ChDeletarAgenteEquipe.Checked := ContemValor('D', AGENTEPOREQUIPE);
    ChInserirAgenteEquipe.Checked := ContemValor('I', AGENTEPOREQUIPE);
    ChRelatorioAgenteEquipe.Checked := ContemValor('R', AGENTEPOREQUIPE);
    ChTodasAgenteEquipe.Checked := ContemValor('CEDIR', AGENTEPOREQUIPE);

    ChConsultarRegraVisitacao.Checked := ContemValor('C', REGRAVISITACAO);
    ChEditarRegraVisitacao.Checked := ContemValor('E', REGRAVISITACAO);
    ChDeletarRegraVisitacao.Checked := ContemValor('D', REGRAVISITACAO);
    ChInserirRegraVisitacao.Checked := ContemValor('I', REGRAVISITACAO);
    ChRelatorioRegraVisitacao.Checked := ContemValor('R', REGRAVISITACAO);
    ChTodasRegraVisitacao.Checked := ContemValor('CEDIR', REGRAVISITACAO);

  end;

  { Verifica as permissões que o usuário possui para esta tela
    e habilita ou não os respectivos botões.
    Estas verificações devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
    Ex. ContemValor('I', Dm.PERMISSAO_CONFERE). }

  if not ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_FUNCIONARIO) and
    ContemValor('E', Dm.PERMISSAO_FUNCIONARIO) and
    not ContemValor('D', Dm.PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroFuncionario.EditLocalizarChange(Sender: TObject);
begin
  inherited;
  SqlConsulta.sql.text := SqlSelectFuncionario.sql.text +
    ' where nome_funcionario like upper(' + qs(EditLocalizar.text + '%') +
    ') order by nome_funcionario ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmCadastroFuncionario.DBImageFOTOFUNCIONARIOClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  jpeg: TJpegImage;
begin
end;

procedure TFrmCadastroFuncionario.DBImagedIGITALClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  jpeg: TJpegImage;
begin
end;

procedure TFrmCadastroFuncionario.chconsultarcadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro,
    chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.cheditarcadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro,
    chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chdeletarcadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro,
    chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chinserircadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro,
    chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chtodascadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarcadastro, cheditarcadastro, chdeletarcadastro,
    chinserircadastro, chrelatoriocadastro, chtodascadastro);
end;

procedure TFrmCadastroFuncionario.chconsultarpsicossocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicossocial, cheditarpsicossocial,
    chdeletarpsicossocial, chinserirpsicossocial, chrelatoriopsicossocial,
    chtodaspsicossocial, 'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.cheditarpsicossocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicossocial, cheditarpsicossocial,
    chdeletarpsicossocial, chinserirpsicossocial, chrelatoriopsicossocial,
    chtodaspsicossocial, 'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.chdeletarpsicossocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicossocial, cheditarpsicossocial,
    chdeletarpsicossocial, chinserirpsicossocial, chrelatoriopsicossocial,
    chtodaspsicossocial, 'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.chinserirpsicossocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicossocial, cheditarpsicossocial,
    chdeletarpsicossocial, chinserirpsicossocial, chrelatoriopsicossocial,
    chtodaspsicossocial, 'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.chconsultarjuridicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarjuridica, cheditarjuridica, chdeletarjuridica,
    chinserirjuridica, chrelatoriojuridico, chtodasjuridica,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.cheditarjuridicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarjuridica, cheditarjuridica, chdeletarjuridica,
    chinserirjuridica, chrelatoriojuridico, chtodasjuridica,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.chdeletarjuridicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarjuridica, cheditarjuridica, chdeletarjuridica,
    chinserirjuridica, chrelatoriojuridico, chtodasjuridica,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.chinserirjuridicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarjuridica, cheditarjuridica, chdeletarjuridica,
    chinserirjuridica, chrelatoriojuridico, chtodasjuridica,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.chconsultardisciplinaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina,
    chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina,
    chtodasdisciplina, 'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.cheditardisciplinaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina,
    chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina,
    chtodasdisciplina, 'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.chdeletardisciplinaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina,
    chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina,
    chtodasdisciplina, 'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.chinserirdisciplinaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina,
    chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina,
    chtodasdisciplina, 'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.chtodaspsicossocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarpsicossocial, cheditarpsicossocial,
    chdeletarpsicossocial, chinserirpsicossocial, chrelatoriopsicossocial,
    chtodaspsicossocial);
end;

procedure TFrmCadastroFuncionario.chtodasjuridicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarjuridica, cheditarjuridica, chdeletarjuridica,
    chinserirjuridica, chrelatoriojuridico, chtodasjuridica);
end;

procedure TFrmCadastroFuncionario.chtodasdisciplinaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultardisciplina, cheditardisciplina,
    chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina,
    chtodasdisciplina);
end;

procedure TFrmCadastroFuncionario.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroFuncionario.DBComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroFuncionario.DBComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroFuncionario.DBComboBox5KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroFuncionario.chconsultarclinicamedicaClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica,
    chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica, 'PERMISSAO_CLINICAMEDICA');
end;

procedure TFrmCadastroFuncionario.cheditarclinicamedicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica,
    chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica, 'PERMISSAO_CLINICAMEDICA');
end;

procedure TFrmCadastroFuncionario.chdeletarclinicamedicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica,
    chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica, 'PERMISSAO_CLINICAMEDICA');
end;

procedure TFrmCadastroFuncionario.chinserirclinicamedicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica,
    chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica, 'PERMISSAO_CLINICAMEDICA');
end;

procedure TFrmCadastroFuncionario.chtodasclinicamedicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarclinicamedica, cheditarclinicamedica,
    chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica);
end;

procedure TFrmCadastroFuncionario.chconsultarenfermagemClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem,
    chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem,
    chtodasenfermagem, 'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.cheditarenfermagemClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem,
    chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem,
    chtodasenfermagem, 'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.chdeletarenfermagemClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem,
    chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem,
    chtodasenfermagem, 'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.chinserirenfermagemClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem,
    chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem,
    chtodasenfermagem, 'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.chtodasenfermagemClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarenfermagem, cheditarenfermagem,
    chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem,
    chtodasenfermagem);
end;

procedure TFrmCadastroFuncionario.chconsultarfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia,
    chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');
end;

procedure TFrmCadastroFuncionario.cheditarfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia,
    chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');
end;

procedure TFrmCadastroFuncionario.chdeletarfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia,
    chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');

end;

procedure TFrmCadastroFuncionario.chinserirfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia,
    chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');

end;

procedure TFrmCadastroFuncionario.chtodasfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia,
    chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia);
end;

procedure TFrmCadastroFuncionario.chconsultarpsiquiatriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria,
    chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria,
    chtodaspsiquiatria, 'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.cheditarpsiquiatriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria,
    chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria,
    chtodaspsiquiatria, 'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.chdeletarpsiquiatriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria,
    chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria,
    chtodaspsiquiatria, 'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.chinserirpsiquiatriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria,
    chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria,
    chtodaspsiquiatria, 'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.chtodaspsiquiatriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarpsiquiatria, cheditarpsiquiatria,
    chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria,
    chtodaspsiquiatria);
end;

procedure TFrmCadastroFuncionario.chconsultarservicosocialClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial,
    chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial, 'PERMISSAO_SERVICOSOCIAL');
end;

procedure TFrmCadastroFuncionario.cheditarservicosocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial,
    chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial, 'PERMISSAO_SERVICOSOCIAL');
end;

procedure TFrmCadastroFuncionario.chdeletarservicosocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial,
    chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial, 'PERMISSAO_SERVICOSOCIAL');
end;

procedure TFrmCadastroFuncionario.chinserirservicosocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial,
    chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial, 'PERMISSAO_SERVICOSOCIAL');
end;

procedure TFrmCadastroFuncionario.chtodasservicosocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarservicosocial, cheditarservicosocial,
    chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial);
end;

procedure TFrmCadastroFuncionario.chconsultarterapiaocupacionalClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional,
    chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional, chtodasterapiaocupacional,
    'PERMISSAO_TERAPIAOCUPACIONAL');
end;

procedure TFrmCadastroFuncionario.cheditarterapiaocupacionalClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional,
    chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional, chtodasterapiaocupacional,
    'PERMISSAO_TERAPIAOCUPACIONAL');
end;

procedure TFrmCadastroFuncionario.chdeletarterapiaocupacionalClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional,
    chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional, chtodasterapiaocupacional,
    'PERMISSAO_TERAPIAOCUPACIONAL');
end;

procedure TFrmCadastroFuncionario.chinserirterapiaocupacionalClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional,
    chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional, chtodasterapiaocupacional,
    'PERMISSAO_TERAPIAOCUPACIONAL');
end;

procedure TFrmCadastroFuncionario.chtodasterapiaocupacionalClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarterapiaocupacional,
    cheditarterapiaocupacional, chdeletarterapiaocupacional,
    chinserirterapiaocupacional, chrelatorioterapiaocupacional,
    chtodasterapiaocupacional);
end;

procedure TFrmCadastroFuncionario.chconsultarodontologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia,
    chdeletarodontologia, chinserirodontologia, chrelatorioodontologia,
    chtodasodontologia, 'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.cheditarodontologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia,
    chdeletarodontologia, chinserirodontologia, chrelatorioodontologia,
    chtodasodontologia, 'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.chdeletarodontologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia,
    chdeletarodontologia, chinserirodontologia, chrelatorioodontologia,
    chtodasodontologia, 'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.chinserirodontologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia,
    chdeletarodontologia, chinserirodontologia, chrelatorioodontologia,
    chtodasodontologia, 'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.chtodasodontologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarodontologia, cheditarodontologia,
    chdeletarodontologia, chinserirodontologia, chrelatorioodontologia,
    chtodasodontologia);
end;

procedure TFrmCadastroFuncionario.chconsultarpedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia,
    chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.cheditarpedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia,
    chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.chdeletarpedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia,
    chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.chinserirpedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia,
    chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.chtodaspedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarpedagogia, cheditarpedagogia,
    chdeletarpedagogia, chinserirpedagogia, chrelatoriopedagogia,
    chtodaspedagogia);
end;

procedure TFrmCadastroFuncionario.chconsultarpsicologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia,
    chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia,
    chtodaspsicologia, 'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.cheditarpsicologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia,
    chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia,
    chtodaspsicologia, 'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.chdeletarpsicologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia,
    chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia,
    chtodaspsicologia, 'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.chinserirpsicologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia,
    chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia,
    chtodaspsicologia, 'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.chtodaspsicologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarpsicologia, cheditarpsicologia,
    chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia,
    chtodaspsicologia);
end;

procedure TFrmCadastroFuncionario.chconsultarsaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude,
    chinserirsaude, chrelatoriosaude, chtodassaude, 'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.cheditarsaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude,
    chinserirsaude, chrelatoriosaude, chtodassaude, 'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.chdeletarsaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude,
    chinserirsaude, chrelatoriosaude, chtodassaude, 'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.chinserirsaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude,
    chinserirsaude, chrelatoriosaude, chtodassaude, 'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.chtodassaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarsaude, cheditarsaude, chdeletarsaude,
    chinserirsaude, chrelatoriosaude, chtodassaude);
end;

procedure TFrmCadastroFuncionario.chrelatoriocadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro,
    chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chrelatorioconfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere,
    CHInserirConfere, chrelatorioconfere, CHTodasConfere, 'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.chrelatoriovisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, chdeletarVisitante,
    chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');

end;

procedure TFrmCadastroFuncionario.chrelatoriotrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho,
    chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');

end;

procedure TFrmCadastroFuncionario.chrelatorioeducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao,
    chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');

end;

procedure TFrmCadastroFuncionario.chrelatoriopsicossocialClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicossocial, cheditarpsicossocial,
    chdeletarpsicossocial, chinserirpsicossocial, chrelatoriopsicossocial,
    chtodaspsicossocial, 'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.chrelatorioenfermagemClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem,
    chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem,
    chtodasenfermagem, 'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.chrelatoriofaramciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia,
    chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriopsiquiatriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria,
    chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria,
    chtodaspsiquiatria, 'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.chrelatorioservicosocialClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial,
    chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial, 'PERMISSAO_SERVICOSOCIAL');

end;

procedure TFrmCadastroFuncionario.chrelatorioterapiaocupacionalClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional,
    chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional, chtodasterapiaocupacional,
    'PERMISSAO_TERAPIAOCUPACIONAL');

end;

procedure TFrmCadastroFuncionario.chrelatoriojuridicoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarjuridica, cheditarjuridica, chdeletarjuridica,
    chinserirjuridica, chrelatoriojuridico, chtodasjuridica,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.chrelatoriodisciplinaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina,
    chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina,
    chtodasdisciplina, 'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.chrelatorioclinicamedicaClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica,
    chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica, 'PERMISSAO_CLINICAMEDICA');

end;

procedure TFrmCadastroFuncionario.chrelatorioodontologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia,
    chdeletarodontologia, chinserirodontologia, chrelatorioodontologia,
    chtodasodontologia, 'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriopedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia,
    chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriopsicologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia,
    chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia,
    chtodaspsicologia, 'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriosaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude,
    chinserirsaude, chrelatoriosaude, chtodassaude, 'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.chconsultarinteligenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia,
    chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia,
    chtodasinteligencia, 'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.cheditarinteligenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia,
    chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia,
    chtodasinteligencia, 'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.chdeletarinteligenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia,
    chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia,
    chtodasinteligencia, 'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.chinseririnteligenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia,
    chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia,
    chtodasinteligencia, 'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriointeligenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia,
    chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia,
    chtodasinteligencia, 'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.chtodasinteligenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarinteligencia, cheditarinteligencia,
    chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia,
    chtodasinteligencia);
end;

procedure TFrmCadastroFuncionario.SalvarClick(Sender: TObject);
begin
  DsCadastro.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString := 'S';
  DsCadastro.DataSet.FieldByName('SENHA').AsString :=
    Senha(DsCadastro.DataSet.FieldByName('SENHA').AsString);

  if DBRadioGroupVISUALIZA_OUTRAS_UP.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('VISUALIZA_OUTRAS_UP').AsString := 'N';

  if DBRadioGroupAutorizadoWeb.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('AUTORIZADO_WEB').AsString := 'N';

  if DBrgEntradaVisitante.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE')
      .AsString := 'N';

  // Eliminando todos os usuarios com essa variavel que deixou de ser usada, agora tem especifica
  // para cada item do menu configuracoes
  DsCadastro.DataSet.FieldByName('CONFIGURACOES').AsString := 'N';

  inherited;

end;

procedure TFrmCadastroFuncionario.EditarClick(Sender: TObject);
begin

  SqlCadastro.Sql.Text:= 'SELECT * FROM FUNCIONARIO WHERE ID_FUNCIONARIO = '+
  DsConsulta.DataSet.FieldByName('id_funcionario').Asstring;

  TabSheetPermissao.TabVisible :=  (dm.CONFIGURACAO = 'S');

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  inherited;

  PageControlFuncionario.ActivePageIndex := 0;
  PageControlpermissao.ActivePageIndex := 0;

  if DsCadastro.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString <> '' then
    DsCadastro.DataSet.FieldByName('SENHA').AsString :=
      Senha(DsCadastro.DataSet.FieldByName('SENHA').AsString);
  UniDBEditCursoExit(nil);
  UniDBEditNaturalidadeExit(nil);
  UniDBEditPostoExit(nil);
  UniDBEditUnidadePenalExit(nil);
  UniDBEditCidadeExit(nil);
  ValidaCampos;
end;

procedure TFrmCadastroFuncionario.chconsultararmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas,
    chinserirarmas, chrelatorioarmas, chtodasarmas, 'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.cheditararmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas,
    chinserirarmas, chrelatorioarmas, chtodasarmas, 'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.chdeletararmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas,
    chinserirarmas, chrelatorioarmas, chtodasarmas, 'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.chinserirarmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas,
    chinserirarmas, chrelatorioarmas, chtodasarmas, 'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.chrelatorioarmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas,
    chinserirarmas, chrelatorioarmas, chtodasarmas, 'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.chtodasarmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultararmas, cheditararmas, chdeletararmas,
    chinserirarmas, chrelatorioarmas, chtodasarmas);

end;

procedure TFrmCadastroFuncionario.chconsultarmonitoramentoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento,
    chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.cheditarmonitoramentoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento,
    chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.chdeletarmonitoramentoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento,
    chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.chinserirmonitoramentoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento,
    chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.chrelatoriomonitoramentoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento,
    chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.chtodasmonitoramentoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarmonitoramento, cheditarmonitoramento,
    chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento);
end;

procedure TFrmCadastroFuncionario.chConsultaOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chConsultaOcorrencia, chEditaOcorrencia,
    chDeletaOcorrencia, chInsereOcorrencia, chRelatorioOcorrencia,
    chDespachoOcorrencia, chTodasOcorrencia, 'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chEditaOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chConsultaOcorrencia, chEditaOcorrencia,
    chDeletaOcorrencia, chInsereOcorrencia, chRelatorioOcorrencia,
    chDespachoOcorrencia, chTodasOcorrencia, 'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chDeletaOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chConsultaOcorrencia, chEditaOcorrencia,
    chDeletaOcorrencia, chInsereOcorrencia, chRelatorioOcorrencia,
    chDespachoOcorrencia, chTodasOcorrencia, 'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chInsereOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chConsultaOcorrencia, chEditaOcorrencia,
    chDeletaOcorrencia, chInsereOcorrencia, chRelatorioOcorrencia,
    chDespachoOcorrencia, chTodasOcorrencia, 'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chRelatorioOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chConsultaOcorrencia, chEditaOcorrencia,
    chDeletaOcorrencia, chInsereOcorrencia, chRelatorioOcorrencia,
    chDespachoOcorrencia, chTodasOcorrencia, 'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chDespachoOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chConsultaOcorrencia, chEditaOcorrencia,
    chDeletaOcorrencia, chInsereOcorrencia, chRelatorioOcorrencia,
    chDespachoOcorrencia, chTodasOcorrencia, 'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chTodasOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodasOcorrencia(chConsultaOcorrencia, chEditaOcorrencia,
    chDeletaOcorrencia, chInsereOcorrencia, chRelatorioOcorrencia,
    chDespachoOcorrencia, chTodasOcorrencia);

end;

procedure TFrmCadastroFuncionario.chConsultarConsDisciplinarClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar,
    chDeletarConsDisciplinar, chInserirConsDisciplinar,
    chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chEditarConsDisciplinarClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar,
    chDeletarConsDisciplinar, chInserirConsDisciplinar,
    chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chDeletarConsDisciplinarClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar,
    chDeletarConsDisciplinar, chInserirConsDisciplinar,
    chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chInserirConsDisciplinarClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar,
    chDeletarConsDisciplinar, chInserirConsDisciplinar,
    chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chRelatorioConsDisciplinarClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar,
    chDeletarConsDisciplinar, chInserirConsDisciplinar,
    chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chTodasConsDisciplinarClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarConsDisciplinar, chEditarConsDisciplinar,
    chDeletarConsDisciplinar, chInserirConsDisciplinar,
    chRelatorioConsDisciplinar, chTodasConsDisciplinar);
end;

procedure TFrmCadastroFuncionario.chConsultarTransferenciaInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno,
    chDeletarTransferenciaInterno, chInserirTransferenciaInterno,
    chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chEditarTransferenciaInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno,
    chDeletarTransferenciaInterno, chInserirTransferenciaInterno,
    chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chDeletarTransferenciaInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno,
    chDeletarTransferenciaInterno, chInserirTransferenciaInterno,
    chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chInserirTransferenciaInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno,
    chDeletarTransferenciaInterno, chInserirTransferenciaInterno,
    chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chRelatorioTransferenciaInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno,
    chDeletarTransferenciaInterno, chInserirTransferenciaInterno,
    chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chTodasTransferenciaInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarTransferenciaInterno,
    chEditarTransferenciaInterno, chDeletarTransferenciaInterno,
    chInserirTransferenciaInterno, chRelatorioTransferenciaInterno,
    chTodasTransferenciaInterno);
end;

procedure TFrmCadastroFuncionario.ChConsultarMudancaCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela,
    ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela,
    ChTodasMudancaCela, 'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChEditarMudancaCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela,
    ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela,
    ChTodasMudancaCela, 'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChDeletarMudancaCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela,
    ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela,
    ChTodasMudancaCela, 'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChInserirMudancaCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela,
    ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela,
    ChTodasMudancaCela, 'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioMudancaCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela,
    ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela,
    ChTodasMudancaCela, 'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChTodasMudancaCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarMudancaCela, ChEditarMudancaCela,
    ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela,
    ChTodasMudancaCela);
end;

procedure TFrmCadastroFuncionario.ChConsultarSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao,
    ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao, 'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChEditarSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao,
    ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao, 'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao,
    ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao, 'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChInserirSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao,
    ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao, 'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao,
    ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao, 'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChTodasSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao,
    ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao);
end;

procedure TFrmCadastroFuncionario.ChConsultarCirculacaoInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno,
    ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno,
    ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChEditarCirculacaoInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno,
    ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno,
    ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChDeletarCirculacaoInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno,
    ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno,
    ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChInserirCirculacaoInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno,
    ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno,
    ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioCirculacaoInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno,
    ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno,
    ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChTodasCirculacaoInternoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno,
    ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno,
    ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno);
end;

procedure TFrmCadastroFuncionario.ChConsultarMovimentoSemiAbertoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto,
    ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto,
    ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChEditarMovimentoSemiAbertoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto,
    ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto,
    ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChDeletarMovimentoSemiAbertoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto,
    ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto,
    ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChInserirMovimentoSemiAbertoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto,
    ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto,
    ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioMovimentoSemiAbertoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto,
    ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto,
    ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChTodasMovimentoSemiAbertoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarMovimentoSemiAberto,
    ChEditarMovimentoSemiAberto, ChDeletarMovimentoSemiAberto,
    ChInserirMovimentoSemiAberto, ChRelatorioMovimentoSemiAberto,
    ChTodasMovimentoSemiAberto);
end;

procedure TFrmCadastroFuncionario.PageControlModeloCadastroChange
  (Sender: TObject);
begin
  inherited;
  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
  end;
end;

procedure TFrmCadastroFuncionario.ChConsultarFuncionarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncionario, ChEditarFuncionario,
    ChDeletarFuncionario, ChInserirFuncionario, ChRelatorioFuncionario,
    ChTodasFuncionario, 'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChEditarFuncionarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncionario, ChEditarFuncionario,
    ChDeletarFuncionario, ChInserirFuncionario, ChRelatorioFuncionario,
    ChTodasFuncionario, 'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChDeletarFuncionarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncionario, ChEditarFuncionario,
    ChDeletarFuncionario, ChInserirFuncionario, ChRelatorioFuncionario,
    ChTodasFuncionario, 'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChInserirFuncionarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncionario, ChEditarFuncionario,
    ChDeletarFuncionario, ChInserirFuncionario, ChRelatorioFuncionario,
    ChTodasFuncionario, 'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioFuncionarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncionario, ChEditarFuncionario,
    ChDeletarFuncionario, ChInserirFuncionario, ChRelatorioFuncionario,
    ChTodasFuncionario, 'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChTodasFuncionarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarFuncionario, ChEditarFuncionario,
    ChDeletarFuncionario, ChInserirFuncionario, ChRelatorioFuncionario,
    ChTodasFuncionario);
end;

procedure TFrmCadastroFuncionario.ChConsultarFuncaoFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoFuncionario, ChEditarFuncaoFuncionario,
    ChDeletarFuncaoFuncionario, ChInserirFuncaoFuncionario,
    ChRelatorioFuncaoFuncionario, ChTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChEditarFuncaoFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoFuncionario, ChEditarFuncaoFuncionario,
    ChDeletarFuncaoFuncionario, ChInserirFuncaoFuncionario,
    ChRelatorioFuncaoFuncionario, ChTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChDeletarFuncaoFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoFuncionario, ChEditarFuncaoFuncionario,
    ChDeletarFuncaoFuncionario, ChInserirFuncaoFuncionario,
    ChRelatorioFuncaoFuncionario, ChTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChInserirFuncaoFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoFuncionario, ChEditarFuncaoFuncionario,
    ChDeletarFuncaoFuncionario, ChInserirFuncaoFuncionario,
    ChRelatorioFuncaoFuncionario, ChTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioFuncaoFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoFuncionario, ChEditarFuncaoFuncionario,
    ChDeletarFuncaoFuncionario, ChInserirFuncaoFuncionario,
    ChRelatorioFuncaoFuncionario, ChTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChTodasFuncaoFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarFuncaoFuncionario, ChEditarFuncaoFuncionario,
    ChDeletarFuncaoFuncionario, ChInserirFuncaoFuncionario,
    ChRelatorioFuncaoFuncionario, ChTodasFuncaoFuncionario);
end;

procedure TFrmCadastroFuncionario.ChConsultarUnidadePenalClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarUnidadePenal, ChEditarUnidadePenal,
    ChDeletarUnidadePenal, ChInserirUnidadePenal, ChRelatorioUnidadePenal,
    ChTodasUnidadePenal, 'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChEditarUnidadePenalClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarUnidadePenal, ChEditarUnidadePenal,
    ChDeletarUnidadePenal, ChInserirUnidadePenal, ChRelatorioUnidadePenal,
    ChTodasUnidadePenal, 'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChDeletarUnidadePenalClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarUnidadePenal, ChEditarUnidadePenal,
    ChDeletarUnidadePenal, ChInserirUnidadePenal, ChRelatorioUnidadePenal,
    ChTodasUnidadePenal, 'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChInserirUnidadePenalClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarUnidadePenal, ChEditarUnidadePenal,
    ChDeletarUnidadePenal, ChInserirUnidadePenal, ChRelatorioUnidadePenal,
    ChTodasUnidadePenal, 'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChRelatorioUnidadePenalClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarUnidadePenal, ChEditarUnidadePenal,
    ChDeletarUnidadePenal, ChInserirUnidadePenal, ChRelatorioUnidadePenal,
    ChTodasUnidadePenal, 'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChTodasUnidadePenalClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarUnidadePenal, ChEditarUnidadePenal,
    ChDeletarUnidadePenal, ChInserirUnidadePenal, ChRelatorioUnidadePenal,
    ChTodasUnidadePenal);
end;

procedure TFrmCadastroFuncionario.ChConsultarHorarioFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarHorarioFuncionario, ChEditarHorarioFuncionario,
    ChDeletarHorarioFuncionario, ChInserirHorarioFuncionario,
    ChRelatorioHorarioFuncionario, ChTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChEditarHorarioFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarHorarioFuncionario, ChEditarHorarioFuncionario,
    ChDeletarHorarioFuncionario, ChInserirHorarioFuncionario,
    ChRelatorioHorarioFuncionario, ChTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChDeletarHorarioFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarHorarioFuncionario, ChEditarHorarioFuncionario,
    ChDeletarHorarioFuncionario, ChInserirHorarioFuncionario,
    ChRelatorioHorarioFuncionario, ChTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChInserirHorarioFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarHorarioFuncionario, ChEditarHorarioFuncionario,
    ChDeletarHorarioFuncionario, ChInserirHorarioFuncionario,
    ChRelatorioHorarioFuncionario, ChTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioHorarioFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarHorarioFuncionario, ChEditarHorarioFuncionario,
    ChDeletarHorarioFuncionario, ChInserirHorarioFuncionario,
    ChRelatorioHorarioFuncionario, ChTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChTodasHorarioFuncionarioClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarHorarioFuncionario,
    ChEditarHorarioFuncionario, ChDeletarHorarioFuncionario,
    ChInserirHorarioFuncionario, ChRelatorioHorarioFuncionario,
    ChTodasHorarioFuncionario);
end;

procedure TFrmCadastroFuncionario.ChConsultarPadraoSistemaClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPadraoSistema, ChEditarPadraoSistema,
    ChDeletarPadraoSistema, ChInserirPadraoSistema, ChRelatorioPadraoSistema,
    ChTodasPadraoSistema, 'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChEditarPadraoSistemaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPadraoSistema, ChEditarPadraoSistema,
    ChDeletarPadraoSistema, ChInserirPadraoSistema, ChRelatorioPadraoSistema,
    ChTodasPadraoSistema, 'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChDeletarPadraoSistemaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPadraoSistema, ChEditarPadraoSistema,
    ChDeletarPadraoSistema, ChInserirPadraoSistema, ChRelatorioPadraoSistema,
    ChTodasPadraoSistema, 'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChInserirPadraoSistemaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPadraoSistema, ChEditarPadraoSistema,
    ChDeletarPadraoSistema, ChInserirPadraoSistema, ChRelatorioPadraoSistema,
    ChTodasPadraoSistema, 'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioPadraoSistemaClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPadraoSistema, ChEditarPadraoSistema,
    ChDeletarPadraoSistema, ChInserirPadraoSistema, ChRelatorioPadraoSistema,
    ChTodasPadraoSistema, 'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChTodasPadraoSistemaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarPadraoSistema, ChEditarPadraoSistema,
    ChDeletarPadraoSistema, ChInserirPadraoSistema, ChRelatorioPadraoSistema,
    ChTodasPadraoSistema);
end;

procedure TFrmCadastroFuncionario.ChConsultarEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEquipe, ChEditarEquipe, ChDeletarEquipe,
    ChInserirEquipe, ChRelatorioEquipe, ChTodasEquipe, 'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChEditarEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEquipe, ChEditarEquipe, ChDeletarEquipe,
    ChInserirEquipe, ChRelatorioEquipe, ChTodasEquipe, 'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChDeletarEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEquipe, ChEditarEquipe, ChDeletarEquipe,
    ChInserirEquipe, ChRelatorioEquipe, ChTodasEquipe, 'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChInserirEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEquipe, ChEditarEquipe, ChDeletarEquipe,
    ChInserirEquipe, ChRelatorioEquipe, ChTodasEquipe, 'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChRelatorioEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEquipe, ChEditarEquipe, ChDeletarEquipe,
    ChInserirEquipe, ChRelatorioEquipe, ChTodasEquipe, 'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChTodasEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarEquipe, ChEditarEquipe, ChDeletarEquipe,
    ChInserirEquipe, ChRelatorioEquipe, ChTodasEquipe);
end;

procedure TFrmCadastroFuncionario.ChConsultarPostoLocalTrabalhoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPostoLocalTrabalho, ChEditarPostoLocalTrabalho,
    ChDeletarPostoLocalTrabalho, ChInserirPostoLocalTrabalho,
    ChRelatorioPostoLocalTrabalho, ChTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChEditarPostoLocalTrabalhoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPostoLocalTrabalho, ChEditarPostoLocalTrabalho,
    ChDeletarPostoLocalTrabalho, ChInserirPostoLocalTrabalho,
    ChRelatorioPostoLocalTrabalho, ChTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChDeletarPostoLocalTrabalhoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPostoLocalTrabalho, ChEditarPostoLocalTrabalho,
    ChDeletarPostoLocalTrabalho, ChInserirPostoLocalTrabalho,
    ChRelatorioPostoLocalTrabalho, ChTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChInserirPostoLocalTrabalhoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPostoLocalTrabalho, ChEditarPostoLocalTrabalho,
    ChDeletarPostoLocalTrabalho, ChInserirPostoLocalTrabalho,
    ChRelatorioPostoLocalTrabalho, ChTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioPostoLocalTrabalhoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPostoLocalTrabalho, ChEditarPostoLocalTrabalho,
    ChDeletarPostoLocalTrabalho, ChInserirPostoLocalTrabalho,
    ChRelatorioPostoLocalTrabalho, ChTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChTodasPostoLocalTrabalhoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarPostoLocalTrabalho,
    ChEditarPostoLocalTrabalho, ChDeletarPostoLocalTrabalho,
    ChInserirPostoLocalTrabalho, ChRelatorioPostoLocalTrabalho,
    ChTodasPostoLocalTrabalho);
end;

procedure TFrmCadastroFuncionario.ChConsultarAgenteEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgenteEquipe, ChEditarAgenteEquipe,
    ChDeletarAgenteEquipe, ChInserirAgenteEquipe, ChRelatorioAgenteEquipe,
    ChTodasAgenteEquipe, 'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChEditarAgenteEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgenteEquipe, ChEditarAgenteEquipe,
    ChDeletarAgenteEquipe, ChInserirAgenteEquipe, ChRelatorioAgenteEquipe,
    ChTodasAgenteEquipe, 'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChDeletarAgenteEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgenteEquipe, ChEditarAgenteEquipe,
    ChDeletarAgenteEquipe, ChInserirAgenteEquipe, ChRelatorioAgenteEquipe,
    ChTodasAgenteEquipe, 'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChInserirAgenteEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgenteEquipe, ChEditarAgenteEquipe,
    ChDeletarAgenteEquipe, ChInserirAgenteEquipe, ChRelatorioAgenteEquipe,
    ChTodasAgenteEquipe, 'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChRelatorioAgenteEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgenteEquipe, ChEditarAgenteEquipe,
    ChDeletarAgenteEquipe, ChInserirAgenteEquipe, ChRelatorioAgenteEquipe,
    ChTodasAgenteEquipe, 'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChTodasAgenteEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarAgenteEquipe, ChEditarAgenteEquipe,
    ChDeletarAgenteEquipe, ChInserirAgenteEquipe, ChRelatorioAgenteEquipe,
    ChTodasAgenteEquipe);
end;

procedure TFrmCadastroFuncionario.ChConsultarRegraVisitacaoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRegraVisitacao, ChEditarRegraVisitacao,
    ChDeletarRegraVisitacao, ChInserirRegraVisitacao, ChRelatorioRegraVisitacao,
    ChTodasRegraVisitacao, 'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChEditarRegraVisitacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRegraVisitacao, ChEditarRegraVisitacao,
    ChDeletarRegraVisitacao, ChInserirRegraVisitacao, ChRelatorioRegraVisitacao,
    ChTodasRegraVisitacao, 'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarRegraVisitacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRegraVisitacao, ChEditarRegraVisitacao,
    ChDeletarRegraVisitacao, ChInserirRegraVisitacao, ChRelatorioRegraVisitacao,
    ChTodasRegraVisitacao, 'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChInserirRegraVisitacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRegraVisitacao, ChEditarRegraVisitacao,
    ChDeletarRegraVisitacao, ChInserirRegraVisitacao, ChRelatorioRegraVisitacao,
    ChTodasRegraVisitacao, 'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioRegraVisitacaoClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRegraVisitacao, ChEditarRegraVisitacao,
    ChDeletarRegraVisitacao, ChInserirRegraVisitacao, ChRelatorioRegraVisitacao,
    ChTodasRegraVisitacao, 'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChTodasRegraVisitacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarRegraVisitacao, ChEditarRegraVisitacao,
    ChDeletarRegraVisitacao, ChInserirRegraVisitacao, ChRelatorioRegraVisitacao,
    ChTodasRegraVisitacao);
end;


// Permissão para cadastro da Portaria do Saidão - Andre Almeida

procedure TFrmCadastroFuncionario.ChConsultarSaidaoCadastroClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro,
    ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, chRelatorioSaidaoCadastro,
    ChTodasSaidaoCadastro, 'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.ChEditarSaidaoCadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro,
    ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, chRelatorioSaidaoCadastro,
    ChTodasSaidaoCadastro, 'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.ChInserirSaidaoCadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro,
    ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, chRelatorioSaidaoCadastro,
    ChTodasSaidaoCadastro, 'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.ChDeletarSaidaoCadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro,
    ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, chRelatorioSaidaoCadastro,
    ChTodasSaidaoCadastro, 'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chRelatorioSaidaoCadastroClick
  (Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro,
    ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, chRelatorioSaidaoCadastro,
    ChTodasSaidaoCadastro, 'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.ChTodasSaidaoCadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro,
    ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, chRelatorioSaidaoCadastro,
    ChTodasSaidaoCadastro);
end;

end.
