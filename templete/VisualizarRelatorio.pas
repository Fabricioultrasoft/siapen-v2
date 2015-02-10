unit VisualizarRelatorio;

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
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIForm,
  uniGUIBaseClasses,
  uniPanel,
  uniURLFrame,
  uniToolBar,
  uniLabel,
  uniScreenMask,
  uniButton,
  uniBitBtn,
  Vcl.Menus,
  uniMainMenu,
  IWSystem,
  Vcl.Imaging.jpeg,
  uniImage, uniTimer, Data.FMTBcd, Data.DB, Data.SqlExpr, Vcl.Imaging.GIFImg;

type
  TFrmVisualizarRelatorio = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniPanel1: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniImage1: TUniImage;
    LabelTitulo: TUniLabel;
    UniImageLogoMarca: TUniImage;
    UniTimerVisualizar: TUniTimer;
    SqlConsultaBackup: TSQLQuery;
    UniBitBtnRecarregar: TUniBitBtn;
    UniTimerFechar: TUniTimer;
    procedure Word1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure BMP1Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UniTimerVisualizarTimer(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtnRecarregarClick(Sender: TObject);
    procedure UniTimerFecharTimer(Sender: TObject);
  private
    FfrxReportDOC: TfrxReport;
    FArquivo: String;
    FCaminhoFR3: String;
    FNome: String;
    FFiltro: String;
    FNomeTela: String;
    FFazExportacaoJPEG: Boolean;
    FFazExportacaoPDF: Boolean;
    FCancelaExecucao: Boolean;
    FAguardeFiltro: Boolean;
    FNome_JPEG: string;
    FNome_PDF: string;
    FDescricaoRelatorio: string;
    procedure CarregarRelatorio;
    function InsereVariaveis: Boolean;
    procedure ExportarWord;
    procedure ExportarExcel;
    function ExportarPDF: string;
    function ExportarJPEG: string;
    function InicioRelatorio: Boolean;
    procedure LimpaAcessoNegado(sNomePermissao: string);
    function ValidaPermissao: Boolean;
    function CarregaFiltros: Boolean;
    { Private declarations }
  public
    property Nome: String read FNome write FNome;
    property FazExportacaoJPEG: Boolean read FFazExportacaoJPEG write FFazExportacaoJPEG;
    property FazExportacaoPDF: Boolean read FFazExportacaoPDF write FFazExportacaoPDF;
    property Filtro: String read FFiltro write FFiltro;
    property NomeTela: String read FNomeTela write FNomeTela;
    property CaminhoFR3: String read FCaminhoFR3 write FCaminhoFR3;
    procedure CarregarFichaDisciplinar(id: integer);
    { Public declarations }
  end;

function FrmVisualizarRelatorio: TFrmVisualizarRelatorio;

implementation

{$R *.dfm}

uses
  MainModule,
  DmPrincipal,
  ServerModule,
  humanejs,
  Lib, FiltroPeriodoServidor, FiltroPeriodo, Consulta, TipoProcesso, FiltroTipoProcessoUP, FiltroUP;
// , DMSoftwareImobiliario;

function FrmVisualizarRelatorio: TFrmVisualizarRelatorio;
begin
  Result := TFrmVisualizarRelatorio(UniMainModule.GetFormInstance(TFrmVisualizarRelatorio));
end;

procedure TFrmVisualizarRelatorio.UniBitBtn1Click(Sender: TObject);
begin
  self.Close;
  // SELF.Free;
end;

procedure TFrmVisualizarRelatorio.UniBitBtnRecarregarClick(Sender: TObject);
begin
  InicioRelatorio;
end;

procedure TFrmVisualizarRelatorio.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm.CaminhoRelatorio := '';
  FCaminhoFR3 := '';
  FFazExportacaoJPEG := false;
end;

procedure TFrmVisualizarRelatorio.UniFormCreate(Sender: TObject);
begin

  SetLength(Dm.ArrayReportDOC, High(Dm.ArrayReportDOC) + 2);
  Dm.ArrayReportDOC[High(Dm.ArrayReportDOC)] := TfrxReport.Create(Dm);

  FfrxReportDOC := Dm.ArrayReportDOC[High(Dm.ArrayReportDOC)];
  FCaminhoFR3 := '';
  FNome := '';
  FFazExportacaoJPEG := false;
  FAguardeFiltro := true;

  if NomeTela <> '' then
    LabelTitulo.Caption := NomeTela;

  // UniURLFrame1.Visible := false;

end;

procedure TFrmVisualizarRelatorio.UniFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    self.Close;

end;

procedure TFrmVisualizarRelatorio.UniFormShow(Sender: TObject);
begin
  FFazExportacaoPDF := true;
  InicioRelatorio;
end;

procedure TFrmVisualizarRelatorio.UniTimerFecharTimer(Sender: TObject);
begin
  UniTimerFechar.Enabled := false;
  self.Close;
end;

procedure TFrmVisualizarRelatorio.UniTimerVisualizarTimer(Sender: TObject);
begin
  UniTimerVisualizar.Enabled := false;
  if not FAguardeFiltro then
  begin
    FAguardeFiltro := true;
    CarregarRelatorio();
    // UniURLFrame1.Visible := true;
  end
  else
    UniTimerVisualizar.Enabled := true;

end;

procedure TFrmVisualizarRelatorio.BMP1Click(Sender: TObject);
begin
  ExportarJPEG;
end;

procedure TFrmVisualizarRelatorio.CarregarFichaDisciplinar(id: integer);
begin
  Dm.GLOBAL_ID_INTERNO := id;
  self.Nome := 'Ficha Disciplinar';
  self.CaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\Ficha Disciplinar.fr3';
  if FileExists(UniServerModule.StartPath + 'SYSTEM\' + inttostr(Dm.GLOBAL_ID_UP) + '\Ficha Disciplinar.fr3') then
  begin
    self.CaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\' + inttostr(Dm.GLOBAL_ID_UP) + '\Ficha Disciplinar.fr3';
  end;
  self.ShowModal;
end;

procedure TFrmVisualizarRelatorio.Excel1Click(Sender: TObject);
begin
  ExportarExcel;
end;

procedure TFrmVisualizarRelatorio.ExportarExcel();
begin

end;

function TFrmVisualizarRelatorio.ExportarPDF(): string;
var
  sPdf: string;
begin

  try

    Result := LimpaTexto(FNome) + FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', now) + '.pdf';

    sPdf := UniServerModule.LocalCachePath + Result;

    UniServerModule.LocalCachePath;

    if FCaminhoFR3 = '' then
      FCaminhoFR3 := UniServerModule.StartPath + 'relatorios\' + inttostr(Dm.GLOBAL_ID_UP) + '\' + FNome + '.fr3';

    try
      Dm.PDFExportDOC := TfrxPDFExport.Create(Dm);
      Dm.PDFExportDOC.Author := 'SIAPEN 2.0';
      Dm.PDFExportDOC.Creator := 'SIAPEN 2.0';
      Dm.PDFExportDOC.Producer := 'SIAPEN 2.0';
      Dm.PDFExportDOC.Title := FNome;
      Dm.PDFExportDOC.Subject := FNome;
      Dm.PDFExportDOC.Keywords := FNome;
      Dm.PDFExportDOC.ShowDialog := false;
      Dm.PDFExportDOC.OverwritePrompt := false;
      Dm.PDFExportDOC.ShowDialog := false;
      Dm.PDFExportDOC.ShowProgress := false;
      Dm.PDFExportDOC.FileName := sPdf;

      if FileExists(FCaminhoFR3) then
      begin
        try
          FfrxReportDOC.ShowProgress := false;
          FfrxReportDOC.StoreInDFM := false;
          FfrxReportDOC.LoadFromFile(FCaminhoFR3);

          InsereVariaveis;
          FfrxReportDOC.EngineOptions.SilentMode := true;
          FfrxReportDOC.EngineOptions.NewSilentMode := simSilent;
          FfrxReportDOC.PrepareReport();

          FfrxReportDOC.Export(Dm.PDFExportDOC);
        except
        end;
      end
      else
      begin
        ShowMessage('Não existe o arquivo:' + FCaminhoFR3);
      end;
    finally
      FfrxReportDOC.Terminated := true;
      FfrxReportDOC.Clear;
      FfrxReportDOC.Destroy;
      Dm.JPEGExportDOC.free;
      Dm.JPEGExportDOC := nil;
    end;
  except
    on e: exception do
    begin
      ShowMessage(FCaminhoFR3);
      ShowMessage('Erro: ' + e.Message);
    end;
  end;
end;

procedure TFrmVisualizarRelatorio.ExportarWord;
begin

end;

function TFrmVisualizarRelatorio.ExportarJPEG(): String;
var
  sFoto: string;
begin

  try

    sFoto := UniServerModule.LocalCachePath + FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', now) + LimpaTexto(FNome);

    Result := sFoto + '.1.jpg';

    if FCaminhoFR3 = '' then
      FCaminhoFR3 := UniServerModule.StartPath + 'relatorios\' + inttostr(Dm.GLOBAL_ID_UP) + '\' + FNome + '.fr3';

    try
      Dm.JPEGExportDOC := TfrxJPEGExport.Create(Dm);
      Dm.JPEGExportDOC.OverwritePrompt := false;
      Dm.JPEGExportDOC.ShowDialog := false;
      Dm.JPEGExportDOC.ShowProgress := false;
      Dm.JPEGExportDOC.FileName := sFoto + '.jpg';

      if FileExists(FCaminhoFR3) then
      begin
        try
          FfrxReportDOC.ShowProgress := false;
          FfrxReportDOC.StoreInDFM := false;
          FfrxReportDOC.LoadFromFile(FCaminhoFR3);

          InsereVariaveis;
          FfrxReportDOC.EngineOptions.SilentMode := true;
          FfrxReportDOC.EngineOptions.NewSilentMode := simSilent;
          FfrxReportDOC.PrepareReport();

          FfrxReportDOC.Export(Dm.JPEGExportDOC);
          FfrxReportDOC.Terminated := true;
        except
        end;
      end
      else
      begin
        ShowMessage('Não existe o arquivo:' + FCaminhoFR3);
      end;
    finally
      Dm.JPEGExportDOC.free;
      Dm.JPEGExportDOC := nil;
    end;
  except
    on e: exception do
    begin
      ShowMessage(FCaminhoFR3);
      ShowMessage('Erro: ' + e.Message);
    end;
  end;

end;

procedure TFrmVisualizarRelatorio.Fechar1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFrmVisualizarRelatorio.LimpaAcessoNegado(sNomePermissao: string);
begin
  ShowMessage('<b><font Color=red>Acesso negado!</font></b>' + '<br>Para abrir este relatório, tem que<br>ativar sua senha para:<b><font Color=navy>' +
    BuscaTroca(sNomePermissao, 'PERMISSAO_', ' ')

    + '</font></b>.');
  FfrxReportDOC.PreviewPages.Clear;
  FfrxReportDOC.Terminated := true;
  FCaminhoFR3 := '';
  Dm.CaminhoRelatorio := '';
  UniBitBtnRecarregar.Visible := false;
end;

function TFrmVisualizarRelatorio.ValidaPermissao: Boolean;
begin

  Result := false;

  if ContemValor('PERMISSAO_CONFERE', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_CONFERE) then
    begin
      LimpaAcessoNegado('PERMISSAO_CONFERE');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_VISITANTE', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_VISITANTE) then
    begin
      LimpaAcessoNegado('PERMISSAO_VISITANTE');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_TRABALHO', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_TRABALHO) then
    begin
      LimpaAcessoNegado('PERMISSAO_TRABALHO');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_CADASTRO', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_CADASTRO) then
    begin
      LimpaAcessoNegado('PERMISSAO_CADASTRO');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_EDUCACAO', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_EDUCACAO) then
    begin
      LimpaAcessoNegado('PERMISSAO_EDUCACAO');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_PSICOSSOCIAL', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_PSICOSSOCIAL) then
    begin
      LimpaAcessoNegado('PERMISSAO_PSICOSSOCIAL');
      exit;
    end;
  end;
  if ContemValor('PERMISSAO_DISCIPLINA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_DISCIPLINA) then
    begin
      LimpaAcessoNegado('PERMISSAO_DISCIPLINA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_INTELIGENCIA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_INTELIGENCIA) then
    begin
      LimpaAcessoNegado('PERMISSAO_INTELIGENCIA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_ENFERMAGEM', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_ENFERMAGEM) then
    begin
      LimpaAcessoNegado('PERMISSAO_ENFERMAGEM');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_FARMACIA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_FARMACIA) then
    begin
      LimpaAcessoNegado('PERMISSAO_FARMACIA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_CLINICAMEDICA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_CLINICAMEDICA) then
    begin
      LimpaAcessoNegado('PERMISSAO_CLINICAMEDICA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_PSICOLOGIA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_PSICOLOGIA) then
    begin
      LimpaAcessoNegado('PERMISSAO_PSICOLOGIA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_PSIQUIATRIA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_PSIQUIATRIA) then
    begin
      LimpaAcessoNegado('PERMISSAO_PSIQUIATRIA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_SAUDE', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_SAUDE) then
    begin
      LimpaAcessoNegado('PERMISSAO_SAUDE');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_TERAPIAOCUPACIONAL', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_TERAPIAOCUPACIONAL) then
    begin
      LimpaAcessoNegado('PERMISSAO_TERAPIAOCUPACIONAL');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_ODONTOLOGIA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_ODONTOLOGIA) then
    begin
      LimpaAcessoNegado('PERMISSAO_ODONTOLOGIA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_PEDAGOGIA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_PEDAGOGIA) then
    begin
      LimpaAcessoNegado('PERMISSAO_PEDAGOGIA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_SERVICOSOCIAL', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_SERVICOSOCIAL) then
    begin
      LimpaAcessoNegado('PERMISSAO_SERVICOSOCIAL');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_ARMAS', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_ARMAS) then
    begin
      LimpaAcessoNegado('PERMISSAO_ARMAS');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_MONITORAMENTO', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_MONITORAMENTO) then
    begin
      LimpaAcessoNegado('PERMISSAO_MONITORAMENTO');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_OCORRENCIA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_OCORRENCIA) then
    begin
      LimpaAcessoNegado('PERMISSAO_OCORRENCIA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_CONSELHODISCIPLINAR', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_CONSELHODISCIPLINAR) then
    begin
      LimpaAcessoNegado('PERMISSAO_CONSELHODISCIPLINAR');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_TRANSFERENCIAINTERNO', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_TRANSFERENCIAINTERNO) then
    begin
      LimpaAcessoNegado('PERMISSAO_TRANSFERENCIAINTERNO');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_MUDANCACELA', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_MUDANCACELA) then
    begin
      LimpaAcessoNegado('PERMISSAO_MUDANCACELA');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_MOVIMENTOSEMIABERTO', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_MOVIMENTOSEMIABERTO) then
    begin
      LimpaAcessoNegado('PERMISSAO_MOVIMENTOSEMIABERTO');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_FUNCIONARIO', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_FUNCIONARIO) then
    begin
      LimpaAcessoNegado('PERMISSAO_FUNCIONARIO');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_UNIDADEPENAL', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_UNIDADEPENAL) then
    begin
      LimpaAcessoNegado('PERMISSAO_UNIDADEPENAL');
      exit;
    end;
  end;

  if ContemValor('PERMISSAO_REGRAVISITACAO', 'xx' + FDescricaoRelatorio) then
  begin
    if not ContemValor('R', 'xx' + Dm.PERMISSAO_REGRAVISITACAO) then
    begin
      LimpaAcessoNegado('PERMISSAO_REGRAVISITACAO');
      exit;
    end;
  end;

  Result := true;

end;

function TFrmVisualizarRelatorio.CarregaFiltros: Boolean;
begin
  if ContemValor('FILTRO_INTERNO', 'xx' + FDescricaoRelatorio) OR ContemValor('R1', 'xx' + Dm.CaminhoRelatorio) then
  begin
    Prompt('Informe as iniciais do nome:', '', mtInformation, mbOKCancel,
      procedure(Sender: TComponent; AResult: integer; AText: string)
      begin
        if AResult = mrOK then
        begin
          if length(trim(AText)) > 1 then
          begin
            Dm.UniFormRetornoConsulta := self;
            Dm.PreDescricaoConsulta := uppercase(AText);
            Dm.SqlConsultaObjetiva := SqlConsultaBackup.SQL.Text + ' and interno.nome_interno like ' + qs(uppercase(AText) + '%') +
              ' order by interno.nome_interno ';
            Dm.CampoWhereSqlConsulta := 'interno.nome_interno';
            Dm.DESC_RETORNO_FORM := '';
            Dm.ID_RETORNO_FORM := 'ID';
            FrmConsulta.ShowModal(
              procedure(Sender: TComponent; Result: integer)
              begin
                if Result = mrOK then
                begin
                  Dm.GLOBAL_ID_INTERNO := Dm.ID_RETORNO_CONSULTAOBJETIVA;
                  FAguardeFiltro := false;
                end
                else
                begin
                  FAguardeFiltro := false;
                  FCancelaExecucao := true;
                  UniTimerVisualizar.Enabled := false;
                  UniTimerFechar.Enabled := true;
                end;
              end);
          end
          else
          begin
            ShowMessage('<b><font Color=red>Filtro não informado!</font></b>' + '<br>Para abrir esta consulta, tem que digitar pelo menos duas letras.');
            FAguardeFiltro := false;
            FCancelaExecucao := true;
            UniTimerVisualizar.Enabled := false;
            UniTimerFechar.Enabled := true;
          end;
        end
        else
        begin
          FAguardeFiltro := false;
          FCancelaExecucao := true;
          UniTimerVisualizar.Enabled := false;
          UniTimerFechar.Enabled := true;
        end;
      end);
  end;

  if ContemValor('FILTRO_PROCESSO', 'xx' + FDescricaoRelatorio) OR ContemValor('R2', 'xx' + Dm.CaminhoRelatorio) then
  begin
    FrmTipoProcesso.ShowModal(
      procedure(Sender: TComponent; Result: integer)
      begin
        if Result <> mrOK then
        begin
          FCancelaExecucao := true;
          UniTimerVisualizar.Enabled := false;
          UniTimerFechar.Enabled := true;
        end;
        FAguardeFiltro := false;
      end);
  end;

  if ContemValor('FILTRO_DATA', 'xx' + FDescricaoRelatorio) OR ContemValor('R3', 'xx' + Dm.CaminhoRelatorio) then
  begin
    FrmFiltroPeriodo.ShowModal(
      procedure(Sender: TComponent; Result: integer)
      begin
        if Result <> mrOK then
        begin
          FCancelaExecucao := true;
          UniTimerVisualizar.Enabled := false;
          UniTimerFechar.Enabled := true;
        end;
        FAguardeFiltro := false;
      end);
  end;

  if ContemValor('FILTRO_PERIODO_SERVIDOR', 'xx' + FDescricaoRelatorio) OR ContemValor('R4', 'xx' + Dm.CaminhoRelatorio) then
  begin
    FrmFiltroPeriodoServidor.ShowModal(
      procedure(Sender: TComponent; Result: integer)
      begin
        if Result <> mrOK then
        begin
          FCancelaExecucao := true;
          UniTimerVisualizar.Enabled := false;
          UniTimerFechar.Enabled := true;
        end;
        FAguardeFiltro := false;
      end);
  end;

  if ContemValor('FILTRO_UP_PROCESSO', 'xx' + FDescricaoRelatorio) OR ContemValor('R5', 'xx' + Dm.CaminhoRelatorio) then
  begin
    FrmFiltroTipoProcessoUP.ShowModal(
      procedure(Sender: TComponent; Result: integer)
      begin
        if Result <> mrOK then
        begin
          FCancelaExecucao := true;
          UniTimerVisualizar.Enabled := false;
          UniTimerFechar.Enabled := true;
        end;
        FAguardeFiltro := false;
      end);
  end;

  if ContemValor('FILTRO_REL_UP', 'xx' + FDescricaoRelatorio) OR ContemValor('R6', 'xx' + Dm.CaminhoRelatorio) then
  begin
    FrmFiltroUP.ShowModal(
      procedure(Sender: TComponent; Result: integer)
      begin
        if Result <> mrOK then
        begin
          FCancelaExecucao := true;
          UniTimerVisualizar.Enabled := false;
          UniTimerFechar.Enabled := true;
        end;
        FAguardeFiltro := false;
      end);
  end;

end;

function TFrmVisualizarRelatorio.InicioRelatorio: Boolean;
begin

  if FNome = '' then
    FNome := Dm.CaminhoRelatorio;

  self.Caption := FNome;
  LabelTitulo.Caption := FNome;

  FAguardeFiltro := true;
  FCancelaExecucao := false;
  UniBitBtnRecarregar.Visible := (FCaminhoFR3 = '');

  if FFazExportacaoJPEG then
  begin

    FNome_JPEG := ExportarJPEG;

    FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\visualizar_jpeg.fr3';

  end;

  if FCaminhoFR3 = '' then
    FCaminhoFR3 := UniServerModule.StartPath + 'relatorios\' + inttostr(Dm.GLOBAL_ID_UP) + '\' + FNome + '.fr3';

{alexandreerro19/09/2014
  if FFazExportacaoPDF then
  begin
    // já abre relatório
    UniTimerVisualizar.Enabled := false;
    CarregarRelatorio();
    exit;
  end;
}
  FfrxReportDOC.ShowProgress := false;
  FfrxReportDOC.StoreInDFM := false;
  FfrxReportDOC.LoadFromFile(FCaminhoFR3);
  FDescricaoRelatorio := FfrxReportDOC.ReportOptions.Description.Text;

  FAguardeFiltro := true;

  if ContemValor('PERMISSAO', 'xx' + FDescricaoRelatorio) then
  begin

    if not ValidaPermissao then
    begin
      UniTimerFechar.Enabled := true;
      exit;
    end;

  end;

  if (ContemValor('FILTRO', 'xx' + FDescricaoRelatorio) OR ContemValor('R1', 'xx' + Dm.CaminhoRelatorio) OR ContemValor('R2', 'xx' + Dm.CaminhoRelatorio) OR
    ContemValor('R3', 'xx' + Dm.CaminhoRelatorio) OR ContemValor('R4', 'xx' + Dm.CaminhoRelatorio)) then
  begin
    // Só abre o relatório se liberar filtro
    FAguardeFiltro := true;
    UniTimerVisualizar.Enabled := true;
    CarregaFiltros;
  end
  else
  begin
    // já abre relatório
    UniTimerVisualizar.Enabled := false;
    CarregarRelatorio();
    exit;
  end;

end;

function TFrmVisualizarRelatorio.InsereVariaveis: Boolean;
begin
  try

    Result := false;
    FfrxReportDOC.Variables.DeleteVariable('FILTRO');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'FILTRO', qs(FFiltro));

    FfrxReportDOC.Variables.DeleteVariable('ID_UP');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'ID_UP', Dm.GLOBAL_ID_UP);
    FfrxReportDOC.Variables.AddVariable('SIAP', 'ID_UP', Dm.GLOBAL_ID_UP);

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_ID_FUNCIONARIO');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_FUNCIONARIO', Dm.GLOBAL_ID_FUNCIONARIO);

    FfrxReportDOC.Variables.DeleteVariable('ID_INTERNO');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'ID_INTERNO', Dm.GLOBAL_ID_INTERNO);
    FfrxReportDOC.Variables.AddVariable('SIAP', 'ID_INTERNO', Dm.GLOBAL_ID_INTERNO);

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_ORGAO');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_ORGAO', qs(Dm.GLOBAL_ORGAO));
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', qs(Dm.GLOBAL_ORGAO));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_DEPARTAMENTO', qs(Dm.GLOBAL_DEPARTAMENTO));
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO', qs(Dm.GLOBAL_DEPARTAMENTO));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_DIRETORIA');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_DIRETORIA', qs(Dm.GLOBAL_DIRETORIA));
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA', qs(Dm.GLOBAL_DIRETORIA));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_IDAGENDA_ATENDIMENTO');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_IDAGENDA_ATENDIMENTO', qs(Dm.GLOBAL_IDAGENDA_ATENDIMENTO));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_PADRAO_SISTEMA');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_PADRAO_SISTEMA', qs(Dm.GLOBAL_PADRAO_SISTEMA));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_NIVEL_1');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_1', qs(Dm.GLOBAL_NIVEL_1));
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_1', qs(Dm.GLOBAL_NIVEL_1));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_NIVEL_2');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_2', qs(Dm.GLOBAL_NIVEL_2));
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_2', qs(Dm.GLOBAL_NIVEL_2));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_NIVEL_3');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_3', qs(Dm.GLOBAL_NIVEL_3));
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_3', qs(Dm.GLOBAL_NIVEL_3));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_NIVEL_4');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_4', qs(Dm.GLOBAL_NIVEL_4));
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_4', qs(Dm.GLOBAL_NIVEL_4));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_ID_TRANSFERENCIA_INTERNO');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_TRANSFERENCIA_INTERNO', Dm.GLOBAL_ID_TRANSFERENCIA_INTERNO);
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_ID_TRANSFERENCIA_INTERNO', Dm.GLOBAL_ID_TRANSFERENCIA_INTERNO);

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_ID_MUDANCA_CELA');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_MUDANCA_CELA', Dm.GLOBAL_ID_MUDANCA_CELA);
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_ID_MUDANCA_CELA', Dm.GLOBAL_ID_MUDANCA_CELA);

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_TIPOPROCESSO');

    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'GLOBAL_TIPOPROCESSO', qs(Dm.GLOBAL_TIPOPROCESSO));
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_TIPOPROCESSO', qs(Dm.GLOBAL_TIPOPROCESSO));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_OFICIO');
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_OFICIO', qs(Dm.GLOBAL_OFICIO));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_NOME_JPEG');
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_NOME_JPEG', qs(FNome_JPEG));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_DATA_INICIAL');
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_DATA_INICIAL', qs(Dm.GLOBAL_DATA_INICIAL));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_DATA_FINAL');
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_DATA_FINAL', qs(Dm.GLOBAL_DATA_FINAL));

    FfrxReportDOC.Variables.DeleteVariable('ID_FALTA_DISCIPLINAR');
    FfrxReportDOC.Variables.AddVariable('SIAP', 'ID_FALTA_DISCIPLINAR', qs(Dm.GLOBAL_ID_FALTA_DISCIPLINAR));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_IDFUNCIONARIO');
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_IDFUNCIONARIO', Dm.GLOBAL_IDFUNCIONARIO_FILTRO);

    FfrxReportDOC.Variables.DeleteVariable('LOGO');
    FfrxReportDOC.Variables.AddVariable('SIAP', 'LOGO', qs(UniServerModule.StartPath + '\logo\BRASIL.jpg'));

    FfrxReportDOC.Variables.DeleteVariable('GLOBAL_SOLICITANTE');
    FfrxReportDOC.Variables.AddVariable('SIAP', 'GLOBAL_SOLICITANTE', qs(Dm.GLOBAL_SOLICITANTE));

    FfrxReportDOC.Variables.DeleteVariable('ID_UP_FILTRO');
    FfrxReportDOC.Variables.AddVariable('GLOBAL', 'ID_UP_FILTRO', Dm.GLOBAL_ID_UP_FILTRO);
    FfrxReportDOC.Variables.AddVariable('SIAP', 'ID_UP_FILTRO', Dm.GLOBAL_ID_UP_FILTRO);

    if not FCancelaExecucao then
      Result := true;

  except
  end;

