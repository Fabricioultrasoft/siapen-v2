unit Lib;

interface

uses Forms,
  Inifiles,
  Windows,
  Controls,
  WinSock,
  uniEdit,
  uniPageControl,
  uniBasicGrid,
  uniDBGrid,
  uniStatusBar,
  uniDBEdit,
  uniMultiItem,
  uniComboBox,
  uniDBComboBox,
  uniDBLookupComboBox,
  Messages,
  SysUtils,
  StrUtils,
  Variants,
  Classes,
  Graphics,
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIForm,
  uniGUIDialogs,
  Types,
  Shellapi,
  DateUtils,
  Data.DB,
  Datasnap.DBClient,
  Datasnap.Provider,
  Data.SqlExpr,
  Xml.xmldom,
  Xml.XMLIntf,
  Xml.Win.msxmldom,
  Xml.XMLDoc,
  uniGUIBaseClasses,
  uniGUIRegClasses,
  UniGUIVars,
  UniGUIApplication,
  DBXJSON,
  DBXJSONReflect,
  DBXCommon,
  RTTI,
  TypInfo,
  Generics.Collections,
  Data.DBXPlatform,
  zexmlss,
  zeodfs,
  zexmlssutils,
  zeformula,
  zsspxml,
  zexlsx,
  AbBase,
  AbBrowse,
  AbZBrows,
  AbZipper,
{$IFDEF Unicode} AnsiStrings, {$ENDIF}
{$IFNDEF FPC}
{$IF CompilerVersion > 22}zeZippyXE2, {$ELSE} zeZippyAB, {$IFEND} // <XE2 have not zip!
{$ELSE} zeZippyLaz, {$ENDIF}
  zeSave,
  zeSaveODS,
  zeSaveXLSX,
  zeSaveEXML,
  Vcl.Imaging.jpeg,
  ComObj, ActiveX, uniLabel;

type
  TChars = set of Char;

function SiapStringReplace(sString, OldCaracter1, NewCaracter1: string;
  OldCaracter2: string = ''; NewCaracter2: string = '';
  OldCaracter3: string = ''; NewCaracter3: string = ''): string;
function TrataExceptionErro(MsgErro: string): string;
function Qs(sDescricao: string): string;
function ApenasNumero(AValue: string): string;
function IIf(const condicao: Boolean; const Verdadeiro, Falso: Variant)
  : Variant;
function ValidaCpfCnpj(Numero: string; Mensagem: Boolean = false): Boolean;
function StrZero(const AValue: Variant; ALength: Integer;
  ANotEmpty: Boolean = false): string;
function UltimoDiaMes(Data: TDateTime): TDateTime;
function VencimetoComDiaPadrao(dData: TDateTime; pDia: Integer): TDateTime;
function VerificaDiasUteis(FormD: TUniForm; Data: TDateTime): TDateTime;
procedure DBAtualizaPrazo(CdsParcelas, CdsCadastro: TClientDataSet);
function ConvSenhaLetra(Str: string): string;
function DesConvSenhaLetra(Str: string): string;
function Senha(StrValue: string; Chave: Word = 256): string;
procedure CapturaLatLngGeral();
procedure DataSetToCSV(DataSet: TDataSet; FileName: String);
function RegistraEntradaConexao(sLogin, sSenha: string): Boolean;
function RegistraSaidaConexao: Boolean;
function BuscaTroca(Text, Busca, Troca: string): string;
procedure GerarClientesXML();
function GerarClientesHTML(): string;
function TrocaCaracterEspecial(aTexto: string; aLimExt: Boolean): string;
function PtInPoly(const Points: Array of TPoint; X, Y: Integer): Boolean;
function ContemValor(sCompare, sString: ShortString): Boolean;
function DataSetToJsonTxt(pDataSet: TDataSet): string;
function FmtValorSql(Valor: Variant): string;
function MesExtenso(Mes: Word): string;
function SalvarUniGridExcel(NomeExcel: string; GridExport: TUniDBGrid): Boolean;
function Generator(sGenerator: string): Integer;
procedure GravaIniValor(Arquivo, Sessao, Campo, Valor: string);
function LerIniValor(Arquivo, Sessao, Campo, Valor: string): string;
function TemPacelaPaga(sIdMovfinan: String): Boolean;
function VerificaInternoExiste(sNomeInterno, sNomeMae: string): Boolean;
function ConsultaRapida(Tabela, CampoRetorno, Where,
  CampoSelect: string): Variant;
function VerificaRGIExiste(sRGI: string): Boolean;
function VerificaVisitaExiste(scpf: string): Boolean;
function ConverterBmpParaJPeg(Arquivo: string;
  taxa_conv: Integer = 100): string;
function JpgToBmp(cImageJpg: string; cWidth: Integer = 205;
  cHeight: Integer = 154): string;
// Requer a Jpeg declarada na clausua uses da unit
procedure AddWhere(Query: TSQLQuery; WhereClause: string;
  StrAndOr: string = ' AND ');
procedure ListarDiretorios(Folder: string; lista: TStrings);
function LimpaChar(sValor: string): string;
function LimpaTexto(sString: string): string;
function MeuGuidCreate: string;
function ConsultaTabela(fUniFormRetorno: TUniForm;
  sSqlBusca, sCampoWhereSql, sID, sDescricao: String;
  UniDBEditRetorno: TUniDBEdit; UniLabelRetorno: TUniLabel;
  UniLabelRetorno2: TUniLabel = nil; UniLabelRetorno3: TUniLabel = nil)
  : Boolean;
function ConsultaTabelaUniEdit(fUniFormRetorno: TUniForm;
  sSqlBusca, sCampoWhereSql, sID, sDescricao: String; UniEditRetorno: TUniEdit;
  UniLabelRetorno: TUniLabel): Boolean;
{
  function ConsultaTabelaVariant(fUniFormRetorno: TUniForm;
  sSqlBusca, sCampoWhereSql, sID: String; VariantRetorno: Variant): Boolean;
}
function RetornaRegistro(sSqlBusca: String; UniDBEditRetorno: TUniCustomEdit;
  UniLabelRetorno: TUniLabel; UniLabelRetorno2: TUniLabel = nil;
  UniLabelRetorno3: TUniLabel = nil): Boolean;
function DiasUteis(DataIni, DataFim: TDateTime; sIgnorar: string): Integer;

const
  QBtn1 = 1;
  QBtn2 = 2;
  QBtn3 = 3;

  PortuguesLongMonthNames: Array [1 .. 12] of String = ('Janeiro', 'Fevereiro',
    'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro',
    'Novembro', 'Dezembro');

  // var_disciplinar: string;
  // var_data_disciplinar: TDateTime;

implementation

uses Main,
  humanejs,
  DmPrincipal,
  ServerModule, Consulta;

{ TLibVars }

function SiapStringReplace(sString, OldCaracter1, NewCaracter1: string;
  OldCaracter2: string = ''; NewCaracter2: string = '';
  OldCaracter3: string = ''; NewCaracter3: string = ''): string;
