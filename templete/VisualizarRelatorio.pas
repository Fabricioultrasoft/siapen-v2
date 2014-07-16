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
  uniImage, uniTimer, Data.FMTBcd, Data.DB, Data.SqlExpr;

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
    procedure Word1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure BMP1Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniTimerVisualizarTimer(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtnRecarregarClick(Sender: TObject);
  private
    FArquivo: String;
    FCaminhoFR3: String;
    FNome: String;
    FFiltro: String;
    FNomeTela: String;
    FFazExportacaoJPEG: Boolean;
    FCancelaExecucao: Boolean;
    FAguardeFiltro: Boolean;
    FNome_JPEG: string;
    FDescricaoRelatorio: string;
    procedure CarregarRelatorio;
    function InsereVariaveis: Boolean;
    procedure ExportarWord;
    procedure ExportarExcel;
    procedure ExportarPDF;
    function ExportarJPEG: string;
    function AbreFiltros: Boolean;
    { Private declarations }
  public
    property Nome: String read FNome write FNome;
    property FazExportacaoJPEG: Boolean read FFazExportacaoJPEG
      write FFazExportacaoJPEG;
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
  Lib, FiltroPeriodoServidor, FiltroPeriodo, Consulta;
// , DMSoftwareImobiliario;

function FrmVisualizarRelatorio: TFrmVisualizarRelatorio;
begin
  Result := TFrmVisualizarRelatorio
    (UniMainModule.GetFormInstance(TFrmVisualizarRelatorio));
end;

procedure TFrmVisualizarRelatorio.UniBitBtn1Click(Sender: TObject);
begin
  self.Close;
  // SELF.Free;
end;

procedure TFrmVisualizarRelatorio.UniBitBtnRecarregarClick(Sender: TObject);
begin
  AbreFiltros;
end;

procedure TFrmVisualizarRelatorio.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FCaminhoFR3 := '';
  FFazExportacaoJPEG := false;
end;

procedure TFrmVisualizarRelatorio.UniFormCreate(Sender: TObject);
begin

  FCaminhoFR3 := '';
  FNome := '';
  FFazExportacaoJPEG := false;
  FAguardeFiltro := true;

  if NomeTela <> '' then
    LabelTitulo.Caption := NomeTela;

//  UniURLFrame1.Visible := false;

end;

procedure TFrmVisualizarRelatorio.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    self.Close;

end;

procedure TFrmVisualizarRelatorio.UniFormShow(Sender: TObject);
begin
  AbreFiltros;
end;

procedure TFrmVisualizarRelatorio.UniTimerVisualizarTimer(Sender: TObject);
begin
  UniTimerVisualizar.Enabled := false;
  if not FAguardeFiltro then
  begin
    FAguardeFiltro := true;
    CarregarRelatorio();
//    UniURLFrame1.Visible := true;
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
  if FileExists(UniServerModule.StartPath + 'SYSTEM\' +
    inttostr(Dm.GLOBAL_ID_UP) + '\Ficha Disciplinar.fr3') then
  begin
    self.CaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\' +
      inttostr(Dm.GLOBAL_ID_UP) + '\Ficha Disciplinar.fr3';
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

procedure TFrmVisualizarRelatorio.ExportarPDF();
begin
end;

procedure TFrmVisualizarRelatorio.ExportarWord;
begin

end;

function TFrmVisualizarRelatorio.ExportarJPEG(): String;
var
  sFoto: string;
begin

  try

    sFoto := UniServerModule.LocalCachePath +
      FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', now) + LimpaTexto(FNome);

    Result := sFoto + '.1.jpg';

    if FCaminhoFR3 = '' then
      FCaminhoFR3 := UniServerModule.StartPath + 'relatorios\' +
        inttostr(Dm.GLOBAL_ID_UP) + '\' + FNome + '.fr3';

    Dm.frxReport1.ShowProgress := false;
    Dm.frxReport1.StoreInDFM := false;

    Dm.frxJPEGExport1.OverwritePrompt := false;
    Dm.frxJPEGExport1.ShowDialog := false;
    Dm.frxJPEGExport1.ShowProgress := false;
    Dm.frxJPEGExport1.FileName := sFoto + '.jpg';

    if FileExists(FCaminhoFR3) then
    begin
      try
        Dm.frxReport1.LoadFromFile(FCaminhoFR3);

        InsereVariaveis;
        Dm.frxReport1.PrepareReport();

        Dm.frxReport1.Export(Dm.frxJPEGExport1);
        Dm.frxReport1.Terminated := true;
      except
      end;
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

end;

procedure TFrmVisualizarRelatorio.Fechar1Click(Sender: TObject);
begin
  self.Close;
end;

function TFrmVisualizarRelatorio.AbreFiltros: Boolean;
begin

  if FNome = '' then
    FNome := Dm.CaminhoRelatorio;

  FAguardeFiltro := true;
  FCancelaExecucao := false;
  UniBitBtnRecarregar.Visible := (FCaminhoFR3 = '');

  if FFazExportacaoJPEG then
  begin

    FNome_JPEG := ExportarJPEG;

    FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\visualizar_jpeg.fr3';

  end;

  if FCaminhoFR3 = '' then
    FCaminhoFR3 := UniServerModule.StartPath + 'relatorios\' +
      inttostr(Dm.GLOBAL_ID_UP) + '\' + FNome + '.fr3';

  Dm.frxReport1.ShowProgress := false;
  Dm.frxReport1.StoreInDFM := false;
  Dm.frxReport1.LoadFromFile(FCaminhoFR3);
  FDescricaoRelatorio := Dm.frxReport1.ReportOptions.Description.Text;

  FAguardeFiltro := true;

  if not ContemValor('FILTRO', 'xx' + FDescricaoRelatorio) then
  begin
    //já abre relatório
    FAguardeFiltro := true;
    CarregarRelatorio();
//    UniURLFrame1.Visible := true;
    exit;
  end
  else
  begin
    //só abre o relatório se liberar filtro
    UniTimerVisualizar.Enabled := true;
  end;

  if ContemValor('FILTRO_DATA', 'xx' + FDescricaoRelatorio) then
  begin
    FrmFiltroPeriodo.ShowModal(
      procedure(Result: integer)
      begin
        if Result <> mrOK then
        begin
          FCancelaExecucao := true;
          UniTimerVisualizar.Enabled := false;
        end;
        FAguardeFiltro := false;
      end);
  end;

  if ContemValor('FILTRO_INTERNO', 'xx' + FDescricaoRelatorio) then
  begin
    Prompt('Informe as iniciais do nome:', '', mtInformation, mbOKCancel,
      procedure(AResult: integer; AText: string)
      begin
        if AResult = mrOK then
        begin
          FrmConsulta.SqlConsultaObjetiva.SQL.Text := SqlConsultaBackup.SQL.Text
            + ' and interno.nome_interno like ' + qs(uppercase(AText) + '%') +
            ' order by interno.nome_interno ';
          FrmConsulta.Coluna := 1;
          FrmConsulta.Width := self.Width;
          FrmConsulta.Top := self.Top;
          FrmConsulta.Left := self.Left;
          FrmConsulta.PreDescricao := uppercase(AText);
          FrmConsulta.EditLocalizar.SetFocus;
          FrmConsulta.ShowModal(
            procedure(Result: integer)
            begin
              if Result = mrOK then
              begin
                Dm.GLOBAL_ID_INTERNO := FrmConsulta.DsConsultaObjetiva.DataSet.
                  fieldbyname('ID').AsInteger;
                FrmConsulta.DsConsultaObjetiva.DataSet.Close;
              end
              else
              begin
                FCancelaExecucao := true;
                UniTimerVisualizar.Enabled := false;
              end;
              FAguardeFiltro := false;
            end);
        end;
      end);
  end;

end;

function TFrmVisualizarRelatorio.InsereVariaveis: Boolean;
begin
  try

    Result := false;
    Dm.frxReport1.Variables.DeleteVariable('FILTRO');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'FILTRO', qs(FFiltro));

    Dm.frxReport1.Variables.DeleteVariable('ID_UP');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'ID_UP', Dm.GLOBAL_ID_UP);
    Dm.frxReport1.Variables.AddVariable('SIAP', 'ID_UP', Dm.GLOBAL_ID_UP);

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ID_FUNCIONARIO');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_FUNCIONARIO',
      Dm.GLOBAL_ID_FUNCIONARIO);

    Dm.frxReport1.Variables.DeleteVariable('ID_INTERNO');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'ID_INTERNO',
      Dm.GLOBAL_ID_INTERNO);
    Dm.frxReport1.Variables.AddVariable('SIAP', 'ID_INTERNO',
      Dm.GLOBAL_ID_INTERNO);

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ORGAO',
      qs(Dm.GLOBAL_ORGAO));
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO',
      qs(Dm.GLOBAL_ORGAO));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_DEPARTAMENTO',
      qs(Dm.GLOBAL_DEPARTAMENTO));
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO',
      qs(Dm.GLOBAL_DEPARTAMENTO));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_DIRETORIA',
      qs(Dm.GLOBAL_DIRETORIA));
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA',
      qs(Dm.GLOBAL_DIRETORIA));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_IDAGENDA_ATENDIMENTO');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_IDAGENDA_ATENDIMENTO',
      qs(Dm.GLOBAL_IDAGENDA_ATENDIMENTO));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_PADRAO_SISTEMA');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_PADRAO_SISTEMA',
      qs(Dm.GLOBAL_PADRAO_SISTEMA));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_1');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_1',
      qs(Dm.GLOBAL_NIVEL_1));
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_1',
      qs(Dm.GLOBAL_NIVEL_1));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_2');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_2',
      qs(Dm.GLOBAL_NIVEL_2));
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_2',
      qs(Dm.GLOBAL_NIVEL_2));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_3');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_3',
      qs(Dm.GLOBAL_NIVEL_3));
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_3',
      qs(Dm.GLOBAL_NIVEL_3));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_4');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_4',
      qs(Dm.GLOBAL_NIVEL_4));
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_4',
      qs(Dm.GLOBAL_NIVEL_4));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ID_TRANSFERENCIA_INTERNO');
    Dm.frxReport1.Variables.AddVariable('GLOBAL',
      'GLOBAL_ID_TRANSFERENCIA_INTERNO', Dm.GLOBAL_ID_TRANSFERENCIA_INTERNO);
    Dm.frxReport1.Variables.AddVariable('SIAP',
      'GLOBAL_ID_TRANSFERENCIA_INTERNO', Dm.GLOBAL_ID_TRANSFERENCIA_INTERNO);

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ID_MUDANCA_CELA');
    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_MUDANCA_CELA',
      Dm.GLOBAL_ID_MUDANCA_CELA);
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_MUDANCA_CELA',
      Dm.GLOBAL_ID_MUDANCA_CELA);

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_TIPOPROCESSO');

    Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_TIPOPROCESSO',
      qs(Dm.GLOBAL_TIPOPROCESSO));
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_TIPOPROCESSO',
      qs(Dm.GLOBAL_TIPOPROCESSO));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_OFICIO');
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_OFICIO',
      qs(Dm.GLOBAL_OFICIO));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NOME_JPEG');
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NOME_JPEG',
      qs(FNome_JPEG));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DATA_INICIAL');
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DATA_INICIAL',
      qs(Dm.GLOBAL_DATA_INICIAL));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DATA_FINAL');
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DATA_FINAL',
      qs(Dm.GLOBAL_DATA_FINAL));

    Dm.frxReport1.Variables.DeleteVariable('ID_FALTA_DISCIPLINAR');
    Dm.frxReport1.Variables.AddVariable('SIAP', 'ID_FALTA_DISCIPLINAR',
      qs(Dm.GLOBAL_ID_FALTA_DISCIPLINAR));

    Dm.frxReport1.Variables.DeleteVariable('GLOBAL_IDFUNCIONARIO');
    Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_IDFUNCIONARIO',
      Dm.GLOBAL_IDFUNCIONARIO_FILTRO);

    Dm.frxReport1.Variables.DeleteVariable('LOGO');
    Dm.frxReport1.Variables.AddVariable('SIAP', 'LOGO',
      qs(UniServerModule.StartPath + '\logo\BRASIL.jpg'));

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
  try
    try

      nome_agora := FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', now) +
        LimpaTexto(FNome) + '.html';

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
          Dm.frxReport1.PreviewPages.Clear;
          Dm.frxReport1.PrepareReport();
          Dm.frxReport1.Export(Dm.frxHTMLExport1);
          Dm.frxReport1.Terminated := true;

          UniURLFrame1.URL := UniServerModule.LocalCacheURL + nome_agora;

          UniURLFrame1.Refresh;
          UniURLFrame1.Repaint;
          UniURLFrame1.Update;

          if Dm.GLOBAL_IDCONEXAO > 0 then
          begin
            try
              Dm.Conexao.ExecuteDirect('update conexao set tela_momento = ' +
                qs(FCaminhoFR3) + ' where idconexao=' +
                inttostr(Dm.GLOBAL_IDCONEXAO));
            except
            end;
          end;
        end
        else
        begin
          Dm.frxReport1.PreviewPages.Clear;
          Dm.frxReport1.Terminated := true;
          FCaminhoFR3 := '';
          self.Close;
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
