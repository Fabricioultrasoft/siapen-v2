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
  uniImage;

type
  TFrmVisualizarRelatorio = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniPanel1: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniImage1: TUniImage;
    LabelTitulo: TUniLabel;
    UniImageLogoMarca: TUniImage;
    procedure UniFormShow(Sender: TObject);
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
  private
    FArquivo: String;
    FCaminhoFR3: String;
    FNome: String;
    FFiltro: String;
    FNomeTela: String;
    FFazExportacaoJPEG: Boolean;
    FNome_JPEG: string;
    procedure VisualizarRelatorio;
    procedure InsereVariaveis;
    procedure ExportarWord;
    procedure ExportarExcel;
    procedure ExportarPDF;
    function ExportarJPEG: string;
    { Private declarations }
  public
    property Nome: String read FNome write FNome;
    property FazExportacaoJPEG: Boolean read FFazExportacaoJPEG
      write FFazExportacaoJPEG;
    property Filtro: String read FFiltro write FFiltro;
    property NomeTela: String read FNomeTela write FNomeTela;
    property CaminhoFR3: String read FCaminhoFR3 write FCaminhoFR3;
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
  Lib;
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

procedure TFrmVisualizarRelatorio.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FCaminhoFR3 := '';
  FFazExportacaoJPEG := false;
end;

procedure TFrmVisualizarRelatorio.UniFormCreate(Sender: TObject);
begin
  FCaminhoFR3 := '';
  FFazExportacaoJPEG := false;
end;

procedure TFrmVisualizarRelatorio.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Self.Close;


end;

procedure TFrmVisualizarRelatorio.UniFormShow(Sender: TObject);
begin

  if NomeTela <> '' then
    LabelTitulo.Caption := NomeTela;

  UniURLFrame1.Visible := false;
  VisualizarRelatorio();
  UniURLFrame1.Visible := true;

end;

procedure TFrmVisualizarRelatorio.BMP1Click(Sender: TObject);
begin
  ExportarJPEG;
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
      Dm.frxReport1.LoadFromFile(FCaminhoFR3);

      InsereVariaveis;

      Dm.frxReport1.PrepareReport();
      Dm.frxReport1.Export(Dm.frxJPEGExport1);
      Dm.frxReport1.Terminated := true;
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

procedure TFrmVisualizarRelatorio.ExportarWord();
begin
end;

procedure TFrmVisualizarRelatorio.Fechar1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFrmVisualizarRelatorio.InsereVariaveis;
begin
  Dm.frxReport1.Variables.DeleteVariable('FILTRO');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'FILTRO', Qs(FFiltro));

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
    Qs(Dm.GLOBAL_ORGAO));
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO',
    Qs(Dm.GLOBAL_ORGAO));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_DEPARTAMENTO',
    Qs(Dm.GLOBAL_DEPARTAMENTO));
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO',
    Qs(Dm.GLOBAL_DEPARTAMENTO));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_DIRETORIA',
    Qs(Dm.GLOBAL_DIRETORIA));
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA',
    Qs(Dm.GLOBAL_DIRETORIA));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_IDAGENDA_ATENDIMENTO');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_IDAGENDA_ATENDIMENTO',
    Qs(Dm.GLOBAL_IDAGENDA_ATENDIMENTO));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_PADRAO_SISTEMA');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_PADRAO_SISTEMA',
    Qs(Dm.GLOBAL_PADRAO_SISTEMA));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_1');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_1',
    Qs(Dm.GLOBAL_NIVEL_1));
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_1',
    Qs(Dm.GLOBAL_NIVEL_1));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_2');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_2',
    Qs(Dm.GLOBAL_NIVEL_2));
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_2',
    Qs(Dm.GLOBAL_NIVEL_2));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_3');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_3',
    Qs(Dm.GLOBAL_NIVEL_3));
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_3',
    Qs(Dm.GLOBAL_NIVEL_3));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_4');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_4',
    Qs(Dm.GLOBAL_NIVEL_4));
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_4',
    Qs(Dm.GLOBAL_NIVEL_4));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ID_TRANSFERENCIA_INTERNO');
  Dm.frxReport1.Variables.AddVariable('GLOBAL',
    'GLOBAL_ID_TRANSFERENCIA_INTERNO', Dm.GLOBAL_ID_TRANSFERENCIA_INTERNO);
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_TRANSFERENCIA_INTERNO',
    Dm.GLOBAL_ID_TRANSFERENCIA_INTERNO);

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ID_MUDANCA_CELA');
  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_MUDANCA_CELA',
    Dm.GLOBAL_ID_MUDANCA_CELA);
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_MUDANCA_CELA',
    Dm.GLOBAL_ID_MUDANCA_CELA);

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_TIPOPROCESSO');

  Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_TIPOPROCESSO',
    Qs(Dm.GLOBAL_TIPOPROCESSO));
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_TIPOPROCESSO',
    Qs(Dm.GLOBAL_TIPOPROCESSO));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_OFICIO');
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_OFICIO',
    Qs(Dm.GLOBAL_OFICIO));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NOME_JPEG');
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NOME_JPEG',
    Qs(FNome_JPEG));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DATA_INICIAL');
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DATA_INICIAL',
    Qs(Dm.GLOBAL_DATA_INICIAL));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DATA_FINAL');
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DATA_FINAL',
    Qs(Dm.GLOBAL_DATA_FINAL));

  Dm.frxReport1.Variables.DeleteVariable('ID_FALTA_DISCIPLINAR');
  Dm.frxReport1.Variables.AddVariable('SIAP', 'ID_FALTA_DISCIPLINAR',
    Qs(Dm.GLOBAL_ID_FALTA_DISCIPLINAR));

  Dm.frxReport1.Variables.DeleteVariable('GLOBAL_IDFUNCIONARIO');
  Dm.frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_IDFUNCIONARIO',
    Dm.GLOBAL_IDFUNCIONARIO_FILTRO);

end;

procedure TFrmVisualizarRelatorio.PDF1Click(Sender: TObject);
begin
  ExportarPDF;
end;

procedure TFrmVisualizarRelatorio.VisualizarRelatorio();
var
  nome_agora: string;
begin
  try
    try

      if FFazExportacaoJPEG then
      begin

        FNome_JPEG := ExportarJPEG;

        FCaminhoFR3 := UniServerModule.StartPath + 'SYSTEM\visualizar_jpeg.fr3';

      end;

      nome_agora := FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', now) +
        LimpaTexto(FNome) + '.html';

      FArquivo := UniServerModule.LocalCachePath + nome_agora;

      if FCaminhoFR3 = '' then
        FCaminhoFR3 := UniServerModule.StartPath + 'relatorios\' +
          inttostr(Dm.GLOBAL_ID_UP) + '\' + FNome + '.fr3';

      Dm.frxReport1.ShowProgress := false;
      Dm.frxReport1.StoreInDFM := false;

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

        Dm.frxReport1.LoadFromFile(FCaminhoFR3);

        InsereVariaveis;

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
              Qs(FCaminhoFR3) + ' where idconexao=' +
              inttostr(Dm.GLOBAL_IDCONEXAO));
          except
          end;
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
