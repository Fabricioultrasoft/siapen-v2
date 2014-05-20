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
  uniComboBox, uniLabel;

type
  TFrmMenuRelatorio = class(TUniForm)
    UniBitBtnVisualizar: TUniBitBtn;
    UniComboBoxRelatorios: TUniComboBox;
    UniLabel1: TUniLabel;
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtnVisualizarClick(Sender: TObject);
  private
    listtemp2: Tstrings;
    function LocalizaTree(sDescricao: String; Deleta: boolean = false): Integer;
    procedure InserirPastas;
    procedure ListarArquivos(diretorioInicial, mascara: string; listtotaldir: boolean = false; recursive: boolean = true; apelido: string = '');
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
  VisualizarRelatorio;

function FrmMenuRelatorio: TFrmMenuRelatorio;
begin
  Result := TFrmMenuRelatorio(UniMainModule.GetFormInstance(TFrmMenuRelatorio));
end;

function TFrmMenuRelatorio.LocalizaTree(sDescricao: String; Deleta: boolean = false): Integer;
begin
end;

procedure TFrmMenuRelatorio.UniBitBtnVisualizarClick(Sender: TObject);
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

procedure TFrmMenuRelatorio.UniFormShow(Sender: TObject);
begin
  listtemp2 := TStringList.Create;
  ListarArquivos(UniServerModule.StartPath + 'relatorios\', '*.fr3', false, true);
  UniComboBoxRelatorios.Items := listtemp2;
  listtemp2.free;

end;

procedure TFrmMenuRelatorio.ListarArquivos(diretorioInicial, mascara: string; listtotaldir: boolean = false; recursive: boolean = true; apelido: string = '');
var
  i: Integer;
  listatemp: Tstrings;
procedure ListarDiretorios(Folder: string; lista: Tstrings);
var
  Rec: TSearchRec;
  i: Integer;
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
  f: Integer;
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
      ListarArquivos(diretorioInicial + listatemp.Strings[i] + '\', mascara, true, recursive, listatemp.Strings[i] + '\');
    end;
  end;
  listatemp.free;
end;

procedure TFrmMenuRelatorio.InserirPastas;
begin

end;

end.
