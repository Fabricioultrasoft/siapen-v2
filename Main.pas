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
  uniImageList, Vcl.ImgList, Vcl.Menus, uniFileUpload, Vcl.Imaging.GIFImg,
  uniStatusBar,
  // 13/07/2014
  DateUtils, uniLabel;

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
    UniTimer2: TUniTimer;
    UniStatusBar1: TUniStatusBar;
    TimerShowAcao: TUniTimer;
    ExploredoServidor1: TUniMenuItem;
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
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniBitBtn6Click(Sender: TObject);
    procedure UniImage2Click(Sender: TObject);
    procedure UniTimer2Timer(Sender: TObject);
    procedure TimerShowAcaoTimer(Sender: TObject);
    procedure Funcionrio2Click(Sender: TObject);
    procedure ExploredoServidor1Click(Sender: TObject);
  private
    sArquivo, sNomeJpeg: string;
    FNomeImagemUpload: String;
    FNomeCampoUpload: String;
    FDsUploadImagem: TDataSource;
    FTempoParaFechar: integer;
    FJaAvisadoFechamento: Boolean;
    FUltimoAvisoFechamento: Boolean;
    FAvisoSessao: Boolean;
    procedure FecharSistema;
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
  DocumentosDigitalizados, CentralDocumentosDigitalizados, HistoricoInterno,
  Aguarde, CadastroFuncionario, FileExplorer_Frame, Explore;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniBitBtnConfereClick(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmConfere.ShowModal();
    end);
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

procedure TMainForm.UniImage2Click(Sender: TObject);
begin
  MostraGrafico;
end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
var
  sTempo, sTempo2: String;
  dHoraIni, dHoraAtual, dHoraFim: TDateTime;
  Hora, Minuto, Segundo: integer;
  Hora2, Minuto2, Segundo2: integer;
begin
  dHoraIni := dm.DATA_HORA_ENTRADA;
  dHoraFim := dm.DATA_HORA_ENCERRAR;
  dHoraAtual := Now;

  if dm.DATA_HORA_ENCERRAR < IncMinute(Now) then
  begin
    if not FAvisoSessao then
    begin
      humane.info
        ('<b><font Color=yellow>Sessão encerrou, Faça novo login!</font></b><br>Salve seu trabalho,'
        + ' o sistema fechará automáticamente em 60 segundos! Faça o login em seguida...');
      FAvisoSessao := true;
    end;
  end;

  if dm.DATA_HORA_ENCERRAR < Now then
  begin
    UniTimer1.enabled := False;
    FecharSistema;
    Exit;
  end;

  Hora := HoursBetween(dHoraAtual, dHoraIni);
  Minuto := MinutesBetween(dHoraAtual, dHoraIni) - (60 * Hora);
  Segundo := SecondsBetween(dHoraAtual, dHoraIni) - (60 * Minuto);
  sTempo := IntToStr(Segundo) + 's';
  if (Minuto) > 0 then
    sTempo := IntToStr(Minuto) + 'm ' + IntToStr(Segundo) + 's';
  if (Hora) > 0 then
    sTempo := IntToStr(Hora) + 'h ' + IntToStr(Minuto) + 'm ' +
      IntToStr(Segundo) + 's';

  Hora2 := HoursBetween(dHoraFim, dHoraAtual);
  Minuto2 := MinutesBetween(dHoraFim, dHoraAtual) - (60 * Hora2);
  Segundo2 := SecondsBetween(dHoraFim, dHoraAtual) - (60 * Minuto2) -
    (60 * 60 * Hora2);
  sTempo2 := IntToStr(Segundo2) + 's';
  if (Minuto2) > 0 then
    sTempo2 := IntToStr(Minuto2) + 'm ' + IntToStr(Segundo2) + 's';
  if (Hora2) > 0 then
    sTempo2 := IntToStr(Hora2) + 'h ' + IntToStr(Minuto2) + 'm ' +
      IntToStr(Segundo2) + 's';

  UniStatusBar1.Panels.Items[1].Text := dm.GLOBAL_NOME_FUNCIONARIO_LOGADO;
  UniStatusBar1.Panels.Items[3].Text := sTempo;
  UniStatusBar1.Panels.Items[5].Text := sTempo2;
  // Application.
  // UniStatusBar1.Panels.Items[6].Text :=  ;

  EditHora.Text := FormatDateTime('dd/mm/yyyy  -  hh:mm:ss', Now);
  if FileExists('atualizar.txt') then
  begin
    if FTempoParaFechar <= 0 then
    begin

    end;

    if FTempoParaFechar > 10 then
    begin
      if not FJaAvisadoFechamento then
      begin
        FJaAvisadoFechamento := true;
        humane.clickToClose(true);
        humane.timeout(49000);
        humane.log
          ('<b><font Color=yellow>Atualização em Andamento!</font></b><br>Salve seu trabalho, o sistema fechará automáticamente em '
          + IntToStr(FTempoParaFechar) +
          ' segundos! Acesse novamente em 01 minuto...');
      end;
    end
    else
    begin
      if not FUltimoAvisoFechamento then
      begin
        FUltimoAvisoFechamento := true;
        humane.timeout(10000);
        humane.error
          ('<b><font Color=navy>Atualização em Andamento!</font></b><br>Salve seu trabalho, o sistema fechará automáticamente em '
          + IntToStr(FTempoParaFechar) +
          ' segundos! Acesse novamente em 01 minuto...');
      end;
    end;

    FTempoParaFechar := FTempoParaFechar - 1;

  end;

