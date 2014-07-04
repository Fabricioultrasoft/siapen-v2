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
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons, uniURLFrame, uniEdit, uniTimer,
  uniMainMenu,
  uniImageList, Vcl.ImgList, Vcl.Menus, uniFileUpload, Vcl.Imaging.GIFImg;

type
  TMainForm = class(TUniForm)
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
    UniFileUploadImagem: TUniFileUpload;
    UniPanelTop: TUniPanel;
    UniImage1: TUniImage;
    UniImageList1: TUniImageList;
    UniImageLogoMarca: TUniImage;
    DocumentosDigitalizados1: TUniMenuItem;
    UniFileUploadPdf: TUniFileUpload;
    procedure UniBitBtnConfereClick(Sender: TObject);
    procedure UniBitBtn4Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniDBLookupComboBoxUPCloseUp(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure CadastrodeInternos2Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniFileUploadImagemCompleted(Sender: TObject;
      AStream: TFileStream);
    procedure rocarSenha1Click(Sender: TObject);
    procedure Informaes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ConselhoDi1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FaltaDisciplinar1Click(Sender: TObject);
    procedure Disciplina2Click(Sender: TObject);
    procedure PSICOSSOCIAL1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniBitBtn5Click(Sender: TObject);
    procedure DocumentosDigitalizados1Click(Sender: TObject);
  private
    FNomeImagemUpload: String;
    FNomeCampoUpload: String;
    FDsUploadImagem: TDataSource;
    FTempoParaFechar: integer;
    FJaAvisadoFechamento: Boolean;
    FUltimoAvisoFechamento: Boolean;
    { Private declarations }
  public
    property NomeImagemUpload: string read FNomeImagemUpload
      write FNomeImagemUpload;
    property NomeCampoUpload: String read FNomeCampoUpload
      write FNomeCampoUpload;
    property DsUploadImagem: TDataSource read FDsUploadImagem
      write FDsUploadImagem;
    procedure MostraGrafico;
    procedure MostraAgenda;
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
  Confere, ServerModule, Interno, EntradaVisitante, Lib, AlterarSenha,
  Sobre, Disciplina, ConselhoDisciplinar, Psicossocial, MenuRelatorios,
  CadastroFaltasDisciplinares, humanejs, ConsultaInterno,
  DocumentosDigitalizados;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniBitBtnConfereClick(Sender: TObject);
begin
  FrmConfere.ShowModal();
  // FrmEntradaVisitante.ShowModal();
end;

procedure TMainForm.UniDBLookupComboBoxUPCloseUp(Sender: TObject);
begin
  if not(dm.VISUALIZA_OUTRAS_UP = 'S') then
  begin
    UniDBLookupComboBoxUP.KeyValue := dm.GLOBAL_ID_UP;
    ShowMessage('Sem permissão para visualizar outro estabelecimento penal.');
    Exit;
  end;

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

procedure TMainForm.UniFileUploadImagemCompleted(Sender: TObject;
  AStream: TFileStream);
var
  sArquivo, sNomeJpeg: string;
begin

  if not DirectoryExists(UniServerModule.StartPath + 'FotosSistema\') then
    ForceDirectories(UniServerModule.StartPath + 'FotosSistema\');

  sArquivo := UniServerModule.StartPath + 'FotosSistema\' + FNomeImagemUpload +
    ExtractFileExt(AStream.FileName);

  CopyFile(PChar(AStream.FileName), PChar(sArquivo), False);

  if FDsUploadImagem.DataSet.State in [dsedit, dsinsert] then
  begin
    sNomeJpeg := JpgToBmp(AStream.FileName); // ConverterBmpParaJPeg();
    TBlobField(FDsUploadImagem.DataSet.FieldByName(FNomeCampoUpload))
      .LoadFromFile(sNomeJpeg);
  end;

  MainForm.FNomeImagemUpload := '';
  MainForm.FNomeCampoUpload := '';
  MainForm.FDsUploadImagem := Nil;

end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin

  FTempoParaFechar := 60;
  FJaAvisadoFechamento := False;
  FUltimoAvisoFechamento := False;

end;

procedure TMainForm.UniFormShow(Sender: TObject);
var
  i: integer;
begin

  UniPageControlPrincipal.ActivePageIndex := 0;

  // UniURLFrame1.URL := 'http://www.agepen.ms.gov.br/recursos/61814_animação.swf';
  // UniURLFrame1.Refresh;
  // UniURLFrame1.Repaint;
  // UniURLFrame1.Update;

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


  // for I := 0 to MainMenu1.Items.Count -1 do
  // begin
  // Mainmenu1.Merge(MainMenu1);
  // end;

end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
begin
  EditHora.Text := FormatDateTime('dd/mm/yyyy  -  hh:mm:ss', now);
  if FileExists('atualizar.txt') then
  begin
    if FTempoParaFechar <= 0 then
    begin
      MainForm.Close;
      UniMainModule.Terminate;
    end;

    if FTempoParaFechar > 10 then
    begin
      if not FJaAvisadoFechamento then
      begin
        FJaAvisadoFechamento := true;
        humane.clickToClose(true);
        humane.timeout(49000);
        humane.log
          ('<b><font Color=yellow>Atualização em Andamento!</font></b><br>O sistema fechará automáticamente em '
          + inttostr(FTempoParaFechar) +
          ' segundos! Acesse novamente em 01 minuto...');
        // ShowMessage
        // ('Atualização em andamento, o sistema fechará automáticamente em ' +
        // inttostr(FTempoParaFechar) +
        // ' segundos! Acesse novamente em 01 minuto...');
      end;
    end
    else
    begin
      if not FUltimoAvisoFechamento then
      begin
        FUltimoAvisoFechamento := true;
        humane.timeout(10000);
        humane.error
          ('<b><font Color=navy>Atualização em Andamento!</font></b><br>O sistema fechará automáticamente em '
          + inttostr(FTempoParaFechar) +
          ' segundos! Acesse novamente em 01 minuto...');
      end;
    end;

    FTempoParaFechar := FTempoParaFechar - 1;

  end;

end;

procedure TMainForm.UniBitBtn2Click(Sender: TObject);
begin
  FrmEntradaVisitante.ShowModal();
end;

procedure TMainForm.UniBitBtn4Click(Sender: TObject);
begin
  // FrmMenuRelatorio.ShowModal();
  FrmMenuRelatorios.ShowModal();
end;

procedure TMainForm.UniBitBtn5Click(Sender: TObject);
begin
  //
  FrmConsultaInterno.ShowModal();
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

    FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\relatorio_tela.fr3';

    if FileExists(UniServerModule.StartPath + 'SYSTEM\' +
      inttostr(dm.GLOBAL_ID_UP) + '\relatorio_tela.fr3') then
    begin
      FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\' +
        inttostr(dm.GLOBAL_ID_UP) + '\relatorio_tela.fr3';
    end;

    dm.frxReport1.ShowProgress := False;
    dm.frxReport1.StoreInDFM := False;
    dm.frxHTMLExport1.Navigator := False;
    dm.frxHTMLExport1.OverwritePrompt := False;
    dm.frxHTMLExport1.PicsInSameFolder := False;
    dm.frxHTMLExport1.ShowDialog := False;
    dm.frxHTMLExport1.ShowProgress := False;
    dm.frxHTMLExport1.OpenAfterExport := False;
    dm.frxHTMLExport1.Multipage := False;
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

procedure TMainForm.PSICOSSOCIAL1Click(Sender: TObject);
begin
  FrmPsicossocial.ShowModal();
end;

procedure TMainForm.rocarSenha1Click(Sender: TObject);
begin
  FrmAlterarSenha.ShowModal();
end;

procedure TMainForm.Sair1Click(Sender: TObject);
begin
  MainForm.Close;
  UniMainModule.Terminate;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
  FrmDisciplina.ShowModal();
end;

procedure TMainForm.BitBtn4Click(Sender: TObject);
begin
  FrmPsicossocial.ShowModal();
end;

procedure TMainForm.CadastrodeInternos2Click(Sender: TObject);
begin
  FrmInterno.ShowModal();
end;

procedure TMainForm.ConselhoDi1Click(Sender: TObject);
begin
  FrmConselhoDisciplinar.ShowModal;
end;

procedure TMainForm.Disciplina2Click(Sender: TObject);
begin
  //
  FrmDisciplina.ShowModal();
end;

procedure TMainForm.DocumentosDigitalizados1Click(Sender: TObject);
begin
FrmDocumentosDigitalizados.ShowModal();
end;

procedure TMainForm.FaltaDisciplinar1Click(Sender: TObject);
begin
  FrmCadastroFaltasDisciplinares.ShowModal();
end;

procedure TMainForm.Informaes1Click(Sender: TObject);
begin
  FrmSobre.ShowModal();
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

    FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\relatorio_tela2.fr3';

    if FileExists(UniServerModule.StartPath + 'SYSTEM\' +
      inttostr(dm.GLOBAL_ID_UP) + '\relatorio_tela2.fr3') then
    begin
      FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\' +
        inttostr(dm.GLOBAL_ID_UP) + '\relatorio_tela2.fr3';
    end;

    dm.frxReport1.ShowProgress := False;
    dm.frxReport1.StoreInDFM := False;
    dm.frxHTMLExport1.Navigator := False;
    dm.frxHTMLExport1.OverwritePrompt := False;
    dm.frxHTMLExport1.PicsInSameFolder := False;
    dm.frxHTMLExport1.ShowDialog := False;
    dm.frxHTMLExport1.ShowProgress := False;
    dm.frxHTMLExport1.OpenAfterExport := False;
    dm.frxHTMLExport1.Multipage := False;
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
