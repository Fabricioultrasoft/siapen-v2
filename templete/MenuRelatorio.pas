unit MenuRelatorio;

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
  uniButton,
  uniBitBtn,
  uniMultiItem,
  uniListBox,
  uniGUIBaseClasses,
  uniTreeView,
  uniComboBox, uniLabel, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TFrmMenuRelatorio = class(TUniForm)
    UniBitBtnVisualizar: TUniBitBtn;
    UniComboBoxRelatorios: TUniComboBox;
    UniLabel1: TUniLabel;
    SqlConsultaBackup: TSQLQuery;
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtnVisualizarClick(Sender: TObject);
  private
    listtemp2: Tstrings;
    id_interno: integer;
    function LocalizaTree(sDescricao: String; Deleta: boolean = false): integer;
    procedure InserirPastas;
    procedure ListarArquivos(diretorioInicial, mascara: string;
      listtotaldir: boolean = false; recursive: boolean = true;
      apelido: string = '');
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmMenuRelatorio: TFrmMenuRelatorio;

implementation

{$R *.dfm}

uses
  MainModule,
  uniGUIApplication,
  DmPrincipal,
  ServerModule,
  VisualizarRelatorio, Lib, Consulta, TipoProcesso;

function FrmMenuRelatorio: TFrmMenuRelatorio;
begin
  Result := TFrmMenuRelatorio(UniMainModule.GetFormInstance(TFrmMenuRelatorio));
end;

function TFrmMenuRelatorio.LocalizaTree(sDescricao: String;
  Deleta: boolean = false): integer;
begin
end;

procedure TFrmMenuRelatorio.UniBitBtnVisualizarClick(Sender: TObject);
var
  indexTipoProcesso: integer;
begin

  if ContemValor('R1', 'xx' + UniComboBoxRelatorios.Text) then
  begin
    Prompt('Informe as iniciais do nome:', '', mtInformation, mbOKCancel,
      procedure(AResult: integer; AText: string)
      begin
        if AResult = mrOK then
        begin
          FrmConsulta.SqlCadastro.SQL.Text := SqlConsultaBackup.SQL.Text +
            ' and interno.id_up=' + inttostr(dm.GLOBAL_ID_UP) +
            ' and interno.nome_interno like ' + qs(uppercase(AText) + '%') +
            ' order by interno.nome_interno ';
          FrmConsulta.Coluna := 1;
          FrmConsulta.Width := Self.Width;
          FrmConsulta.PreDescricao := uppercase(AText);
          FrmConsulta.EditLocalizar.SetFocus;
          FrmConsulta.ShowModal(
            procedure(Result: integer)
            begin
              if Result = mrOK then
              begin
                id_interno := FrmConsulta.DsCadastro.DataSet.fieldbyname('ID')
                  .AsInteger;
                dm.GLOBAL_ID_INTERNO := id_interno;
                FrmVisualizarRelatorio.Nome := UniComboBoxRelatorios.Text;
                FrmVisualizarRelatorio.ShowModal;
              end;
            end);
        end;
      end);
  end
  else if ContemValor('R2', 'xx' + UniComboBoxRelatorios.Text) then
  begin
    FrmTipoProcesso.ShowModal(
      procedure(Result: integer)
      begin
        if Result = mrOK then
        begin

          indexTipoProcesso := FrmTipoProcesso.UniRadioGroup1.ItemIndex;

          case indexTipoProcesso of
            0:
              dm.GLOBAL_TIPOPROCESSO := 'Condenado';
            1:
              dm.GLOBAL_TIPOPROCESSO := 'Processado';
            2:
              dm.GLOBAL_TIPOPROCESSO := 'Med. Segurança';
            3:
              dm.GLOBAL_TIPOPROCESSO := '(Em Branco)';
            4:
              dm.GLOBAL_TIPOPROCESSO := '';
          end;

          FrmVisualizarRelatorio.Nome := UniComboBoxRelatorios.Text;
          FrmVisualizarRelatorio.ShowModal;

        end;
      end);
  end
  else
  begin
    if trim(UniComboBoxRelatorios.Text) <> '' then
    begin
      FrmVisualizarRelatorio.Nome := UniComboBoxRelatorios.Text;
      FrmVisualizarRelatorio.ShowModal;
    end
    else
    begin
      ShowMessage('Selecione o relatório');
    end;
  end;

end;

procedure TFrmMenuRelatorio.UniFormShow(Sender: TObject);
begin
  listtemp2 := TStringList.Create;
  ListarArquivos(UniServerModule.StartPath + 'relatorios\' +
    inttostr(dm.GLOBAL_ID_UP) + '\', '*.fr3', false, true);
  UniComboBoxRelatorios.Items := listtemp2;
  listtemp2.free;

end;

procedure TFrmMenuRelatorio.ListarArquivos(diretorioInicial, mascara: string;
listtotaldir: boolean = false; recursive: boolean = true; apelido: string = '');
var
  i: integer;
  listatemp: Tstrings;
  procedure ListarDiretorios(Folder: string; lista: Tstrings);
  var
    Rec: TSearchRec;
    i: integer;
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
          i := 0;
          // deleta os arquivos isto e fica apenas os diretorios
          if lista.Count <> 0 then
          begin
            repeat
              temps := lista.Strings[i];
              temps := extractfileext(temps);
              if temps <> '' then
                lista.Delete(i)
              else
                inc(i);
            until i >= lista.Count;
          end;
        end;
      end;
  end;

  procedure ListarAtahos(Folder, mask: string; lista: Tstrings);
  var
    Rec: TSearchRec;
  begin
    lista.Clear;
    if SysUtils.FindFirst(Folder + mask, faAnyFile, Rec) = 0 then
      try
        repeat
          lista.Add(Copy(Rec.Name, 1, length(Rec.Name) - 4));
        until SysUtils.FindNext(Rec) <> 0;
      finally
        SysUtils.FindClose(Rec);
      end;
  end;

  procedure AddLIstInOther(ListSource, ListDestino: Tstrings);
  var
    f: integer;
  begin
    for f := 0 to ListSource.Count - 1 do
    begin
      ListDestino.Add(ListSource.Strings[f]);
    end;
  end;

begin
  listatemp := TStringList.Create;
  ListarAtahos(diretorioInicial, mascara, listatemp);
  if listtotaldir then
  begin
    for i := 0 to listatemp.Count - 1 do
    begin
      listatemp.Strings[i] := apelido + listatemp.Strings[i];
    end;
  end;
  AddLIstInOther(listatemp, listtemp2);
  if recursive then
  begin
    ListarDiretorios(diretorioInicial, listatemp);
    for i := 0 to listatemp.Count - 1 do
    begin
      ListarArquivos(diretorioInicial + listatemp.Strings[i] + '\', mascara,
        true, recursive, listatemp.Strings[i] + '\');
    end;
  end;
  listatemp.free;
end;

procedure TFrmMenuRelatorio.InserirPastas;
begin

end;

end.