end;

procedure TMainForm.UniTimer2Timer(Sender: TObject);
begin
  //
  UniTimer2.enabled := False;
  MostraGrafico;
  MostraAgenda;

end;

procedure TMainForm.UniBitBtn2Click(Sender: TObject);
begin
  FrmEntradaVisitante.ShowModal();
end;

procedure TMainForm.UniBitBtn3Click(Sender: TObject);
begin
  //
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmDocumentosDigitalizados.ShowModal();
    end);
  // FrmCentralDocumentosDigitalizados.ShowModal();

end;

procedure TMainForm.UniBitBtn4Click(Sender: TObject);
begin
  // FrmMenuRelatorio.ShowModal();
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmMenuRelatorios.ShowModal();
    end);
end;

procedure TMainForm.UniBitBtn5Click(Sender: TObject);
begin
  //
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmConsultaInterno.ShowModal();
    end);
end;

procedure TMainForm.UniBitBtn6Click(Sender: TObject);
begin
  if dm.PERMISSAO_DISCIPLINA = '' then
  begin

    ShowMessage('Não Há Permissão Para Acesso Históricos');

    Exit;
  end;

  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmHistoricoInterno.ShowModal;
    end);

end;

procedure TMainForm.MostraGrafico();
var
  nome_agora, FArquivo, FCaminhoFR3, sFiltro: string;
begin
  // UniURLFrameDashBoard.Visible := false;
  try
    try

      nome_agora := FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', Now) +
        'relatorio_tela.html';

      FArquivo := UniServerModule.LocalCachePath + nome_agora;

      FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\relatorio_tela.fr3';

      if FileExists(UniServerModule.StartPath + 'SYSTEM\' +
        IntToStr(dm.GLOBAL_ID_UP) + '\relatorio_tela.fr3') then
      begin
        FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\' +
          IntToStr(dm.GLOBAL_ID_UP) + '\relatorio_tela.fr3';
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
  except
  end;

end;

procedure TMainForm.PSICOSSOCIAL1Click(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmPsicossocial.ShowModal();
    end);
end;

procedure TMainForm.rocarSenha1Click(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmAlterarSenha.ShowModal();
    end);
end;

