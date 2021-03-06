unit MenuRelatorios;

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
  TFrmMenuRelatorios = class(TUniForm)
    UniBitBtnVisualizar: TUniBitBtn;
    SqlConsultaBackup: TSQLQuery;
    UniTreeView1: TUniTreeView;
    UniListBox1: TUniListBox;
    Fechar: TUniBitBtn;
    UniBitBtn1: TUniBitBtn;
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtnVisualizarClick(Sender: TObject);
    procedure UniTreeView1Click(Sender: TObject);
    procedure UniListBox1DblClick(Sender: TObject);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FecharClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    listtemp2: Tstrings;
    id_interno: integer;
    function LocalizaTree(sDescricao: String; Deleta: boolean = false): integer;
    procedure ListarArquivos(diretorioInicial, mascara: string;
      listtotaldir: boolean = false; recursive: boolean = true;
      apelido: string = '');
    procedure CriarMenu;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmMenuRelatorios: TFrmMenuRelatorios;

implementation

{$R *.dfm}

uses
  MainModule,
  uniGUIApplication,
  DmPrincipal,
  ServerModule,
  VisualizarRelatorio, Lib, Consulta, TipoProcesso, FiltroPeriodo,
  FiltroPeriodoServidor;

function FrmMenuRelatorios: TFrmMenuRelatorios;
begin
  Result := TFrmMenuRelatorios(UniMainModule.GetFormInstance
    (TFrmMenuRelatorios));
end;

procedure TFrmMenuRelatorios.UniBitBtn1Click(Sender: TObject);
begin
  Dm.CaminhoRelatorio := UniListBox1.Text;
  if UniTreeView1.Selected.Text <> '[ Relatórios ]' then
    Dm.CaminhoRelatorio := UniTreeView1.Selected.Text + '\' + UniListBox1.Text;

  if trim(Dm.CaminhoRelatorio) <> '' then
  begin
    // FrmVisualizarRelatorio.Nome := Dm.CaminhoRelatorio;
    FrmVisualizarRelatorio.FazExportacaoPDF := true;
    FrmVisualizarRelatorio.ShowModal;
  end
  else
  begin
    ShowMessage('Selecione um relatório.');
  end;


end;

procedure TFrmMenuRelatorios.UniBitBtnVisualizarClick(Sender: TObject);
begin

  Dm.CaminhoRelatorio := UniListBox1.Text;

  if UniTreeView1.Selected.Text <> '[ Relatórios ]' then
    Dm.CaminhoRelatorio := UniTreeView1.Selected.Text + '\' + UniListBox1.Text;

  if trim(Dm.CaminhoRelatorio) <> '' then
  begin
    // FrmVisualizarRelatorio.Nome := Dm.CaminhoRelatorio;
    FrmVisualizarRelatorio.FazExportacaoPDF := true;
    FrmVisualizarRelatorio.ShowModal;
  end
  else
  begin
    ShowMessage('Selecione um relatório.');
  end;

{

ANTES EM HTML>>10/02/2015
  Dm.CaminhoRelatorio := UniListBox1.Text;
  if UniTreeView1.Selected.Text <> '[ Relatórios ]' then
    Dm.CaminhoRelatorio := UniTreeView1.Selected.Text + '\' + UniListBox1.Text;

  if trim(Dm.CaminhoRelatorio) <> '' then
  begin
    // FrmVisualizarRelatorio.Nome := Dm.CaminhoRelatorio;
    FrmVisualizarRelatorio.ShowModal;
  end
  else
  begin
    ShowMessage('Selecione um relatório.');
  end;
}

end;

function TFrmMenuRelatorios.LocalizaTree(sDescricao: String;
  Deleta: boolean = false): integer;
var
  i: integer;
begin
  Result := -1;
  for i := 0 to (UniTreeView1.Items.Count - 1) do
  begin
    if UniTreeView1.Items.Item[i].Text = sDescricao then
    begin
      if Deleta then
        UniTreeView1.Items.Delete(UniTreeView1.Items.Item[i])
      else
        Result := i;

      Break;
    end;
  end;
