unit Lib;

interface

uses Windows, Controls, msxmldom, WinSock, DBCtrls, Grids, DBGrids,
  Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  Mask, jpeg, DateUtils, IdSMTP, IdMessage, IdSSLOpenSSL, ShellAPI,
  pngimage;

type
  TChars = set of Char;

function Senha(StrValue: string; Chave: Word = 256): string;
function MigraCamposQuery(pQueryOrigem, pQueryDestino: TDataSet): Boolean;
procedure FormataFieldValor(CdsConsulta: TDataSet);
function Qs(sDescricao: string): string;
function ApenasNumero(pStr: string): string;
procedure LocalizarEmGrid(var Grid: TDBGrid; var LabelLetras: TLabel; Key: Char);
function Idade2(DataNasc: TDate): string;
function BuscaTroca(Text, Busca, Troca: string): string; // david
function ClientDatasetDinamico(aSql: string; Ident: Integer = 1; forca: boolean = false): TClientDataSet;
function VerificaExisteField(nome_tabela, nome_campo, tipo_campo: string): Boolean;
function ExecuteSqlDinamico(aSql: string): Boolean;
function BuscaGeral(NomeEdit: TWinControl; NomeCons, SqlEspecifica: string;
  aTop, aLeft, aWidth, aHeight: Integer; CampoResult: string = 'CODIGO';
  ADDSql: string = ' WHERE 1=1 '; IdBusca: string = '0';
  Connect: TSQLConnection = nil;
  MultiplaSelecao: Boolean = False; FiltraPorNome: Boolean = False): Variant;
function StrZero(const AValue: Variant; ALength: Integer; Vazio: Boolean = False): string;
function ValidarEditSql(DsPrincipal: TDataSource; FormChamada: TForm; NomeEdit:
  TWinControl; DsCampoEdit: TDataSource; DBLooKupEdit: TDBLookupComboBox; CampoID,
  FormatoEdit: string; AceitaNulo: Boolean = False; HabilitaemBrowse: Boolean = False;
  AddWhereSql: Boolean = True; AceitaCancelado: Boolean = False; pTipoCampo: string = 'Integer'): Boolean;
function MontaPavilhao(id_up: string; DBRadioGroupPavilhao: TDBRadioGroup): Boolean;
function MontaGaleria(IDPAVILHAO: string; DBRadioGroupGaleria: TDBRadioGroup): Boolean;
function MontaSolario(IDGALERIA: string; DBRadioGroupSOLARIO: TDBRadioGroup): Boolean;
function MontaCela(IDSOLARIO: string; DBRadioGroupCELA: TDBRadioGroup): Boolean;
function ConsultaRapida(Tabela, CampoRetorno, Where, CampoSelect: string): Variant;
procedure InsereMovimentacao(id_interno, id_unidade_penal, tipo_movimentacao, id_procedencia, id_destino: string);
function ContemValor(sCompare, sString: ShortString): Boolean;
function PavilhaoRadioGroup(id_up: string; RadioGroupPavilhao: TRadioGroup): Boolean;
function JpgToBmp(cImageJpg: string; cWidth: integer = 205; cHeight: integer = 154): string;
function ConverterBmpParaJPeg(Arquivo: string; taxa_conv: Integer = 100): string;
function CalcEntreDatas(DataInicial, DataFinal: TDate; var vAno, vMes, vDia: integer): string;
function SomarTempo(vAno, vMes, vDia, cAno, cMes, cDia: integer; var rAno, rMes, rDia: integer): string;
function SubtrairTempo(vAno, vMes, vDia, cAno, cMes, cDia: integer; var rAno, rMes, rDia: integer): string;
function DiasUteis(DataIni, DataFim: TDateTime; sIgnorar: string): Integer;
function VerificaInternoExiste(sNomeInterno, sNomeMae: string): boolean;
function VerificaRGIExiste(sRGI: string): boolean;
procedure IniciaTelaAguarde(TamanhoFonte: Integer = 14; ProgressMax: Integer = 100;
  MostraLabelAguarde: Boolean = True; TextoLabel: string = 'Aguarde...'; MostraProgressBar: Boolean = True);
procedure InterageTelaAguarde(Count: Integer = 1; MostraProgressoLabel: Boolean = True; MaxPosition: Integer = 0);
procedure FinalizaTelaAguarde();
function IniciaTransMovimento: Boolean;
function FinalizaTransMovimento: Boolean;
function CancelaTransMovimento: Boolean;
function Soundex(Str: string): string;
function Data_DateTimePicker(vDateTimePicker: TDateTimePicker; vData: TDateTime): Tdatetime;
function SomDex(strNome: string): string;
function fonetica(Texto: PChar): string;
function DBClientDataSetDinamico(aSql: string; Ident: Integer = 1; Forca: Boolean = False): TClientDataSet;
function DBConsultaRapida(Tabela, CampoRetorno: string; Where: string = ''; CampoSelect: string = ''): Variant;
function DBGenerator(GeneratorName: string; AddGenSincronismo: Boolean = True; SomaUm: Boolean = True): Integer;
function DBGeneratorOcorrencia(GeneratorName: string; AddGenSincronismo: Boolean = True; SomaUm: Boolean = True): Integer;
function DataValida(sData: string): Boolean;
function InformarData(sData: string; sTipo: string = 'Inicial'): TDateTime;
procedure ExecutePrograma(Nome, Parametros: string);
procedure ImageToPNG(Source: TImage; const Dest: string);
function PNGParaJPG(InPNG: string; BMP: TBitmap): TJPEGImage;
function PNGParaBMP(InPNG: string): TBitmap;
function VerificaVisitaExiste(scpf: string): boolean;
function ConvSenhaLetra(Str: string): string;
function DesConvSenhaLetra(Str: string): string;
function TamanhoArquivoBytes(arquivo: string): Int64;
function TamanhoArquivoFormatado(const bytes: Longint): string;
procedure SalvarBlobDatabase(Ds: TDataSource; sField, sFileName: string);
procedure SalvarBlobDisco(Ds: TDataSource; sField, sFileName: string);
function CaptureImgRect(ARect: TRect): TBitmap;
procedure AddWhere(Query: TSQLQuery; WhereClause: string; StrAndOr: string = ' AND ');
function TrataExceptionErro(MsgErro: string): string;
function SiapStringReplace(sString, OldCaracter1, NewCaracter1: string; OldCaracter2: string = '';
  NewCaracter2: string = ''; OldCaracter3: string = ''; NewCaracter3: string = ''): string;
function DataMaisAnoMesDia(DataInicial: TDate; vAno, vMes, vDia: double; var DataFinal: TDate): string;
function ExecucaoPenalProgressao(DataInicial: TDate; cAno, cMes, cDia: integer; Progressao: Integer; var vAno, vMes, vDia: integer): string;
function ExecucaoPenalCondicional(DataInicial: TDate; cAno, cMes, cDia: integer; Condicional: Integer; var vAno, vMes, vDia: integer): string;
function UltimoDiaMes(Data: TDateTime; var vDia: integer): TDateTime;
procedure IniciaArquivoTexto(sArquivo: string);
procedure LinhaArquivoTexto(sLinha, sArquivo: string);
procedure FechaArquivoTexto;
procedure MensagemAoUsuario(sMensagem: string);
procedure MensagemAoUsuarioViaFastReport();
procedure ReabrirMesmoRegistro(DsTabelaRegistro: TDataSource);
function GetBuildInfo(Aplicativo: string; Tipo: string = 'BUILD'; VerData:
  Boolean = True): string;
function ValidaCPF(numCPF: string): boolean;
function ValidaCNPJ(numCNPJ: string): boolean;
function ValidaData(var Data: string): Boolean;
procedure ValidaDataKeyPress(Componente: TObject; var Key: Char);
procedure ValidaDataExit(Componente: TObject);
procedure SoNumeros(var Key: Char);
function RemoveAcentos(Str: string): string;

const
  SelectPavilhao: string = 'select ' +
  '    pavilhao.id_pavilhao, ' +
    '    pavilhao.pavilhao, ' +
    '    pavilhao.id_up, ' +
    '    unidade_penal.nome_up ' +
    ' from unidade_penal ' +
    '   inner join pavilhao on (unidade_penal.id_up = pavilhao.id_up) ';
  SelectGaleria: string = 'select ' +
  '    galeria.id_galeria, ' +
    '    galeria.galeria, ' +
    '    pavilhao.id_pavilhao, ' +
    '    pavilhao.pavilhao, ' +
    '    pavilhao.id_up, ' +
    '    unidade_penal.nome_up ' +
    ' from unidade_penal ' +
    '   inner join pavilhao on (unidade_penal.id_up = pavilhao.id_up) ' +
    '   inner join galeria on (pavilhao.id_pavilhao = galeria.idpavilhao) ';
  SelectSolario: string = 'select ' +
  '    solario.solario, ' +
    '    solario.id_solario, ' +
    '    galeria.id_galeria, ' +
    '    galeria.galeria, ' +
    '    pavilhao.id_pavilhao, ' +
    '    pavilhao.pavilhao, ' +
    '    pavilhao.id_up, ' +
    '    unidade_penal.nome_up ' +
    ' from unidade_penal ' +
    '   inner join pavilhao on (unidade_penal.id_up = pavilhao.id_up) ' +
    '   inner join galeria on (pavilhao.id_pavilhao = galeria.idpavilhao) ' +
    '   inner join solario on (galeria.id_galeria = solario.idgaleria) ';
  SelectCela: string = 'select ' +
  '    cela.id_cela, ' +
    '    cela.cela, ' +
    '    solario.solario, ' +
    '    solario.id_solario, ' +
    '    galeria.id_galeria, ' +
    '    galeria.galeria, ' +
    '    pavilhao.id_pavilhao, ' +
    '    pavilhao.pavilhao, ' +
    '    pavilhao.id_up, ' +
    '    unidade_penal.nome_up ' +
    ' from unidade_penal ' +
    '   inner join pavilhao on (unidade_penal.id_up = pavilhao.id_up) ' +
    '   inner join galeria on (pavilhao.id_pavilhao = galeria.idpavilhao) ' +
    '   inner join solario on (galeria.id_galeria = solario.idgaleria) ' +
    '   inner join cela on (solario.id_solario = cela.idsolario) ';

  CoresHexa: array[0..48] of string =
  ('FFFFFF', '000000', 'FF0000', '00FFFF', '0000FF', '00FF00', '007FFF', '871F78', '4D4DFF', 'FFFF00',
    'C0C0C0', '7F00FF', '00009C', '2F4F2F', '238E23', '70DB93', '5C3317', 'A62A2A', 'A67D3D', '42426F',
    '4F4F2F', '6B238E', '2F4F4F', '7093DB', 'D19275', '9F9F5F', 'E9C2A6', '32CD32', '32CD99', '6B8E23',
    'EAEAAE', '9370DB', '70DBDB', 'DB7093', '2F2F4F', '23238E', 'CFB53B', '8FBC8F', 'BC8F8F', 'D9D9F3',
    '5959AB', '238E68', '8E6B23', '3299CC', '236B8E', 'DB9370', 'ADEAEA', '4F2F4F', 'D8D8BF');

  ERR_CANT_OPEN_BD = -999;
  ERR_INVALID_ID = -998;
  ERR_INVALID_TEMPLATE = -997;

var
  ArqTexto: TextFile;

