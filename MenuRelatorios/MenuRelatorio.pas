unit MenuRelatorio;

interface

uses IWSystem,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxChBox, frxOLE, frxDCtrl, frxDMPExport, frxCross,
  frxClass, frxADOComponents, frxBarcode, frxRich, frxExportCSV,
  frxExportImage, frxExportMail, frxGZip, frxCrypt, frxDesgn, frxExportODF,
  frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML, frxExportText,
  frxExportRTF, frxChart, frxDBSet, frxIBXComponents, FMTBcd,
  SqlExpr, Provider, DB, DBClient, Menus, FileCtrl, frxDBXComponents, Mask,
  Data.DBXFirebird, IniFiles, Vcl.DBCtrls, frx2xto30;

type
  TFrmMenuRelatorio = class(TForm)
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxPDFExport1: TfrxPDFExport;
    frxODSExport1: TfrxODSExport;
    frxODTExport1: TfrxODTExport;
    frxCrypt1: TfrxCrypt;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxMailExport1: TfrxMailExport;
    frxGIFExport1: TfrxGIFExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport1: TfrxReport;
    frxRichObject1: TfrxRichObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxCrossObject1: TfrxCrossObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDialogControls1: TfrxDialogControls;
    frxOLEObject1: TfrxOLEObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    Button1: TButton;
    frxDesigner1: TfrxDesigner;
    frxIBXComponents1: TfrxIBXComponents;
    frxChartObject1: TfrxChartObject;
    ListBox1: TListBox;
    DsCadastro: TDataSource;
    CdsCadastro: TClientDataSet;
    DspCadastro: TDataSetProvider;
    SqlCadastro: TSQLQuery;
    PopupMenu1: TPopupMenu;
    Designer1: TMenuItem;
    DirectoryListBox1: TDirectoryListBox;
    FilterComboBox1: TFilterComboBox;
    FileListBox2: TFileListBox;
    FileEdit: TEdit;
    Label1: TLabel;
    DirectoryListBoxTeste: TDirectoryListBox;
    frxDBXComponents1: TfrxDBXComponents;
    Conexao: TSQLConnection;
    DBLookupComboBoxUP: TDBLookupComboBox;
    DsUP: TDataSource;
    CdsUP: TClientDataSet;
    DspUP: TDataSetProvider;
    SqlUP: TSQLQuery;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Designer1Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure DirectoryListBox1DblClick(Sender: TObject);
    procedure frxReport1BeforeConnect(Sender: TfrxCustomDatabase;
      var Connected: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBoxUPClick(Sender: TObject);
  private
    procedure AbreConexao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuRelatorio: TFrmMenuRelatorio;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmMenuRelatorio.AbreConexao();
var
  ArqIni: TIniFile;
  DB_INIFILE, DB_LIBRARYNAME, DB_VENDORNAME: string;
  numero_tentativa: integer;
  Atualizar_Campos_Tabelas_Banco_Dados: string;
  Parametros: TStrings;
  QualBanco, Arquivo: string;
  ini: TIniFile;
begin

  SetCurrentDir(gsAppPath);

  { * Define Variaveis de Conexao * }

  DB_INIFILE := gsAppPath + '..\config\dbxconnections.ini';
  ArqIni := TIniFile.Create(DB_INIFILE);

  senha_padrao := ArqIni.ReadString('SISAP', 'PADRAO', 'IPCG');
  GLOBAL_LOCAL := ArqIni.ReadString('SISAP', 'LOCAL', 'AGEPEN');
  GLOBAL_NOME := ArqIni.ReadString('SISAP', 'NOME',
    'AGÊNCIA ESTADUAL DE ADMINISTRAÇÃO DO SISTEMA PENITENCIÁRIO');
  GLOBAL_ORGAO := ArqIni.ReadString('SISAP', 'ORGAO',
    'GOVERNO DO ESTADO DE MATO GROSSO DO SUL');
  GLOBAL_DEPARTAMENTO := ArqIni.ReadString('SISAP', 'DEPARTAMENTO',
    'SECRETARIA DE ESTADO DE JUSTIÇA E SEGURANÇA PÚBLICA');
  GLOBAL_DIRETORIA := ArqIni.ReadString('SISAP', 'DIRETORIA',
    'AGÊNCIA ESTADUAL DE ADMINISTRAÇÃO DO SISTEMA PENITENCIÁRIO');

  Parametros := TStringList.Create;
  Conexao.Connected := false;

  try
    if FileExists(gsAppPath + '../Config/Conexao.ini') then
    begin
      ini := TIniFile.Create(gsAppPath + '../Config/Conexao.ini');
      QualBanco := UpperCase(ini.ReadString('SGBD', 'BD', ''));
      // Conexao com Base de Dados do Balcao
    end
    else
      ShowMessage
        ('Arquivo de inicialização não encontrado: Config/Conexao.ini');
  finally
    ini.Free;
  end;

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
    ShowMessage
      ('Arquivo de configuração do banco não encontrado: Config/Firebird_conn.txt');

  Parametros.LoadFromFile(Arquivo);
  Conexao.Params := Parametros;

  try
    Conexao.Connected := true;
  except
  end;

end;

procedure TFrmMenuRelatorio.FormCreate(Sender: TObject);
begin
  AbreConexao;

//  DsUP.DataSet.Close;
//  DsUP.DataSet.Open;

  SetCurrentDir(gsAppPath);

  if PATH_MOMENTO = '' then
  begin
    PATH_MOMENTO := gsAppPath + '../relatorios/';
  end;

  if not DirectoryExists(PATH_MOMENTO) then
  begin
//    ShowMessage('Não existe a pasta: ' + PATH_MOMENTO);
    DirectoryListBox1.Directory := gsAppPath;
    DirectoryListBoxTeste.Directory := gsAppPath;
  end
  else
  begin
    DirectoryListBoxTeste.Directory := PATH_MOMENTO;
    DirectoryListBox1.Directory := PATH_MOMENTO;
  end;

end;

procedure TFrmMenuRelatorio.Button1Click(Sender: TObject);
begin

  SetCurrentDir(gsAppPath);

  if not DirectoryExists(PATH_MOMENTO) then
  begin
    ShowMessage('Não existe a pasta: ' + PATH_MOMENTO);
    Exit;
  end;

  frxReport1.LoadFromFile(FileListBox2.FileName);
  frxReport1.Variables.DeleteVariable('ID_UP');
  frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
  frxReport1.Variables.DeleteVariable('GLOBAL_ID_FUNCIONARIO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_FUNCIONARIO',
    GLOBAL_ID_FUNCIONARIO);
  frxReport1.Variables.DeleteVariable('GLOBAL_ID_INTERNO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_INTERNO',
    GLOBAL_ID_INTERNO);
  frxReport1.Variables.DeleteVariable('GLOBAL_IDAGENDA_ATENDIMENTO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_IDAGENDA_ATENDIMENTO',
    qs(GLOBAL_IDAGENDA_ATENDIMENTO));
  frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', qs(GLOBAL_ORGAO));
  frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO',
    qs(GLOBAL_DEPARTAMENTO));
  frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA',
    qs(GLOBAL_DIRETORIA));
  frxReport1.Variables.DeleteVariable('GLOBAL_PADRAO_SISTEMA');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PADRAO_SISTEMA',
    qs(GLOBAL_PADRAO_SISTEMA));
  frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_1');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_1',
    qs(GLOBAL_NIVEL_1));
  frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_2');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_2',
    qs(GLOBAL_NIVEL_2));
  frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_3');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_3',
    qs(GLOBAL_NIVEL_3));
  frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_4');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_4',
    qs(GLOBAL_NIVEL_4));
  frxReport1.Variables.DeleteVariable('GLOBAL_ID_TRANSFERENCIA_INTERNO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_TRANSFERENCIA_INTERNO',
    GLOBAL_ID_TRANSFERENCIA_INTERNO);
  frxReport1.Variables.DeleteVariable('GLOBAL_ID_MUDANCA_CELA');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_MUDANCA_CELA',
    GLOBAL_ID_MUDANCA_CELA);

  if ContemValor('R', PERMISSAO_CONFERE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CONFERE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CONFERE', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_VISITANTE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_VISITANTE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_VISITANTE', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_TRABALHO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_TRABALHO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_TRABALHO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CADASTRO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CADASTRO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CADASTRO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_EDUCACAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_EDUCACAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_EDUCACAO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PSICOSSOCIAL) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PSICOSSOCIAL');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PSICOSSOCIAL', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_JURIDICA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_JURIDICA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_JURIDICA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_DISCIPLINA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_DISCIPLINA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DISCIPLINA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_INTELIGENCIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_INTELIGENCIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_INTELIGENCIA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ENFERMAGEM) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ENFERMAGEM');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ENFERMAGEM', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FARMACIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FARMACIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_FARMACIA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CLINICAMEDICA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CLINICAMEDICA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CLINICAMEDICA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PSICOLOGIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PSICOLOGIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PSICOLOGIA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PSIQUIATRIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PSIQUIATRIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PSIQUIATRIA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SAUDE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SAUDE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SAUDE', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_TERAPIAOCUPACIONAL');
    frxReport1.Variables.AddVariable('SIAP',
      'GLOBAL_TERAPIAOCUPACIONAL', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ODONTOLOGIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ODONTOLOGIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ODONTOLOGIA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PEDAGOGIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PEDAGOGIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PEDAGOGIA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SERVICOSOCIAL) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SERVICOSOCIAL');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SERVICOSOCIAL', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ARMAS) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ARMAS');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ARMAS', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_MONITORAMENTO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_MONITORAMENTO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_MONITORAMENTO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_OCORRENCIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_OCORRENCIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_OCORRENCIA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CONSELHODISCIPLINAR');
    frxReport1.Variables.AddVariable('SIAP',
      'GLOBAL_CONSELHODISCIPLINAR', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_TRANSFERENCIAINTERNO');
    frxReport1.Variables.AddVariable('SIAP',
      'GLOBAL_TRANSFERENCIAINTERNO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_MUDANCACELA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_MUDANCACELA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_MUDANCACELA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SAIDAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SAIDAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SAIDAO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CIRCULACAOINTERNO');
    frxReport1.Variables.AddVariable('SIAP',
      'GLOBAL_CIRCULACAOINTERNO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_MOVIMENTOSEMIABERTO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_MOVIMENTOSEMIABERTO');
    frxReport1.Variables.AddVariable('SIAP',
      'GLOBAL_MOVIMENTOSEMIABERTO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FUNCIONARIO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FUNCIONARIO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_FUNCIONARIO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FUNCAOFUNCIONARIO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FUNCAOFUNCIONARIO');
    frxReport1.Variables.AddVariable('SIAP',
      'GLOBAL_FUNCAOFUNCIONARIO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_UNIDADEPENAL) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_UNIDADEPENAL');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_UNIDADEPENAL', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_HORARIOFUNCIONARIO');
    frxReport1.Variables.AddVariable('SIAP',
      'GLOBAL_HORARIOFUNCIONARIO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PADRAOSISTEMA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PADRAOSISTEMA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PADRAOSISTEMA', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_EQUIPE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_EQUIPE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_EQUIPE', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_LOCALPOSTOTRABALHO');
    frxReport1.Variables.AddVariable('SIAP',
      'GLOBAL_LOCALPOSTOTRABALHO', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_AGENTEPOREQUIPE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_AGENTEPOREQUIPE', qs('R'));
  end;

  if ContemValor('R', PERMISSAO_REGRAVISITACAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_REGRAVISITACAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_REGRAVISITACAO', qs('R'));
  end;

  frxReport1.Variables.DeleteVariable('GLOBAL_TIPOPROCESSO');
  frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_TIPOPROCESSO',
    qs('Condenado'));
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_TIPOPROCESSO',
    qs('Condenado'));

  frxReport1.ShowReport();