begin
  Result := sString;
  Result := StringReplace(Result, OldCaracter1, NewCaracter1, [rfReplaceAll]);
  if (Trim(OldCaracter2) <> '') then
    Result := StringReplace(Result, OldCaracter2, NewCaracter2, [rfReplaceAll]);
  if (Trim(OldCaracter3) <> '') then
    Result := StringReplace(Result, OldCaracter3, NewCaracter3, [rfReplaceAll]);
end;

function TrataExceptionErro(MsgErro: string): string;
begin
  Result := MsgErro;
  MsgErro := UpperCase(MsgErro);
  if Pos('MUST HAVE A VALUE', MsgErro) > -1 then
    Result := SiapStringReplace(MsgErro, 'FIELD', 'O CAMPO',
      'MUST HAVE A VALUE', 'PRECISA SER PREENCHIDO');

  if Pos('FIELD VALUE REQUIRED', MsgErro) > -1 then
    Result := SiapStringReplace(MsgErro, 'FIELD', 'EXISTEM CAMPOS QUE ',
      'VALUE REQUIRED', 'PRECISAM SER PREENCHIDOS');

  if Pos('CHANGED BY ANOTHER USER', MsgErro) > -1 then
    Result := SiapStringReplace(MsgErro, 'RECORD NOT FOUND OR', '',
      'CHANGED BY ANOTHER USER', 'O REGISTRO FOI ALTERADO POR OUTRO USUÁRIO');

  if Pos('VIOLATION OF FOREIGN KEY', MsgErro) > -1 then
    Result := SiapStringReplace(MsgErro, 'VIOLATION OF FOREIGN KEY',
      'VIOLAÇÃO DA CHAVE, EXISTE TABELA DEPENDENTE', 'ON TABLE', 'NA TABELA');

end;

function Qs(sDescricao: string): string;
begin
  Result := QuotedStr(sDescricao);
end;

function ApenasNumero(AValue: string): string;
var
  I: Integer;
begin
  Result := EmptyStr;
  for I := 1 to Length(AValue) do
    if AValue[I] in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'] then
      Result := Result + AValue[I];
end;

function IIf(const condicao: Boolean; const Verdadeiro, Falso: Variant)
  : Variant;
begin
  if condicao then
    Result := Verdadeiro
  else
    Result := Falso;
end;

function ValidaCpfCnpj(Numero: string; Mensagem: Boolean = false): Boolean;
var
  I, d, b, Digito: Byte;
  Soma: Integer;
  CNPJ, CPFCNPJ: Boolean;
  DgPass, DgCalc: string;
begin

  if Numero = '' then
  begin
    Result := True;
    Exit;
  end;

  Numero := ApenasNumero(Numero);
  // Caso o número não seja 11 (CPF) ou 14 (CNPJ), aborta
  case Length(Numero) of
    11:
      CNPJ := false;
    14:
      CNPJ := True;
  else
    begin
      if Mensagem then
        humane.error
          ('<b><font Color=red> ATENÇÃO !!!</font></b><br>Número do documento incompleto. </br>');
      Result := false;
      Exit;
    end;

  end;
  // Separa o número do digito
  DgCalc := '';
  DgPass := Copy(Numero, Length(Numero) - 1, 2);
  Numero := Copy(Numero, 1, Length(Numero) - 2);
  // Calcula o digito 1 e 2

  for d := 1 to 2 do
  begin
    b := IIf(d = 1, 2, 3); // BYTE
    Soma := IIf(d = 1, 0, StrToIntDef(DgCalc, 0) * 2);

    for I := Length(Numero) downto 1 do
    begin
      Soma := Soma + (Ord(Numero[I]) - Ord('0')) * b;
      Inc(b);
      if (b > 9) and CNPJ then
        b := 2;
    end;

    Digito := 11 - Soma mod 11;

    if Digito >= 10 then
      Digito := 0;
    DgCalc := DgCalc + Chr(Digito + Ord('0'));

  end;

  CPFCNPJ := DgCalc = DgPass;

  if (not CPFCNPJ) and Mensagem then
  begin
    if CNPJ then
      humane.error
        ('<b><font Color=red> ATENÇÃO !!!</font></b><br>Número CNPJ inválido.</br>')
    else
      humane.error
        ('<b><font Color=red> ATENÇÃO !!!</font></b><br>Numero do CPF inválido.</br>')
  end;

  Result := CPFCNPJ;

end;

function StrZero(const AValue: Variant; ALength: Integer;
  ANotEmpty: Boolean = false): string;
var
  strBase: string;
  int64Temp: Int64;
begin

  Result := EmptyStr;

  if (AValue <> Null) then
  begin
    if StrToInt64Def(VarToStrDef(AValue, '0'), 0) >= 0 then
    begin
      int64Temp := StrToInt64Def(VarToStrDef(AValue, '0'), 0);
      strBase := '%.' + IntToStr(ALength) + 'd';
      Result := Format(strBase, [int64Temp]);
    end
    else
      Result := AValue;
  end;

  if (StrToInt64Def(Result, 0) = 0) and (Result <> '000') and (not ANotEmpty)
  then
    Result := EmptyStr;

end;

function VencimetoComDiaPadrao(dData: TDateTime; pDia: Integer): TDateTime;
var
  sDia, sMes, sAno: string;
  s_Dia: Integer;
begin

  Result := dData;

  if pDia > 0 then
  begin
    // por Marcelo Ferreira em 26/03/2013 -
    // Validação para os meses que forem inferiores a data pretendida como padrao
    s_Dia := DayOf(UltimoDiaMes(dData));
    if pDia < s_Dia then
      s_Dia := pDia;

    sMes := FormatDateTime('MM', dData);
    sAno := FormatDateTime('YYYY', dData);

    try
      Result := StrToDateTime(IntToStr(s_Dia) + '/' + sMes + '/' + sAno);
    except
      on e: Exception do
      begin
        Result := dData;
      end;
    end;
  end;
end;

function UltimoDiaMes(Data: TDateTime): TDateTime;
var
  Ano, Mes, Dia: Word;
  DataAux: TDateTime;
begin
  DecodeDate(Data, Ano, Mes, Dia);
  // Modificado por Gavira 29/10/2009 11:42:33
  if (Mes = 12) then
  begin
    Mes := 1;
    Ano := Ano + 1;
    Dia := 1;
    DataAux := EncodeDate(Ano, Mes, Dia);
  end
  else
  begin
    Dia := 1;
    Mes := Mes + 1;
    DataAux := EncodeDate(Ano, Mes, Dia);
  end;
  Result := DataAux - 1;
end;

function VerificaDiasUteis(FormD: TUniForm; Data: TDateTime): TDateTime;
var
  Ano, Mes, Dia, Aux: Word;
  DatF: TDateTime;
  Semana: array [1 .. 7] of string;
  X: Integer;
  LiberaData: Boolean;
begin
end;

procedure DBAtualizaPrazo(CdsParcelas, CdsCadastro: TClientDataSet);
var
  vNossoNumero: string;
  vRecNo: Integer;
  Reg, Parc: Integer;
  ValorTotal, Valor_Tot, Soma_Atual, Valor_Digitado: Currency;
  fComp: TComponent;