end;

procedure TFrmMenuRelatorios.CriarMenu();
var
  iNode, i: integer;
  SelectedNode: TUniTreeNode;
  sListaDiretorios: Tstrings;
  sNomePasta: string;
begin
  UniTreeView1.Items.Clear;
  UniTreeView1.Items.Add(NIL, '[ Relatórios ]');
  SelectedNode := UniTreeView1.Items.Item[0];
  if SelectedNode <> nil then
  begin
    sListaDiretorios := TStringList.Create;

    ListarDiretorios(UniServerModule.StartPath + 'relatorios\' +
      inttostr(Dm.GLOBAL_ID_UP) + '\', sListaDiretorios);

    for i := 0 to sListaDiretorios.Count - 1 do
    begin
      sNomePasta := sListaDiretorios.Strings[i];
      if LocalizaTree(sNomePasta) = -1 then
        UniTreeView1.Items.AddChild(SelectedNode, sNomePasta);
    end;

    SelectedNode.Expanded := true;
    UniTreeView1.Items.Item[0].Selected := true;
    UniTreeView1Click(nil);
    sListaDiretorios.Free;
  end;

end;

procedure TFrmMenuRelatorios.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Self.close;
end;

procedure TFrmMenuRelatorios.UniFormShow(Sender: TObject);
begin
  {
    listtemp2 := TStringList.Create;
    ListarArquivos(UniServerModule.StartPath + 'relatorios\' +
    inttostr(dm.GLOBAL_ID_UP) + '\', '*.fr3', false, false);
    UniComboBoxRelatorios.Items := listtemp2;
  }
  CriarMenu;

  if Dm.GLOBAL_IDCONEXAO > 0 then
  begin
    try
      Dm.Conexao.ExecuteDirect('update conexao set tela_momento = ' +
        qs(Self.Caption) + ' where idconexao=' + inttostr(Dm.GLOBAL_IDCONEXAO));
    except
    end;
  end;

  // listtemp2.Free;

end;

procedure TFrmMenuRelatorios.UniListBox1DblClick(Sender: TObject);
begin
  UniBitBtnVisualizar.OnClick(nil);
end;

procedure TFrmMenuRelatorios.UniTreeView1Click(Sender: TObject);
begin

  if Assigned(UniTreeView1.Selected) then
  begin
    if UniTreeView1.Selected.Text <> '[ Relatórios ]' then
    begin
      listtemp2 := TStringList.Create;
      ListarArquivos(UniServerModule.StartPath + 'relatorios\' +
        inttostr(Dm.GLOBAL_ID_UP) + '\' + UniTreeView1.Selected.Text + '\',
        '*.fr3', false, true);
      UniListBox1.Items := listtemp2;
      listtemp2.Free;
    end
    else
    begin
      listtemp2 := TStringList.Create;
      ListarArquivos(UniServerModule.StartPath + 'relatorios\' +
        inttostr(Dm.GLOBAL_ID_UP) + '\', '*.fr3', false, true);
      UniListBox1.Items := listtemp2;
      listtemp2.Free;
    end;
  end;

end;

procedure TFrmMenuRelatorios.FecharClick(Sender: TObject);
begin
  Self.close;
end;

procedure TFrmMenuRelatorios.ListarArquivos(diretorioInicial, mascara: string;
  listtotaldir: boolean = false; recursive: boolean = true;
  apelido: string = '');
var
  i: integer;
  listatemp: Tstrings;
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
  {
    if recursive then
    begin
    ListarDiretorios(diretorioInicial, listatemp);
    for i := 0 to listatemp.Count - 1 do
    begin
    ListarArquivos(diretorioInicial + listatemp.Strings[i] + '\', mascara,
    true, recursive, listatemp.Strings[i] + '\');
    end;
    end;
  }
  listatemp.Free;
end;

end.
