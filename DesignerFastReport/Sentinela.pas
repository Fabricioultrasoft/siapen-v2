unit Sentinela;

interface

uses
  IWSystem,
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DBXFirebird,
  Data.FMTBcd,
  Data.DB,
  frxDBXComponents,
  Datasnap.Provider,
  Datasnap.DBClient,
  Data.SqlExpr,
  frxGradient,
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
  Vcl.StdCtrls,
  frxChart,
  frxADOComponents,
  StrUtils,
  Inifiles,
  DBAccess,
  Uni,
  MemDS,
  InterBaseUniProvider,
  Vcl.Menus,
  Winapi.ShellAPI,
  Vcl.ExtCtrls,
  Xml.xmldom,
  Xml.XMLIntf,
  Xml.Win.msxmldom,
  Xml.XMLDoc,
  Vcl.ImgList;

const
  wm_IconMessage = wm_User;

type
  TFrmSentinela = class(TForm)
    Conexao: TSQLConnection;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxIBXComponents1: TfrxIBXComponents;
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
    frxDBXComponents1: TfrxDBXComponents;
    Button1: TButton;
    frxChartObject1: TfrxChartObject;
    frxADOComponents1: TfrxADOComponents;
    Button2: TButton;
    SqlVendasPorDia: TUniQuery;
    DsPrincipal: TDataSource;
    UniConnetion: TUniConnection;
    Memo1: TMemo;
    PopupMenu1: TPopupMenu;
    AbrirTeladoDesigner1: TMenuItem;
    TimerIcone: TTimer;
    ImgOffLine: TImageList;
    TimerSENTINELA: TTimer;
    FecharTEla1: TMenuItem;
    TimerCordenadas: TTimer;
    DsCordenadas: TDataSource;
    CdsCordenadas: TClientDataSet;
    DspCordenadas: TDataSetProvider;
    SqlCordenadas: TSQLQuery;
    SqlExecute: TUniQuery;
    TimerReativaCordenadas: TTimer;
    Label1: TLabel;
    DsCordRegiao: TDataSource;
    CdsCordRegiao: TClientDataSet;
    DspCordRegiao: TDataSetProvider;
    SqlCordRegiao: TSQLQuery;
    SqlExecute2: TUniQuery;
    CdsCordenadasIDCORDENADAS: TIntegerField;
    CdsCordenadasLAT: TStringField;
    CdsCordenadasLNG: TStringField;
    CdsCordenadasIDCLIFORNE: TIntegerField;
    CdsCordenadasENDERECO: TStringField;
    CdsCordenadasIDBANCO_DADOS: TIntegerField;
    CdsCordenadasENDERECO_VALIDADO: TStringField;
    CdsCordenadasSTATUS: TStringField;
    CdsCordenadasREGIAO: TStringField;
    CdsCordRegiaoIDCORDENADAS: TIntegerField;
    CdsCordRegiaoLATITUDE: TFloatField;
    CdsCordRegiaoLONGITUDE: TFloatField;
    CdsCordenadasENDERECO_SEM_BAIRRO: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AbrirTeladoDesigner1Click(Sender: TObject);
    procedure TimerIconeTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerSENTINELATimer(Sender: TObject);
    procedure FecharTEla1Click(Sender: TObject);
    procedure TimerCordenadasTimer(Sender: TObject);
    procedure TimerReativaCordenadasTimer(Sender: TObject);
  private
    IconeAtu: Integer;
    nid: TNotifyIconData;
    NaoMinimizar: Boolean;
    FecharSistema: Boolean;
    MinimizadoNoAtive: Boolean;
    Sentinela: STRING;
    TEMPO: STRING;
    function ConectaBalcao: Boolean;
    procedure OcultaBarra(Sender: TObject);
    procedure CriarIconeAtalho;
    procedure IconTray(var Msg: TMessage); message wm_IconMessage;
    procedure BrowserGotoURL(aAdress: String);
    function PegaParametros: Boolean;
    procedure MonitorLatLngGeral;
    procedure MonitorRegiaoGeral;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSentinela: TFrmSentinela;

implementation

{$R *.dfm}

procedure TFrmSentinela.AbrirTeladoDesigner1Click(Sender: TObject);
begin
  FrmSentinela.Show;
end;

procedure TFrmSentinela.BrowserGotoURL(aAdress: String);
var
  buffer: String;
