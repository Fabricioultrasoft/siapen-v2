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
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons, uniURLFrame, uniEdit, uniTimer, uniMainMenu,
  uniImageList, Vcl.ImgList, Vcl.Menus;

type
  TMainForm = class(TUniForm)
    UniImage1: TUniImage;
    UniPageControlPrincipal: TUniPageControl;
    UniTabSheetPrincipal: TUniTabSheet;
    UniTabSheetSetores: TUniTabSheet;
    UniBitBtnConfere: TUniBitBtn;
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
    BitBtn15: TUniBitBtn;
    BitBtn1: TUniBitBtn;
    BitBtn2: TUniBitBtn;
    BitBtn14: TUniBitBtn;
    BitBtn12: TUniBitBtn;
    BitBtn6: TUniBitBtn;
    BitBtn11: TUniBitBtn;
    BitBtn3: TUniBitBtn;
    BitBtn13: TUniBitBtn;
    BitBtn16: TUniBitBtn;
    BitBtn8: TUniBitBtn;
    BitBtn5: TUniBitBtn;
    BitBtn9: TUniBitBtn;
    BitBtn4: TUniBitBtn;
    BitBtn10: TUniBitBtn;
    UniURLFrameGrafico: TUniURLFrame;
    UniPanel1: TUniPanel;
    UniURLFrameAgenda: TUniURLFrame;
    EditHora: TUniEdit;
    UniTimer1: TUniTimer;
    ImageList1: TUniImageList;
    MainMenu1: TUniMainMenu;
    Cadastro1: TUniMenuItem;
    Pavilho1: TUniMenuItem;
    Galeria1: TUniMenuItem;
    Solario1: TUniMenuItem;
    Cela1: TUniMenuItem;
    N3: TUniMenuItem;
    CadastrodeInternos2: TUniMenuItem;
    CondiodoInterno1: TUniMenuItem;
    N2: TUniMenuItem;
    Advogado1: TUniMenuItem;
    Faco1: TUniMenuItem;
    cIDADE1: TUniMenuItem;
    Raa1: TUniMenuItem;
    Escolaridade1: TUniMenuItem;
    Nacionalidade1: TUniMenuItem;
    Procedncia1: TUniMenuItem;
    Destino1: TUniMenuItem;
    Fornecedor1: TUniMenuItem;
    N4: TUniMenuItem;
    Profisso1: TUniMenuItem;
    N14: TUniMenuItem;
    CTC1: TUniMenuItem;
    Movimentao1: TUniMenuItem;
    ransfernciadeInterno1: TUniMenuItem;
    N28: TUniMenuItem;
    RecebimentodeTransferncia1: TUniMenuItem;
    N26: TUniMenuItem;
    ransfernciadeInternoMovimentoInterno1: TUniMenuItem;
    N25: TUniMenuItem;
    CadastroPortaria1: TUniMenuItem;
    Saido1: TUniMenuItem;
    N30: TUniMenuItem;
    CirculaodeInterno1: TUniMenuItem;
    N35: TUniMenuItem;
    MovimentoSemiAberto1: TUniMenuItem;
    N37: TUniMenuItem;
    LocalizaoPorPronturio1: TUniMenuItem;
    Biometria1: TUniMenuItem;
    Biometria2: TUniMenuItem;
    Setores1: TUniMenuItem;
    disciplina1: TUniMenuItem;
    Disciplina2: TUniMenuItem;
    FaltaDisciplinar1: TUniMenuItem;
    SetordeEducao1: TUniMenuItem;
    Interno3: TUniMenuItem;
    SrieFaseAtual1: TUniMenuItem;
    Livro1: TUniMenuItem;
    Jurdica1: TUniMenuItem;
    Jurdico1: TUniMenuItem;
    N9: TUniMenuItem;
    Processos1: TUniMenuItem;
    Detrao1: TUniMenuItem;
    InterrupesdaPena1: TUniMenuItem;
    RemiesdePena1: TUniMenuItem;
    N22: TUniMenuItem;
    Artigo1: TUniMenuItem;
    N24: TUniMenuItem;
    VaradeExecuo1: TUniMenuItem;
    PSICOSSOCIAL1: TUniMenuItem;
    Reabilitao1: TUniMenuItem;
    Pedagogia: TUniMenuItem;
    ServicoSocial: TUniMenuItem;
    erapiaOcupacional: TUniMenuItem;
    Sade1: TUniMenuItem;
    clinicamedica: TUniMenuItem;
    Enfermagem: TUniMenuItem;
    farmacia: TUniMenuItem;
    Odontologia: TUniMenuItem;
    Psicologia: TUniMenuItem;
    Psiquiatria: TUniMenuItem;
    N6: TUniMenuItem;
    Remdio1: TUniMenuItem;
    Sade2: TUniMenuItem;
    SetorTrabalho1: TUniMenuItem;
    Interno2: TUniMenuItem;
    SetorTrabalho2: TUniMenuItem;
    FunoInterno1: TUniMenuItem;
    N7: TUniMenuItem;
    ClculodeTrabalho1: TUniMenuItem;
    RemioTrabalho1: TUniMenuItem;
    Planto1: TUniMenuItem;
    Roupas1: TUniMenuItem;
    Ocorrncias1: TUniMenuItem;
    ConselhoDi1: TUniMenuItem;
    mnuCorrespondencia: TUniMenuItem;
    Visitantes1: TUniMenuItem;
    EntradadeVisitantes1: TUniMenuItem;
    N8: TUniMenuItem;
    Consulta1: TUniMenuItem;
    GrauParentesco1: TUniMenuItem;
    Visitante1: TUniMenuItem;
    VisitantesTrfico1: TUniMenuItem;
    Relatrios1: TUniMenuItem;
    MenudeRelatrios1: TUniMenuItem;
    N16: TUniMenuItem;
    ConsultaInterno1: TUniMenuItem;
    Interno1: TUniMenuItem;
    Mdulos1: TUniMenuItem;
    Patrimnio1: TUniMenuItem;
    ipodePatrimnio1: TUniMenuItem;
    N13: TUniMenuItem;
    CadastrodePatrimonio1: TUniMenuItem;
    N15: TUniMenuItem;
    N19: TUniMenuItem;
    MduloGestodeArmas1: TUniMenuItem;
    N17: TUniMenuItem;
    ControledePortaria1: TUniMenuItem;
    N18: TUniMenuItem;
    Inteligncia1: TUniMenuItem;
    N21: TUniMenuItem;
    PlanilhaDinmica1: TUniMenuItem;
    N27: TUniMenuItem;
    SiapenMessenger1: TUniMenuItem;
    N32: TUniMenuItem;
    DepartamentoPEssoal1: TUniMenuItem;
    Funcionario: TUniMenuItem;
    BancodeHoras1: TUniMenuItem;
    N34: TUniMenuItem;
    MduloGestodePessoas1: TUniMenuItem;
    N36: TUniMenuItem;
    MonitoramentoEletrnico1: TUniMenuItem;
    N38: TUniMenuItem;
    WebBrowser1: TUniMenuItem;
    Configurao1: TUniMenuItem;
    Funcionrio2: TUniMenuItem;
    FunoFuncionrio1: TUniMenuItem;
    UnidadePenal2: TUniMenuItem;
    HorarioFuncionrio1: TUniMenuItem;
    N1: TUniMenuItem;
    PadroSist1: TUniMenuItem;
    N10: TUniMenuItem;
    Equipe1: TUniMenuItem;
    PostoLocaldeTrabalho1: TUniMenuItem;
    AgenteporEquipe1: TUniMenuItem;
    N31: TUniMenuItem;
    RegraparaVisitano1: TUniMenuItem;
    Manuteno1: TUniMenuItem;
    rocarSenha1: TUniMenuItem;
    N12: TUniMenuItem;
    MensagemdoBancodeDados1: TUniMenuItem;
    WebCam1: TUniMenuItem;
    N20: TUniMenuItem;
    Copiarumarquivo1: TUniMenuItem;
    N23: TUniMenuItem;
    ConsultaPROCED1: TUniMenuItem;
    Agendamento1: TUniMenuItem;
    ipodeContatos1: TUniMenuItem;
    Assunto1: TUniMenuItem;
    Situao1: TUniMenuItem;
    N5: TUniMenuItem;
    AgendadeAtendimento1: TUniMenuItem;
    Sobre1: TUniMenuItem;
    Informaes1: TUniMenuItem;
    N11: TUniMenuItem;
    MudaSkin1: TUniMenuItem;
    N29: TUniMenuItem;
    Manual1: TUniMenuItem;
    AtribuicaoSetores1: TUniMenuItem;
    Sair1: TUniMenuItem;
    procedure UniBitBtnConfereClick(Sender: TObject);
    procedure UniBitBtn4Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniDBLookupComboBoxUPCloseUp(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure CadastrodeInternos2Click(Sender: TObject);
  private
    procedure MostraGrafico;
    procedure MostraAgenda;
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
  MenuRelatorio, ServerModule, Interno;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniBitBtnConfereClick(Sender: TObject);
begin
  FrmConfere.ShowModal();
end;

procedure TMainForm.UniDBLookupComboBoxUPCloseUp(Sender: TObject);
begin
  {
    if not(dm.VISUALIZA_OUTRAS_UP = 'S') then
    begin
    UniDBLookupComboBoxUP.KeyValue := dm.GLOBAL_ID_UP;
    ShowMessage('Sem permissão para visualizar outro estabelecimento penal.');
    Exit;
    end;
  }
  with DsUP.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    dm.UP_Logado := DsUP.DataSet.FieldByName('SIGLA').Asstring;
    dm.GLOBAL_NOME_UP := DsUP.DataSet.FieldByName('NOME_UP').Asstring;

    dm.GLOBAL_ID_UP := FieldByName('ID_UP').AsInteger;

    MostraGrafico;
    MostraAgenda;

    dm.SqlPadrao.ParamByName('ID_UP').AsInteger := dm.GLOBAL_ID_UP;
    dm.DsPadrao.DataSet.Close;
    dm.DsPadrao.DataSet.Open;

    dm.GLOBAL_NIVEL_1 := 'Pavilhão';
    dm.GLOBAL_NIVEL_2 := 'Galeria';
    dm.GLOBAL_NIVEL_3 := 'Solario';
    dm.GLOBAL_NIVEL_4 := 'Cela';

    if not dm.DsPadrao.DataSet.IsEmpty then
    begin
      dm.GLOBAL_PADRAO_SISTEMA := dm.DsPadrao.DataSet.FieldByName
        ('SISTEMA').Asstring;
      dm.GLOBAL_NIVEL_1 := dm.DsPadrao.DataSet.FieldByName
        ('NOME_PAVILHAO').Asstring;
      dm.GLOBAL_NIVEL_2 := dm.DsPadrao.DataSet.FieldByName
        ('NOME_GALERIA').Asstring;
      dm.GLOBAL_NIVEL_3 := dm.DsPadrao.DataSet.FieldByName
        ('NOME_SOLARIO').Asstring;
      dm.GLOBAL_NIVEL_4 := dm.DsPadrao.DataSet.FieldByName('NOME_CELA')
        .Asstring;
      dm.GLOBAL_RGI := dm.DsPadrao.DataSet.FieldByName
        ('RGI_AUTOMATICO').Asstring;
    end;

  end;

end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  if FileExists(UniServerModule.StartPath + 'logo\logo_panel1.jpg') then
    UniImage1.Picture.LoadFromFile(UniServerModule.StartPath +
      'logo\logo_panel1.jpg');

  if FileExists(UniServerModule.StartPath + 'logo\logo_fundo.jpg') then
    UniImage2.Picture.LoadFromFile(UniServerModule.StartPath +
      'logo\logo_fundo.jpg');

  SqlUP.SQL.Text :=
    'select id_up,nome_up, sigla from unidade_penal order by nome_up';

  DsUP.DataSet.Close;
  DsUP.DataSet.Open;

  UniDBLookupComboBoxUP.KeyValue := dm.GLOBAL_ID_UP;

  MostraAgenda;
  MostraGrafico;

end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
begin
  EditHora.Text := FormatDateTime('dd/mm/yyyy  -  hh:mm:ss', now);
end;

procedure TMainForm.UniBitBtn4Click(Sender: TObject);
begin
  FrmMenuRelatorio.ShowModal();
end;

procedure TMainForm.MostraGrafico();
var
  nome_agora, FArquivo, FCaminhoFR3, sFiltro: string;
begin
  // UniURLFrameDashBoard.Visible := false;
  try

    nome_agora := FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', now) +
      'relatorio_tela.html';

    FArquivo := UniServerModule.LocalCachePath + nome_agora;

    FCaminhoFR3 := UniServerModule.StartPath +
      'relatorios\SYSTEM\relatorio_tela.fr3';

    dm.frxReport1.ShowProgress := false;
    dm.frxReport1.StoreInDFM := false;
    dm.frxHTMLExport1.Navigator := false;
    dm.frxHTMLExport1.OverwritePrompt := false;
    dm.frxHTMLExport1.PicsInSameFolder := false;
    dm.frxHTMLExport1.ShowDialog := false;
    dm.frxHTMLExport1.ShowProgress := false;
    dm.frxHTMLExport1.OpenAfterExport := false;
    dm.frxHTMLExport1.Multipage := false;
    dm.frxHTMLExport1.Server := true;
    dm.frxHTMLExport1.FileName := FArquivo;
    if FileExists(FCaminhoFR3) then
    begin
      dm.frxReport1.LoadFromFile(FCaminhoFR3);

      dm.frxReport1.Variables.DeleteVariable('ID_UP');
      dm.frxReport1.Variables.AddVariable('SIAP', 'ID_UP', dm.GLOBAL_ID_UP);

      dm.frxReport1.PrepareReport();

      dm.frxReport1.Export(dm.frxHTMLExport1);

      UniURLFrameGrafico.URL := UniServerModule.LocalCacheURL + nome_agora;

      UniURLFrameGrafico.Refresh;
      UniURLFrameGrafico.Repaint;
      UniURLFrameGrafico.Update;
    end
    else
    begin
      ShowMessage('Não existe o arquivo:' + FCaminhoFR3);
    end;
  except
    on e: exception do
    begin
      ShowMessage(FCaminhoFR3);
      ShowMessage('Erro: ' + e.Message);
    end;
  end;

  UniURLFrameGrafico.Visible := true;

end;

procedure TMainForm.CadastrodeInternos2Click(Sender: TObject);
begin
  FrmInterno.ShowModal();
end;

procedure TMainForm.MostraAgenda();
var
  nome_agora, FArquivo, FCaminhoFR3, sFiltro: string;
begin
  // UniURLFrameDashBoard.Visible := false;
  try

    nome_agora := FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', now) +
      'relatorio_tela2.html';

    FArquivo := UniServerModule.LocalCachePath + nome_agora;

    FCaminhoFR3 := UniServerModule.StartPath +
      'relatorios\SYSTEM\relatorio_tela2.fr3';

    dm.frxReport1.ShowProgress := false;
    dm.frxReport1.StoreInDFM := false;
    dm.frxHTMLExport1.Navigator := false;
    dm.frxHTMLExport1.OverwritePrompt := false;
    dm.frxHTMLExport1.PicsInSameFolder := false;
    dm.frxHTMLExport1.ShowDialog := false;
    dm.frxHTMLExport1.ShowProgress := false;
    dm.frxHTMLExport1.OpenAfterExport := false;
    dm.frxHTMLExport1.Multipage := false;
    dm.frxHTMLExport1.Server := true;
    dm.frxHTMLExport1.FileName := FArquivo;
    if FileExists(FCaminhoFR3) then
    begin
      dm.frxReport1.LoadFromFile(FCaminhoFR3);

      dm.frxReport1.Variables.DeleteVariable('ID_UP');
      dm.frxReport1.Variables.AddVariable('SIAP', 'ID_UP', dm.GLOBAL_ID_UP);

      dm.frxReport1.PrepareReport();

      dm.frxReport1.Export(dm.frxHTMLExport1);

      UniURLFrameAgenda.URL := UniServerModule.LocalCacheURL + nome_agora;

      UniURLFrameAgenda.Refresh;
      UniURLFrameAgenda.Repaint;
      UniURLFrameAgenda.Update;
    end
    else
    begin
      ShowMessage('Não existe o arquivo:' + FCaminhoFR3);
    end;
  except
    on e: exception do
    begin
      ShowMessage(FCaminhoFR3);
      ShowMessage('Erro: ' + e.Message);
    end;
  end;

  UniURLFrameAgenda.Visible := true;

end;

initialization

RegisterAppFormClass(TMainForm);

end.
