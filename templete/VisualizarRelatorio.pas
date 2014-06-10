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
  private
    FArquivo: String;
    FCaminhoFR3: String;
    FNome: String;
    FFiltro: String;
    FNomeTela: String;
    procedure VisualizarRelatorio;
    procedure ExportarWord;
    procedure ExportarExcel;
    procedure ExportarPDF;
    procedure ExportarJPEG;
    { Private declarations }
  public
    property Nome: String read FNome write FNome;
    property Filtro: String read FFiltro write FFiltro;
    property NomeTela: String read FNomeTela write FNomeTela;
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
//  , DMSoftwareImobiliario;

function FrmVisualizarRelatorio: TFrmVisualizarRelatorio;
begin
  Result := TFrmVisualizarRelatorio(UniMainModule.GetFormInstance(TFrmVisualizarRelatorio));
end;

procedure TFrmVisualizarRelatorio.UniBitBtn1Click(Sender: TObject);
begin
  self.Close;
// SELF.Free;
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

procedure TFrmVisualizarRelatorio.ExportarJPEG();
begin
end;

procedure TFrmVisualizarRelatorio.ExportarWord();
begin
end;

procedure TFrmVisualizarRelatorio.Fechar1Click(Sender: TObject);
begin
  self.Close;
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


    nome_agora := FormatDateTime('yyyy-mm-dd-hh-mm-ss-zzz', now) + FNome + '.html';

    FArquivo := UniServerModule.LocalCachePath + nome_agora;
    FCaminhoFR3 := UniServerModule.StartPath + 'relatorios\' + FNome + '.fr3';

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
      Dm.frxReport1.Variables.DeleteVariable('FILTRO');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'FILTRO', Qs(FFiltro));
      Dm.frxReport1.Variables.DeleteVariable('ID_UP');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'ID_UP', Dm.GLOBAL_ID_UP);
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ID_FUNCIONARIO');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_FUNCIONARIO', Dm.GLOBAL_ID_FUNCIONARIO);
      Dm.frxReport1.Variables.DeleteVariable('ID_INTERNO');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'ID_INTERNO', Dm.GLOBAL_ID_INTERNO);
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_IDAGENDA_ATENDIMENTO');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_IDAGENDA_ATENDIMENTO', Qs(Dm.GLOBAL_IDAGENDA_ATENDIMENTO));
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ORGAO', Qs(Dm.GLOBAL_ORGAO));
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_DEPARTAMENTO', Qs(Dm.GLOBAL_DEPARTAMENTO));
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_DIRETORIA', Qs(Dm.GLOBAL_DIRETORIA));
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_PADRAO_SISTEMA');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_PADRAO_SISTEMA', Qs(Dm.GLOBAL_PADRAO_SISTEMA));
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_1');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_1', Qs(Dm.GLOBAL_NIVEL_1));
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_2');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_2', Qs(Dm.GLOBAL_NIVEL_2));
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_3');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_3', Qs(Dm.GLOBAL_NIVEL_3));
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_4');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_4', Qs(Dm.GLOBAL_NIVEL_4));
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ID_TRANSFERENCIA_INTERNO');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_TRANSFERENCIA_INTERNO', Dm.GLOBAL_ID_TRANSFERENCIA_INTERNO);
      Dm.frxReport1.Variables.DeleteVariable('GLOBAL_ID_MUDANCA_CELA');
      Dm.frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_MUDANCA_CELA', Dm.GLOBAL_ID_MUDANCA_CELA);

      Dm.frxReport1.PrepareReport();
      Dm.frxReport1.Export(Dm.frxHTMLExport1);
      Dm.frxReport1.Terminated := true;

      UniURLFrame1.URL := UniServerModule.LocalCacheURL + nome_agora;

      UniURLFrame1.Refresh;
      UniURLFrame1.Repaint;
      UniURLFrame1.Update;
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

procedure TFrmVisualizarRelatorio.Word1Click(Sender: TObject);
begin
  ExportarWord;
end;

end.