begin

  Soma_Atual := 0;
  Valor_Tot := CdsCadastro.FieldByName('VALOR').AsFloat;
  ValorTotal := CdsCadastro.FieldByName('VALOR').AsFloat;
  Reg := CdsParcelas.FieldByName('NUM_PARCELA').AsInteger;
  Parc := CdsParcelas.FieldByName('TOT_PARCELA').AsInteger - Reg;
  Valor_Digitado := CdsParcelas.FieldByName('VALOR').AsFloat;
  CdsParcelas.First;

  if Reg > 1 then
  begin
    while (not((Reg + 1) = CdsParcelas.FieldByName('NUM_PARCELA').AsInteger)) do
    begin
      Soma_Atual := Soma_Atual + CdsParcelas.FieldByName('VALOR').AsFloat;
      CdsParcelas.Next;
    end;
  end
  else
  begin
    Soma_Atual := Soma_Atual + CdsParcelas.FieldByName('VALOR').AsFloat;
  end;

  CdsParcelas.First;
  if (Valor_Digitado > Valor_Tot) or (Valor_Digitado < 0) or
    (Valor_Digitado = 0) or ((Soma_Atual >= Valor_Tot) and (not(Parc = 0))) then
  begin
    humane.error('<b><font Color=red> ATENÇÃO !!!' +
      '</font></b><br>O valor digitado é inválido!');

    CdsParcelas.First;
    while not CdsParcelas.Eof do
    begin
      CdsParcelas.Edit;
      CdsParcelas.FieldByName('VALOR').AsFloat :=
        CdsParcelas.FieldByName('VALOR').OldValue;
      CdsParcelas.FieldByName('VALOR_ORIGINAL').AsFloat :=
        CdsParcelas.FieldByName('VALOR_ORIGINAL').OldValue;
      CdsParcelas.Post;
      CdsParcelas.Next;
    end;
    CdsParcelas.Locate('NUM_PARCELA', Reg, []);
    CdsParcelas.EnableControls;
    Exit;
  end;

  CdsParcelas.First;
  Valor_Tot := Round(ValorTotal - Soma_Atual);
  while not CdsParcelas.Eof do
  begin
    CdsParcelas.Edit;
    if CdsParcelas.FieldByName('NUM_PARCELA').AsInteger > Reg then
      CdsParcelas.FieldByName('VALOR').AsFloat := Round(Valor_Tot / Parc);

    CdsParcelas.FieldByName('VALOR_ORIGINAL').AsFloat :=
      CdsParcelas.FieldByName('VALOR').AsFloat;
    CdsParcelas.Post;
    CdsParcelas.Next;
  end;

  Soma_Atual := 0;
  CdsParcelas.First;
  while not CdsParcelas.Eof do
  begin
    Soma_Atual := Round(Soma_Atual + CdsParcelas.FieldByName('VALOR').AsFloat);
    if CdsParcelas.FieldByName('NUM_PARCELA')
      .AsInteger = CdsParcelas.FieldByName('TOT_PARCELA').AsInteger then
    begin
      CdsParcelas.Edit;
      if Soma_Atual < ValorTotal then
        CdsParcelas.FieldByName('VALOR').AsFloat :=
          CdsParcelas.FieldByName('VALOR').AsFloat + (ValorTotal - Soma_Atual)
      else if Soma_Atual > ValorTotal then
        CdsParcelas.FieldByName('VALOR').AsFloat :=
          (CdsParcelas.FieldByName('VALOR').AsFloat -
          (Soma_Atual - ValorTotal));

      CdsParcelas.FieldByName('VALOR_ORIGINAL').AsFloat :=
        CdsParcelas.FieldByName('VALOR').AsFloat;
      CdsParcelas.Post;
    end;

    if CdsParcelas.FieldByName('PRAZO').AsVariant <> Null then
    begin
      CdsParcelas.Edit;
      CdsParcelas.FieldByName('DATAVENCIMENTO').AsDateTime :=
        (CdsParcelas.FieldByName('DATAEMISSAO').AsDateTime +
        CdsParcelas.FieldByName('PRAZO').AsVariant);
      CdsParcelas.FieldByName('DATAPRORROGACAO').AsDateTime :=
        CdsParcelas.FieldByName('DATAVENCIMENTO').AsDateTime;
      CdsParcelas.FieldByName('IDCXBCO').AsVariant := Null;
      CdsParcelas.Post;
    end;

    if CdsParcelas.FieldByName('DATAPRORROGACAO').AsVariant <> Null then
    begin
      CdsParcelas.Edit;
      CdsParcelas.FieldByName('PRAZO').AsVariant :=
        (CdsParcelas.FieldByName('DATAPRORROGACAO').AsDateTime -
        CdsParcelas.FieldByName('DATAEMISSAO').AsDateTime);
      CdsParcelas.FieldByName('DATAVENCIMENTO').AsDateTime :=
        CdsParcelas.FieldByName('DATAPRORROGACAO').AsDateTime;
      CdsParcelas.FieldByName('IDCXBCO').AsVariant := Null;
      CdsParcelas.Post;
    end;

    CdsParcelas.Next;

  end;
  CdsParcelas.Locate('NUM_PARCELA', Reg, []);
  if CdsParcelas.State in [dsInsert, dsEdit] then
    CdsParcelas.Post;

end;

function ConvSenhaLetra(Str: string): string;
const
  Chave = 'ALEXPRODUZ';
  Numero = '1234567890';
var
  X: Integer;
  sStrEntrada: string;
begin

  sStrEntrada := Str;

  try
    if Length(sStrEntrada) > 0 then
    begin
      for X := 1 to Length(sStrEntrada) + 1 do
        if Pos(sStrEntrada[X], Numero) <> 0 then
          sStrEntrada[X] := Chave[Pos(sStrEntrada[X], Numero)];
    end;
  except
  end;

  Result := sStrEntrada;

end;

function DesConvSenhaLetra(Str: string): string;
const
  Chave = 'ALEXPRODUZ';
  Numero = '1234567890';
var
  X: Integer;
begin
  if Length(Str) > 0 then
  begin
    for X := 1 to Length(Str) do
    begin
      if Pos(Str[X], Chave) <> 0 then
      begin
        Str[X] := Numero[Pos(Str[X], Chave)];
      end
      else
      begin
        Str[X] := '0';
      end;
    end;
  end;
  Result := Str;
end;

function Senha(StrValue: string; Chave: Word = 256): string;
var
  I: Integer;
  OutValue: string;
begin
  OutValue := '';
  for I := 1 to Length(StrValue) do
    OutValue := OutValue + Char(not(Ord(StrValue[I]) - Chave));
  Result := OutValue;
end;

procedure CapturaLatLngGeral();
var
  vXMLDoc: TXMLDocument;
  strCoordenadas: array [0 .. 2] of String;
  strURL: String;
  Nodestatus, Noderesult, Nodegeometry, Nodelocation: IXMLNode;
  Nodeviewport, Nodesouthwest, Nodenortheast: IXMLNode;