//  template: TTemplate;
//  DB: TDBClass;
  MV: TTransactionDesc; // Para os Lançamentos .
  IDSENHA: Integer;
  GLOBAL_ID_UP, filtropostotrabalho: Integer;
  GLOBAL_INDEX_DO_GRID: Integer = 0;
  GLOBAL_ID_INTERNO, GLOBAL_ID_MOV_DIARIO_VISITANTES: Integer;
  GLOBAL_NIVEL_1, GLOBAL_NIVEL_2, GLOBAL_NIVEL_3, GLOBAL_NIVEL_4, GLOBAL_RGI,
    GLOBAL_IDAGENDA_ATENDIMENTO, GLOBAL_CONEXAO_PROCED,
    GLOBAL_ACESSA_PROCED, GLOBAL_ID_TRANSFERENCIA_INTERNO, GLOBAL_ID_MUDANCA_CELA,
    GLOBAL_WEBBROWSER, GLOBAL_SPACECOM: string;
  AISSE3_PATH_EXE: string;
  PATH_MOMENTO: string;
  StatusAgenda, statusfiltroagenda: string;
  UP_Logado, GLOBAL_NOME_UP: string;

  GLOBAL_ID_FUNCIONARIO, GLOBAL_IDPOSTO_TRABALHO, GLOBAL_IDCONEXAO: Integer;
  GLOBAL_NOME_FUNCIONARIO_LOGADO, GLOBAL_PATCH_SISTEMA, GLOBAL_MEUS_DOCUMENTOS, GLOBAL_PATCH_RELATORIO, GLOBAL_LOCAL, GLOBAL_NOME,
    GLOBAL_ULTIMA_DATA_PROCEDIMENTO: string;
  GLOBAL_ORGAO, GLOBAL_DEPARTAMENTO, GLOBAL_DIRETORIA, GLOBAL_PADRAO_SISTEMA, GLOBAL_UF,
    GLOBAL_ID_VISITANTE, GLOBAL_PASTA_LOCAL, GLOBAL_PASTA_DF, GLOBAL_PASTA_MA, GLOBAL_PASTA_MS, GLOBAL_PASTA_MT,
    CAMINHO_BIOMETRIA, GLOBAL_PASTA_SPF, GLOBAL_PASTA_PB, TIPOCAPTURA: string;

  GLOBAL_DATA: TDateTime;

  //Permissões estilo "CEDIR"
  PERMISSAO_CONFERE, PERMISSAO_VISITANTE, PERMISSAO_TRABALHO, PERMISSAO_CADASTRO, PERMISSAO_EDUCACAO: string;
  PERMISSAO_PSICOSSOCIAL, PERMISSAO_JURIDICA, PERMISSAO_DISCIPLINA, PERMISSAO_INTELIGENCIA: string;
  PERMISSAO_ENFERMAGEM, PERMISSAO_FARMACIA, PERMISSAO_CLINICAMEDICA, PERMISSAO_PSICOLOGIA, PERMISSAO_PSIQUIATRIA: string;
  PERMISSAO_SAUDE, PERMISSAO_TERAPIAOCUPACIONAL, PERMISSAO_ODONTOLOGIA, PERMISSAO_PEDAGOGIA, PERMISSAO_SERVICOSOCIAL: string;
  PERMISSAO_ARMAS, PERMISSAO_MONITORAMENTO, PERMISSAO_OCORRENCIA, PERMISSAO_CONSELHODISCIPLINAR, PERMISSAO_TRANSFERENCIAINTERNO: string;
  PERMISSAO_MUDANCACELA, PERMISSAO_SAIDAO, PERMISSAO_SAIDAO_CADASTRO, PERMISSAO_CIRCULACAOINTERNO, PERMISSAO_MOVIMENTOSEMIABERTO: string;
  PERMISSAO_FUNCIONARIO, PERMISSAO_FUNCAOFUNCIONARIO, PERMISSAO_UNIDADEPENAL, PERMISSAO_HORARIOFUNCIONARIO: String;
  PERMISSAO_PADRAOSISTEMA, PERMISSAO_EQUIPE, PERMISSAO_LOCALPOSTOTRABALHO, PERMISSAO_AGENTEPOREQUIPE, PERMISSAO_REGRAVISITACAO: String;

  //Permissões estilo SIM ou NÃO.
  CONFIGURACAO, VISUALIZA_OUTRAS_UP, PERMISSAO_ENTRADAVISITANTE: string;

  LOGIN_CONECTADO, GLOBAL_SENHA_USUARIO, TIPO_SENHA, senha_padrao, skin_padrao: string;
  //Variavel que verifica se o botão sair foi selecionado ou não da tela fechaAgendaAtendimento
  FECHA_AGENDA_ATENDIMENTO: boolean;

  CompSql: TSQLQuery;
  CompDsp: TDataSetProvider;
  CompCds: TClientDataSet;
  {Dataset de fields do sistema para abrir apenas uma unica vez}
  DSrelation_fields: TClientDataSet;

  tempoconsulta: TDateTime; //Calcular o tempo que leva um F7 da consulta
  ConsGeral_Ret_Campos: array of Variant;
  ConsultaAberta: Boolean = False;
  FormRetorno: TForm;
  StatusConsulta: Boolean = False;
  CorCompInativo: TColor = clBtnFace;
  CorCompAtivo: TColor = ClWindow;
  AtivouSkin: Boolean = False;
  //  CorCompAtivo: TColor = $00FFF3EC;

  MostrarBotaoIncluir: Boolean = False;

implementation

uses DmPrincipal, Math, MenuRelatorio;

function Senha(StrValue: string; Chave: Word = 256): string;
var
  I: Integer;
  OutValue: string;
begin
  OutValue := '';
  for I := 1 to Length(StrValue) do
    OutValue := OutValue + char(not (ord(StrValue[I]) - Chave));
  Result := OutValue;
end;

function MigraCamposQuery(pQueryOrigem, pQueryDestino: TDataSet): Boolean;
var
  I: Integer;
begin
  try
    Result := True;
    for I := 0 to pQueryDestino.FieldCount - 1 do
    begin
      if Assigned(pQueryOrigem.FindField(pQueryDestino.Fields[I].FieldName)) then
      begin
        pQueryDestino.Fields[I].Value :=
          pQueryOrigem.FindField(pQueryDestino.Fields[I].FieldName).Value;
      end;
    end;
  except
    Result := False;
  end;
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

procedure FormataFieldValor(CdsConsulta: TDataSet);
var
  i: Integer;
begin
  try
    if CdsConsulta.Active then
    begin
      for i := 0 to CdsConsulta.FieldCount - 1 do
      begin
        if CdsConsulta.Fields.Fields[i].DataType in [ftFloat, ftCurrency, ftBCD,
          ftFMTBcd] then
        begin
          TNumericField(CdsConsulta.Fields.Fields[i]).DisplayFormat := '##0.00';
        end;

        if (CdsConsulta.Fields.Fields[i].DataType in [ftInteger]) or
          (CdsConsulta.Fields.Fields[i].Name = 'PARCELA') then
          CdsConsulta.Fields.Fields[i].Alignment := taCenter;

        if CdsConsulta.Fields.Fields[i].DataType in [ftTimeStamp, ftDate, ftTime, ftDateTime] then
          if CdsConsulta.Fields.Fields[i].DisplayWidth > 15 then
            CdsConsulta.Fields.Fields[i].DisplayWidth := 15;

        if CdsConsulta.Fields.Fields[i].DataType in [ftTimeStamp, ftDate, ftDateTime] then
          TDateTimeField(CdsConsulta.Fields.Fields[i]).DisplayFormat := 'dd/mm/yyyy';
      end;
    end;
  except
  end;
end;

function Qs(sDescricao: string): string;
begin
  Result := QuotedStr(sDescricao);
end;

function ApenasNumero(pStr: string): string;
var
  I: Integer;
begin
  Result := ''; // antes = '' willian mudou dia 18/09/2004
  for I := 1 to Length(pStr) do
    if pStr[I] in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'] then
      Result := Result + pStr[I];
end;

procedure LocalizarEmGrid(var Grid: TDBGrid; var LabelLetras: TLabel; Key: Char);
var
  TipoCampo: TFieldType;
begin
  if (Key = #8) and (LabelLetras.Caption <> '') then
    LabelLetras.Caption := Copy(LabelLetras.Caption, 0, Length(LabelLetras.Caption) - 1)
  else
  begin
    LabelLetras.Caption := LabelLetras.Caption + UpperCase(string(Key));

    if not (Key in ['0'..'9',
      'A'..'Z', 'a'..'z', '.', ';', ',', '*', '/', '+', '-', '=', ')', '(', '&', '@', '!', '"', '|', '\', '<', '>',
        ':', '?', '[', ']', '{', '}', '$', '%', '_', ' ']) then
    begin
      LabelLetras.Caption := '';
    end;
  end;

  TipoCampo := Grid.Columns.Items[Grid.SelectedIndex].Field.DataType;

  if (TipoCampo in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftFMTBcd]) then
  begin
    LabelLetras.Caption := ApenasNumero(LabelLetras.Caption);
    try
      if (LabelLetras.Caption <> '') then
        Grid.DataSource.DataSet.Locate(
          Grid.Columns.Items[Grid.SelectedIndex].FieldName,
          LabelLetras.Caption, [loPartialKey, loCaseInsensitive]);
    except
    end;
  end
  else if (TipoCampo = ftString) then
  begin
    try
      if (LabelLetras.Caption <> '') then
        Grid.DataSource.DataSet.Locate(
          Grid.Columns.Items[Grid.SelectedIndex].FieldName,
          LabelLetras.Caption, [loPartialKey, loCaseInsensitive]);
    except
    end;
  end;
end;

function Idade(Nasc: TDate): string;
var
  AuxIdade, Meses, IdadeReal: string;
  MesesFloat: Real;
  IdadeInc: Integer;
begin
  AuxIdade := Format('%0.2f', [(Date - Nasc) / 365.6]);
  Meses := FloatToStr(Frac(StrToFloat(AuxIdade)));

  if AuxIdade = '0' then
  begin
    Result := '0,0';
    Exit;
  end;

  if Meses[1] = '-' then
    Meses := FloatToStr(StrToFloat(Meses) * -1);

  Delete(Meses, 1, 2);

  if Length(Meses) = 1 then
    Meses := Meses + '0';

  if (Meses <> '0') and (Meses <> '') then
    MesesFloat := Round(((365.6 * StrToInt(Meses)) / 100) / 30)
  else
    MesesFloat := 0;

  if MesesFloat <> 12 then
    IdadeReal := IntToStr(Trunc(StrToFloat(AuxIdade))) + ',' + FloatToStr(MesesFloat)
  else
  begin
    IdadeInc := Trunc(StrToFloat(AuxIdade));
    Inc(IdadeInc);
    IdadeReal := IntToStr(IdadeInc) + ',' + '0';
  end;

  Result := IdadeReal;
end;

function Bissexto(AYear: Integer): Boolean;
begin
  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;