end;

procedure TFrmVisualizarRelatorio.PDF1Click(Sender: TObject);
begin
  ExportarPDF;
end;

procedure TFrmVisualizarRelatorio.CarregarRelatorio();
var
  nome_agora: string;

begin

  if FFazExportacaoPDF then
  begin

    FNome_PDF := UniServerModule.LocalCacheURL;
    FNome_PDF := '../../'+FNome_PDF + ExportarPDF;

    UniURLFrame1.URL := '/pdf/web/viewer.html?file=' + FNome_PDF + '#page=1&zoom=100&time=' + FormatDateTime('yyyymmdhhnnsszzz', now);;
    UniURLFrame1.Refresh;
    UniURLFrame1.Repaint;
    UniURLFrame1.Update;

    if Dm.GLOBAL_IDCONEXAO > 0 then
    begin
      try
        Dm.Conexao.ExecuteDirect('update conexao set tela_momento = ' + qs(FNome_PDF) + ' where idconexao=' + inttostr(Dm.GLOBAL_IDCONEXAO));
      except
      end;
    end;
    FNome_PDF := '';
    exit;
  end;

  try
    try
      nome_agora := FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', now) + LimpaTexto(FNome) + '.html';

      FArquivo := UniServerModule.LocalCachePath + nome_agora;

      Dm.frxHTMLExport1.Navigator := true;
      Dm.frxHTMLExport1.OverwritePrompt := false;
      Dm.frxHTMLExport1.PicsInSameFolder := false;
      Dm.frxHTMLExport1.ShowDialog := false;
      Dm.frxHTMLExport1.ShowProgress := false;

      Dm.frxHTMLExport1.OpenAfterExport := false;
      Dm.frxHTMLExport1.Multipage := false;
      Dm.frxHTMLExport1.Server := true;

      Dm.frxHTMLExport1.FileName := FArquivo;

      if FileExists(FCaminhoFR3) then
      begin

        if InsereVariaveis then
        begin
          FfrxReportDOC.PreviewPages.Clear;
          FfrxReportDOC.PrepareReport();
          FfrxReportDOC.Export(Dm.frxHTMLExport1);
          FfrxReportDOC.Terminated := true;

          UniURLFrame1.URL := UniServerModule.LocalCacheURL + nome_agora;

          UniURLFrame1.Refresh;
          UniURLFrame1.Repaint;
          UniURLFrame1.Update;

          if Dm.GLOBAL_IDCONEXAO > 0 then
          begin
            try
              Dm.Conexao.ExecuteDirect('update conexao set tela_momento = ' + qs(FCaminhoFR3) + ' where idconexao=' + inttostr(Dm.GLOBAL_IDCONEXAO));
            except
            end;
          end;
        end
        else
        begin
          FfrxReportDOC.PreviewPages.Clear;
          FfrxReportDOC.Terminated := true;
          FCaminhoFR3 := '';
          UniTimerFechar.Enabled := true;
        end;

        FCaminhoFR3 := '';

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

  finally
    FCaminhoFR3 := '';
  end;

end;

procedure TFrmVisualizarRelatorio.Word1Click(Sender: TObject);
begin
  ExportarWord;
end;

end.