procedure TMainForm.Sair1Click(Sender: TObject);
begin

  MessageDlg('Sair do sistema?', mtWarning, mbYesNo,
    procedure(Result: integer)
    begin
      if Result = mrYes then
      begin
        try
          FecharSistema;

        except
        end;
      end;

    end);

end;

procedure TMainForm.TimerShowAcaoTimer(Sender: TObject);
var
  sMensagemInteligencia: string;
begin
  TimerShowAcao.enabled := False;

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
    dm.GLOBAL_NIVEL_4 := dm.DsPadrao.DataSet.FieldByName('NOME_CELA').Asstring;
    dm.GLOBAL_RGI := dm.DsPadrao.DataSet.FieldByName('RGI_AUTOMATICO').Asstring;
  end;

  Pavilho1.Caption := dm.GLOBAL_NIVEL_1;
  Galeria1.Caption := dm.GLOBAL_NIVEL_2;
  Solario1.Caption := dm.GLOBAL_NIVEL_3;
  Cela1.Caption := dm.GLOBAL_NIVEL_4;

  // Verificando as permissões e liberando ou não os itens no menu.
  // ************ CADASTRO ****************//
  if (dm.PERMISSAO_CONFERE = '') or (dm.PERMISSAO_CONFERE = 'R') then
  begin
    UniBitBtnConfere.enabled := False;
  end;

  if (dm.PERMISSAO_OCORRENCIA = '') or (dm.PERMISSAO_OCORRENCIA = 'R') then
  begin
    // BitBtnOcorrencia.Visible := False;
  end;

  if (dm.PERMISSAO_CADASTRO = '') or (dm.PERMISSAO_CADASTRO = 'R') then
  begin
    if (dm.PERMISSAO_CONFERE = '') or (dm.PERMISSAO_CONFERE = 'R') then
    begin
      Cadastro1.Visible := False;
    end
    else
    begin
      Pavilho1.Visible := False;
      Galeria1.Visible := False;
      Solario1.Visible := False;
      Cela1.Visible := False;
      CondiodoInterno1.Visible := False;
      Advogado1.Visible := False;
      Faco1.Visible := False;
      cIDADE1.Visible := False;
      Raa1.Visible := False;
      Escolaridade1.Visible := False;
      Nacionalidade1.Visible := False;
      Procedncia1.Visible := False;
      Destino1.Visible := False;
      Fornecedor1.Visible := False;
      Profisso1.Visible := False;
      CTC1.Visible := False;
    end;
  end
  else
  begin
    if (dm.PERMISSAO_CONFERE = '') or (dm.PERMISSAO_CONFERE = 'R') then
    begin
      CadastrodeInternos2.Visible := False;
    end;
  end;
  // ************ FIM CADASTRO ****************//

  // ************ MOVIMENTAÇÃO ****************//
  if ((dm.PERMISSAO_TRANSFERENCIAINTERNO = '') or
    (dm.PERMISSAO_TRANSFERENCIAINTERNO = 'R')) and
    ((dm.PERMISSAO_MUDANCACELA = '') or (dm.PERMISSAO_MUDANCACELA = 'R')) and
    ((dm.PERMISSAO_SAIDAO = '') or (dm.PERMISSAO_SAIDAO = 'R')) and
    ((dm.PERMISSAO_CIRCULACAOINTERNO = '') or
    (dm.PERMISSAO_CIRCULACAOINTERNO = 'R')) and
    ((dm.PERMISSAO_MOVIMENTOSEMIABERTO = '') or
    (dm.PERMISSAO_MOVIMENTOSEMIABERTO = 'R')) then
  begin
    Movimentao1.Visible := False;
  end
  else
  begin
    if (dm.PERMISSAO_TRANSFERENCIAINTERNO = '') or
      (dm.PERMISSAO_TRANSFERENCIAINTERNO = 'R') then
    begin
      ransfernciadeInterno1.Visible := False;
      RecebimentodeTransferncia1.Visible := False;
    end;

    if (dm.PERMISSAO_MUDANCACELA = '') or (dm.PERMISSAO_MUDANCACELA = 'R') then
    begin
      ransfernciadeInternoMovimentoInterno1.Visible := False;
    end;

    if (dm.PERMISSAO_SAIDAO = '') or (dm.PERMISSAO_SAIDAO = 'R') then
    begin
      Saido1.Visible := False;
    end;

    if (dm.PERMISSAO_CIRCULACAOINTERNO = '') or
      (dm.PERMISSAO_CIRCULACAOINTERNO = 'R') then
    begin
      CirculaodeInterno1.Visible := False;
    end;

    if (dm.PERMISSAO_MOVIMENTOSEMIABERTO = '') or
      (dm.PERMISSAO_MOVIMENTOSEMIABERTO = 'R') then
    begin
      MovimentoSemiAberto1.Visible := False;
    end;

    if not(ContemValor('C', dm.PERMISSAO_TRANSFERENCIAINTERNO) or
      ContemValor('C', dm.PERMISSAO_MUDANCACELA)) then
    begin
      LocalizaoPorPronturio1.Visible := False;
    end;
  end;
  // ************ FIM MOVIMENTAÇÃO ****************//

  // ************ SETORES ****************//
  if (dm.PERMISSAO_DISCIPLINA = '') or (dm.PERMISSAO_DISCIPLINA = 'R') then
  begin
    disciplina1.Visible := False;
    BitBtn1.enabled := False;
  end;

  if (dm.PERMISSAO_EDUCACAO = '') or (dm.PERMISSAO_EDUCACAO = 'R') then
  begin
    SetordeEducao1.Visible := False;
    BitBtn2.enabled := False;
  end;

  if (dm.PERMISSAO_JURIDICA = '') or (dm.PERMISSAO_JURIDICA = 'R') then
  begin
    Jurdica1.Visible := False;
    BitBtn3.enabled := False;
  end;

  if (dm.PERMISSAO_PSICOSSOCIAL = '') or (dm.PERMISSAO_PSICOSSOCIAL = 'R') then
  begin
    PSICOSSOCIAL1.Visible := False;
    BitBtn4.enabled := False;
  end;

  if ((dm.PERMISSAO_PEDAGOGIA = '') or (dm.PERMISSAO_PEDAGOGIA = 'R')) and
    ((dm.PERMISSAO_SERVICOSOCIAL = '') or (dm.PERMISSAO_SERVICOSOCIAL = 'R'))
    and ((dm.PERMISSAO_TERAPIAOCUPACIONAL = '') or
    (dm.PERMISSAO_TERAPIAOCUPACIONAL = 'R')) then
  begin
    Reabilitao1.Visible := False;
    BitBtn6.enabled := False;
    BitBtn8.enabled := False;
    BitBtn9.enabled := False;
  end
  else
  begin
    if (dm.PERMISSAO_PEDAGOGIA = '') or (dm.PERMISSAO_PEDAGOGIA = 'R') then
    begin
      Pedagogia.Visible := False;
      BitBtn6.enabled := False;
    end;

    if (dm.PERMISSAO_SERVICOSOCIAL = '') or (dm.PERMISSAO_SERVICOSOCIAL = 'R')
    then
    begin
      ServicoSocial.Visible := False;
      BitBtn8.enabled := False;
    end;

    if (dm.PERMISSAO_TERAPIAOCUPACIONAL = '') or
      (dm.PERMISSAO_TERAPIAOCUPACIONAL = 'R') then
    begin
      erapiaOcupacional.Visible := False;
      BitBtn9.enabled := False;
    end;
  end;

  if ((dm.PERMISSAO_CLINICAMEDICA = '') or (dm.PERMISSAO_CLINICAMEDICA = 'R'))
    and ((dm.PERMISSAO_ENFERMAGEM = '') or (dm.PERMISSAO_ENFERMAGEM = 'R')) and
    ((dm.PERMISSAO_FARMACIA = '') or (dm.PERMISSAO_FARMACIA = 'R')) and
    ((dm.PERMISSAO_ODONTOLOGIA = '') or (dm.PERMISSAO_ODONTOLOGIA = 'R')) and
    ((dm.PERMISSAO_PSICOLOGIA = '') or (dm.PERMISSAO_PSICOLOGIA = 'R')) and
    ((dm.PERMISSAO_PSIQUIATRIA = '') or (dm.PERMISSAO_PSIQUIATRIA = 'R')) and
    ((dm.PERMISSAO_SAUDE = '') or (dm.PERMISSAO_SAUDE = 'R')) then
  begin
    Sade1.Visible := False;
    BitBtn15.enabled := False;
    BitBtn14.enabled := False;
    BitBtn10.enabled := False;
    BitBtn11.enabled := False;
    BitBtn12.enabled := False;
    BitBtn13.enabled := False;
    BitBtn16.enabled := False;
  end
  else
  begin
    if (dm.PERMISSAO_CLINICAMEDICA = '') or (dm.PERMISSAO_CLINICAMEDICA = 'R')
    then
    begin
      clinicamedica.Visible := False;
      BitBtn15.enabled := False;
    end;

    if (dm.PERMISSAO_ENFERMAGEM = '') or (dm.PERMISSAO_ENFERMAGEM = 'R') then
    begin
      Enfermagem.Visible := False;
      BitBtn14.enabled := False;
    end;

    if (dm.PERMISSAO_FARMACIA = '') or (dm.PERMISSAO_FARMACIA = 'R') then
    begin
      farmacia.Visible := False;
      BitBtn10.enabled := False;
    end;

    if (dm.PERMISSAO_ODONTOLOGIA = '') or (dm.PERMISSAO_ODONTOLOGIA = 'R') then
    begin
      Odontologia.Visible := False;
      BitBtn11.enabled := False;
    end;

    if (dm.PERMISSAO_PSICOLOGIA = '') or (dm.PERMISSAO_PSICOLOGIA = 'R') then
    begin
      Psicologia.Visible := False;
      BitBtn12.enabled := False;
    end;

    if (dm.PERMISSAO_PSIQUIATRIA = '') or (dm.PERMISSAO_PSIQUIATRIA = 'R') then
    begin
      Psiquiatria.Visible := False;
      BitBtn13.enabled := False;
    end;

    if (dm.PERMISSAO_SAUDE = '') or (dm.PERMISSAO_SAUDE = 'R') then
    begin
      Sade2.Visible := False;
      BitBtn16.enabled := False;
    end;

    if (dm.PERMISSAO_FARMACIA = '') or (dm.PERMISSAO_FARMACIA = 'R') then
    begin
      Remdio1.Visible := False;
    end;
  end;

  if (dm.PERMISSAO_TRABALHO = '') or (dm.PERMISSAO_TRABALHO = 'R') then
  begin
    SetorTrabalho1.Visible := False;
    BitBtn5.enabled := False;
  end;

  if (dm.PERMISSAO_OCORRENCIA = '') or (dm.PERMISSAO_OCORRENCIA = 'R') then
  begin
    Ocorrncias1.Visible := False;
  end;

  if (dm.PERMISSAO_CONSELHODISCIPLINAR = '') or
    (dm.PERMISSAO_CONSELHODISCIPLINAR = 'R') then
  begin
    ConselhoDi1.Visible := False;
  end;
  // ************ FIM SETORES ****************//

  // ************ VISITANTES ****************//
  if (dm.PERMISSAO_VISITANTE = '') or (dm.PERMISSAO_VISITANTE = 'R') then
  begin
    if not(dm.PERMISSAO_ENTRADAVISITANTE = 'S') then
    begin
      Visitantes1.Visible := False;
    end
    else
    begin
      Consulta1.Visible := False;
      GrauParentesco1.Visible := False;
      Visitante1.Visible := False;
    end;
  end
  else
  begin
    if not(dm.PERMISSAO_ENTRADAVISITANTE = 'S') then
    begin
      EntradadeVisitantes1.Visible := False;
    end;
  end;
  // ************ FIM VISITANTES ****************//

  // ************ MÓDULOS ****************//
  if (dm.PERMISSAO_INTELIGENCIA = '') or (dm.PERMISSAO_INTELIGENCIA = 'R') then
  begin
    Inteligncia1.Visible := False;
  end;

  if (dm.PERMISSAO_MONITORAMENTO = '') or (dm.PERMISSAO_MONITORAMENTO = 'R')
  then
  begin
    MonitoramentoEletrnico1.Visible := False;
  end;
  // ************ FIM MÓDULOS ****************//

  // ************ CONFIGURAÇÕES / CADASTRO ****************//
  if ((dm.PERMISSAO_FUNCIONARIO = '') or (dm.PERMISSAO_FUNCIONARIO = 'R')) and
    ((dm.PERMISSAO_FUNCAOFUNCIONARIO = '') or
    (dm.PERMISSAO_FUNCAOFUNCIONARIO = 'R')) and
    ((dm.PERMISSAO_UNIDADEPENAL = '') or (dm.PERMISSAO_UNIDADEPENAL = 'R')) and
    ((dm.PERMISSAO_HORARIOFUNCIONARIO = '') or
    (dm.PERMISSAO_HORARIOFUNCIONARIO = 'R')) and
    ((dm.PERMISSAO_PADRAOSISTEMA = '') or (dm.PERMISSAO_PADRAOSISTEMA = 'R'))
    and ((dm.PERMISSAO_EQUIPE = '') or (dm.PERMISSAO_EQUIPE = 'R')) and
    ((dm.PERMISSAO_LOCALPOSTOTRABALHO = '') or
    (dm.PERMISSAO_LOCALPOSTOTRABALHO = 'R')) and
    ((dm.PERMISSAO_AGENTEPOREQUIPE = '') or (dm.PERMISSAO_AGENTEPOREQUIPE = 'R')
    ) and ((dm.PERMISSAO_REGRAVISITACAO = '') or
    (dm.PERMISSAO_REGRAVISITACAO = 'R')) then
  begin
    Configurao1.Visible := False;
  end
  else
  begin

    if (dm.PERMISSAO_FUNCIONARIO = '') or (dm.PERMISSAO_FUNCIONARIO = 'R') then
    begin
      Funcionrio2.Visible := False;
    end;

    if (dm.PERMISSAO_FUNCAOFUNCIONARIO = '') or
      (dm.PERMISSAO_FUNCAOFUNCIONARIO = 'R') then
    begin
      FunoFuncionrio1.Visible := False;
    end;

    if (dm.PERMISSAO_UNIDADEPENAL = '') or (dm.PERMISSAO_UNIDADEPENAL = 'R')
    then
    begin
      UnidadePenal2.Visible := False;
    end;

    if (dm.PERMISSAO_HORARIOFUNCIONARIO = '') or
      (dm.PERMISSAO_HORARIOFUNCIONARIO = 'R') then
    begin
      HorarioFuncionrio1.Visible := False;
    end;

    if (dm.PERMISSAO_PADRAOSISTEMA = '') or (dm.PERMISSAO_PADRAOSISTEMA = 'R')
    then
    begin
      PadroSist1.Visible := False;
    end;

    if (dm.PERMISSAO_EQUIPE = '') or (dm.PERMISSAO_EQUIPE = 'R') then
    begin
      Equipe1.Visible := False;
    end;

    if (dm.PERMISSAO_LOCALPOSTOTRABALHO = '') or
      (dm.PERMISSAO_LOCALPOSTOTRABALHO = 'R') then
    begin
      PostoLocaldeTrabalho1.Visible := False;
    end;

    if (dm.PERMISSAO_AGENTEPOREQUIPE = '') or
      (dm.PERMISSAO_AGENTEPOREQUIPE = 'R') then
    begin
      AgenteporEquipe1.Visible := False;
    end;

    if (dm.PERMISSAO_REGRAVISITACAO = '') or (dm.PERMISSAO_REGRAVISITACAO = 'R')
    then
    begin
      RegraparaVisitano1.Visible := False;
    end;
  end;

  // retirar configuracao apos atualizacoes
  { if not ContemValor('S', configuracao) then
    begin
    Configurao1.Visible := False;
    end; }
  // ************ FIM CONFIGURAÇÕES / CADASTRO ****************//

  // ************ GERAL ****************//
  if not ContemValor('C', dm.PERMISSAO_CONFERE) then
  begin
    ConsultaInterno1.Visible := False;
  end;
  // ************ FIM GERAL ****************//

  dm.DsPostoTrabalho.DataSet.Close;
  dm.DsPostoTrabalho.DataSet.Open;

  dm.DsEquipe.DataSet.Close;
  dm.DsEquipe.DataSet.Open;

  dm.DsFuncionario.DataSet.Close;
  dm.DsFuncionario.DataSet.Open;

  DsUP.DataSet.Close;
  DsUP.DataSet.Open;