function DiasDoMes(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and Bissexto(AYear) then
    Inc(Result);
end;

function Idade2(DataNasc: TDate): string;
var
  Ano1, Mes1, Dia1: Word;
  Ano2, Mes2, Dia2: Word;
  Ano, Mes, Dia: Word;
  Idade: string;
  AuxDia1, AuxDia2: Integer;
begin
  Idade := '';
  DecodeDate(DataNasc, Ano1, Mes1, Dia1);
  DecodeDate(Date, Ano2, Mes2, Dia2);
  AuxDia1 := Dia1;
  AuxDia2 := Dia2;
  if (Dia1 > Dia2) and ((Mes2 - Mes1) = 1) then
  begin
    Dia2 := Dia2 + DiasDoMes(Ano1, Mes1);
    Mes1 := Mes2;
  end
  else if (Dia1 > Dia2) and (Mes1 <> Mes2) then
  begin
    Dia2 := Dia2 + DiasDoMes(Ano1, Mes1);
  end
  else if (Mes1 = Mes2) and (Dia1 > Dia2) and (Ano1 <> Ano2) then
  begin
    Dia2 := Dia2 + DiasDoMes(Ano1, Mes1);
    Mes2 := Mes2 + 11;
    Ano1 := Ano1 + 1;
  end;

  if (Mes1 > Mes2) and (AuxDia1 <= AuxDia2) then
  begin
    Ano1 := Ano1 + 1;
    Mes2 := Mes2 + 12;
  end
  else if (Mes1 > Mes2) and (AuxDia1 > AuxDia2) then
  begin
    Ano1 := Ano1 + 1;
    Mes2 := Mes2 + 11;
  end;

  Ano := Ano2 - Ano1;
  Mes := Mes2 - Mes1;
  Dia := Dia2 - Dia1;
  if Ano > 1 then
    Idade := IntToStr(Ano) + ' Anos'
  else if Ano = 1 then
    Idade := IntToStr(Ano) + ' Ano';

  if Mes > 1 then
    Idade := Idade + ', ' + IntToStr(Mes) + ' Meses '
  else if Mes <> 0 then
    Idade := Idade + ', ' + IntToStr(Mes) + ' Mês ';

  if Ano = 0 then
    Delete(Idade, 1, 1);

  if Dia > 1 then
    Idade := Idade + ' e ' + IntToStr(Dia) + ' Dias'
  else if Dia <> 0 then
    Idade := Idade + ' e ' + IntToStr(Dia) + ' Dia';

  if (Mes = 0) and (Ano = 0) then
    Delete(Idade, 1, 3);

  if (Ano1 = Ano2) and (Mes1 = Mes2) and (Dia1 > Dia2) then
    Idade := '0';

  Result := Idade;

end;

function CalcEntreDatas(DataInicial, DataFinal: TDate; var vAno, vMes, vDia: integer): string;
var
  DataAux: TDate;
begin
  dm.SqlExecute.SQL.Text := 'select tanos , tmeses, tdias from tempo(' +
    qs(formatdatetime('dd.mm.yyyy', DataInicial)) + ',' +
    qs(formatdatetime('dd.mm.yyyy', DataFinal)) + ')';

  with DM.DsExecute.DataSet do
  begin

    close;
    open;

    vAno := fieldbyname('tanos').AsInteger;
    vMes := fieldbyname('tmeses').AsInteger;
    vDia := fieldbyname('tdias').AsInteger;

    close;
  end;

end;

function SomarTempo(vAno, vMes, vDia, cAno, cMes, cDia: integer; var rAno, rMes, rDia: integer): string;
var
  DataAux: TDate;
begin
  dm.SqlExecute.SQL.Text := 'select rano , rmes, rdia from somar_tempo(' +
    inttostr(vAno) + ',' +
    inttostr(vMes) + ',' +
    inttostr(vDia) + ',' +
    inttostr(cAno) + ',' +
    inttostr(cMes) + ',' +
    inttostr(cDia) + ')';

  with DM.DsExecute.DataSet do
  begin

    close;
    open;

    rAno := fieldbyname('rano').AsInteger;
    rMes := fieldbyname('rmes').AsInteger;
    rDia := fieldbyname('rdia').AsInteger;

    close;

  end;

end;

function SubtrairTempo(vAno, vMes, vDia, cAno, cMes, cDia: integer; var rAno, rMes, rDia: integer): string;
var
  DataAux: TDate;
begin
  dm.SqlExecute.SQL.Text := 'select rano , rmes, rdia from subtrair_tempo(' +
    inttostr(vAno) + ',' +
    inttostr(vMes) + ',' +
    inttostr(vDia) + ',' +
    inttostr(cAno) + ',' +
    inttostr(cMes) + ',' +
    inttostr(cDia) + ')';

  with DM.DsExecute.DataSet do
  begin

    close;
    open;

    rAno := fieldbyname('rano').AsInteger;
    rMes := fieldbyname('rmes').AsInteger;
    rDia := fieldbyname('rdia').AsInteger;

    close;

  end;

end;

function BuscaTroca(Text, Busca, Troca: string): string; // david
var
  n, i: Integer;
begin
  i := length(Busca);
  for n := 1 to length(Text) do
  begin
    if Copy(Text, n, i) = Busca then
    begin
      Delete(Text, n, i);
      Insert(Troca, Text, n);
    end;
  end;
  Result := Text;
end;

function ClientDatasetDinamico(aSql: string; Ident: Integer = 1; forca: boolean
  = false): TClientDataSet;
begin
  try
    // SqlQuery
    CompSql := TSQLQuery.Create(Application);
    CompSql.SQLConnection := FrmMenuRelatorio.Conexao;
    CompSql.SQL.Text := aSql;

    // DataSetProvider
    CompDsp := TDataSetProvider.Create(Application);
    CompDsp.DataSet := CompSql;
    TDataSetProvider(CompDsp).Name := 'Dsp' + IntToStr(CompDsp.ComponentIndex)
      + '_' + IntToStr(Ident)
      + '_' + FormatDateTime('hhmmsszzz', now);

    // ClientDataSet
    CompCds := TClientDataSet.Create(Application);
    CompCds.ProviderName := CompDsp.Name;

    Result := CompCds;
  except
    if not forca then
    begin
      Sleep(100);
      Result := ClientDatasetDinamico(aSql, Ident, true);
    end;
  end;
end;

function VerificaExisteField(nome_tabela, nome_campo, tipo_campo: string): Boolean;
begin

  result := false;

  DM.DSrelation_fields.DataSet.Close;
  DM.DSrelation_fields.DataSet.Open;

  DM.DSrelation_fields.DataSet.Filtered := False;
  DM.DSrelation_fields.DataSet.Filter := ' tabela = ' + Qs(UpperCase(nome_tabela));
  DM.DSrelation_fields.DataSet.Filtered := True;

  if not DM.DSrelation_fields.DataSet.isempty then
  begin

    DM.DSrelation_fields.DataSet.Filtered := False;
    DM.DSrelation_fields.DataSet.Filter := ' tabela = ' + Qs(UpperCase(nome_tabela)) +
      ' and campo = ' + Qs(UpperCase(nome_campo));
    DM.DSrelation_fields.DataSet.Filtered := True;

    // VERIFICA SE O CAMPO JA EXISTE NA TABELA
    if DM.DSrelation_fields.DataSet.IsEmpty then
    begin
      // Se nao existir entao CRIA
      try
        ExecuteSqlDinamico(
          ' ALTER TABLE ' + UpperCase(nome_tabela) +
          ' ADD ' + UpperCase(nome_campo) + ' ' + tipo_campo);
        result := True;
      except
      end;
    end;

  end;
end;

function ExecuteSqlDinamico(aSql: string): Boolean;
begin
  Result := True;
  try
    FrmMenuRelatorio.Conexao.ExecuteDirect(aSql)
  except
    begin
      Result := False;
    end;
  end;

end;

function BuscaGeral(NomeEdit: TWinControl; NomeCons, SqlEspecifica: string;
  aTop, aLeft, aWidth, aHeight: Integer; CampoResult: string = 'CODIGO';
  ADDSql: string = ' WHERE 1=1 '; IdBusca: string = '0';
  Connect: TSQLConnection = nil;
  MultiplaSelecao: Boolean = False; FiltraPorNome: Boolean = False): Variant;
var
  SQL: string;
  x, i: Integer;
  Reg: TBookmark;
  sFiltroPorNome: string;
  vSqlFiltroPorNome: TSQLQuery;
begin
  if Trim(ADDSql) = '' then
    ADDSql := ' WHERE 1=1 ';

end;

function StrZero(const AValue: Variant; ALength: Integer; Vazio: Boolean = False): string;
var
  base: string;
  num: Int64;
begin

  Result := '';

  if (AValue <> Null) then
  begin
    if StrToInt64Def(VarToStrDef(AValue, '0'), 0) >= 0 then
    begin
      num := StrToInt64Def(VarToStrDef(AValue, '0'), 0);
      base := '%.' + IntToStr(ALength) + 'd';
      Result := Format(base, [num]);
    end
    else
      Result := AValue;
  end;

  if (StrToInt64Def(Result, 0) = 0) and (Result <> '000') and (not Vazio) then
    Result := '';

end;

function ValidarEditSql(DsPrincipal: TDataSource; FormChamada: TForm; NomeEdit:
  TWinControl; DsCampoEdit: TDataSource; DBLooKupEdit: TDBLookupComboBox; CampoID,
  FormatoEdit: string; AceitaNulo: Boolean = False; HabilitaemBrowse: Boolean = False;
  AddWhereSql: Boolean = True; AceitaCancelado: Boolean = False; pTipoCampo: string = 'Integer'): Boolean;
var
  EventoEdit, EventoSairdoProximo: TNotifyEvent;
  Valor: Variant;
  SqlTextDsEdit: string;
  ProviderDsEdit: TProvider;
  SqlDsEdit: TSQLQuery;
  lk_KeyField, lk_ListField: string;
  lk_DataSource: TDataSource;
  verifica_string: string;
  sNmEdit: string;
  pNmEdit: Integer;
  inteiro: Integer;
  form_key: Word;

  function ContemString(sCompare, sString: ShortString): Boolean;
  var
    P: Byte;

  begin
    Result := False;
    P := Pos(sCompare, sString);
    if P > 0 then
      Result := True;
  end;

  procedure AddWhere(Query: TSQLQuery; WhereClause: string);
  var
    sCmd, sOrder: string;
    iPosOrderBy: Integer;
    iPosGroupBy: Integer;
  begin
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
        sOrder := Copy(Query.SQL.Text, iPosGroupBy, Length(Query.SQL.Text) -
          iPosOrderBy);
      end;
    end;
    Query.SQL.Text := sCmd;

    if Pos('WHERE', UpperCase(Query.SQL.Text)) = 0 then
      Query.SQL.Text := Query.SQL.Text + ' WHERE ' + WhereClause
    else
      Query.SQL.Text := Query.SQL.Text + ' AND ' + WhereClause;

    if sOrder <> '' then
      Query.SQL.Text := Query.SQL.Text + sOrder;

  end;

begin
  FormRetorno := FormChamada;
  try
    if DsCampoEdit.DataSet.Active then
    begin
      if not DsCampoEdit.DataSet.IsEmpty then
      begin
        if UpperCase(pTipoCampo) = 'INTEGER' then
        begin
          if (DsCampoEdit.DataSet.FieldByName(CampoID).AsInteger =
            StrToIntDef(TEdit(NomeEdit).Text, -1)) then
          begin
            if Assigned(DBLooKupEdit) and
              (TEdit(NomeEdit).Text = StrZero(DBLooKupEdit.KeyValue, Length(FormatoEdit))) then
            begin
              if DsPrincipal <> nil then
              begin
                if (DsPrincipal.DataSet.FindField(DBLooKupEdit.DataField) <> nil) and
                  (DsPrincipal.DataSet.State in [dsEdit, dsInsert]) then
                begin
                  DsPrincipal.DataSet.FieldByName(DBLooKupEdit.DataField).AsVariant
                    := DsCampoEdit.DataSet.FieldByName(CampoID).AsVariant;
                end;
              end;
              Result := True;
              Exit;
            end;
          end;
        end;
      end;
    end;
  except
  end;

  sNmEdit := TEdit(NomeEdit).Name;
  pNmEdit := pos('Edit', 'XX' + sNmEdit);
  if pNmEdit > 0 then
    sNmEdit := ' de ' + Copy(sNmEdit, 5, length(sNmEdit))
  else
    sNmEdit := '';

  if (AddWhereSql) and (CampoID <> '') and (TEdit(NomeEdit).Text <> EmptyStr) then
  begin
    try
      if (DsCampoEdit.DataSet.Owner <> nil) then
      begin
        ProviderDsEdit :=
          TProvider(DsCampoEdit.DataSet.Owner.FindComponent(TClientDataSet(DsCampoEdit.DataSet).ProviderName));
        if ProviderDsEdit <> nil then
          SqlDsEdit := TSQLQuery(ProviderDsEdit.DataSet);
      end;
    except
      Exit;
    end;

    try
      if DBLooKupEdit <> nil then
      begin
        lk_KeyField := DBLooKupEdit.KeyField;
        lk_ListField := DBLooKupEdit.ListField;
        lk_DataSource := DBLooKupEdit.DataSource;
        DBLooKupEdit.KeyValue := null;
        DBLooKupEdit.KeyField := '';
        DBLooKupEdit.ListField := '';
        DBLooKupEdit.DataSource := nil;
      end;

      Result := True;
      SqlTextDsEdit := SqlDsEdit.SQL.Text;
      AddWhere(SqlDsEdit, CampoID + ' = ' + Trim(Qs(TEdit(NomeEdit).Text)));

      DsCampoEdit.DataSet.DisableControls;

      DsCampoEdit.DataSet.Close;
      DsCampoEdit.DataSet.Open; //DataSource Relacionado ao Edit

      SqlDsEdit.SQL.Text := SqlTextDsEdit;

      Valor := IntToStr(StrToIntDef(TEdit(NomeEdit).Text, 0));
      if Valor = '0' then
        Valor := -1;

    finally
      try
        if DsCampoEdit.DataSet.ControlsDisabled then
          DsCampoEdit.DataSet.EnableControls;
      except
      end;
      SqlDsEdit.SQL.Text := SqlTextDsEdit;
      if DBLooKupEdit <> nil then
      begin
        DBLooKupEdit.KeyField := lk_KeyField;
        DBLooKupEdit.ListField := lk_ListField;
        DBLooKupEdit.DataSource := lk_DataSource;
        DBLooKupEdit.KeyValue := null;
      end;
    end;
  end
  else if (not AceitaCancelado) and (TEdit(NomeEdit).Text <> EmptyStr) then
  begin
    try
      if (DsCampoEdit.DataSet.Owner <> nil) then
      begin
        ProviderDsEdit :=
          TProvider(DsCampoEdit.DataSet.Owner.FindComponent(TClientDataSet(DsCampoEdit.DataSet).ProviderName));
        if ProviderDsEdit <> nil then
          SqlDsEdit := TSQLQuery(ProviderDsEdit.DataSet);
      end;
    except
      Exit;
    end;

    try
      if DBLooKupEdit <> nil then
      begin
        lk_KeyField := DBLooKupEdit.KeyField;
        lk_ListField := DBLooKupEdit.ListField;
        lk_DataSource := DBLooKupEdit.DataSource;
        DBLooKupEdit.KeyValue := null;
        DBLooKupEdit.KeyField := '';
        DBLooKupEdit.ListField := '';
        DBLooKupEdit.DataSource := nil;
      end;

      Result := True;
      SqlTextDsEdit := SqlDsEdit.SQL.Text;
      AddWhere(SqlDsEdit, CampoID + ' = ' + Trim(Qs(TEdit(NomeEdit).Text)));

      DsCampoEdit.DataSet.DisableControls;
      DsCampoEdit.DataSet.Close;
      DsCampoEdit.DataSet.Open; //DataSource Relacionado ao Edit

      if DsCampoEdit.DataSet.FieldList.Find('ST') <> nil then
      begin
        AddWhere(SqlDsEdit, 'ST<>' + Qs('C'));
        DsCampoEdit.DataSet.Close;
        DsCampoEdit.DataSet.Open;
      end;

      Valor := IntToStr(StrToIntDef(TEdit(NomeEdit).Text, 0));
      if Valor = '0' then
        Valor := -1;

      if not DsCampoEdit.DataSet.Locate(CampoID, Valor, []) then
      begin
        DsCampoEdit.DataSet.Close;
        DsCampoEdit.DataSet.Open;
      end;
    finally
      DsCampoEdit.DataSet.EnableControls;
      SqlDsEdit.SQL.Text := SqlTextDsEdit;
      if DBLooKupEdit <> nil then
      begin
        DBLooKupEdit.KeyField := lk_KeyField;
        DBLooKupEdit.ListField := lk_ListField;
        DBLooKupEdit.DataSource := lk_DataSource;
        DBLooKupEdit.KeyValue := null;
      end;
    end;
  end;

  if not StatusConsulta then
  begin
    if DsPrincipal <> nil then
    begin
      if not (DsPrincipal.DataSet.State in [dsEdit, dsInsert]) and (not
        HabilitaemBrowse) then
      begin
        Result := False;
        Exit;
      end;
      if (DsPrincipal.DataSet.State in [dsinactive]) then
      begin
        Result := False;
        Exit;
      end;
    end;

    if FormatoEdit <> '' then
      TEdit(NomeEdit).Text := ApenasNumero(TEdit(NomeEdit).Text); //Validar dados

    if not (TEdit(NomeEdit).Text = '') then
    begin
      if FormatoEdit <> '' then
        TEdit(NomeEdit).Text := FormatFloat(FormatoEdit, StrToFloat(TEdit(NomeEdit).Text));

      if not DsCampoEdit.DataSet.Active then
        DsCampoEdit.DataSet.Open; //DataSource Relacionado ao Edit

      {*** Para o cancelar operação se não tem registro na tabela ***}
      if (not (AceitaNulo)) and (DsCampoEdit.DataSet.RecordCount = 0) then
      begin
        MessageDlg('<b><font Color=red>ATENÇÃO !!!</font></b><br> Código' + sNmEdit +
          ' não localizado.', mtInformation, [mbok], 0);
        Result := False;
        TEdit(NomeEdit).Text := '';
        if TEdit(NomeEdit).CanFocus then
        begin
          TEdit(NomeEdit).SetFocus;
          form_key := vk_f7;
          TEdit(NomeEdit).OnKeyDown(TEdit(NomeEdit), form_key, []);
        end;
        Exit;
      end;

      Valor := TEdit(NomeEdit).Text;
      if Valor = '' then
        Valor := -1;

      if DsCampoEdit.DataSet.Locate(CampoID, Valor, []) then
      begin
        {*** Entra aqui quando correto ***}
        if HabilitaemBrowse then
        begin
          try
            if DBLooKupEdit <> nil then
            begin
              DBLooKupEdit.KeyValue :=
                DsCampoEdit.DataSet.FieldByName(CampoID).AsVariant;
            end;
          except
          end;
        end
        else if DBLooKupEdit <> nil then
        begin
          try
            if DsPrincipal <> nil then
              if DsPrincipal.DataSet.FindField(DBLooKupEdit.DataField) <> nil then
                DsPrincipal.DataSet.FieldByName(DBLooKupEdit.DataField).AsVariant
                  := DsCampoEdit.DataSet.FieldByName(CampoID).AsVariant;
            //Insere Valor no DBLooCkup
          except
          end;
        end;
        Result := True;

        if DBLooKupEdit <> nil then
        begin
          if (DBLooKupEdit.KeyValue <> null) then
          begin
            if CampoID = 'CFOP' then
              TEdit(NomeEdit).Text := DBLooKupEdit.KeyValue
            else if FormatoEdit <> '' then
              TEdit(NomeEdit).Text := StrZero(DBLooKupEdit.KeyValue,
                Length(FormatoEdit))
            else
              TEdit(NomeEdit).Text := DBLooKupEdit.KeyValue;

            DBLooKupEdit.Hint := DBLooKupEdit.Text;
            DBLooKupEdit.ShowHint := True;
          end
          else
            DBLooKupEdit.KeyValue := null;
        end;

        //  *** Termina quando Correto ***
        if ConsultaAberta then
        begin
          EventoEdit := TEdit(NomeEdit).OnExit;
          TEdit(NomeEdit).OnExit := nil;
          StatusConsulta := True; // Para não entrar mais nesta mesma função.
          ConsultaAberta := False;
          TEdit(NomeEdit).OnExit := EventoEdit;
        end;
      end
      else
      begin
        if AceitaNulo then
        begin
          if (DBLooKupEdit <> nil) and (DBLooKupEdit.DataField <> '') and
            (DsPrincipal <> nil) then
          begin
            DBLooKupEdit.KeyValue := null;
            if DsPrincipal.DataSet.FindField(DBLooKupEdit.DataField) <> nil then
              DsPrincipal.DataSet.FieldByName(DBLooKupEdit.DataField).AsVariant
                := null;
          end;
          if (TEdit(NomeEdit).Text <> '') and not (StrToInt(ApenasNumero(TEdit(NomeEdit).Text))
            = 0) then
          begin
            MessageDlg('<b><font Color=red>ATENÇÃO !!!</font></b><br>Código inválido.', mtInformation, [mbok], 0);
            Result := False;
            TEdit(NomeEdit).Text := '';
            if TEdit(NomeEdit).CanFocus then
            begin
              TEdit(NomeEdit).SetFocus;
              form_key := vk_f7;
              TEdit(NomeEdit).OnKeyDown(TEdit(NomeEdit), form_key, []);
              Exit;
            end;
          end;
          TEdit(NomeEdit).Text := '';
          Exit;
        end;
        if (not (AceitaNulo)) and (DsCampoEdit.DataSet.RecordCount = 0) then
          MessageDlg('<b><font Color=red>ATENÇÃO !!!</font></b><br> Tabela sem registros.', mtInformation, [mbok], 0)
        else
          MessageDlg('<b><font Color=red>ATENÇÃO !!!</font></b><br> Código Inválido.', mtInformation, [mbok], 0);

        Result := False;
        TEdit(NomeEdit).Text := '';
        if TEdit(NomeEdit).CanFocus then
        begin
          TEdit(NomeEdit).SetFocus;
          form_key := vk_f7;
          TEdit(NomeEdit).OnKeyDown(TEdit(NomeEdit), form_key, []);
        end;
      end;
    end
    else
    begin
      if AceitaNulo then
      begin
        if DBLooKupEdit <> nil then
          DBLooKupEdit.KeyValue := null;
        if TEdit(NomeEdit).Text <> '' then
        begin
          MessageDlg('<b><font Color=red>ATENÇÃO !!!</font></b><br> Código Inválido.', mtInformation, [mbok], 0);
          Result := False;
          TEdit(NomeEdit).Text := '';
          if TEdit(NomeEdit).CanFocus then
          begin
            TEdit(NomeEdit).SetFocus;
            form_key := vk_f7;
            TEdit(NomeEdit).OnKeyDown(TEdit(NomeEdit), form_key, []);
          end;
        end;
        TEdit(NomeEdit).Text := '';
        Exit;
      end;

      MessageDlg('<b><font Color=red>ATENÇÃO !!!</font></b><br> Informe um código' + sNmEdit
        + ' válido.', mtInformation, [mbok], 0);

      Result := False;
      TEdit(NomeEdit).Text := '';

      if FormChamada.CanFocus then
        FormChamada.SetFocus;

      if TEdit(NomeEdit).CanFocus then
      begin
        TEdit(NomeEdit).SetFocus;
        form_key := vk_f7;
        TEdit(NomeEdit).OnKeyDown(TEdit(NomeEdit), form_key, []);
      end;

    end;
    StatusConsulta := False;

  end;
end;

function MontaPavilhao(id_up: string; DBRadioGroupPavilhao: TDBRadioGroup): Boolean;
begin
  if StrToIntDef(id_up, 0) = 0 then
    exit;
  dm.SqlExecute.sql.text := SelectPavilhao + ' where pavilhao.id_up=' + id_up + ' order by pavilhao.pavilhao';
  with dm.DsExecute.dataset do
  begin
    close;
    open;
    first;
    DBRadioGroupPavilhao.Items.Clear;
    if Assigned(DBRadioGroupPavilhao.Values) then
      DBRadioGroupPavilhao.Values.Clear;
    while not eof do
    begin
      DBRadioGroupPavilhao.Items.Add(fieldbyname('PAVILHAO').asstring);
      if Assigned(DBRadioGroupPavilhao.Values) then
        DBRadioGroupPavilhao.Values.Add(fieldbyname('ID_PAVILHAO').asstring);
      next;
    end;
    if Assigned(DBRadioGroupPavilhao.Values) then
    begin
      if DBRadioGroupPavilhao.DataSource.DataSet.active then
      begin
        if DBRadioGroupPavilhao.DataSource.DataSet.FieldByName(DBRadioGroupPavilhao.DataField).AsVariant = null then
        begin
          if DBRadioGroupPavilhao.DataSource.DataSet.state in [dsedit, dsinsert] then
          begin
            DBRadioGroupPavilhao.ItemIndex := 0;
          end;
        end
        else
        begin
          DBRadioGroupPavilhao.ItemIndex :=
            DBRadioGroupPavilhao.Values.IndexOf(DBRadioGroupPavilhao.DataSource.DataSet.FieldByName(DBRadioGroupPavilhao.DataField).AsString);
        end;
      end;
    end;
    close;
  end;

end;

function MontaGaleria(IDPAVILHAO: string; DBRadioGroupGaleria: TDBRadioGroup): Boolean;
begin
  if StrToIntDef(IDPAVILHAO, 0) = 0 then
    exit;
  dm.SqlExecute.sql.text := SelectGaleria + ' where galeria.idpavilhao=' + IDPAVILHAO + ' order by galeria.galeria ';
  with dm.DsExecute.dataset do
  begin
    close;
    open;
    first;
    //    if (RecordCount = 1) then
    //      DBRadioGroupGaleria.Width := 40;
    DBRadioGroupGaleria.Items.Clear;
    if Assigned(DBRadioGroupGaleria.DataSource) then
      DBRadioGroupGaleria.Values.Clear;
    while not eof do
    begin
      DBRadioGroupGaleria.Items.Add(fieldbyname('GALERIA').asstring);
      if Assigned(DBRadioGroupGaleria.DataSource) then
        DBRadioGroupGaleria.Values.Add(fieldbyname('ID_GALERIA').asstring);
      next;
    end;
    if Assigned(DBRadioGroupGaleria.DataSource) then
    begin
      if DBRadioGroupGaleria.DataSource.DataSet.active then
      begin
        if DBRadioGroupGaleria.DataSource.DataSet.FieldByName(DBRadioGroupGaleria.DataField).AsVariant = null then
        begin
          if DBRadioGroupGaleria.DataSource.DataSet.state in [dsedit, dsinsert] then
          begin
            DBRadioGroupGaleria.ItemIndex := 0;
          end;
        end
        else
        begin
          DBRadioGroupGaleria.ItemIndex :=
            DBRadioGroupGaleria.Values.IndexOf(DBRadioGroupGaleria.DataSource.DataSet.FieldByName(DBRadioGroupGaleria.DataField).AsString);
        end;
      end;
    end;

    close;
  end;
end;

function MontaSolario(IDGALERIA: string; DBRadioGroupSOLARIO: TDBRadioGroup): Boolean;
begin
  if StrToIntDef(IDGALERIA, 0) = 0 then
    exit;

  dm.SqlExecute.sql.text := SelectSolario + ' where solario.idgaleria = ' + idgaleria + ' order by solario.solario ';
  with dm.DsExecute.dataset do
  begin
    close;
    open;
    first;
    //    if (RecordCount = 1) then
    //      DBRadioGroupSOLARIO.Width := 40;
    DBRadioGroupSOLARIO.Items.Clear;
    if Assigned(DBRadioGroupSOLARIO.DataSource) then
      DBRadioGroupSOLARIO.Values.Clear;
    while not eof do
    begin
      DBRadioGroupSOLARIO.Items.Add(fieldbyname('SOLARIO').asstring);
      if Assigned(DBRadioGroupSOLARIO.DataSource) then
        DBRadioGroupSOLARIO.Values.Add(fieldbyname('ID_SOLARIO').asstring);
      next;
    end;
    if Assigned(DBRadioGroupSOLARIO.DataSource) then
    begin
      if DBRadioGroupSOLARIO.DataSource.DataSet.active then
      begin
        if DBRadioGroupSolario.DataSource.DataSet.FieldByName(DBRadioGroupSolario.DataField).AsVariant = null then
        begin
          if DBRadioGroupSolario.DataSource.DataSet.state in [dsedit, dsinsert] then
            DBRadioGroupSolario.ItemIndex := 0;
        end
        else
        begin
          DBRadioGroupSOLARIO.ItemIndex :=
            DBRadioGroupSOLARIO.Values.IndexOf(DBRadioGroupSOLARIO.DataSource.DataSet.FieldByName(DBRadioGroupSOLARIO.DataField).AsString);
        end;
      end;
    end;
    close;
  end;
end;

function MontaCela(IDSOLARIO: string; DBRadioGroupCELA: TDBRadioGroup): Boolean;
begin
  if StrToIntDef(IDSOLARIO, 0) = 0 then
    exit;
  dm.SqlExecute.sql.text := SelectCela + ' where cela.idsolario = ' + IDSOLARIO + ' order by cela.cela ';
  with dm.DsExecute.dataset do
  begin
    close;
    open;
    first;
    DBRadioGroupCELA.Columns := trunc(RecordCount / 3);

    DBRadioGroupCELA.Items.Clear;
    if Assigned(DBRadioGroupCELA.DataSource) then
      DBRadioGroupCELA.Values.Clear;
    while not eof do
    begin
      DBRadioGroupCELA.Items.Add(fieldbyname('CELA').asstring);
      DBRadioGroupCELA.Values.Add(fieldbyname('ID_CELA').asstring);
      next;
    end;
    if Assigned(DBRadioGroupCELA.DataSource) then
    begin
      if DBRadioGroupCELA.DataSource.DataSet.active then
      begin
        if DBRadioGroupCela.DataSource.DataSet.FieldByName(DBRadioGroupCela.DataField).AsVariant = null then
        begin
          if DBRadioGroupCela.DataSource.DataSet.state in [dsedit, dsinsert] then
            DBRadioGroupCela.ItemIndex := 0;
        end
        else
        begin
          DBRadioGroupCELA.ItemIndex :=
            DBRadioGroupCELA.Values.IndexOf(DBRadioGroupCELA.DataSource.DataSet.FieldByName(DBRadioGroupCELA.DataField).AsString);
        end;
      end;
    end;
    close;
  end;
end;

function ConsultaRapida(Tabela, CampoRetorno, Where, CampoSelect: string): Variant;
begin
  try
    if (Trim(Where) <> '') and (Pos('WHERE', UpperCase(Where)) = 0) then
      Where := ' WHERE ' + Where;

    if Trim(CampoSelect) = '' then
      CampoSelect := CampoRetorno;

    DM.sqlExecute.sql.text := 'SELECT ' + CampoSelect + ' FROM ' + Tabela + ' ' + Where;
    Dm.DsExecute.DataSet.close;
    Dm.DsExecute.DataSet.open;
    Result := Dm.DsExecute.DataSet.FieldByName(CampoRetorno).AsVariant;
    Dm.DsExecute.DataSet.close;
  finally
  end;

end;

procedure InsereMovimentacao(id_interno, id_unidade_penal, tipo_movimentacao, id_procedencia, id_destino: string);
begin
  DM.SqlExecute.SQL.Text :=
    'insert into mov_interno (id_mov_interno, id_interno, id_unidade_penal, ' +
    'tipo_movimentacao, data_movimentacao, hora_movimentacao, ' +
    'id_funcionario, id_procedencia, id_destino) ' +
    'values (0, ' + id_interno + ', ' + id_unidade_penal + ', ' + Qs(tipo_movimentacao) + ',' +
    'current_date, current_time, null, ' + id_procedencia + ', ' + id_destino + ')';
  DM.SqlExecute.ExecSQL();
end;

function PavilhaoRadioGroup(id_up: string; RadioGroupPavilhao: TRadioGroup): Boolean;
begin
  if StrToIntDef(id_up, 0) = 0 then
    exit;
  dm.SqlExecute.sql.text := SelectPavilhao + ' where pavilhao.id_up=' + id_up + ' order by pavilhao.pavilhao';
  with dm.DsExecute.dataset do
  begin
    close;
    open;
    first;
    RadioGroupPavilhao.Items.Clear;
    while not eof do
    begin
      RadioGroupPavilhao.Items.Add(fieldbyname('PAVILHAO').asstring);
      next;
    end;
  end;
end;

function JpgToBmp(cImageJpg: string; cWidth: integer = 205; cHeight: integer = 154): string; // Requer a Jpeg declarada na clausua uses da unit
var
  MyJPEG: TJPEGImage;
  MyBMP: TBitmap;
begin
  Result := '';
  if fileExists(cImageJpg) then
  begin
    MyJPEG := TJPEGImage.Create;
    with MyJPEG do
    begin
      try
        LoadFromFile(cImageJpg);
        MyBMP := TBitmap.Create;

        with MyBMP do
        begin
          Width := cWidth;
          Height := cHeight;
          Canvas.StretchDraw(Rect(0, 0, MyBMP.width, MyBMP.Height), MyJPEG);
          Result := 'conversor_siap.Bmp';
          SaveToFile(Result);
          Free;
        end;

      finally
        Free;
      end;
    end;
  end;
end;

function ConverterBmpParaJPeg(Arquivo: string; taxa_conv: Integer = 100): string;
var
  Bmp: TBitmap;
  JPeg: TJPegImage;
begin
  Bmp := TBitmap.Create;
  try
    Bmp.LoadFromFile(Arquivo);
    JPeg := TJPegImage.Create;
    try
      //      JPeg.CompressionQuality := taxa_conv; { Qualidade: 100% }
      JPeg.Assign(Bmp);
      result := ChangeFileExt(Arquivo, '.jpg');
      JPeg.SaveToFile(result);
    finally
      JPeg.Free;
    end;
  finally
    Bmp.Free;
  end;
end;

function DiasUteis(DataIni, DataFim: TDateTime; sIgnorar: string): Integer;
var
  sDataIni, sDataFim: string;
begin
  sDataIni := FormatDateTime('dd.mm.yyyy', DataIni);
  sDataFim := FormatDateTime('dd.mm.yyyy', DataFim);
  dm.SqlExecute.SQL.Text := 'select uteis from CALCULA_DIAS_UTEIS('
    + qs(sDataIni) + ',' + qs(sDataFim) + ',' + qs(sIgnorar) + ')';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;

  Result := dm.DsExecute.DataSet.FieldByName('uteis').AsInteger;

  dm.DsExecute.DataSet.Close;
end;

function VerificaInternoExiste(sNomeInterno, sNomeMae: string): boolean;
var
  ret_Interno: string;
begin

  Result := False;

  if Trim(sNomeMae) = '' then
    Exit;

  ret_Interno := VarToStrDef(ConsultaRapida('INTERNO', 'NOME_INTERNO', 'TRIM(UPPER(NOME_INTERNO)) = TRIM(UPPER(' + QS(sNomeInterno)
    + ')) AND TRIM(UPPER(MAE)) = TRIM(UPPER(' + qs(sNomeMae) + '))', ''), '');

  Result := (sNomeInterno = ret_Interno);

end;

function VerificaRGIExiste(sRGI: string): boolean;
var
  ret_Interno: string;
begin

  Result := False;

  if Trim(sRGI) = '' then
    Exit;

  ret_Interno := VarToStrDef(ConsultaRapida('INTERNO', 'RGI', 'TRIM(UPPER(RGI)) = TRIM(UPPER(' + QS(sRGI) + '))', ''), '');

  Result := (sRGI = ret_Interno);

end;

function VerificaVisitaExiste(scpf: string): boolean;
var
  ret_VISITA: string;
begin

  Result := False;

  if Trim(scpf) = '' then
    Exit;

  ret_visita := VarToStrDef(ConsultaRapida('VISITANTE', 'cpf', 'TRIM(UPPER(cpf)) = TRIM(UPPER(' + QS(sCPF) + '))', ''), '');

  Result := (sCPF = ret_VISITA);

end;

procedure IniciaTelaAguarde(TamanhoFonte: Integer; ProgressMax: Integer;
  MostraLabelAguarde: Boolean; TextoLabel: string; MostraProgressBar: Boolean);
begin
end;

procedure InterageTelaAguarde(Count: Integer; MostraProgressoLabel: Boolean; MaxPosition: Integer);
begin
end;

procedure FinalizaTelaAguarde();
begin
end;

function IniciaTransMovimento: Boolean;
begin
  try
    MV.TransactionID := MV.TransactionID + 1;
    MV.IsolationLevel := xilREADCOMMITTED;
    FrmMenuRelatorio.Conexao.StartTransaction(MV);
    FrmMenuRelatorio.Conexao.ExecuteDirect('EXECUTE PROCEDURE set_context(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
  except //se der erro para abrir uma TransCadastro
    begin //tente uma nova
      try
        Result := False;
        MV.TransactionID := MV.TransactionID + 1;
        MV.IsolationLevel := xilREADCOMMITTED;
        FrmMenuRelatorio.Conexao.StartTransaction(MV);
      except
      end;
    end;
  end;
end;

function FinalizaTransMovimento: Boolean;
begin
  try
    Result := False;
    if FrmMenuRelatorio.Conexao.InTransaction then
      FrmMenuRelatorio.Conexao.Commit(MV);
    Result := True;
  except
  end;
end;

function CancelaTransMovimento: Boolean;
begin
  try
    if FrmMenuRelatorio.Conexao.InTransaction then
      FrmMenuRelatorio.Conexao.Rollback(MV);
  except
  end;
end;

function Soundex(Str: string): string;
begin
  try
    DM.SqlExecute.SQL.Text := 'SELECT RET FROM SOUNDEX(' + qs(Str) + ')';
    DM.SqlExecute.Close;
    DM.SqlExecute.Open;
    Result := DM.SqlExecute.fieldbyname('RET').AsString;
    DM.SqlExecute.Close;
  except
  end;
end;

function Data_DateTimePicker(vDateTimePicker: TDateTimePicker; vData: TDateTime): Tdatetime;
var
  dia, mes, ano: string;
  data: Tdatetime;
begin

  dia := formatdatetime('dd', vData);
  mes := formatdatetime('mm', vData);
  ano := formatdatetime('yyyy', vData);
  data := strtodate(dia + '/' + mes + '/' + ano);
  vDateTimePicker.Date := data;

end;

function SomDex(strNome: string): string;
var
  V, V1: set of Char;
  C, CN: set of 'a'..'z';

  intTam, n: integer;

begin
  V := ['a', 'e', 'i', 'o', 'u', 'y', 'á', 'é', 'ê', 'ó', 'ô', 'í', 'ú', 'â', 'à', 'ä', 'è', 'ë', 'ì', 'ï', 'î', 'ò', 'ö', 'ü', 'ù', 'û'];
  V1 := ['e', 'i', 'y', 'é', 'ê', 'í', 'è', 'ë', 'ì', 'ï', 'î', 'ù', 'û'];
  C := ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z'];
  CN := ['m', 'n'];

  {Result := Excecoes.Values[Trim(strNome)];
  if Result <> '' then exit;}
  Result := '';
  strNome := '' + AnsiLowerCase(Trim(strNome)) + '';
  intTam := length(strNome);
  n := 1;
  while n < intTam do
  begin
    inc(n);
    if (strNome[n] = strNome[n + 1]) then
      inc(n);

    case strNome[n] of
      ' ':
        exit;
      'a', 'á', 'â', 'à', 'ä':
        Result := Result + 'a';
      'e', 'è', 'ë':
        begin
          if (strNome[n + 1] = '') or (Copy(strNome, n + 1, 2) = 's') then
            Result := Result + 'e'
              //Result := Result + 'i'
          else
            Result := Result + 'e';
        end;
      'é', 'ê':
        Result := Result + 'e';
      'i', 'y', 'í', 'ì', 'ï', 'î':
        if not ((strNome[n - 1] in ['e', 'é']) and (strNome[n + 1] in ['a', 'o'])) then
          Result := Result + 'i';
      'o', 'ò', 'ö':
        begin
          if (strNome[n + 1] = '') or (Copy(strNome, n + 1, 2) = 's') then
            Result := Result + 'u'
          else
            Result := Result + 'o';
        end;
      'ó', 'ô':
        begin
          if (strNome[n + 1] = '') then
            Result := Result + 'o'
          else
            Result := Result + 'o';
        end;
      'u', 'ú', 'ü', 'ù', 'û':
        Result := Result + 'u';
      'b', 'f', 'j', 'k', 'v':
        Result := Result + strNome[n];
      'c':
        begin
          if (strNome[n + 1] in V1) then
            Result := Result + 's'
          else if (strNome[n + 1] in ['a', 'o', 'u', 'r', 'l']) then
            Result := Result + 'k'
          else if (Copy(strNome, n + 1, 2) = 'hr') then //christina, chrizóstemo
          begin
            Result := Result + 'kR';
            n := n + 2;
          end
          else if (strNome[n + 1] = 'h') then
          begin
            Result := Result + 'x';
            inc(n);
          end
          else if (strNome[n + 1] = 'k') then
          begin
            Result := Result + 'k';
            inc(n);
          end
          else
            Result := Result + 'k';
        end;
      'd':
        begin
          if (strNome[n + 1] in C) and (not (strNome[n + 1] in ['r', 'l'])) or (strNome[n + 1] = '') then
            Result := Result + 'di'
          else
            Result := Result + 'd';
        end;
      'g':
        begin
          if (Copy(strNome, n + 1, 2) = 'ue') or (Copy(strNome, n + 1, 2) = 'ui') or (strNome[n + 1] = 'ü') then
          begin
            Result := Result + 'g';
            inc(n);
          end
          else if (strNome[n + 1] in ['i', 'e']) then
            Result := Result + 'j'
          else if (Copy(strNome, n - 2, 2) = 'i') and (strNome[n + 1] = 'n') then
          begin
            Result := Result + 'n';
            inc(n);
          end
          else
            Result := Result + 'g';
        end;
      'h':
        n := n;
      'l':
        begin
          if (strNome[n + 1] = 'h') then
          begin
            Result := Result + 'L';
            inc(n);
          end
          else if (strNome[n + 1] = '') then
            Result := Result + 'u'
          else if (strNome[n + 1] in C) then
            Result := Result + 'u'
          else
            Result := Result + 'l'
        end;
      'm':
        begin
          if (strNome[n - 1] in V) and (strNome[n + 1] in C) or (strNome[n + 1] = '') then
            Result := Result + 'n'
          else
            Result := Result + 'm';
        end;
      'n':
        begin
          if (strNome[n + 1] = 'h') then
          begin
            Result := Result + 'N';
            inc(n);
          end
          else
            Result := Result + 'n'
        end;
      'p':
        begin
          if (strNome[n + 1] = 'h') then
          begin
            Result := Result + 'f';
            inc(n);
          end
          else
            Result := Result + 'p';
        end;
      'q':
        begin
          if (Copy(strNome, n + 1, 2) = 'ue') or (Copy(strNome, n + 1, 2) = 'ui') then
          begin
            Result := Result + 'k';
            inc(n);
          end
          else
            Result := Result + 'k';
        end;
      'r':
        begin
          if (strNome[n - 1] in [' ', 'n', 'm', 'r']) then
            //          if (strNome[n - 1] in ['n', 'm', 'r']) then
            Result := Result + 'r'
          else
            Result := Result + 'R'
        end;
      's':
        begin
          if (strNome[n + 1] = 'h') then
          begin
            Result := Result + 'x';
            inc(n);
          end
          else if (strNome[n - 1] = '') and (strNome[n + 1] in V) then
            Result := Result + 's'
          else if (strNome[n - 1] = '') and (strNome[n + 1] in C) then
            Result := Result + 'es'
          else if (Copy(strNome, n + 1, 2) = 'ce') or (Copy(strNome, n + 1, 2) = 'ci') or (strNome[n + 1] = 'ç') then
          begin
            Result := Result + 's';
            inc(n);
          end
          else if (strNome[n - 1] in V) and (strNome[n + 1] in V) then
            Result := Result + 'z'
          else if (strNome[n - 1] in V) and (strNome[n + 1] in C) then
            Result := Result + 's'
          else if (Copy(strNome, 1, 3) = 'ex') and (strNome[n - 1] in V) then
            Result := Result + 'z'
          else if (strNome[n - 1] in C) and (strNome[n + 1] in V) then
            Result := Result + 's'
          else
            Result := Result + 's';
        end;
      't':
        begin
          if (Copy(strNome, n + 1, 2) = 'h#') then
            Result := Result + 'te'
          else if (strNome[n + 1] <> '') then
            Result := Result + 't';
        end;
      'w':
        begin
          if (Copy(strNome, n + 1, 2) = 'al') or (Copy(strNome, n + 1, 2) = 'an') then
            Result := Result + 'v'
          else
            Result := Result + 'u';
        end;
      'x':
        begin
          if (strNome[n - 1] = '') or (strNome[n - 1] = 'n') then
            Result := Result + 'x'
          else if (Copy(strNome, n + 1, 2) = 'ce') or (Copy(strNome, n + 1, 2) = 'ci') then
          begin
            Result := Result + 's';
            inc(n);
          end
          else if (strNome[n - 1] in V) and (strNome[n + 1] = 't') then
            Result := Result + 's'
          else if (Copy(strNome, n + 1, 2) = 'ai') or (Copy(strNome, n + 1, 2) = 'ei') or (Copy(strNome, n + 1, 2) = 'ou') then
            Result := Result + 'x'
          else if (Copy(strNome, n - 2, 2) = 'e') and (strNome[n + 1] in V) then
            Result := Result + 'z'
          else
            Result := Result + 'x'
        end;
      'z':
        begin
          if (strNome[n - 1] = '') then
            Result := Result + 'z'
          else if (strNome[n + 1] = '') or (strNome[n + 1] in C) then
            Result := Result + 's'
          else
            Result := Result + 'z'
        end;
      'ç':
        Result := Result + 's';
      'ã':
        Result := Result + 'ã';
      'õ':
        Result := Result + 'õ';
      '''': inc(n);
    else
      Result := Result + '@';
    end;
  end;
end; //function SomDex(strNome: string): string;

function TirarAcentos(Palavra: PChar): PChar;
begin
  Result := Palavra;
  if Palavra = nil then
    Exit;
  while Palavra^ <> #0 do
  begin
    case Palavra^ of
      'á', 'â', 'ã', 'à', 'ä', 'å', 'Á', 'Â', 'Ã', 'À', 'Ä', 'Å': Palavra^ :=
        'a';
      'é', 'ê', 'è', 'ë', 'É', 'Ê', 'È', 'Ë': Palavra^ := 'e';
      'í', 'î', 'ì', 'ï', 'Í', 'Î', 'Ì', 'Ï': Palavra^ := 'i';
      'ó', 'ô', 'õ', 'ò', 'ö', 'Ó', 'Ô', 'Õ', 'Ò', 'Ö': Palavra^ := 'o';
      'ú', 'û', 'ù', 'ü', 'Ú', 'Û', 'Ù', 'Ü': Palavra^ := 'u';
      'ç', 'Ç': Palavra^ := 'c';
      'ñ', 'Ñ': Palavra^ := 'n';
      'ý', 'ÿ', 'Ý', 'Ÿ': Palavra^ := 'y';
    else
      if Ord(Palavra^) > 127 then
        Palavra^ := #32;
    end;

    Inc(Palavra);
  end;
end;

//Filtrar caracteres

function FilterChars(const S: string; const ValidChars: TChars): string;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to Length(S) do
    if S[i] in ValidChars then
      Result := Result + S[i];
end;

//Função que recebe um texto e retorna sua string fonética

function fonetica(Texto: PChar): string;
var
  i: Integer;
  S, T, L: string;

  procedure Subst(Procurar, Substituir: string);
  var
    Posicao: Integer;
  begin
    T := '';

    Posicao := pos(Procurar, S);
    if Posicao > 0 then
      repeat
        T := Copy(S, 1, Posicao - 1) + Substituir +
          Copy(S, Posicao + Length(Procurar), Length(S));
        S := T;
        Posicao := pos(Procurar, S);
      until (Posicao <= 0)
    else
      T := S;

    S := T;
  end;

  procedure SubstSeAntes(Procurar, Substituir: string; AntesDe: TChars);
  var
    i: Integer;
  begin
    T := '';

    for i := 1 to Length(S) do
      if (i + 1) <= Length(S) then
        if (S[i] = Procurar) and (S[i + 1] in AntesDe) then
          T := T + Substituir
        else
          T := T + S[i]
      else
        T := T + S[i];

    S := T;
  end;

begin
  S := string(Texto);

  if (Length(S) > 2) then
  begin
    //Converter Minúsculas
    S := PChar(LowerCase(S));

    //Substituir Ç por S
    Subst('ç', 's');

    //Tirar Acentos
    S := TirarAcentos(PChar(S));

    //Filtra os caracteres considerando apenas letras e números
    S := FilterChars(S, ['a'..'z', ' ', '0'..'9']);

    //Substituir PH por F
    Subst('ph', 'f');

    //Substituir SCH por C {trocar com X: Ex.: Schimenes
    Subst('sch', 'c');

    //Excluindo H
    Subst('h', '');

    //Substituir Z por S
    Subst('z', 's');

    //Substituir X por C
    Subst('x', 'c');

    //Substituir Y por I
    Subst('y', 'i');

    //Substituir W por V
    Subst('w', 'v');

    //Substituir K por c
    Subst('k', 'c');

    //Substituir QU por C   (Substituir por K)
    Subst('qu', 'c');

    //Substituir irt e ert por iut e eut  (Substituir por ilt e elt) Ex: Airton e Ailton
    Subst('irt', 'iut');
    Subst('ert', 'eut');

    //Tirar G antes de T Ex: em welington
    Subst('gt', 't');

    //Adicionando um espaço no final para as regras a seguir
    S := S + ' ';

    //Retirar de, da, do, dos, das, d'
    Subst(' de ', ' ');
    Subst(' da ', ' ');
    Subst(' do ', ' ');
    Subst(' d ', ' '); // d'  Ex.: d'alva
    Subst(' dos ', ' ');
    Subst(' das ', ' ');

    //Substituir N no final por M
    Subst('n ', 'm ');

    //Substituir C antes de E e I por S Ex. Celina: Selina
    Subst('ce', 'se');
    Subst('ci', 'si');

    //Substituir GIU por JU Ex. Giuliano e Juliano
    Subst('giu', 'ju');

    //Substituir GEO por JO Ex. George e Jorge
    Subst('geo', 'jo');

    //Substituir G antes de E e I por J Ex. Geferson e Jerferson
    Subst('ge', 'je');
    Subst('gi', 'ji');

    //Substituir I e E no final por A Ex: Camili, Camile e Camila
    Subst('e ', 'a ');
    Subst('i ', 'a ');

    //Substituindo UI ou EU no início por VI ou VE. Ex: Wilson -> vilson = uilson
    if Length(S) >= 2 then
      if (Copy(S, 1, 2) = 'ui') or (Copy(S, 1, 2) = 'ue') then
        S := 'v' + Copy(S, 2, Length(S));

    //Substituir N antes de P e B por M
    Subst('np', 'mp');
    Subst('nb', 'mb');

    //Substituir M antes de consoantes diferente de P e B por n
    SubstSeAntes('m', 'n', ['c', 'd', 'f', 'g', 'h', 'j', 'l',
      'm', 'n', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w', 'k', 'y']);

    //Substituir L antes de consoante, menos L, por U. Ex: Alves e Auves
    SubstSeAntes('l', 'u', ['b', 'c', 'd', 'f', 'g', 'h', 'j',
      'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w', 'k', 'y']);

    //Tira vogais no início dos nomes. Ex. Stela e Estela
    if Length(S) >= 2 then
      if (S[1] in ['a', 'e', 'i', 'o', 'u', 'y']) and
        (S[2] in ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'l',
        'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w', 'k', 'y']) then
        S := Copy(S, 2, Length(S));

    //Tirar letras dobradas
    if Length(S) >= 2 then
    begin
      T := S[1];
      L := S[1];
      for i := 2 to Length(S) do
        if S[i] <> L[1] then
        begin
          T := T + S[i];
          L := S[i];
        end;
      S := T;
    end;

    //Tirar Espaços
    S := FilterChars(S, ['a'..'z', '0'..'9']);
  end;

  Result := PChar(S);
end;

function DBClientDataSetDinamico(aSql: string; Ident: Integer; Forca: Boolean): TClientDataSet;
begin
  Result := nil;

  try

    // SqlQuery
    CompSql := TSQLQuery.Create(Application);
    CompSql.SQLConnection := FrmMenuRelatorio.Conexao;
    CompSql.SQL.Text := aSql;

    // DataSetProvider
    CompDsp := TDataSetProvider.Create(Application);
    CompDsp.DataSet := CompSql;
    TDataSetProvider(CompDsp).Name := StringReplace('Dsp' + IntToStr(CompDsp.ComponentIndex)
      + '_' + IntToStr(Ident) + '_' + FormatDateTime('hhmmsszzz', now), '-', '', [rfReplaceAll]);

    // ClientDataSet
    CompCds := TClientDataSet.Create(Application);
    CompCds.ProviderName := CompDsp.Name;
    CompCds.PacketRecords := -1;
    //

    Result := CompCds;

  except
    if not Forca then
    begin
      Sleep(1000);
      Result := DBClientDatasetDinamico(aSql, Ident, True);
    end;
  end;
end;

function DBConsultaRapida(Tabela, CampoRetorno, Where, CampoSelect: string): Variant;
var
  Query: TClientDataSet;
begin
  Result := NULL;
  try
    if (Trim(Where) <> '') and (Pos('WHERE', UpperCase(Where)) = 0) then
      Where := ' WHERE ' + Where;

    if Trim(CampoSelect) = '' then
      CampoSelect := CampoRetorno;

    Query := DBClientDataSetDinamico('SELECT ' + CampoSelect + ' FROM ' + Tabela + ' ' + Where);
    Query.Open;

    Result := Query.FieldByName(CampoRetorno).AsVariant;
  finally
    if Assigned(CompSql) then
      FreeAndNil(CompSql);
  end;
end;

function DBGenerator(GeneratorName: string; AddGenSincronismo: Boolean; SomaUm: Boolean): Integer;
begin
  //busca o id do generator com opção para colocar o codigo do sincronismo na frente
  if SomaUm then
  begin
    Result := StrToIntDef(VarToStr(DBConsultaRapida('RDB$DATABASE', 'SEQ', '',
      IfThen(AddGenSincronismo, 'GEN_ID(COD_UP,0)||', '') + 'GEN_ID(' + Trim(GeneratorName) + ', 1) AS SEQ')), 0);
  end
  else
  begin
    Result := StrToIntDef(VarToStr(DBConsultaRapida('RDB$DATABASE', 'SEQ', '',
      IfThen(AddGenSincronismo, 'GEN_ID(COD_UP,0)||', '') + 'GEN_ID(' + Trim(GeneratorName) + ', 0) AS SEQ')), 0);
  end;
end;

function DBGeneratorOcorrencia(GeneratorName: string; AddGenSincronismo: Boolean; SomaUm: Boolean): Integer;
var l_id_ocorrencia_plantao: Variant;
    l_SData: string;
begin
  //busca o id do generator com opção para colocar o codigo do sincronismo na frente
  l_SData := Copy(FormatDateTime('dd.mm.yyyy',GLOBAL_DATA),9,2);
  if SomaUm then
  begin
    l_id_ocorrencia_plantao := DBConsultaRapida('ocorrencia_plantao', 'SEQ', 'ID_UP = '''+IntToStr(GLOBAL_ID_UP)+''' AND right(extract(YEAR from DATA_INICIO),2) = '''+l_SData+''' ORDER BY id_ocorrencia_plantao DESC',
      'FIRST 1 id_ocorrencia_plantao+1 SEQ');
    if VarIsNull(l_id_ocorrencia_plantao) then
      l_id_ocorrencia_plantao := 1;
    Result := StrToIntDef(VarToStr(IfThen(AddGenSincronismo, IntToStr(GLOBAL_ID_UP), '')+
      l_SData+
      RightStr('0000'+VarToStr(l_id_ocorrencia_plantao),4)), 0);
  end
  else
  begin
    l_id_ocorrencia_plantao := DBConsultaRapida('ocorrencia_plantao', 'SEQ', 'ID_UP = '''+IntToStr(GLOBAL_ID_UP)+''' AND right(extract(YEAR from DATA_INICIO),2) = '''+l_SData +''' ORDER BY id_ocorrencia_plantao DESC',
      'FIRST 1 id_ocorrencia_plantao+0 SEQ');
    if VarIsNull(l_id_ocorrencia_plantao) then
      l_id_ocorrencia_plantao := 0;
    Result := StrToIntDef(VarToStr(IfThen(AddGenSincronismo, IntToStr(GLOBAL_ID_UP), '')+
      l_SData+
      RightStr('0000'+VarToStr(l_id_ocorrencia_plantao),4)), 0);
  end;
end;


function DataValida(sData: string): Boolean;
begin
  Result := true;
  try
    StrToDate(sData);
  except
    on EConvertError do
      Result := False;
  end;
end;

function InformarData(sData: string; sTipo: string = 'Inicial'): TDateTime;
var
  sNovaData: string;
begin

  sNovaData := '';

  while not DataValida(sNovaData) do
  begin

    sNovaData := InputBox('Digite data ' + sTipo, 'Digite a data ' + sTipo +
      ': [DD/MM/AAAA]', sData);
    if not DataValida(sNovaData) then
    begin
      ShowMessage('A data informada é invalida, digite: DD/MM/AAAA');
    end;

  end;

  Result := StrToDateTime(sNovaData);

end;

function ValidaWebMail(ServidorSMTP: string; PortaSMTP: Integer; AutenticacaoSSL: Boolean;
  EmailRemetente, SenhaRemetente, NomeRemetente: string): Boolean;
var
  SmtpServer: TIdSMTP;
  Mensagem: TIdMessage;
  I: Integer;
begin
end;

procedure ExecutePrograma(Nome, Parametros: string);
var
  Comando: array[0..1024] of Char;
  Parms: array[0..1024] of Char;
begin
  StrPCopy(Comando, Nome);
  StrPCopy(Parms, Parametros);
  ShellExecute(0, nil, Comando, Parms, nil, SW_ShowMaximized);
end;

procedure ImageToPNG(Source: TImage; const Dest: string);
var
  PNG: TPNGObject;
  BMP: TBitmap;
begin
  PNG := TPNGObject.Create;

  {In case something goes wrong, free PNG}
  try
    //If the TImage contains a TBitmap, just assign from it
    if Source.Picture.Graphic is TBitmap then
      PNG.Assign(TBitmap(Source.Picture.Graphic)) //Convert bitmap data into png
    else
    begin

      //Otherwise try to assign first to a TBimap
      BMP := TBitmap.Create;
      try
        BMP.Assign(Source.Picture.Graphic);
        PNG.Assign(BMP);
      finally
        BMP.Free;
      end;

    end;

    //Save to PNG format
    PNG.SaveToFile(Dest);
  finally
    PNG.Free;
  end
end;

function PNGParaJPG(InPNG: string; BMP: TBitmap): TJPEGImage;
var
  PNG: TPNGObject;
  BMP2: TBitmap;
  JPG1: TJPEGImage;
begin

  BMP.SaveToFile('teste22.bmp');

  JPG1 := TJPEGImage.Create;
  JPG1.LoadFromFile(ConverterBmpParaJPeg('teste22.bmp', 100));

  BMP2 := TBitmap.Create;
  BMP2.Assign(JPG1);

  {Creates and loads the input images}
  Result := TJPEGImage.Create;
  PNG := TPNGObject.Create;
  PNG.LoadFromFile(InPNG);

  {Draws over the bitmap (containing the JPG)}
  BMP2.Canvas.Draw(0, 0, PNG);

  {Assigns back to the JPG}
  Result.Assign(BMP2);
  Result.SaveToFile('teste1.jpg');

  {Free the images}
  PNG.Free;

end;

function PNGParaBMP(InPNG: string): TBitmap;
var
  PNG: TPNGObject;
  BMP2: TBitmap;
  ImagemTeste: TImage;
begin

  PNG := TPNGObject.Create;
  PNG.LoadFromFile(InPNG);

  {Draws over the bitmap (containing the JPG)}
  BMP2 := TBitmap.Create;
  BMP2.LoadFromFile('testebmp.bmp');
  BMP2.Canvas.Draw(0, 0, PNG);
  Result := BMP2;

  {Free the images}
  PNG.Free;
  //  BMP2.Free;

end;

function ConvSenhaLetra(Str: string): string;
const
  Chave = 'ALEXPRODUZ';
  Numero = '1234567890';
var
  x: Integer;
  sStrEntrada: string;
begin

  sStrEntrada := Str;

  try
    if length(sStrEntrada) > 0 then
    begin
      for x := 1 to length(sStrEntrada) + 1 do
        if Pos(sStrEntrada[x], Numero) <> 0 then
          sStrEntrada[x] := chave[Pos(sStrEntrada[x], Numero)];
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
  x: Integer;
begin
  if length(Str) > 0 then
  begin
    for x := 1 to length(Str) do
    begin
      if Pos(Str[x], chave) <> 0 then
      begin
        Str[x] := Numero[Pos(Str[x], chave)];
      end
      else
      begin
        Str[x] := '0';
      end;
    end;
  end;
  Result := Str;
end;

// permite formatar o tamanho de um arquivo em bytes em
// Kb, Mb ou Gb

function TamanhoArquivoFormatado(const bytes: Longint): string;
const
  b = 1; // byte
  kb = 1024 * b; // kilobyte
  mb = 1024 * kb; // megabyte
  gb = 1024 * mb; // gigabyte
begin
  if bytes > gb then
    Result := FormatFloat('#0.00 GB', bytes / gb)
  else if bytes > mb then
    Result := FormatFloat('#0.00 MB', bytes / mb)
  else if bytes > kb then
    Result := FormatFloat('#0.00 KB', bytes / kb)
  else
    Result := FormatFloat('#0.00 bt', bytes);
end;

// função que permite obter o tamanho de um arquivo em bytes

function TamanhoArquivoBytes(arquivo: string): Int64;
var
  search_rec: TSearchRec;
begin
  if FindFirst(arquivo, faAnyFile, search_rec) = 0 then
    Result := Int64(search_rec.FindData.nFileSizeHigh) shl Int64(32)
      + Int64(search_rec.FindData.nFileSizeLow)
  else
    Result := -1;

  FindClose(search_rec);

end;

procedure SalvarBlobDatabase(Ds: TDataSource; sField, sFileName: string);
const
  OffsetMemoryStream: Int64 = 0;
var
  FromF: file of byte;
  Buffer: array[0..4096] of char;
  NumRead: integer;
  FileLength: longint;
  MemoryStream: TMemoryStream;
begin
  AssignFile(FromF, sFileName);
  reset(FromF);
  FileLength := FileSize(FromF);
  MemoryStream := TMemoryStream.Create;
  MemoryStream.Position := OffsetMemoryStream;

end;

procedure SalvarBlobDisco(Ds: TDataSource; sField, sFileName: string);
const
  OffsetMemoryStream: Int64 = 0;
var
  ToF: file of byte;
  Buffer: array[0..4096] of char;
  NumRead: integer;
  FileLength: longint;
  MemoryStream: TMemoryStream;
begin
  MemoryStream := TMemoryStream.Create;
  (Ds.DataSet.FieldByName(sField) as TBlobField).SaveToStream(MemoryStream);
  MemoryStream.Position := OffsetMemoryStream;
  FileLength := MemoryStream.Size;
  AssignFile(ToF, sFileName);
  rewrite(ToF);

end;

//Use-a assim:
//Image1.picture.Assign(CaptureImgRect(Rect(0,0,Width,Height)));

function CaptureImgRect(ARect: TRect): TBitmap;
var
  ScreenDC: HDC;
begin
  try
    Result := TBitmap.Create;
    with Result, ARect do
    begin
      Width := Right - Left;
      Height := Bottom - Top;
      ScreenDC := GetDC(0);
      try
        BitBlt(Canvas.Handle, 0, 0, Width, Height, ScreenDC, Left, Top, SRCCOPY);
      finally
        ReleaseDC(0, ScreenDC);
      end;
      // Palette := GetSystemPalette;
    end;
  except
  end;
end;

procedure AddWhere(Query: TSQLQuery; WhereClause: string; StrAndOr: string = ' AND ');
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

function SiapStringReplace(sString, OldCaracter1, NewCaracter1: string; OldCaracter2: string = '';
  NewCaracter2: string = ''; OldCaracter3: string = ''; NewCaracter3: string = ''): string;
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
    Result := SiapStringReplace(MsgErro, 'FIELD', 'O CAMPO', 'MUST HAVE A VALUE', 'PRECISA SER PREENCHIDO');

  if Pos('FIELD VALUE REQUIRED', MsgErro) > -1 then
    Result := SiapStringReplace(MsgErro, 'FIELD', 'EXISTEM CAMPOS QUE ', 'VALUE REQUIRED', 'PRECISAM SER PREENCHIDOS');

  if Pos('CHANGED BY ANOTHER USER', MsgErro) > -1 then
    Result := SiapStringReplace(MsgErro, 'RECORD NOT FOUND OR', '', 'CHANGED BY ANOTHER USER', 'O REGISTRO FOI ALTERADO POR OUTRO USUÁRIO');

  if Pos('VIOLATION OF FOREIGN KEY', MsgErro) > -1 then
    Result := SiapStringReplace(MsgErro, 'VIOLATION OF FOREIGN KEY', 'VIOLAÇÃO DA CHAVE, EXISTE TABELA DEPENDENTE', 'ON TABLE', 'NA TABELA');

end;

function DataMaisAnoMesDia(DataInicial: TDate; vAno, vMes, vDia: double; var DataFinal: TDate): string;
var
  dAno, dMesAno, dMes, dDiaMes, dDia: double;
  FatorDia: integer;
  vtotal_em_dias: double;
  resultado: integer;
  TANOS: INTEGER;
  TMESES: INTEGER;
  TDIAS: INTEGER;
begin
  DataFinal := DataInicial;

  VTOTAL_EM_DIAS := 360 * VANO;
  VTOTAL_EM_DIAS := VTOTAL_EM_DIAS + (30 * VMES);
  VTOTAL_EM_DIAS := VTOTAL_EM_DIAS + VDIA;

  RESULTADO := TRUNC(VTOTAL_EM_DIAS - 0.5);

  TANOS := 0;
  if (RESULTADO > 0) then
    TANOS := TRUNC(RESULTADO / 360);

  RESULTADO := RESULTADO - (TANOS * 360);

  TMESES := 0;
  if (RESULTADO > 0) then
    TMESES := TRUNC(RESULTADO / 30);

  RESULTADO := RESULTADO - (TMESES * 30);

  TDIAS := 0;
  if (RESULTADO > 0) then
    TDIAS := RESULTADO;

  DataFinal := IncYear(DataFinal, trunc(vAno));
  DataFinal := IncMonth(DataFinal, trunc(vMes));
  DataFinal := IncDay(DataFinal, Round(vDia));

end;

function ExecucaoPenalProgressao(DataInicial: TDate; cAno, cMes, cDia: integer; Progressao: Integer; var vAno, vMes, vDia: integer): string;
var
  fatorP, fatorC: double;
  dias_corrido: integer;
  DataFinal: TDate;
  pAno, pMes, pDia: Double;
begin

  dm.SqlExecute.SQL.Text := 'select ano_progressao, mes_progressao, dia_progressao from sp_progressao_regime(' +
    qs(formatdatetime('dd.mm.yyyy', DataInicial)) + ',' +
    INTTOSTR(CANO) + ',' +
    INTTOSTR(CMES) + ',' +
    INTTOSTR(CDIA) + ',' +
    QS(INTTOSTR(Progressao)) + ')';

  with DM.DsExecute.DataSet do
  begin

    close;
    open;

    vAno := fieldbyname('ano_progressao').AsInteger;
    vMes := fieldbyname('mes_progressao').AsInteger;
    vDia := fieldbyname('dia_progressao').AsInteger;

    close;
  end;

  result := 'Progressão: ' + inttostr(vAno) + 'a' + inttostr(vMes) + 'm' + inttostr(vDia) + 'd';

end;

function ExecucaoPenalCondicional(DataInicial: TDate; cAno, cMes, cDia: integer; Condicional: Integer; var vAno, vMes, vDia: integer): string;
var
  fatorC: double;
  dias_corrido: integer;
  DataFinal: TDate;
  pAno, pMes, pDia: Double;
begin

  dm.SqlExecute.SQL.Text := 'select ano_condicional, mes_condicional, dia_condicional from SP_LIVRAMENTO_CONDICIONAL(' +
    qs(formatdatetime('dd.mm.yyyy', DataInicial)) + ',' +
    INTTOSTR(CANO) + ',' +
    INTTOSTR(CMES) + ',' +
    INTTOSTR(CDIA) + ',' +
    QS(INTTOSTR(condicional)) + ')';

  with DM.DsExecute.DataSet do
  begin

    close;
    open;

    vAno := fieldbyname('ano_condicional').AsInteger;
    vMes := fieldbyname('mes_condicional').AsInteger;
    vDia := fieldbyname('dia_condicional').AsInteger;

    close;
  end;
  result := 'Condicional: ' + inttostr(vano) + 'a' + inttostr(vmes) + 'm' + inttostr(vdia) + 'd';

end;

function UltimoDiaMes(Data: TDateTime; var vDia: integer): TDateTime;
var
  Ano, Mes, Dia: word;
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

  DecodeDate(DataAux - 1, Ano, Mes, Dia);
  vDia := Dia;

end;

procedure IniciaArquivoTexto(sArquivo: string);
begin


end;

procedure LinhaArquivoTexto(sLinha, sArquivo: string);
begin

  if Trim(sLinha) = '' then
    Exit;

  if Trim(sLinha) = '|' then
    Exit;

  sLinha := Trim(sLinha);

  try

    IniciaArquivoTexto(sArquivo);

    WriteLn(ArqTexto, sLinha);

    FechaArquivoTexto;

  except
  end;

end;

procedure FechaArquivoTexto;
begin
  try
    CloseFile(ArqTexto);
  except
  end;
end;

procedure MensagemAoUsuario(sMensagem: string);
begin

end;

procedure MensagemAoUsuarioViaFastReport();
begin

end;

procedure ReabrirMesmoRegistro(DsTabelaRegistro: TDataSource);
var
  registro: TBookmark;
begin

  with DsTabelaRegistro.DataSet do
  begin

    if not DsTabelaRegistro.DataSet.active then
    begin
      Close;
      Open;
      exit;
    end;

    if DsTabelaRegistro.DataSet.isempty then
    begin
      Close;
      Open;
      exit;
    end;

    DisableControls;
    registro := GetBookmark;
    Close;
    Open;
    if BookmarkValid(registro) then
      GotoBookmark(registro);
    EnableControls;
  end;

end;

function GetBuildInfo(Aplicativo: string; Tipo: string = 'BUILD'; VerData:
  Boolean = True): string;
var
  AppData: string;
begin

  AppData := '';
  if VerData then
    AppData := 'Data/Hora da versão: ' + FormatDateTime('dd/MM/yyy hh:mm', FileDateToDateTime(FileAge(Aplicativo)));

  Result := '2.0.3.0 - ' + AppData;

end;

function ValidaCPF(numCPF: string): boolean;
var
  cpf: string;
  x, total, dg1, dg2: Integer;
  ret: boolean;
begin
  //variavel de retorno recebe True.
  ret := True;

  //verifica se foi digitado somente numeros, pontos e traços.
  for x := 1 to Length(numCPF) do
    if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
      ret := False;

  if ret then
  begin
    ret := True;
    cpf := '';

    //retira os pontos e traços
    for x := 1 to Length(numCPF) do
      if numCPF[x] in ['0'..'9'] then
        cpf := cpf + numCPF[x];

    //verifica se a quantidade de numeros ta certa.
    if Length(cpf) <> 11 then
      ret := False;

    if ret then
    begin
      //1° dígito
      total := 0;
      for x := 1 to 9 do
        total := total + (StrToInt(cpf[x]) * x);
      dg1 := total mod 11;

      if dg1 = 10 then
        dg1 := 0;

      //2° dígito
      total := 0;
      for x := 1 to 8 do
        total := total + (StrToInt(cpf[x + 1]) * (x));
      total := total + (dg1 * 9);
      dg2 := total mod 11;
      if dg2 = 10 then
        dg2 := 0;

     //Validação final
      if (dg1 = StrToInt(cpf[10])) and (dg2 = StrToInt(cpf[11])) then
        ret := True
      else
        ret := False;

      //Números inválidos
      case AnsiIndexStr(cpf, ['00000000000', '11111111111', '22222222222',
        '33333333333', '44444444444', '55555555555', '66666666666',
          '77777777777', '88888888888', '99999999999'])
        of 0..9: ret := False;
      end;

    end
    else
    begin
    //Se não informado deixa passar
      if cpf = '' then
        ret := True;
    end;

  end;
  ValidaCPF := ret;
end;

function ValidaCNPJ(numCNPJ: string): boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
  ret := False;
  cnpj := '';

  //verifica se foi digitado somente numeros, pontos e traços.
  for x := 1 to Length(numCNPJ) do
    if (numCNPJ[x] in ['0'..'9', '-', '.', '/', ' ']) then
      ret := True;

  //retira os pontos, traços e barras
  for x := 1 to Length(numCNPJ) do
    if numCNPJ[x] in ['0'..'9'] then
      cnpj := cnpj + numCNPJ[x];

  //verifica se a quantidade de numeros ta certa.
  if Length(cnpj) <> 14 then
    ret := False;

  //Verifica
  if ret then
  begin
    try
      //1° digito
      total := 0;
      for x := 1 to 12 do
      begin
        if x < 5 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
        else
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
      end;

      dg1 := 11 - (total mod 11);

      if dg1 > 9 then
        dg1 := 0;
                //2° digito
      total := 0;

      for x := 1 to 13 do
      begin
        if x < 6 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
        else
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
      end;

      dg2 := 11 - (total mod 11);

      if dg2 > 9 then
        dg2 := 0;

      //Validação final
      if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
        ret := True
      else
        ret := False;
    except
      ret := False;
    end;

    //Números inválidos
    case AnsiIndexStr(cnpj, ['00000000000000', '11111111111111',
      '22222222222222', '33333333333333', '44444444444444', '55555555555555',
        '66666666666666', '77777777777777', '88888888888888', '99999999999999'])
      of 0..9: ret := False;

    end;
  end
  else
  begin
    //Se não informado deixa passar
    if cnpj = '' then
      ret := True;
  end;
  ValidaCNPJ := ret;
end;

{Função que verifica se a data é válida no formato dd/mm/aa ou dd/mm/aaaa.

É utilizada em conjunto com as Procedures "ValidaDataKeyPress" e "ValidaDataExit".

Essa Função é chamada pela procedure "ValidaDataExit".

Diogo G. Lima - 21/11/2012}

function ValidaData(var Data: string): Boolean;
var I, J, Dia, Mes, Ano: Integer;
  M: array of Integer;
  Erro: string;
begin

  Erro := 'n'; //Em princípio o campo é considerado como correto(válido).
  SetLength(M, 13); // Cria-se o Array M com 13 campos dos quais usaremos do 1 ao 12.

  // A matriz M é preenchida com o último dia de cada mês.
  for I := 1 to 12 do
  begin
    M[I] := 31;
  end;
  // Acerta os meses que têm menos que 31 dias.
  M[4] := 30;
  M[2] := 28;
  M[6] := 30;
  M[9] := 30;
  M[11] := 30;

  //Separa o dia, mês e ano da data.
  Dia := StrToInt(Copy(Data, 1, 2));
  Mes := StrToInt(Copy(Data, 4, 2));
  Ano := StrToInt(Copy(Data, 7, 4));

  // Verifica se o ano é bissexto
  J := Ano mod 4;
  if J = 0 then
    M[2] := 29
  else M[2] := 28;

  // Valida o mes
  if (mes < 1) or (mes > 12)
    then Erro := 's';

  // Valida o dia
  if Erro = 'n' then
    if (dia < 1) or (dia > M[Mes])
      then Erro := 's';

  if Erro = 's' then
  begin
    messageDlg('A data: ' + Data + ' é inválida!', mtError, [mbOk], 0);
    Data := '';
    Result := False;
  end else
    Result := True;

end;

{Esta Procedure limita o Edit ou DBedit em 10 caracteres, somente números e
acrescenta a barra "/" automaticamente ao digitar a data.

É utilizada em conjunto com a Procedure "ValidaDataExit"
e a Função "ValidaData".

Essa Procedure deverá ser chamada no Evento OnKeyPress do Edit ou DBedit e receber
como parâmetros as variáveis Sender e Key. Exemplo: "ValidaDataKeyPress(Sender, Key)".
Também é necessário fazer a chamada da Procedure "ValidaDataExit" no Evento onExit
do Edit ou DBedit.

Diogo G. Lima - 21/11/2012}

procedure ValidaDataKeyPress(Componente: TObject; var Key: Char);
begin

  //Verifica qual é o tipo de componente, se é Edit ou DBedit.
  if Componente is TEdit then
  begin
    TEdit(Componente).MaxLength := 10;

    if not (Key = Chr(8)) then // Libera o Backspace para apagar os dados digitados.
      if not (Key in ['0'..'9']) then // Só permite a digitação de números, senão bloqueia e não faz nada.
        abort;

    if not (Key = Chr(8)) then //Se nao for o Backspace verifica se é para inserir a barra antes do numero digitado.
    begin

      if (Length(TEdit(Componente).Text) = 2) then //Verifica se é para inserir a barra e coloca o cursos no fim do texto.
      begin
        TEdit(Componente).Text := TEdit(Componente).Text + '/'; //Acrescenta a barra.
        TEdit(Componente).SelStart := Length(TEdit(Componente).Text);
      end;

      if (Length(TEdit(Componente).Text) = 5) then //Verifica se é para inserir a barra e coloca o cursos no fim do texto.
      begin
        TEdit(Componente).Text := TEdit(Componente).Text + '/';
        TEdit(Componente).SelStart := Length(TEdit(Componente).Text);
      end;

    end else //Caso a tecla apertada seja o Backspace, verifica se apaga a barra junto.
    begin

      if (Length(TEdit(Componente).Text) = 4) then //Verifica se é para apagar a barra e coloca o cursos no fim do texto.
      begin
        TEdit(Componente).Text := Copy(TEdit(Componente).Text, 1, Length(TEdit(Componente).Text) - 1);
        TEdit(Componente).SelStart := Length(TEdit(Componente).Text);
      end;

      if (Length(TEdit(Componente).Text) = 7) then //Verifica se é para apagar a barra e coloca o cursos no fim do texto.
      begin
        TEdit(Componente).Text := Copy(TEdit(Componente).Text, 1, Length(TEdit(Componente).Text) - 1);
        TEdit(Componente).SelStart := Length(TEdit(Componente).Text);
      end;

    end;
  end;

  //Verifica qual é o tipo de componente, se é Edit ou DBedit.
  if Componente is TDBedit then
  begin
    TDBedit(Componente).MaxLength := 10;

    if not (Key = Chr(8)) then // Libera o Backspace para apagar os dados digitados.
      if not (Key in ['0'..'9']) then // Só permite a digitação de números, senão bloqueia e não faz nada.
        abort;

    if not (Key = Chr(8)) then //Se nao for o Backspace verifica se é para inserir a barra antes do numero digitado.
    begin

      if (Length(TDBedit(Componente).Text) = 2) then //Verifica se é para inserir a barra e coloca o cursos no fim do texto.
      begin
        TDBedit(Componente).Text := TDBedit(Componente).Text + '/'; //Acrescenta a barra.
        TDBedit(Componente).SelStart := Length(TDBedit(Componente).Text);
      end;

      if (Length(TDBedit(Componente).Text) = 5) then //Verifica se é para inserir a barra e coloca o cursos no fim do texto.
      begin
        TDBedit(Componente).Text := TDBedit(Componente).Text + '/';
        TDBedit(Componente).SelStart := Length(TDBedit(Componente).Text);
      end;

    end else //Caso a tecla apertada seja o Backspace, verifica se apaga a barra junto.
    begin

      if (Length(TDBedit(Componente).Text) = 4) then //Verifica se é para apagar a barra e coloca o cursos no fim do texto.
      begin
        TDBedit(Componente).Text := Copy(TDBedit(Componente).Text, 1, Length(TDBedit(Componente).Text) - 1);
        TDBedit(Componente).SelStart := Length(TDBedit(Componente).Text);
      end;

      if (Length(TDBedit(Componente).Text) = 7) then //Verifica se é para apagar a barra e coloca o cursos no fim do texto.
      begin
        TDBedit(Componente).Text := Copy(TDBedit(Componente).Text, 1, Length(TDBedit(Componente).Text) - 1);
        TDBedit(Componente).SelStart := Length(TDBedit(Componente).Text);
      end;

    end;
  end;

end;

{Esta Procedure verifica se a data digitada está no formato dd/mm/aaaa e chama a
Função que verifica se a data é válida.

É utilizada em conjunto com a Procedure "ValidaDataKeyPress" e a Função "ValidaData".

Essa Procedure deverá ser chamada no Evento OnExit do Edit ou DBedit e receber
como parâmetro a variável Sender. Exemplo: "ValidaDataExit(Sender)". Também é
necessário fazer a chamada da Procedure "ValidaDataKeyPress" no Evento onKeyPress
do Edit ou DBedit.

Diogo G. Lima - 21/11/2012}

procedure ValidaDataExit(Componente: TObject);
var Data: string;
begin

  //Verifica qual é o tipo de componente, se é Edit ou DBedit.
  if Componente is TEdit then
  begin

    //Verifica se a data digitada está no formato dd/mm/aaaa.
    if ((Length(TEdit(Componente).Text) >= 1) and (Length(TEdit(Componente).Text) <> 10)) then
    begin
      ShowMessage('Data em formato inválido!' + #13 + 'Formato: dd/mm/aaaa');
      TEdit(Componente).SetFocus;
      TEdit(Componente).SelStart := Length(TEdit(Componente).Text);
    end;

    //Se a data estiver no formato correto, chama a função para verificar se a data é válida.
    if (Length(TEdit(Componente).Text) = 10) then
    begin
      Data := TEdit(Componente).Text;
      if not ValidaData(Data) then
      begin
        TEdit(Componente).SetFocus;
        TEdit(Componente).SelStart := Length(TEdit(Componente).Text);
      end;
    end;
  end;

  //Verifica qual é o tipo de componente, se é Edit ou DBedit.
  if Componente is TDBEdit then
  begin

    //Verifica se a data digitada está no formato dd/mm/aaaa.
    if ((Length(TDBEdit(Componente).Text) >= 1) and (Length(TDBEdit(Componente).Text) <> 10)) then
    begin
      ShowMessage('Data em formato inválido!' + #13 + 'Formato: dd/mm/aaaa');
      TDBEdit(Componente).SetFocus;
      TDBEdit(Componente).SelStart := Length(TDBEdit(Componente).Text);
    end;

    //Se a data estiver no formato correto, chama a função para verificar se a data é válida.
    if (Length(TDBEdit(Componente).Text) = 10) then
    begin
      Data := TDBEdit(Componente).Text;
      if not ValidaData(Data) then
      begin
        TDBEdit(Componente).SetFocus;
        TDBEdit(Componente).SelStart := Length(TDBEdit(Componente).Text);
      end;
    end;
  end;

end;

{Esta Procedure faz com que o componente só aceite números.
Deverá ser chamada no Evento OnKeyPress do componente e receber
como parâmetro a variável Key. Exemplo: "SoNumeros(Key)".

Diogo G. Lima - 21/11/2012}

procedure SoNumeros(var Key: Char);
begin
  if not (Key = Chr(8)) then // Libera o Backspace para apagar os dados digitados.
    if not (Key in ['0'..'9']) then // Só permite a digitação de números, senão bloqueia e não faz nada.
      abort;
end;

{Esta Função remove caracteres acentuados de uma string passada como parametro.
Diogo G. Lima - 15/04/2013}

function RemoveAcentos(Str: string): string;
const
  ComAcento = 'áéíóúàèìòùâêîôûäëïöüãõñçÁÉÍÓÚÀÈÌÒÙÂÊÎÔÛÄËÏÖÜÃÕÑÇ';
  SemAcento = 'aeiouaeiouaeiouaeiouaoncAEIOUAEIOUAEIOUAEIOUAONC';
var
  x: Integer;
begin
  for x := 1 to Length(Str) do
  begin
    if Pos(Str[x], ComAcento) <> 0 then
    begin
      Str[x] := SemAcento[Pos(Str[x], ComAcento)];
    end;
  end;
  Result := Str;
end;

end.