end;

procedure TFrmMenuRelatorio.FormShow(Sender: TObject);
begin
  if not DirectoryExists(PATH_MOMENTO) then
  begin
    ShowMessage('Não existe a pasta: ' + PATH_MOMENTO);
    Exit;
  end;

  FileListBox2.SetFocus;
end;

procedure TFrmMenuRelatorio.DBLookupComboBoxUPClick(Sender: TObject);
begin
  with DsUP.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    UP_Logado := DsUP.DataSet.FieldByName('SIGLA').Asstring;
    GLOBAL_NOME_UP := DsUP.DataSet.FieldByName('NOME_UP').Asstring;
    GLOBAL_ID_UP := FieldByName('ID_UP').AsInteger;

  end;

end;

procedure TFrmMenuRelatorio.Designer1Click(Sender: TObject);
var
  sSenhaDIA, sDigitada: string;
begin
{
  sSenhaDIA := ConvSenhaLetra(FormatDateTime('DD', Date));
  sDigitada := inputbox('Senha de acesso:', 'Senha:', '************');

  if ContemValor(sSenhaDIA, sDigitada) then
}
  begin

    if not DirectoryExists(PATH_MOMENTO) then
    begin
      ShowMessage('Não existe a pasta: ' + PATH_MOMENTO);
      Exit;
    end;

    frxReport1.LoadFromFile(FileListBox2.FileName);

    frxReport1.Variables.DeleteVariable('ID_UP');
    frxReport1.Variables.AddVariable('GLOBAL', 'ID_UP', GLOBAL_ID_UP);
    frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);

    frxReport1.Variables.DeleteVariable('GLOBAL_ID_FUNCIONARIO');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_FUNCIONARIO',
      GLOBAL_ID_FUNCIONARIO);

    frxReport1.Variables.DeleteVariable('ID_INTERNO');
    frxReport1.Variables.AddVariable('GLOBAL', 'ID_INTERNO', GLOBAL_ID_INTERNO);
    frxReport1.Variables.AddVariable('SIAP', 'ID_INTERNO', GLOBAL_ID_INTERNO);

    frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ORGAO',
      qs(GLOBAL_ORGAO));
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', qs(GLOBAL_ORGAO));

    frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_DEPARTAMENTO',
      qs(GLOBAL_DEPARTAMENTO));
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO',
      qs(GLOBAL_DEPARTAMENTO));

    frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_DIRETORIA',
      qs(GLOBAL_DIRETORIA));
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA',
      qs(GLOBAL_DIRETORIA));

    frxReport1.Variables.DeleteVariable('GLOBAL_IDAGENDA_ATENDIMENTO');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_IDAGENDA_ATENDIMENTO',
      qs(GLOBAL_IDAGENDA_ATENDIMENTO));

    frxReport1.Variables.DeleteVariable('GLOBAL_PADRAO_SISTEMA');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_PADRAO_SISTEMA',
      qs(GLOBAL_PADRAO_SISTEMA));

    frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_1');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_1',
      qs(GLOBAL_NIVEL_1));
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_1',
      qs(GLOBAL_NIVEL_1));

    frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_2');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_2',
      qs(GLOBAL_NIVEL_2));
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_2',
      qs(GLOBAL_NIVEL_2));

    frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_3');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_3',
      qs(GLOBAL_NIVEL_3));
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_3',
      qs(GLOBAL_NIVEL_3));

    frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_4');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_NIVEL_4',
      qs(GLOBAL_NIVEL_4));
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_4',
      qs(GLOBAL_NIVEL_4));

    frxReport1.Variables.DeleteVariable('GLOBAL_ID_TRANSFERENCIA_INTERNO');
    frxReport1.Variables.AddVariable('GLOBAL',
      'GLOBAL_ID_TRANSFERENCIA_INTERNO', GLOBAL_ID_TRANSFERENCIA_INTERNO);
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_TRANSFERENCIA_INTERNO',
      GLOBAL_ID_TRANSFERENCIA_INTERNO);

    frxReport1.Variables.DeleteVariable('GLOBAL_ID_MUDANCA_CELA');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_ID_MUDANCA_CELA',
      GLOBAL_ID_MUDANCA_CELA);
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_MUDANCA_CELA',
      GLOBAL_ID_MUDANCA_CELA);

    frxReport1.Variables.DeleteVariable('GLOBAL_TIPOPROCESSO');
    frxReport1.Variables.AddVariable('GLOBAL', 'GLOBAL_TIPOPROCESSO',
      qs('Condenado'));
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_TIPOPROCESSO',
      qs('Condenado'));

    frxReport1.DesignReport;
{
  end
  else
  begin
    showmessage('Informe a senha de acesso, ou ligue:');
}
  end;

end;

procedure TFrmMenuRelatorio.DirectoryListBox1Change(Sender: TObject);
begin

  if DirectoryExists(PATH_MOMENTO) then
  begin
    if Pos(DirectoryListBoxTeste.Directory,
      'xx' + DirectoryListBox1.Directory) = 0 then
    begin
      DirectoryListBox1.Directory := DirectoryListBoxTeste.Directory;
    end;
  end;

end;

procedure TFrmMenuRelatorio.DirectoryListBox1DblClick(Sender: TObject);
begin
  SetCurrentDir(gsAppPath);
end;

procedure TFrmMenuRelatorio.frxReport1BeforeConnect(Sender: TfrxCustomDatabase;
  var Connected: Boolean);
begin
  // ShowMessage(Sender.Name);
end;

procedure TFrmMenuRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DsUP.DataSet.Close;
  PATH_MOMENTO := '';
end;

end.