end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmDisciplina.ShowModal();
    end);
end;

procedure TMainForm.BitBtn4Click(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmPsicossocial.ShowModal();
    end);
end;

procedure TMainForm.CadastrodeInternos2Click(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmInterno.ShowModal();
    end);
end;

procedure TMainForm.ConselhoDi1Click(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmConselhoDisciplinar.ShowModal;
    end);
end;

procedure TMainForm.Disciplina2Click(Sender: TObject);
begin
  //
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmDisciplina.ShowModal();
    end);
end;

procedure TMainForm.DocumentosDigitalizados1Click(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmDocumentosDigitalizados.ShowModal();
    end);
end;

procedure TMainForm.ExploredoServidor1Click(Sender: TObject);
begin
  if dm.configuracao = 'S' then
  begin
    FrmAguarde.ShowModal(
      procedure(Res: integer)
      begin
        FrmExplore.ShowModal();
      end);
  end
  else
    ShowMessage('Não tem acesso de configuração!');

end;

procedure TMainForm.FaltaDisciplinar1Click(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmCadastroFaltasDisciplinares.ShowModal();
    end);
end;

procedure TMainForm.Informaes1Click(Sender: TObject);
begin
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      FrmSobre.ShowModal();
    end);
end;

procedure TMainForm.MostraAgenda();
var
  nome_agora, FArquivo, FCaminhoFR3, sFiltro: string;