begin
  buffer := 'http://' + aAdress;
  ShellExecute(Application.Handle, nil, pchar(buffer), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmSentinela.Button1Click(Sender: TObject);
begin
  ConectaBalcao;
  frxReport1.DesignReport();
end;

procedure GerarClientesXML();
var
  TextoXml: TStringList;
  sTexto: String;
begin

  TextoXml := TStringList.Create;
  TextoXml.Clear;
  TextoXml.Add('<?xml version="1.0" encoding="iso-8859-1"?>');
  TextoXml.Add('<markers>');
  {
    DM.CdsClientesXML.Open;
    DM.CdsClientesXML.First;
    while not DM.CdsClientesXML.Eof do
    begin
    sTexto := '<marker ';
    sTexto := sTexto + 'lat="' + DM.CdsClientesXMLLAT.AsString + '" ';
    sTexto := sTexto + 'lng="' + DM.CdsClientesXMLLNG.AsString + '" ';
    sTexto := sTexto + 'tipo="Clientes" ';
    sTexto := sTexto + 'Fantasia="' + DM.CdsClientesXMLNOME_FAN.AsString + '" ';
    sTexto := sTexto + 'Nome="' + DM.CdsClientesXMLIDCLIFORNE.AsString + '-' + DM.CdsClientesXMLNOME.AsString + '" ';
    sTexto := sTexto + 'Endereco="' + DM.CdsClientesXMLENDERECO.AsString + '" ';
    sTexto := sTexto + 'Bairro="' + DM.CdsClientesXMLBAIRRO.AsString + '" ';
    sTexto := sTexto + '/>';

    TextoXml.Add(sTexto);

    DM.CdsClientesXML.Next;
    end;
    DM.CdsClientesXML.Close;
 }
  TextoXml.Add('</markers>');

// TextoXml.SaveToFile(UniServerModule.StartPath + 'mapa\xml\clientes.xml');

end;

function GerarClientesHTML(): string;
var
  TextoXml: TStringList;
  sTexto: String;
begin

  TextoXml := TStringList.Create;
  TextoXml.Clear;
  TextoXml.Add('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">');
  TextoXml.Add('<html xmlns="http://www.w3.org/1999/xhtml">');
  TextoXml.Add('<head>');
  TextoXml.Add('	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">');
  TextoXml.Add('    <meta name="viewport" content="target-densitydpi=device-dpi, width=device-width, initial-scale=1.0, maximum-scale=1">');
  TextoXml.Add('    <meta name="description" content="Mapa - Alexandre Software - (67) 8401-2103">');
  TextoXml.Add('    <meta name="author" content="Alexandre Albuquerque - (67) 8401-2103">');
  TextoXml.Add('    <meta name="keywords" content="Alexandre Albuquerque, software, dados, administração">');
  TextoXml.Add('');
  TextoXml.Add('    <title>Mapa - Alexandre Software - (67) 8401-2103</title>');
  TextoXml.Add('	<script src="http://maps.google.com/maps?file=api&amp;v=2.97&amp;' +
    'key=ABQIAAAARu-WvQs4VW3yzGxnE_3NoRQDdZrPOy0F7QWzA6b-sYNJPVMCpBSee5Cya72jl8QYHk2RSZkHBHDnxQ" charset="UTF-8" type="text/javascript"></script>');
  TextoXml.Add('');
  TextoXml.Add('    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>');
  TextoXml.Add('	<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>');
  TextoXml.Add('');
  TextoXml.Add('	<script type="text/javascript">');
  TextoXml.Add('	// coloque seus arquivos dentro do array');
  TextoXml.Add('	var aCSFiles = new Array(');
  // TextoXml.Add('		"css/padrao.css"');
  TextoXml.Add(');');
  TextoXml.Add('');
  TextoXml.Add('	var aJSFiles = new Array(');
  TextoXml.Add('		"js/padrao.js"');
  TextoXml.Add('		);// Daqui pra frente é só copiar');
  TextoXml.Add('');
  TextoXml.Add('	function TagLinkStyle() {var sFile = arguments[0] + (arguments[0].indexOf(''?'') >= 0 ? "&" : "?") +' +
    ' "t=" + Math.floor(Math.random() * 5000);document.write("<link href=\"" + sFile + "\" rel=\"stylesheet\" type=\"text/css\" \/>");}');
  TextoXml.Add('	function TagScriptJavascript() { var sFile = arguments[0] + (arguments[0].indexOf(''?'') >= 0 ? "&" : "?") +' +
    ' "t=" + Math.floor(Math.random() * 5000); document.write("<script type=\"text\/javascript\" src=\"" + sFile + "\" language=\"javascript\"><\/script>"); }');
  TextoXml.Add('	for (i = 0; i < aCSFiles.length; i++) TagLinkStyle(aCSFiles[i]);');
  TextoXml.Add('	for (i = 0; i < aJSFiles.length; i++) TagScriptJavascript(aJSFiles[i]);');
  TextoXml.Add('	</script>');
  TextoXml.Add('');
  TextoXml.Add('');
  TextoXml.Add('</head>');
  TextoXml.Add('');
  TextoXml.Add('');
  TextoXml.Add('<body> onload="toggleGroup(&#39;icoClientes&#39;);"');
  TextoXml.Add('');
  TextoXml.Add('	<form id="frm">');
  TextoXml.Add('	<input type="hidden" id="tabID" value="" />');
  TextoXml.Add('	<input type="hidden" id="campoID" value="" />');
  TextoXml.Add('');
  TextoXml.Add(' 	<div class="mapa" id="map"></div>');
  TextoXml.Add('');
  TextoXml.Add('	</form>');
  TextoXml.Add('	<script type="text/javascript">');
  TextoXml.Add('    <!--');
  TextoXml.Add('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('	//VARIAVEIS GLOBAIS');
  TextoXml.Add('	var n=0;');
  TextoXml.Add('	var map;');
  TextoXml.Add('	var gdir;');
  TextoXml.Add('	var geocoder = null;');
  TextoXml.Add('	var addressMarker;');
  TextoXml.Add('	var saida = "";');
  TextoXml.Add('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('	//CRIACAO DO MAPA');
  TextoXml.Add('	map = new GMap2(document.getElementById("map"));');
  TextoXml.Add('	map.addControl(new GLargeMapControl());');
  TextoXml.Add('	map.addControl(new GMapTypeControl());');
  TextoXml.Add('	map.setCenter(new GLatLng(-20.50,-54.60), 12);');
  TextoXml.Add('	map.setMapType(G_NORMAL_MAP);');
  TextoXml.Add('	map.addControl(new GScaleControl());');
  TextoXml.Add('	map.addControl(new GOverviewMapControl());');
  TextoXml.Add('	map.enableScrollWheelZoom();');
  TextoXml.Add('	geocoder = new GClientGeocoder();');
  TextoXml.Add('	gdir = new GDirections(map, document.getElementById("resultado"));');
  TextoXml.Add('');
  TextoXml.Add('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('	/** CRIACAO DOS ICONES');
  TextoXml.Add('	 * Função: createIcon();');
  TextoXml.Add('	 * Parâmetros: (Url da imagem do icone),(Url da sombra do icone),(Tipo do icone: 1-Icone customizado / 2-Icone padrao do google maps)');
  TextoXml.Add('	 */');
  TextoXml.Add('	var icoClientes	= createIcon(''ico/marcador-clientes.ico'','',1);');
  TextoXml.Add('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('	//CRIACAO DOS GRUPOS markerGroups');
  TextoXml.Add('	var markericoClientes = new Array ();');
  TextoXml.Add('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('	/** CRIACAO DE XML NO GOOGLE MAPS');
  TextoXml.Add('	 * Função: createXMLGoogleMaps();');
  TextoXml.Add('	 * Parâmetros: (Url do XML),(Título do balão do google maps),(Nome do Ícone),(Variáveis que deseja apresentar nas informações do ponto)');
  TextoXml.Add('	 */');
  TextoXml.Add('	createXMLGoogleMaps("xml/clientes.xml","Dados do Cliente","icoClientes","Nome,Fantasia,Endereco,Bairro");');
  TextoXml.Add('');
  TextoXml.Add('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('    </script>');
  TextoXml.Add('</body>');
  TextoXml.Add('</html>');
  Result := FormatDateTime('ddmmyyyyhhmmsszzz', now) + '.html';
  TextoXml.SaveToFile(Result, TEncoding.UTF8);

end;

function TFrmSentinela.ConectaBalcao: Boolean;
var
  Parametros: TStrings;
  QualBanco, Arquivo: string;
  ini: TIniFile;
begin

  Parametros := TStringList.Create;
  Conexao.Connected := false;

  try
    if FileExists(gsAppPath + '../Config/Conexao.ini') then
    begin
      ini := TIniFile.Create(gsAppPath + '../Config/Conexao.ini');
      QualBanco := UpperCase(ini.ReadString('SGBD', 'BD', '')); // Conexao com Base de Dados do Balcao
      Sentinela := UpperCase(ini.ReadString('SGBD', 'SENTINELA', '')); // Conexao com Base de Dados do Balcao
      TEMPO := UpperCase(ini.ReadString('SGBD', 'TEMPO', '')); // Conexao com Base de Dados do Balcao
    end
    else
      ShowMessage('Arquivo de inicialização não encontrado: Config/Conexao.ini');
  finally
    ini.Free;
  end;

  TimerSENTINELA.Interval := STRTointdef(TEMPO, 120000);

  if FileExists(gsAppPath + '../Config/Firebird_conn.txt') then
  begin
    Arquivo := gsAppPath + '../Config/Firebird_conn.txt';
    Conexao.DriverName := 'Firebird';
    Conexao.ConnectionName := 'FBConnection';
    Conexao.GetDriverFunc := 'getSQLDriverINTERBASE';
    Conexao.LibraryName := 'dbxfb.dll';
    Conexao.VendorLib := 'fbclient.dll';
  end
  else
    ShowMessage('Arquivo de configuração do banco não encontrado: Config/Firebird_conn.txt');

  Parametros.LoadFromFile(Arquivo);

  Self.Caption := Parametros.Values['Database'];

  UniConnetion.Connected := false;
  UniConnetion.Server := copy(Parametros.Values['Database'], 1, pos(':', Parametros.Values['Database']) - 1);
  UniConnetion.Database := copy(Parametros.Values['Database'], pos(':', Parametros.Values['Database']) + 1, length(Parametros.Values['Database']));
  UniConnetion.Username := Parametros.Values['User_Name'];
  UniConnetion.Password := Parametros.Values['Password'];

  Conexao.Params := Parametros;

  try
    Conexao.Connected := true;
    UniConnetion.Connected := true;
    Result := true;
  except
    Result := false;
  end;

end;

procedure TFrmSentinela.CriarIconeAtalho;
var
  EstiloAtual: LongInt;
  H: HWnd;
  Nome: array [0 .. 127] of WideChar;
begin
  try

    // carrega o ícone inicial
    Icon.Handle := LoadIcon(HInstance, 'MAINICON');

    // preenche os dados da estrutura NotifyIcon
    nid.cbSize := sizeof(nid);
    nid.wnd := Handle;
    nid.uID := 1; // Identificador do ícone
    nid.uCallBAckMessage := wm_IconMessage;
    nid.hIcon := Application.Icon.Handle;
    StrPCopy(nid.szTip, ExtractFileName(Application.ExeName) + #13 + #10 + 'Alexandre Software' + #13 + #10 + 'Módulo Sentinela' + #13 + #10 + 'On Line ');
    nid.uFlags := nif_Message or nif_Icon or nif_Tip;

    // Shell_NotifyIcon (NIM_MODIFY, @nid);
    Shell_NotifyIcon(NIM_ADD, @nid);

    EstiloAtual := GetWindowLong(Handle, GWL_STYLE);
    SetWindowLong(Handle, GWL_STYLE, EstiloAtual and not WS_EX_PALETTEWINDOW);
    SetWindowPos(Handle, 0, 0, 0, 0, 0, SWP_DRAWFRAME or SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER);

    H := FindWindow(nil, pchar(Application.Title));
    { não Aparecer na barra de tarefa }
    ShowWindow(H, SW_HIDE);

  except
    on e: exception do
    begin
    end;
  end;

end;

procedure TFrmSentinela.FecharTEla1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSentinela.FormActivate(Sender: TObject);
begin
  if not MinimizadoNoAtive then
  begin
    try
      Application.OnMinimize := OcultaBarra;
      Application.OnRestore := OcultaBarra;
      Application.Minimize;
    except
      on e: exception do
      begin
      end;
    end;
    MinimizadoNoAtive := true;
  end;

end;

procedure TFrmSentinela.FormCreate(Sender: TObject);
begin
  NaoMinimizar := false;
  FecharSistema := false;
  MinimizadoNoAtive := false;
  ConectaBalcao;
end;

procedure TFrmSentinela.FormShow(Sender: TObject);
begin
//
end;

procedure TFrmSentinela.IconTray(var Msg: TMessage);
var
  Pt: TPoint;
begin
  try
    if Msg.lParam = wm_rbuttondown then
    begin
      GetCursorPos(Pt);
      PopupMenu1.Popup(Pt.x, Pt.y);
    end;

    if Msg.lParam = WM_LBUTTONDBLCLK then
    begin
      Application.Restore;
      FrmSentinela.SetFocus;
    end;
  except
    on e: exception do
    begin
    end;
  end;
end;

procedure TFrmSentinela.OcultaBarra(Sender: TObject);
var
  H: HWnd;
begin
  try
    if IsIconic(Application.Handle) then
    begin
      H := FindWindow(nil, pchar(Application.Title));
      { não Aparecer na barra de tarefa }
      if H <> 0 then
        ShowWindow(H, SW_HIDE);
    end;
  except
    on e: exception do
    begin
    end;
  end;

end;

procedure TFrmSentinela.TimerIconeTimer(Sender: TObject);
begin
  try
    TimerIcone.Enabled := false;

      // pega ícone da ImageList
    ImgOffLine.GetIcon(IconeAtu, Application.Icon);
      // atualiza o ícone
    InvalidateRect(Application.Handle, nil, true);
      // incrementa índice do ícone

    if IconeAtu >= 3 then
      IconeAtu := 0
    else
      Inc(IconeAtu);

    Application.Minimize;
    FrmSentinela.Hide;
    CriarIconeAtalho;

  except
    on e: exception do
    begin
    end;
  end;

end;

procedure TFrmSentinela.TimerSENTINELATimer(Sender: TObject);
begin
  if Sentinela = 'N' then
    exit;

  try
    TimerSENTINELA.Enabled := false;

    if FileExists('SENTINELA.BAT') then
    begin

      WinExec('SENTINELA.BAT', SW_HIDE);
      Memo1.Lines.Insert(0, 'Execução as:' + FormatDateTime('dd/mm/yyyy hh:mm:ss.zzz', now));
    end
    else
    begin
      Memo1.Lines.Insert(0, 'Não localizou SENTINELA.BAT - ' + FormatDateTime('dd/mm/yyyy hh:mm:ss.zzz', now));

    end;

  except
    on e: exception do
    begin
      Memo1.Lines.Insert(0, e.Message);
    end;
  end;
  TimerSENTINELA.Enabled := true;

end;

procedure TFrmSentinela.MonitorLatLngGeral();
var
  vXMLDoc: TXMLDocument;
  strCoordenadas: array [0 .. 2] of String;
  strURL: String;
  Nodestatus, Noderesult, Nodegeometry, Nodelocation: IXMLNode;
  Nodeviewport, Nodesouthwest, Nodenortheast: IXMLNode;
begin
 exit;
//  Conexao.ExecuteDirect('EXECUTE PROCEDURE AA_CORDENADAS_CLIFORNE');

  Conexao.Close;
  Conexao.Open;

  vXMLDoc := TXMLDocument.Create(Application);

  try

    CdsCordenadas.Close;
    CdsCordenadas.Open;
    CdsCordenadas.First;
    Label1.Caption := 'Cordenadas: ' + inttostr(CdsCordenadas.RecNo) + '/' + inttostr(CdsCordenadas.RecordCount);
    while not CdsCordenadas.Eof do
    begin
      Label1.Caption := 'Cordenadas: ' + inttostr(CdsCordenadas.RecNo) + '/' + inttostr(CdsCordenadas.RecordCount);
      Label1.Repaint;
      try
        strURL := 'http://maps.googleapis.com/maps/api/geocode/xml?address=' + CdsCordenadasENDERECO.AsString + '&sensor=false&region=br';
        vXMLDoc.FileName := strURL;
        vXMLDoc.Active := false;
        vXMLDoc.Active := true;
        if vXMLDoc.Active Then
        begin
          Nodestatus := vXMLDoc.DocumentElement.ChildNodes.Nodes['status'];
          if Nodestatus.Text = 'OK' then
          BEGIN

            Noderesult := vXMLDoc.DocumentElement.ChildNodes.Nodes['result'];
            Nodegeometry := Noderesult.ChildNodes.FindNode('geometry');
            Nodelocation := Nodegeometry.ChildNodes.FindNode('location');

            CdsCordenadas.Edit;
            CdsCordenadasLAT.AsString := Nodelocation.ChildNodes['lat'].Text;
            CdsCordenadasLNG.AsString := Nodelocation.ChildNodes['lng'].Text;
            CdsCordenadasSTATUS.AsString := 'OK';
            CdsCordenadasENDERECO_VALIDADO.AsString := CdsCordenadasENDERECO.AsString;

            CdsCordenadas.Post;

          end
          else
          begin
            strURL := 'http://maps.googleapis.com/maps/api/geocode/xml?address=' + CdsCordenadasENDERECO_SEM_BAIRRO.AsString + '&sensor=false&region=br';
            vXMLDoc.FileName := strURL;
            vXMLDoc.Active := false;
            vXMLDoc.Active := true;
            if vXMLDoc.Active Then
            begin
              Nodestatus := vXMLDoc.DocumentElement.ChildNodes.Nodes['status'];
              if Nodestatus.Text = 'OK' then
              BEGIN

                Noderesult := vXMLDoc.DocumentElement.ChildNodes.Nodes['result'];
                Nodegeometry := Noderesult.ChildNodes.FindNode('geometry');
                Nodelocation := Nodegeometry.ChildNodes.FindNode('location');

                CdsCordenadas.Edit;
                CdsCordenadasLAT.AsString := Nodelocation.ChildNodes['lat'].Text;
                CdsCordenadasLNG.AsString := Nodelocation.ChildNodes['lng'].Text;
                CdsCordenadasSTATUS.AsString := 'OK';
                CdsCordenadasENDERECO_VALIDADO.AsString := CdsCordenadasENDERECO.AsString;

                CdsCordenadas.Post;

              end
              else
              begin
                CdsCordenadas.Edit;
                CdsCordenadasSTATUS.AsString := 'ERRO';
                CdsCordenadasENDERECO_VALIDADO.AsString := '';
                CdsCordenadas.Post;
              end;
            end;
          end;
        end
        else
        begin
          strURL := 'http://maps.googleapis.com/maps/api/geocode/xml?address=' + CdsCordenadasENDERECO_SEM_BAIRRO.AsString + '&sensor=false&region=br';
          vXMLDoc.FileName := strURL;
          vXMLDoc.Active := false;
          vXMLDoc.Active := true;
          if vXMLDoc.Active Then
          begin
            Nodestatus := vXMLDoc.DocumentElement.ChildNodes.Nodes['status'];
            if Nodestatus.Text = 'OK' then
            BEGIN
              Noderesult := vXMLDoc.DocumentElement.ChildNodes.Nodes['result'];
              Nodegeometry := Noderesult.ChildNodes.FindNode('geometry');
              Nodelocation := Nodegeometry.ChildNodes.FindNode('location');

              CdsCordenadas.Edit;
              CdsCordenadasLAT.AsString := Nodelocation.ChildNodes['lat'].Text;
              CdsCordenadasLNG.AsString := Nodelocation.ChildNodes['lng'].Text;
              CdsCordenadasSTATUS.AsString := 'OK';
              CdsCordenadasENDERECO_VALIDADO.AsString := CdsCordenadasENDERECO.AsString;

              CdsCordenadas.Post;
            end
            else
            begin
              CdsCordenadas.Edit;
              CdsCordenadasSTATUS.AsString := 'ERRO';
              CdsCordenadasENDERECO_VALIDADO.AsString := '';
              CdsCordenadas.Post;
            end;
          end;
        end;
        CdsCordenadas.ApplyUpdates(-1);
        CdsCordenadas.Next;
      except
        CdsCordenadas.ApplyUpdates(-1);
        CdsCordenadas.Next;
      end;
    end;
    CdsCordenadas.Close;
    vXMLDoc.Free;
  except
    CdsCordenadas.ApplyUpdates(-1);
    CdsCordenadas.Close;
    vXMLDoc.Free;
  end;

end;

function PtInPoly(const Points: Array of TPoint; x, y: Integer): Boolean;
var
  Count, K, J: Integer;
begin
  Result := false;
  Count := length(Points);
  J := Count - 1;
  for K := 0 to Count - 1 do
  begin
    if ((Points[K].y <= y) and (y < Points[J].y)) or ((Points[J].y <= y) and (y < Points[K].y)) then
    begin
      if (x < (Points[J].x - Points[K].x) * (y - Points[K].y) / (Points[J].y - Points[K].y) + Points[K].x) then
        Result := not Result;
    end;
    J := K;
  end;
end;

procedure TFrmSentinela.MonitorRegiaoGeral;
var
  i, x: Integer;
  PointsRegiao: Array of Array of TPoint;
  Encontrou: Boolean;
begin

  SqlExecute.SQL.Text := 'select distinct descricao from mapa_regiao';;
  SqlExecute.Close;
  SqlExecute.Open;
  SetLength(PointsRegiao, SqlExecute.RecordCount);

  SqlExecute.First;
  for i := 0 to SqlExecute.RecordCount - 1 do
  begin
    SqlExecute2.SQL.Text := 'select CAST(TRUNC(latitude*10000000*(-1)) AS INTEGER) latitude, CAST(TRUNC(longitude*10000000*(-1)) AS INTEGER) longitude ' +
      ' from mapa_regiao where descricao=' + quotedstr(SqlExecute.FieldByName('descricao').AsString);
    SqlExecute2.Close;
    SqlExecute2.Open;
    SetLength(PointsRegiao[i], SqlExecute2.RecordCount);
    for x := 0 to SqlExecute2.RecordCount - 1 do
    begin
      PointsRegiao[i, x].x := SqlExecute2.FieldByName('latitude').AsInteger;
      PointsRegiao[i, x].y := SqlExecute2.FieldByName('longitude').AsInteger;
      SqlExecute2.Next;
    end;
    SqlExecute.Next;
  end;

  CdsCordRegiao.Close;
  CdsCordRegiao.Open;
  CdsCordRegiao.First;
  Label1.Caption := 'Cordenadas: ' + inttostr(CdsCordRegiao.RecNo) + '/' + inttostr(CdsCordRegiao.RecordCount);
  while not CdsCordRegiao.Eof do
  begin

    SqlExecute.First;
    Encontrou := false;
    for i := 0 to SqlExecute.RecordCount - 1 do
    begin
      if PtInPoly(PointsRegiao[i], Trunc(CdsCordRegiaoLATITUDE.AsFloat), Trunc(CdsCordRegiaoLONGITUDE.AsFloat)) then
      begin
        Encontrou := true;
        Conexao.ExecuteDirect('update cordenadas set regiao = ' + quotedstr(SqlExecute.FieldByName('descricao').AsString) + ' where idcordenadas=' +
          CdsCordRegiaoIDCORDENADAS.AsString);
        Break;
      end;
      SqlExecute.Next;
    end;
    if not Encontrou then
      Conexao.ExecuteDirect('update cordenadas set regiao = ' + quotedstr('SEM LOCAL') + ' where idcordenadas=' + CdsCordRegiaoIDCORDENADAS.AsString);

    CdsCordRegiao.Next;

  end;

  CdsCordRegiao.Close;
  SqlExecute.Close;
  SqlExecute2.Close;

end;

procedure TFrmSentinela.TimerCordenadasTimer(Sender: TObject);
begin
  if Sentinela = 'N' then
    exit;

  try

    TimerCordenadas.Enabled := false;

    ConectaBalcao;
    MonitorLatLngGeral();
    MonitorRegiaoGeral();

    Memo1.Clear;

  except
    on e: exception do
    begin
    end;
  end;

end;

procedure TFrmSentinela.TimerReativaCordenadasTimer(Sender: TObject);
begin
  if Sentinela = 'N' then
    exit;

  TimerCordenadas.Enabled := true;

end;

function TFrmSentinela.PegaParametros: Boolean;
var
  Parametros: TStrings;
  TEMPO: Integer;
  ini: TIniFile;
begin

  Parametros := TStringList.Create;
  Conexao.Connected := false;
  TEMPO := 1000;

  try
    if FileExists(gsAppPath + '../Config/Conexao.ini') then
    begin
      ini := TIniFile.Create(gsAppPath + '../Config/Conexao.ini');
      TEMPO := ini.ReadInteger('SGBD', 'TIMER', 1000); // Conexao com Base de Dados do Balcao
    end;
  finally
    if FileExists(gsAppPath + '../Config/Conexao.ini') then
      ini.Free;
    Parametros.Free;
  end;

  TimerSENTINELA.Interval := TEMPO;

end;

end.