begin
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
  TextoXml.Add
    ('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">');
  TextoXml.Add('<html xmlns="http://www.w3.org/1999/xhtml">');
  TextoXml.Add('<head>');
  TextoXml.Add
    ('	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">');
  TextoXml.Add
    ('    <meta name="viewport" content="target-densitydpi=device-dpi, width=device-width, initial-scale=1.0, maximum-scale=1">');
  TextoXml.Add
    ('    <meta name="description" content="Mapa - Alexandre Software - (67) 8401-2103">');
  TextoXml.Add
    ('    <meta name="author" content="Alexandre Albuquerque - (67) 8401-2103">');
  TextoXml.Add
    ('    <meta name="keywords" content="Alexandre Albuquerque, software, dados, administração">');
  TextoXml.Add('');
  TextoXml.Add('    <title>Mapa - Alexandre Software - (67) 8401-2103</title>');
  TextoXml.Add
    ('	<script src="http://maps.google.com/maps?file=api&amp;v=2.97&amp;' +
    'key=ABQIAAAARu-WvQs4VW3yzGxnE_3NoRQDdZrPOy0F7QWzA6b-sYNJPVMCpBSee5Cya72jl8QYHk2RSZkHBHDnxQ" charset="UTF-8" type="text/javascript"></script>');
  TextoXml.Add('');
  TextoXml.Add
    ('    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>');
  TextoXml.Add
    ('	<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>');
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
  TextoXml.Add
    ('	function TagLinkStyle() {var sFile = arguments[0] + (arguments[0].indexOf(''?'') >= 0 ? "&" : "?") +'
    + ' "t=" + Math.floor(Math.random() * 5000);document.write("<link href=\"" + sFile + "\" rel=\"stylesheet\" type=\"text/css\" \/>");}');
  TextoXml.Add
    ('	function TagScriptJavascript() { var sFile = arguments[0] + (arguments[0].indexOf(''?'') >= 0 ? "&" : "?") +'
    + ' "t=" + Math.floor(Math.random() * 5000); document.write("<script type=\"text\/javascript\" src=\"" + sFile + "\" language=\"javascript\"><\/script>"); }');
  TextoXml.Add
    ('	for (i = 0; i < aCSFiles.length; i++) TagLinkStyle(aCSFiles[i]);');
  TextoXml.Add
    ('	for (i = 0; i < aJSFiles.length; i++) TagScriptJavascript(aJSFiles[i]);');
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
  TextoXml.Add
    ('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('	//VARIAVEIS GLOBAIS');
  TextoXml.Add('	var n=0;');
  TextoXml.Add('	var map;');
  TextoXml.Add('	var gdir;');
  TextoXml.Add('	var geocoder = null;');
  TextoXml.Add('	var addressMarker;');
  TextoXml.Add('	var saida = "";');
  TextoXml.Add
    ('	//------------------------------------------------------------------------------------------');
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
  TextoXml.Add
    ('	gdir = new GDirections(map, document.getElementById("resultado"));');
  TextoXml.Add('');
  TextoXml.Add
    ('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('	/** CRIACAO DOS ICONES');
  TextoXml.Add('	 * Função: createIcon();');
  TextoXml.Add
    ('	 * Parâmetros: (Url da imagem do icone),(Url da sombra do icone),(Tipo do icone: 1-Icone customizado / 2-Icone padrao do google maps)');
  TextoXml.Add('	 */');
  TextoXml.Add
    ('	var icoClientes	= createIcon(''ico/marcador-clientes.ico'','',1);');
  TextoXml.Add
    ('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('	//CRIACAO DOS GRUPOS markerGroups');
  TextoXml.Add('	var markericoClientes = new Array ();');
  TextoXml.Add
    ('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('	/** CRIACAO DE XML NO GOOGLE MAPS');
  TextoXml.Add('	 * Função: createXMLGoogleMaps();');
  TextoXml.Add
    ('	 * Parâmetros: (Url do XML),(Título do balão do google maps),(Nome do Ícone),(Variáveis que deseja apresentar nas informações do ponto)');
  TextoXml.Add('	 */');
  TextoXml.Add
    ('	createXMLGoogleMaps("xml/clientes.xml","Dados do Cliente","icoClientes","Nome,Fantasia,Endereco,Bairro");');
  TextoXml.Add('');
  TextoXml.Add
    ('	//------------------------------------------------------------------------------------------');
  TextoXml.Add('    </script>');
  TextoXml.Add('</body>');
  TextoXml.Add('</html>');
  Result := FormatDateTime('ddmmyyyyhhmmsszzz', now) + '.html';
  TextoXml.SaveToFile(Result, TEncoding.UTF8);

end;

procedure DataSetToCSV(DataSet: TDataSet; FileName: String);
var
  List: TStringList;
  S: String;
  I: Integer;
begin
  List := TStringList.Create;
  try
    DataSet.First;
    while not DataSet.Eof do
    begin
      S := '';
      for I := 0 to DataSet.FieldCount - 1 do
      begin
        if S > '' then
          S := S + ',';
        S := S + '"' + DataSet.Fields[I].AsString + '"';
      end;
      List.Add(S);
      DataSet.Next;
    end;
  finally
    List.SaveToFile(FileName);
    List.Free;
  end;
end;

function RegistraEntradaConexao(sLogin, sSenha: string): Boolean;
var
  C: TUniClientInfoRec;
begin
  {
    sIp := UniApplication.RemoteAddress;

    C := UniApplication.ClientInfoRec;

    sBrowser := C.BrowserType;
    sVersao := IntToStr(C.BrowserVersion);
    sOSType := C.OSType;

    DM.Conexao.ExecuteDirect
    ('insert into log_conexao (idlog_conexao, login, senha, data_hora, ip_maquina, tipo) '
    + ' values (0, ' + Qs(sLogin) + ', ' + Qs(sSenha) + ', ''now'', ' + Qs(sIp)
    + ', ' + Qs('ENTRADA - Browser:' + sBrowser + ' Versao:' + sVersao +
    ' OSType:' + sOSType) + ')');
  }
end;

function RegistraSaidaConexao: Boolean;
begin
  {
    Exit;

    if DM.Conexao.Connected then
    BEGIN
    DM.Conexao.ExecuteDirect
    ('insert into log_conexao (idlog_conexao, login, senha, data_hora, ip_maquina, tipo) '
    + ' values (0, ' + Qs(DM.GLOBAL_NOME_FUNCIONARIO_LOGADO) + ', ' + Qs('') +
    ', ''now'', ' + Qs(sIp) + ', ' + Qs('SAIDA - Browser:' + sBrowser +
    ' Versao:' + sVersao + ' OSType:' + sOSType) + ')');
    END;
  }
end;

function BuscaTroca(Text, Busca, Troca: string): string;
var
  n, I: Integer;
begin
  I := Length(Busca);
  for n := 1 to Length(Text) do
  begin
    if Copy(Text, n, I) = Busca then
    begin
      Delete(Text, n, I);
      Insert(Troca, Text, n);
    end;
  end;
  Result := Text;
end;

function TrocaCaracterEspecial(aTexto: string; aLimExt: Boolean): string;
const
  // Lista de caracteres especiais
  xCarEsp: array [1 .. 38] of String = ('á', 'à', 'ã', 'â', 'ä', 'Á', 'À', 'Ã',
    'Â', 'Ä', 'é', 'è', 'É', 'È', 'í', 'ì', 'Í', 'Ì', 'ó', 'ò', 'ö', 'õ', 'ô',
    'Ó', 'Ò', 'Ö', 'Õ', 'Ô', 'ú', 'ù', 'ü', 'Ú', 'Ù', 'Ü', 'ç', 'Ç', 'ñ', 'Ñ');
  // Lista de caracteres para troca
  xCarTro: array [1 .. 38] of String = ('a', 'a', 'a', 'a', 'a', 'A', 'A', 'A',
    'A', 'A', 'e', 'e', 'E', 'E', 'i', 'i', 'I', 'I', 'o', 'o', 'o', 'o', 'o',
    'O', 'O', 'O', 'O', 'O', 'u', 'u', 'u', 'u', 'u', 'u', 'c', 'C', 'n', 'N');
  // Lista de Caracteres Extras
  xCarExt: array [1 .. 48] of string = ('<', '>', '!', '@', '#', '$', '%', '¨',
    '&', '*', '(', ')', '_', '+', '=', '{', '}', '[', ']', '?', ';', ':', ',',
    '|', '*', '"', '~', '^', '´', '`', '¨', 'æ', 'Æ', 'ø', '£', 'Ø', 'ƒ', 'ª',
    'º', '¿', '®', '½', '¼', 'ß', 'µ', 'þ', 'ý', 'Ý');
var
  xTexto: string;
  I: Integer;
begin
  xTexto := aTexto;
  for I := 1 to 38 do
    xTexto := StringReplace(xTexto, xCarEsp[I], xCarTro[I], [rfReplaceAll]);
  // De acordo com o parâmetro aLimExt, elimina caracteres extras.
  if (aLimExt) then
    for I := 1 to 48 do
      xTexto := StringReplace(xTexto, xCarExt[I], '', [rfReplaceAll]);
  Result := xTexto;
end;

function PtInPoly(const Points: Array of TPoint; X, Y: Integer): Boolean;
var
  Count, K, J: Integer;
begin
  Result := false;
  Count := Length(Points);
  J := Count - 1;
  for K := 0 to Count - 1 do
  begin
    if ((Points[K].Y <= Y) and (Y < Points[J].Y)) or
      ((Points[J].Y <= Y) and (Y < Points[K].Y)) then
    begin
      if (X < (Points[J].X - Points[K].X) * (Y - Points[K].Y) /
        (Points[J].Y - Points[K].Y) + Points[K].X) then
        Result := not Result;
    end;
    J := K;
  end;
end;

function ContemValor(sCompare, sString: ShortString): Boolean;
var
  P: Byte;
begin
  try
    Result := false;
    P := Pos(sCompare, sString);
    if P > 0 then
      Result := True;
  except
  end;
end;

function FmtValorSql(Valor: Variant): string;
var
  Vx, Vy: string;
  function FilterChars(const S: string; const ValidChars: TChars): string;
  var
    I: Integer;
  begin
    Result := '';
    for I := 1 to Length(S) do
      if S[I] in ValidChars then
        Result := Result + S[I];
  end;

begin
  Vy := VarToStrDef(Valor, '0');
  Vx := FormatFloat('0.00', StrToFloatDef(Vy, 0));
  Result := StringReplace(Vx, ',', '.', [rfReplaceAll, rfIgnoreCase])
end;

function DataSetToJsonTxt(pDataSet: TDataSet): string;
var
  ArrayJSon: TJSONArray;
  ObjJSon: TJSONObject;
  strJSon: TJSONString;
  intJSon: TJSONNumber;
  TrueJSon: TJSONTrue;
  FalseJSon: TJSONFalse;
  I: Integer;
  pField: TField;
begin

  Result := '[';
  ArrayJSon := TJSONArray.Create;
  try
    pDataSet.First;
    while not pDataSet.Eof do
    begin
      ObjJSon := TJSONObject.Create;
      for pField in pDataSet.Fields do
      begin

        case pField.DataType of
          ftString:
            begin
              strJSon := TJSONString.Create(pField.AsString);
              ObjJSon.AddPair(LowerCase(pField.FieldName), strJSon);
            end;
          ftInteger:
            begin
              intJSon := TJSONNumber.Create(pField.AsInteger);
              ObjJSon.AddPair(LowerCase(pField.FieldName), intJSon);
            end;
          ftBoolean:
            begin
              TrueJSon := TJSONTrue.Create;
              ObjJSon.AddPair(LowerCase(pField.FieldName), TrueJSon);
            end;
          ftFloat, ftBCD, ftCurrency:
            begin
              strJSon := TJSONString.Create(FmtValorSql(pField.AsString));
              ObjJSon.AddPair(LowerCase(pField.FieldName), strJSon);
            end;

        else // casos gerais são tratados como string
          begin
            strJSon := TJSONString.Create(pField.AsString);
            ObjJSon.AddPair(LowerCase(pField.FieldName), strJSon);
          end;
        end;

      end;
      ArrayJSon.AddElement(ObjJSon);
      pDataSet.Next;

      if pDataSet.Eof then
        Result := Result + ObjJSon.ToString + #13
      else
        Result := Result + ObjJSon.ToString + #13 + ',' + #13;

    end;
    // Result := ArrayJSon.ToString;
  finally
    Result := Result + ']';
    ArrayJSon.Free;
  end;
end;

function MesExtenso(Mes: Word): string;
const
  meses: array [0 .. 11] of PChar = ('Janeiro', 'Fevereiro', 'Março', 'Abril',
    'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro',
    'Dezembro');
begin
  Result := meses[Mes - 1];
End;

function my_local_to_some_encoding(value: ansistring): ansistring;
begin
  Result := value; // AnsiToUtf8(value);
end;

function SalvarUniGridExcel(NomeExcel: string; GridExport: TUniDBGrid): Boolean;
var
  XMLSS: TZEXMLSS;
  I, J: Integer;
  TextConverter: TAnsiToCPConverter;
  sEOL: string;
  XTitulo: Integer;
  XLinha: Integer;
  XColuna: Integer;
  S: string;
  _ConvertParams: Integer;
  TemTituloAgrupado: Boolean;
  TituloAgrupadoAntes: String;
  ColunaAgrupadoInicial: Integer;
begin
  Result := false;
  TextConverter := nil;
{$IFNDEF FPC}
{$IF CompilerVersion < 20} // < RAD Studio 2009
  TextConverter := @AnsiToUtf8;
{$IFEND}
{$ENDIF}
{$IFDEF FPC}
  sEOL := LineEnding;
{$ELSE}
  sEOL := sLineBreak;
{$ENDIF}
  XMLSS := TZEXMLSS.Create(nil);

  try
    // There are 1 pages in this document
    XMLSS.Sheets.Count := 1;
    XMLSS.Sheets[0].Title := GridExport.HeaderTitle;

    // Add styles
    XMLSS.Styles.Count := 3;

    XMLSS.Styles[0].Font.Size := 8;
    XMLSS.Styles[0].Font.Name := 'Arial';
    XMLSS.Styles[0].Alignment.Horizontal := ZHCenter;
    // This parameters are optional and some styles options too (line backcolor, text oriantation  etc).
    XMLSS.Styles[0].Alignment.Vertical := ZVCenter;
    XMLSS.Styles[0].Alignment.WrapText := True;
    XMLSS.Styles[0].Border[0].Weight := 2;
    XMLSS.Styles[0].Border[0].LineStyle := ZEContinuous;
    XMLSS.Styles[0].BGColor := clWhite;
    for I := 1 to 3 do
      XMLSS.Styles[0].Border[I].Assign(XMLSS.Styles[0].Border[0]);

    XMLSS.Styles[1].Font.Size := 10;
    XMLSS.Styles[1].Font.Name := 'Arial';
    XMLSS.Styles[1].Border[0].Weight := 1;
    XMLSS.Styles[1].Border[0].LineStyle := ZEContinuous;
    XMLSS.Styles[1].BGColor := clWhite;
    for I := 1 to 3 do
      XMLSS.Styles[1].Border[I].Assign(XMLSS.Styles[1].Border[0]);

    XMLSS.Styles[2].Font.Size := 10;
    XMLSS.Styles[2].Font.Name := 'Arial';
    XMLSS.Styles[2].NumberFormat := '_-R$ * #,##0.00';
    XMLSS.Styles[2].Border[0].Weight := 1;
    XMLSS.Styles[2].Border[0].LineStyle := ZEContinuous;
    XMLSS.Styles[2].BGColor := clWhite;
    for I := 1 to 3 do
      XMLSS.Styles[2].Border[I].Assign(XMLSS.Styles[2].Border[0]);

    // the count of rows and columns
    // ZEXMLSS must know how many contain rows and cols. You must set this properties before beginging exporting.
    XMLSS.Sheets[0].RowCount := GridExport.DataSource.DataSet.RecordCount + 1;
    //
    XMLSS.Sheets[0].ColCount := GridExport.Columns.Count + 1;

    TemTituloAgrupado := false;
    For XTitulo := 0 TO GridExport.Columns.Count - 1 do
    Begin
      if GridExport.Columns[XTitulo].GroupHeader <> '' then
      begin
        TemTituloAgrupado := True;
        break;
      end;
    End;

    XLinha := 0; // row. First row contain field

    if TemTituloAgrupado then
    begin
      TituloAgrupadoAntes := '[...]';
      ColunaAgrupadoInicial := -1;
      For XTitulo := 0 TO GridExport.Columns.Count - 1 do
      Begin
        XMLSS.Sheets[0].CELL[XTitulo, XLinha].CellStyle := 0;
        XMLSS.Sheets[0].CELL[XTitulo, XLinha].Data := GridExport.Columns
          [XTitulo].GroupHeader;
        if TituloAgrupadoAntes <> GridExport.Columns[XTitulo].GroupHeader then
        begin
          if ColunaAgrupadoInicial < (XTitulo - 1) then
            XMLSS.Sheets[0].MergeCells.AddRectXY(ColunaAgrupadoInicial, XLinha,
              XTitulo - 1, XLinha);
          ColunaAgrupadoInicial := XTitulo;
          TituloAgrupadoAntes := GridExport.Columns[XTitulo].GroupHeader;
        end;
      End;
      if ColunaAgrupadoInicial < (XTitulo - 1) then
        XMLSS.Sheets[0].MergeCells.AddRectXY(ColunaAgrupadoInicial, XLinha,
          XTitulo - 1, XLinha);
      Inc(XLinha); // row. First row contain field
    end;

    // All Field Names
    For XTitulo := 0 TO GridExport.Columns.Count - 1 do
    Begin
      XMLSS.Sheets[0].Columns[XTitulo].Width := GridExport.Columns
        [XTitulo].Width;
      XMLSS.Sheets[0].Columns[XTitulo].AutoFitWidth := True;
      XMLSS.Sheets[0].CELL[XTitulo, XLinha].CellStyle := 0;
      XMLSS.Sheets[0].CELL[XTitulo, XLinha].Data := GridExport.Columns[XTitulo]
        .Title.Caption;
    End;

    //
    Inc(XLinha); // row. First row contain field
    XColuna := 0;

    // we transfer to all records to ZEXMLSS
    GridExport.DataSource.DataSet.First;
    While not GridExport.DataSource.DataSet.Eof do
    Begin
      For XColuna := 0 TO GridExport.Columns.Count - 1 do
      Begin

        if (GridExport.Columns[XColuna].Field.DataType in [ftFloat, ftCurrency])
        then
        begin

          if TFloatField(GridExport.Columns[XColuna].Field).Currency then
            XMLSS.Sheets[0].CELL[XColuna, XLinha].CellStyle := 2
          else
            XMLSS.Sheets[0].CELL[XColuna, XLinha].CellStyle := 1;

          XMLSS.Sheets[0].CELL[XColuna, XLinha].CellType := ZENumber;
          XMLSS.Sheets[0].CELL[XColuna, XLinha].AsDouble :=
            GridExport.Columns[XColuna].Field.AsFloat;

        end
        else
        begin
          XMLSS.Sheets[0].CELL[XColuna, XLinha].CellStyle := 1;
          XMLSS.Sheets[0].CELL[XColuna, XLinha].Data := GridExport.Columns
            [XColuna].Field.AsString;
        end;

      End;
      GridExport.DataSource.DataSet.Next;
      Inc(XLinha);
    End;
    GridExport.DataSource.DataSet.First;
  finally
    TZXMLSSave.From(XMLSS).Charset('utf-8', TextConverter).Save(NomeExcel);

    FreeAndNil(XMLSS);
    Result := True;
  end;

end;

function Generator(sGenerator: string): Integer;
begin

  DM.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id(' + sGenerator
    + ',1) as id from rdb$database';
  DM.SqlExecute.Close;
  DM.SqlExecute.Open;
  Result := DM.SqlExecute.FieldByName('ID').AsInteger;
  DM.SqlExecute.Close;

end;

procedure GravaIniValor(Arquivo, Sessao, Campo, Valor: string);
var
  ArqIni: TIniFile;
begin
  try
    ArqIni := TIniFile.Create(UniServerModule.StartPath + 'Config/' + Arquivo
      + '.ini');
    try
      ArqIni.WriteString(Sessao, Campo, Valor);
    finally
      ArqIni.Free;
    end;
  except
  end;
end;

function LerIniValor(Arquivo, Sessao, Campo, Valor: string): string;
var
  ArqIni: TIniFile;
begin
  try
    ArqIni := TIniFile.Create(UniServerModule.StartPath + 'Config/' + Arquivo
      + '.ini');
    try
      Result := ArqIni.ReadString(Sessao, Campo, Valor);
    finally
      ArqIni.Free;
    end;
  except
  end;
end;

function TemPacelaPaga(sIdMovfinan: String): Boolean;
begin
  Result := false;
  DM.SqlExecute.SQL.Text :=
    'select sum(VALOR_PAGO_RECEBIDO) pago from ctasrecpag where  idmovfinan=' +
    sIdMovfinan;
  DM.SqlExecute.Close;
  DM.SqlExecute.Open;
  DM.SqlExecute.First;
  Result := DM.SqlExecute.FieldByName('pago').AsFloat > 0;
  DM.SqlExecute.Close;
end;

function VerificaInternoExiste(sNomeInterno, sNomeMae: string): Boolean;
var
  ret_Interno: string;
begin

  Result := false;

  if Trim(sNomeMae) = '' then
    Exit;

  ret_Interno := VarToStrDef(ConsultaRapida('INTERNO', 'NOME_INTERNO',
    'TRIM(UPPER(NOME_INTERNO)) = TRIM(UPPER(' + Qs(sNomeInterno) +
    ')) AND TRIM(UPPER(MAE)) = TRIM(UPPER(' + Qs(sNomeMae) + '))', ''), '');

  Result := (sNomeInterno = ret_Interno);

end;

function ConsultaRapida(Tabela, CampoRetorno, Where,
  CampoSelect: string): Variant;
begin
  try
    if (Trim(Where) <> '') and (Pos('WHERE', UpperCase(Where)) = 0) then
      Where := ' WHERE ' + Where;

    if Trim(CampoSelect) = '' then
      CampoSelect := CampoRetorno;

    DM.SqlExecute.SQL.Text := 'SELECT ' + CampoSelect + ' FROM ' + Tabela +
      ' ' + Where;
    DM.DsExecute.DataSet.Close;
    DM.DsExecute.DataSet.Open;
    Result := DM.DsExecute.DataSet.FieldByName(CampoRetorno).AsVariant;
    DM.DsExecute.DataSet.Close;
  finally
  end;

end;

function VerificaRGIExiste(sRGI: string): Boolean;
var
  ret_Interno: string;
begin

  Result := false;

  if Trim(sRGI) = '' then
    Exit;

  ret_Interno := VarToStrDef(ConsultaRapida('INTERNO', 'RGI',
    'TRIM(UPPER(RGI)) = TRIM(UPPER(' + Qs(sRGI) + '))', ''), '');

  Result := (sRGI = ret_Interno);

end;

function VerificaVisitaExiste(scpf: string): Boolean;
var
  ret_VISITA: string;
begin

  Result := false;

  if Trim(scpf) = '' then
    Exit;

  ret_VISITA := VarToStrDef(ConsultaRapida('VISITANTE', 'cpf',
    'TRIM(UPPER(cpf)) = TRIM(UPPER(' + Qs(scpf) + '))', ''), '');

  Result := (scpf = ret_VISITA);

end;

function ConverterBmpParaJPeg(Arquivo: string;
  taxa_conv: Integer = 100): string;
var
  Bmp: TBitmap;
  jpeg: TJPegImage;
begin
  Bmp := TBitmap.Create;
  try
    Bmp.LoadFromFile(Arquivo);
    jpeg := TJPegImage.Create;
    try
      jpeg.Assign(Bmp);
      Result := ChangeFileExt(Arquivo, '.jpg');
      jpeg.SaveToFile(Result);
    finally
      jpeg.Free;
    end;
  finally
    Bmp.Free;
  end;
end;

function JpgToBmp(cImageJpg: string; cWidth: Integer = 205;
  cHeight: Integer = 154): string;
// Requer a Jpeg declarada na clausua uses da unit
var
  MyJPEG: TJPegImage;
  MyBMP: TBitmap;
begin
  Result := '';
  if fileExists(cImageJpg) then
  begin
    MyJPEG := TJPegImage.Create;
    with MyJPEG do
    begin
      try
        LoadFromFile(cImageJpg);
        MyBMP := TBitmap.Create;

        with MyBMP do
        begin
          Width := cWidth;
          Height := cHeight;
          Canvas.StretchDraw(Rect(0, 0, MyBMP.Width, MyBMP.Height), MyJPEG);
          Result := UniServerModule.LocalCachePath + 'conversor_siapen' +
            FormatDateTime('yyyy-mm-dd-hh-mm-zzz', now) + '.bmp';
          SaveToFile(Result);
          Free;
        end;

      finally
        Free;
      end;
    end;
  end;
end;

procedure AddWhere(Query: TSQLQuery; WhereClause: string;
  StrAndOr: string = ' AND ');
var
  sCmd, sOrder, sGroup: string;
  iPosOrderBy: Integer;
  iPosGroupBy: Integer;
  SQLOriginal: string;
begin
  try
    if WhereClause = '' then
      Exit;

    iPosOrderBy := Pos('ORDER BY', UpperCase(Query.SQL.Text));
    iPosGroupBy := Pos('GROUP BY', UpperCase(Query.SQL.Text));

    if iPosOrderBy = 0 then
    begin
      sCmd := Query.SQL.Text;
      sOrder := '';
    end
    else
    begin
      if iPosGroupBy = 0 then
      begin
        sCmd := Copy(Query.SQL.Text, 0, iPosOrderBy - 1);
        sOrder := Copy(Query.SQL.Text, iPosOrderBy, Length(Query.SQL.Text) -
          iPosOrderBy);
      end
      else
      begin
        sCmd := Copy(Query.SQL.Text, 0, iPosGroupBy - 1);
        sGroup := Copy(Query.SQL.Text, iPosGroupBy, Length(Query.SQL.Text) -
          iPosOrderBy);
        sOrder := Copy(Query.SQL.Text, iPosOrderBy, Length(Query.SQL.Text) -
          iPosOrderBy);
      end;
    end;
    Query.SQL.Text := sCmd;

    if Pos('WHERE', UpperCase(Query.SQL.Text)) = 0 then
      Query.SQL.Text := Query.SQL.Text + ' WHERE ' + WhereClause
    else
    begin
      if Trim(StrAndOr) = 'OR' then
        Query.SQL.Text := Query.SQL.Text + ' OR ' + WhereClause
      else
        Query.SQL.Text := Query.SQL.Text + ' AND ' + WhereClause;
    end;

    if sGroup <> '' then
      Query.SQL.Text := Query.SQL.Text + sGroup;
    if sOrder <> '' then
      Query.SQL.Text := Query.SQL.Text + sOrder;
  except
    on e: Exception do
    begin
      Query.SQL.SaveToFile('sql_addwhere.sql');
    end;
  end;
end;

procedure ListarDiretorios(Folder: string; lista: TStrings);
var
  Rec: TSearchRec;
  I: Integer;
  temps: string;
begin
  lista.Clear;
  if SysUtils.FindFirst(Folder + '*', faDirectory, Rec) = 0 then
    try
      repeat
        lista.Add(Rec.Name);
      until SysUtils.FindNext(Rec) <> 0;
    finally
      if lista.Count <> 0 then
      begin
        // deleta o diretorio ..
        lista.Delete(1);
        // deleta o diretorio .
        lista.Delete(0);
        I := 0;
        // deleta os arquivos isto e fica apenas os diretorios
        if lista.Count <> 0 then
        begin
          repeat
            temps := lista.Strings[I];
            temps := extractfileext(temps);
            if temps <> '' then
              lista.Delete(I)
            else
              Inc(I);
          until I >= lista.Count;
        end;
      end;
    end;
end;

function LimpaChar(sValor: string): string;
var
  X: Integer;
begin
  for X := 1 to Length(sValor) do
  begin
    if (not(sValor[X] in ['0' .. '9', 'A' .. 'Z', 'a' .. 'z', '.', ';', ',',
      '*', '+', '-', '=', '&', '@', '!', '"', ':', '?', '$', '%', '_', '/',
      '\'])) then
    begin
      sValor[X] := ' ';
    end;
  end;
  Result := sValor;
end;

function LimpaTexto(sString: string): string;
var
  X: Integer;
begin
  Result := '';
  for X := 1 to Length(sString) do
  begin
    if ((sString[X] in ['0' .. '9', 'A' .. 'Z', 'a' .. 'z'])) then
    begin
      Result := Result + sString[X];
    end;
  end;
end;

function MeuGuidCreate: string;
var
  ID: TGUID;
begin
  Result := '';
  if CoCreateGuid(ID) = S_OK then
  begin
    Result := Trim(LimpaChar(GUIDToString(ID)));
  end;
end;

function ConsultaTabela(fUniFormRetorno: TUniForm;
  sSqlBusca, sCampoWhereSql, sID, sDescricao: String;
  UniDBEditRetorno: TUniDBEdit; UniLabelRetorno: TUniLabel;
  UniLabelRetorno2: TUniLabel = nil; UniLabelRetorno3: TUniLabel = nil)
  : Boolean;
begin
  Result := false;

  DM.UniFormRetornoConsulta := fUniFormRetorno;
  DM.SqlConsultaObjetiva := sSqlBusca;
  DM.CampoWhereSqlConsulta := sCampoWhereSql;
  DM.ID_RETORNO_FORM := sID;
  DM.DESC_RETORNO_FORM := sDescricao;
  FrmConsulta.ShowModal(
    procedure(iResult: Integer)
    begin
      if iResult = mrOK then
      begin
        UniDBEditRetorno.Field.AsInteger := DM.ID_RETORNO_CONSULTAOBJETIVA;
        UniLabelRetorno.Caption := DM.DESC_RETORNO_CONSULTAOBJETIVA;
        if assigned(UniLabelRetorno2) then
          UniLabelRetorno2.Caption := UniLabelRetorno.Caption;
        if assigned(UniLabelRetorno3) then
          UniLabelRetorno3.Caption := UniLabelRetorno.Caption;
      end;
    end);
end;

function ConsultaTabelaUniEdit(fUniFormRetorno: TUniForm;
sSqlBusca, sCampoWhereSql, sID, sDescricao: String; UniEditRetorno: TUniEdit;
UniLabelRetorno: TUniLabel): Boolean;
begin
  Result := false;

  DM.UniFormRetornoConsulta := fUniFormRetorno;
  DM.SqlConsultaObjetiva := sSqlBusca;
  DM.CampoWhereSqlConsulta := sCampoWhereSql;
  DM.ID_RETORNO_FORM := sID;
  DM.DESC_RETORNO_FORM := sDescricao;
  FrmConsulta.ShowModal(
    procedure(iResult: Integer)
    begin
      if iResult = mrOK then
      begin
        UniEditRetorno.Text := IntToStr(DM.ID_RETORNO_CONSULTAOBJETIVA);
        UniLabelRetorno.Caption := DM.DESC_RETORNO_CONSULTAOBJETIVA;
      end;
    end);
end;
{
  function ConsultaTabelaVariant(fUniFormRetorno: TUniForm;
  sSqlBusca, sCampoWhereSql, sID: String; VariantRetorno: Variant): Boolean;
  begin
  Result := false;
  FrmConsulta.SqlConsultaObjetiva.SQL.Text := sSqlBusca;
  FrmConsulta.Width := fUniFormRetorno.Width;
  FrmConsulta.CampoWhereSql := sCampoWhereSql;
  FrmConsulta.Coluna := 1;
  FrmConsulta.Top := fUniFormRetorno.Top;
  FrmConsulta.Left := fUniFormRetorno.Left;
  FrmConsulta.DsConsultaObjetiva.DataSet.Close;
  FrmConsulta.DsConsultaObjetiva.DataSet.Open;
  FrmConsulta.EditLocalizar.SetFocus;
  FrmConsulta.ShowModal(
  procedure(iResult: Integer)
  begin
  if iResult = mrOK then
  begin
  VariantRetorno := FrmConsulta.DsConsultaObjetiva.DataSet.FieldByName
  (sID).AsVariant;
  FrmConsulta.DsConsultaObjetiva.DataSet.Close;
  end;
  end);
  end;
}

function RetornaRegistro(sSqlBusca: String; UniDBEditRetorno: TUniCustomEdit;
UniLabelRetorno: TUniLabel; UniLabelRetorno2: TUniLabel = nil;
UniLabelRetorno3: TUniLabel = nil): Boolean;
begin

  UniLabelRetorno.Caption := 'Informe o código ou pesquise';
  UniDBEditRetorno.ReadOnly := True;

  if StrToIntDef(UniDBEditRetorno.Text, 0) > 0 then
  begin
    DM.SqlConsultaUnica.SQL.Text := sSqlBusca + UniDBEditRetorno.Text;
    DM.SqlConsultaUnica.Close;
    DM.SqlConsultaUnica.Open;
    if not DM.SqlConsultaUnica.IsEmpty then
    begin
      UniLabelRetorno.Caption := DM.SqlConsultaUnica.Fields[0].AsString;
      if assigned(UniLabelRetorno2) then
        UniLabelRetorno2.Caption := UniLabelRetorno.Caption;
      if assigned(UniLabelRetorno3) then
        UniLabelRetorno3.Caption := UniLabelRetorno.Caption;
    end
    else
    begin
      if UniDBEditRetorno.canfocus then
      begin
        UniDBEditRetorno.SetFocus;
        ShowMessage('Código inválido!');
      end;
    end;
    DM.SqlConsultaUnica.Close;
  end
  else
  begin
    UniDBEditRetorno.Text := '';
  end;

end;

function DiasUteis(DataIni, DataFim: TDateTime; sIgnorar: string): Integer;
var
  sDataIni, sDataFim: string;
begin
  sDataIni := FormatDateTime('dd.mm.yyyy', DataIni);
  sDataFim := FormatDateTime('dd.mm.yyyy', DataFim);
  DM.SqlExecute.SQL.Text := 'select uteis from CALCULA_DIAS_UTEIS(' +
    Qs(sDataIni) + ',' + Qs(sDataFim) + ',' + Qs(sIgnorar) + ')';
  DM.DsExecute.DataSet.Close;
  DM.DsExecute.DataSet.Open;

  Result := DM.DsExecute.DataSet.FieldByName('uteis').AsInteger;

  DM.DsExecute.DataSet.Close;
end;

end.