begin
  // UniURLFrameDashBoard.Visible := false;
  try
    try

      nome_agora := FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', Now) +
        'relatorio_tela2.html';

      FArquivo := UniServerModule.LocalCachePath + nome_agora;

      FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\relatorio_tela2.fr3';

      if FileExists(UniServerModule.StartPath + 'SYSTEM\' +
        IntToStr(dm.GLOBAL_ID_UP) + '\relatorio_tela2.fr3') then
      begin
        FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\' +
          IntToStr(dm.GLOBAL_ID_UP) + '\relatorio_tela2.fr3';
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

  except
  end;

end;

procedure TMainForm.FecharSistema();
begin
  try
    MainForm.Close;
    UniMainModule.Terminate;
  except
  end;
end;

procedure TMainForm.Funcionrio2Click(Sender: TObject);
begin
  //
  FrmAguarde.ShowModal(
    procedure(Res: integer)
    begin
      if ((dm.PERMISSAO_FUNCIONARIO = '') or (dm.PERMISSAO_FUNCIONARIO = 'R'))
      then
        ShowMessage('Sem acesso!')
      else
        FrmCadastroFuncionario.ShowModal();
    end);
end;

initialization

RegisterClasses([TframeFileExplorer]);
RegisterAppFormClass(TMainForm);

end.
