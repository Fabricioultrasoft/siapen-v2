unit FileExplorer_Frame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniSplitter, uniGUIBaseClasses, uniPanel,
  uniBasicGrid, uniDBGrid, uniToolBar, uniStatusBar, uniTreeView, Data.DB,
  MemDS, VirtualTable, uniImageList, uniEdit, Vcl.Imaging.pngimage, uniImage,
  System.StrUtils, uniFileUpload;

type
  TFileDetail = record
    DisplayName: String;
    Path: string;
    FullPath: string;
    LogicalTreePath: string;
    FileSize: Int64;
    Attr: Integer;
    CreatedDate, LastAccessDate, LastWrittenDate: TDateTime;
  end;

  PFileDetail = ^TFileDetail;

  TframeFileExplorer = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniSplitter1: TUniSplitter;
    UniPanel2: TUniPanel;
    UniTreeViewFolders: TUniTreeView;
    UniPanel3: TUniPanel;
    UniDBGridFiles: TUniDBGrid;
    UniImageList1: TUniImageList;
    DataSource1: TDataSource;
    VirtualTableFiles: TVirtualTable;
    UniPanel4: TUniPanel;
    UniEditPath: TUniEdit;
    UniPanel5: TUniPanel;
    UniPanel6: TUniPanel;
    UniEditSearch: TUniEdit;
    UniImage1: TUniImage;
    UniToolBar1: TUniToolBar;
    btnDownload: TUniToolButton;
    btnUpload: TUniToolButton;
    VirtualTableFilter: TVirtualTable;
    UniFileUpload1: TUniFileUpload;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniTreeViewFoldersAjaxEvent(Sender: TComponent; EventName: string;
      Params: TStrings);
    procedure UniFrameDestroy(Sender: TObject);
    procedure UniTreeViewFoldersClick(Sender: TObject);
    procedure UniEditSearchChange(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniDBGridFilesDblClick(Sender: TObject);
  private
    sIconFolder: String;
    sRootPath: String;

    Root: TUniTreeNode;

    procedure SetRootPath(Path: String);
    procedure LoadandUpdatePath(Parent: TUniTreeNode; Path: String);

    function CreateFileDetailStructure(LogicalTreePath, FilePath: string;
      sr: TSearchRec): PFileDetail;

    procedure ResizeGrid;
  public
  published
    Property RootPath: String read sRootPath write SetRootPath;
  end;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

const
  DUMMY = '([*...Loading...*])';

function BytesToDisplay(A: Int64): string;
var
  A1, A2, A3: double;
begin
  A1 := A / 1024;
  A2 := A1 / 1024;
  A3 := A2 / 1024;
  if A1 < 1 then
    Result := floattostrf(A, ffNumber, 15, 0) + ' bytes'
  else if A1 < 10 then
    Result := floattostrf(A1, ffNumber, 15, 2) + ' KB'
  else if A1 < 100 then
    Result := floattostrf(A1, ffNumber, 15, 1) + ' KB'
  else if A2 < 1 then
    Result := floattostrf(A1, ffNumber, 15, 0) + ' KB'
  else if A2 < 10 then
    Result := floattostrf(A2, ffNumber, 15, 2) + ' MB'
  else if A2 < 100 then
    Result := floattostrf(A2, ffNumber, 15, 1) + ' MB'
  else if A3 < 1 then
    Result := floattostrf(A2, ffNumber, 15, 0) + ' MB'
  else if A3 < 10 then
    Result := floattostrf(A3, ffNumber, 15, 2) + ' GB'
  else if A3 < 100 then
    Result := floattostrf(A3, ffNumber, 15, 1) + ' GB'
  else
    Result := floattostrf(A3, ffNumber, 15, 0) + ' GB';
  Result := Result + ' (' + floattostrf(A, ffNumber, 15, 0) + ' bytes)';
end;

function FileTime2DateTime(FileTime: TFileTime): TDateTime;
var
  LocalFileTime: TFileTime;
  SystemTime: TSystemTime;
begin
  FileTimeToLocalFileTime(FileTime, LocalFileTime);
  FileTimeToSystemTime(LocalFileTime, SystemTime);

  if SystemTime.wYear < 2222 then
  begin
    Result := EncodeDate(SystemTime.wYear, SystemTime.wMonth, SystemTime.wDay);
    if Result >= 0 then
      Result := Result + EncodeTime(SystemTime.wHour, SystemTime.wMinute,
        SystemTime.wSecond, SystemTime.wMilliSeconds)
    else
      Result := Result - EncodeTime(SystemTime.wHour, SystemTime.wMinute,
        SystemTime.wSecond, SystemTime.wMilliSeconds);
  end;

  // Result := SystemTimeToDateTime(SystemTime) ;

end;

procedure TframeFileExplorer.btnDownloadClick(Sender: TObject);
var
  sFileName: string;
begin
  sFileName := DataSource1.DataSet.FieldByName('Caminho').AsString;

  UniSession.SendFile(sFileName, ExtractFileName(sFileName));
end;

procedure TframeFileExplorer.btnUploadClick(Sender: TObject);
begin
  UniFileUpload1.Execute;
end;

function TframeFileExplorer.CreateFileDetailStructure(LogicalTreePath,
  FilePath: string; sr: TSearchRec): PFileDetail;
begin
  Result := AllocMem(SizeOf(TFileDetail));
  Initialize(Result^);
  Result^.LogicalTreePath := LogicalTreePath;
  Result^.Path := IncludeTrailingBackslash(FilePath);
  Result^.FullPath := IncludeTrailingBackslash(FilePath) + sr.Name;
  Result^.Attr := sr.Attr;
  Result^.CreatedDate := FileTime2DateTime(sr.FindData.ftCreationTime);
  Result^.LastAccessDate := FileTime2DateTime(sr.FindData.ftLastAccessTime);
  Result^.LastWrittenDate := FileTime2DateTime(sr.FindData.ftLastWriteTime);
  Result^.FileSize := sr.Size;
end;

procedure TframeFileExplorer.UniDBGridFilesDblClick(Sender: TObject);
begin
  btnDownloadClick(Sender);
end;

procedure TframeFileExplorer.UniEditSearchChange(Sender: TObject);
var
  Mem: TMemoryStream;
begin
  // Unlink the dataset
  DataSource1.DataSet := Nil;

  // OK, let's load this from the other dataset into memory
  Mem := TMemoryStream.Create;
  VirtualTableFiles.SaveToStream(Mem);
  Mem.Position := 0;
  VirtualTableFilter.LoadFromStream(Mem);
  Mem.Free;
  VirtualTableFilter.Active := True;

  // Lets do our search
  if (UniEditSearch.Text <> '') then
  begin
    VirtualTableFilter.First;
    while Not VirtualTableFilter.EOF do
    begin
      if (PosEx(Uppercase(UniEditSearch.Text),
        Uppercase(VirtualTableFilter.FieldByName('Nome').AsString), 1) <= 0)
      then
      begin
        // Delete the line
        VirtualTableFilter.Delete;
      end
      else
        // Keepeep it
        VirtualTableFilter.Next;
    end;
  end;

  // Let's update the count
  if (VirtualTableFilter.Active) then
  begin
    // lblUniTreeDataTotal.Caption := Format( UNITREEDATATOTAL, [kbmMemTableFilter.RecordCount] );
    VirtualTableFilter.First;
  end;

  // Ok, tell it where to look
  DataSource1.DataSet := VirtualTableFilter;

  // Resize gird
  ResizeGrid;
end;

procedure TframeFileExplorer.ResizeGrid;
begin
  UniDBGridFiles.Columns[0].ImageOptions.Visible := True;
  UniDBGridFiles.Columns[0].ImageOptions.Width := 16;
  UniDBGridFiles.Columns[0].ImageOptions.Height := 16;
  UniDBGridFiles.Columns[0].Width := 30;
  UniDBGridFiles.Columns[0].DisplayName := '';
  UniDBGridFiles.Columns[1].Width := 350;
  UniDBGridFiles.Columns[2].Width := 180;
end;

procedure TframeFileExplorer.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  DestName: String;
  dwErr: Dword;
  OldDataSet: TDataSet;
  bFound: Boolean;
begin
  DestName := UniEditPath.Text + ExtractFileName(UniFileUpload1.FileName);
  if CopyFile(PChar(AStream.FileName), PChar(DestName), False) then
  begin
    MessageDlg(Format('Arquivo em uploaded to [%s]', [UniEditPath.Text]),
      mtInformation, [mbOK], nil);
    DeleteFile(AStream.FileName);

    // Update the current dataset
    OldDataSet := DataSource1.DataSet;
    UniDBGridFiles.BeginUpdate;
    DataSource1.DataSet := Nil;
    LoadandUpdatePath(Nil, UniEditPath.Text);

    // Set position to new file
    if OldDataSet.Active and (OldDataSet.RecordCount > 0) then
    begin
      bFound := False;
      OldDataSet.First;
      while Not OldDataSet.EOF and Not bFound do
      begin
        if (UniFileUpload1.FileName = OldDataSet.FieldByName('Nome')
          .AsString) then
          bFound := True;

        if not bFound then
          OldDataSet.Next;
      end;

    end;
    DataSource1.DataSet := OldDataSet;
    ResizeGrid;
    UniDBGridFiles.EndUpdate;
  end
  else
  begin
    dwErr := GetLastError;
    MessageDlg(Format('Error uploading file to [%s] #%d', [UniEditPath.Text,
      dwErr]), mtError, [mbOK], nil);
  end;
end;

procedure TframeFileExplorer.UniFrameCreate(Sender: TObject);
var
  sAjax: TStringList;
begin
  sIconFolder := IncludeTrailingBackslash
    (ServerModule.UniServerModule.StartPath) + 'Icons\';

  // Ajax script to enable callback on fADTree before expand callback
  sAjax := TStringList.Create;
  with sAjax do
  begin
    Add('function( node, eOpts )');
    Add('{');
    Add('  if ((node.firstChild != null) && (node.firstChild.data["text"] == "'
      + DUMMY + '"))');
    Add(' {');
    Add('  frameFileExplorer.UniTreeViewFolders.hideMask();');
    Add('  frameFileExplorer.UniDBGridFiles.hideMask();');
    // Not needed    Add('  frmStart.fADTree.showMask("Loading data...", frmStart.fADTree); ');
    Add('  ajaxRequest(frameFileExplorer.UniTreeViewFolders, "treenode_beforeexpand", ["nodeid="+node.data["text"],"nodelevel="+node.getDepth(),"nodepath="+node.getPath("text")]); ');
    Add(' }');
    Add('}');
  end;
  UniTreeViewFolders.ClientEvents.ExtEvents.Values['beforeitemexpand'] :=
    sAjax.Text;
  sAjax.Free;

  with VirtualTableFiles do
  begin
    AddField('icon', ftBlob);
    AddField( 'Nome', ftString, MAX_PATH );
    AddField( 'Tamanho', ftString, 64 );
    AddField( 'Criação', ftDateTime );
    AddField( 'Último Acesso', ftDateTime );
    AddField( 'Última escrita', ftDateTime );
    AddField( 'Caminho', ftString, MAX_PATH * 2 );
  end;
  VirtualTableFiles.Active := True;

  ResizeGrid;
end;

procedure TframeFileExplorer.UniFrameDestroy(Sender: TObject);
var
  i: Integer;
  p: PFileDetail;
begin
  for i := 0 to UniTreeViewFolders.Items.Count - 1 do
  begin
    If Assigned(UniTreeViewFolders.Items[i].Data) then
    begin
      p := UniTreeViewFolders.Items[i].Data;
      Finalize(p^);
      FreeMem(p);
    end;
  end;
end;

procedure TframeFileExplorer.UniTreeViewFoldersAjaxEvent(Sender: TComponent;
  EventName: string; Params: TStrings);
var
  s, sPath: string;
  i, j: Integer;
  bFound: Boolean;
  tmp: TUniTreeNode;
begin
  if (EventName = 'treenode_beforeexpand') then
  begin
    s := Trim(Params.Values['nodepath']);
    if (s <> '') then
    begin
      i := 0;
      while (i < UniTreeViewFolders.Items.Count) do
      begin
        if Assigned(UniTreeViewFolders.Items[i].Data) then
        begin
          if (PFileDetail(UniTreeViewFolders.Items[i].Data)^.LogicalTreePath = s)
          then
          begin
            // Let's get rid of our DUMMY entry
            tmp := UniTreeViewFolders.Items[i].GetFirstChild;
            if (Assigned(tmp) and (tmp.Text = DUMMY)) then
            begin
              FreeAndNil(tmp);

              DataSource1.DataSet := VirtualTableFiles;

              UniTreeViewFolders.BeginUpdate;
              LoadandUpdatePath(UniTreeViewFolders.Items[i],
                PFileDetail(UniTreeViewFolders.Items[i].Data)^.Path);
              UniTreeViewFolders.EndUpdate;

              ResizeGrid;
            end;
          end;
        end;
        Inc(i);
      end;
    end;
  end;
end;

procedure TframeFileExplorer.UniTreeViewFoldersClick(Sender: TObject);
begin
  if Assigned(UniTreeViewFolders.Selected) then
  begin
    DataSource1.DataSet := VirtualTableFiles;

    UniTreeViewFolders.BeginUpdate;
    LoadandUpdatePath(UniTreeViewFolders.Selected,
      PFileDetail(UniTreeViewFolders.Selected.Data)^.Path);
    UniTreeViewFolders.EndUpdate;

    ResizeGrid;
  end;
end;

procedure TframeFileExplorer.SetRootPath(Path: String);
var
  sr: TSearchRec;
  i: Integer;
  p: PFileDetail;
begin
  sRootPath := Path;

  // Clear the tree and all objects
  UniTreeViewFolders.BeginUpdate;

  for i := 0 to UniTreeViewFolders.Items.Count - 1 do
  begin
    If Assigned(UniTreeViewFolders.Items[i].Data) then
    begin
      p := UniTreeViewFolders.Items[i].Data;
      Finalize(p^);
      FreeMem(p);
    end;
  end;
  UniTreeViewFolders.Items.Clear;

  Root := UniTreeViewFolders.Items.Add(nil);
  Root.ImageIndex := 0;
  Root.Text := 'Root';
  Root.Expanded := True;
  Fillchar(sr, SizeOf(TSearchRec), 0);
  FindFirst(Path, faAnyFile, sr);
  Root.Data := CreateFileDetailStructure('/Root/' + Root.Text, Path, sr);
  FindClose(sr);

  LoadandUpdatePath(Root, sRootPath);
  UniTreeViewFolders.EndUpdate;
end;

procedure TframeFileExplorer.LoadandUpdatePath(Parent: TUniTreeNode;
  Path: String);
  procedure LoadImage(fld: TField; const sFile: String);
  var
    fs: TFileStream;
  begin
    fs := TFileStream.Create(sFile, fmOpenRead);
    try
      fs.Position := 0;
      TBlobField(fld).LoadFromStream(fs);
    finally
      fs.Free;
    end;
  end;

var
  sr: TSearchRec;
  ires: Integer;
  Folder: TUniTreeNode;
  sIconFileName: string;
begin
  VirtualTableFiles.Clear;

  UniEditPath.Text := Path;
  ires := FindFirst(IncludeTrailingBackslash(Path) + '*.*', faAnyFile, sr);
  while (ires = 0) do
  begin
    if (sr.Name <> '.') and (sr.Name <> '..') then
    begin
      if (Assigned(Parent)) and (sr.Attr and faDirectory = faDirectory) then
      begin
        Folder := UniTreeViewFolders.Items.Add(Parent, sr.Name);
        // ExtractRelativePath( sRootPath, IncludeTrailingBackslash(Path) + sr.Name ));
        Folder.ImageIndex := 0;
        Folder.Expanded := False;
        Folder.Data := CreateFileDetailStructure(PFileDetail(Parent.Data)
          ^.LogicalTreePath + '/' + Folder.Text, IncludeTrailingBackslash(Path)
          + sr.Name, sr);

        Folder := UniTreeViewFolders.Items.Add(Folder, DUMMY);
        Folder.ImageIndex := -1;
      end
      else
      begin
        VirtualTableFiles.Append;
        With VirtualTableFiles do
        begin
          sIconFileName := sIconFolder + StringReplace(ExtractFileExt(sr.Name),
            '.', '', [rfReplaceAll, rfIgnoreCase]) + '.bmp';
          if FileExists(sIconFileName) then
            LoadImage(FieldByName('icon'), sIconFileName)
          else
          begin
            sIconFileName := sIconFolder + 'unknown.bmp';
            if FileExists(sIconFileName) then
              LoadImage(FieldByName('icon'), sIconFileName)
          end;
          FieldByName('Nome').AsString := sr.Name;
          FieldByName('Tamanho').AsString := BytesToDisplay(sr.Size);
          FieldByName('Criação').AsDateTime :=
            FileTime2DateTime(sr.FindData.ftCreationTime);
          FieldByName('Último Acesso').AsDateTime :=
            FileTime2DateTime(sr.FindData.ftLastAccessTime);
          FieldByName('Última escrita').AsDateTime :=
            FileTime2DateTime(sr.FindData.ftLastWriteTime);
          FieldByName('Caminho').AsString := IncludeTrailingBackslash(Path)
            + sr.Name;
        end;
        VirtualTableFiles.Post;
      end;
    end;
    ires := FindNext(sr);
  end;
  FindClose(sr);

  if (VirtualTableFiles.Active) and (VirtualTableFiles.RecordCount > 0) then
    VirtualTableFiles.First;
end;

end.
