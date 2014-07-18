object frameFileExplorer: TframeFileExplorer
  Left = 0
  Top = 0
  Width = 903
  Height = 508
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabOrder = 0
  ParentFont = True
  ParentRTL = False
  RTL = False
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 508
    BorderStyle = ubsNone
    Caption = 'UniPanel1'
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    object UniTreeViewFolders: TUniTreeView
      Left = 0
      Top = 0
      Width = 305
      Height = 508
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Updating...'
      ScreenMask.Target = UniDBGridFiles
      Items.FontData = {0100000000}
      Images = UniImageList1
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      OnClick = UniTreeViewFoldersClick
      OnAjaxEvent = UniTreeViewFoldersAjaxEvent
    end
  end
  object UniSplitter1: TUniSplitter
    Left = 305
    Top = 0
    Width = 5
    Height = 508
    Align = alLeft
    ParentColor = False
    Color = clBtnFace
  end
  object UniPanel2: TUniPanel
    Left = 310
    Top = 0
    Width = 593
    Height = 508
    BorderStyle = ubsNone
    Caption = 'UniPanel2'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object UniPanel3: TUniPanel
      Left = 0
      Top = 0
      Width = 593
      Height = 30
      Caption = 'UniPanel3'
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      object UniPanel5: TUniPanel
        Left = 337
        Top = 1
        Width = 256
        Height = 28
        BorderStyle = ubsNone
        Caption = 'UniPanel5'
        Align = alRight
        Anchors = [akTop, akRight, akBottom]
        TabOrder = 1
        DesignSize = (
          256
          28)
        object UniEditSearch: TUniEdit
          Left = 25
          Top = 4
          Width = 227
          Height = 20
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Filtering data...'
          ScreenMask.Target = UniDBGridFiles
          TabOrder = 1
          Color = clWindow
          OnChange = UniEditSearchChange
        end
        object UniImage1: TUniImage
          Left = 3
          Top = 6
          Width = 16
          Height = 17
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000002D744558744372656174696F6E2054696D65
            006A65752E20352064E9632E20323030322031323A32313A3130202B30313030
            603BD2860000000774494D4507D30115140006F095E4A5000000097048597300
            000AF000000AF00142AC34980000000467414D410000B18F0BFC6105000001EE
            4944415478DA6364A010300E4E03D2D3D3F9DEBC7913CCC8C868F3FEFDFBF59F
            3F7FDE79EAD4A9DF380D888A8AB2666363EB101010F8282F2FAFF1EBD72F4516
            1616262E2E2E86BF7FFF329C3F7FFEDACD9B37F38E1C39B217AB015E5E5E37AD
            ADADD57C7D7D193E7EFCC8F0E1C30786A74F9F32BC7CF912CC6662626278FBF6
            EDFF7BF7EEAD01D2E557AF5EBD8F6280A5A5E5EDC2C24215A0AD0C4027836D05
            DAC80054C8202424C4A0AEAECE50575707D6D0D4D4F2F3DDFB77B3BE7FFD5C37
            6BF69C0F6003CC81405F5F7FAB888888B0848404434C4C0CC3B72F5F19A6CF5E
            C6F0EAF97D869FBFBE32E4E5E631BCFBF08D41444299E12B8728C3DCAEFCF50B
            66CF088207A28B8B8B2ED0EFBBE2E3E32564A52519DEFEE0677077B5623871EF
            33C3A4A24086A0E060065E657B0663532D86573F1818564EEEFE34B9B58C1F25
            168086A88A8A88EC3032B150328DC867E065616078F68B81616696EF65A6FF7F
            9F5845947B4A1AD833FCF8CEC0707C66FAB9057367196344A3BDBDBD92B292E2
            41A3D49932C09861F8FAE23EC3BAB6C81266568E89CA4A2A8BB9644C227E7D7C
            F0E9FCF13D7EA74E9F3D88351D2427276AFE65E2DBCD27A126FDECFAA1434F1E
            DFF73C71F2D437909CB393831A30A05F9D3B7FF103DE94686767C3F9EFEF5F99
            23478FDF0172FFD33729D3D5000076EDCE1184CC9DDB0000000049454E44AE42
            6082}
          Anchors = [akLeft, akTop, akRight]
        end
      end
      object UniPanel6: TUniPanel
        Left = 1
        Top = 1
        Width = 337
        Height = 28
        BorderStyle = ubsNone
        Caption = 'UniPanel6'
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        object UniToolBar1: TUniToolBar
          Left = 0
          Top = 0
          Width = 337
          Height = 29
          ButtonHeight = 23
          ButtonWidth = 22
          Images = UniImageList1
          BorderWidth = 0
          Anchors = [akLeft, akTop, akRight]
          Align = alTop
          TabOrder = 1
          object btnDownload: TUniToolButton
            Left = 0
            Top = 0
            Hint = 'Download selected file'
            ScreenMask.Enabled = True
            ScreenMask.WaitData = True
            ScreenMask.Message = 'Downloading file...'
            ScreenMask.Target = Owner
            ShowHint = True
            ParentShowHint = False
            ImageIndex = 1
            Caption = 'btnDownload'
            OnClick = btnDownloadClick
          end
          object btnUpload: TUniToolButton
            Left = 22
            Top = 0
            Hint = 'Upload selected file'
            ShowHint = True
            ParentShowHint = False
            ImageIndex = 2
            Caption = 'btnUpload'
            OnClick = btnUploadClick
          end
        end
      end
    end
    object UniDBGridFiles: TUniDBGrid
      Left = 0
      Top = 52
      Width = 593
      Height = 456
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Please wait...preparing...'
      ScreenMask.Target = Owner
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      WebOptions.LoadMaskMsg = 'Please wait...'
      OnDblClick = UniDBGridFilesDblClick
      StripeRows = True
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
    end
    object UniPanel4: TUniPanel
      Left = 0
      Top = 30
      Width = 593
      Height = 22
      ShowCaption = False
      Caption = 'UniPanel4'
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      object UniEditPath: TUniEdit
        Left = 1
        Top = 1
        Width = 591
        Height = 20
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        Color = clWindow
        ReadOnly = True
      end
    end
  end
  object UniImageList1: TUniImageList
    Width = 16
    Height = 16
    Left = 496
    Top = 200
    Bitmap = {
      494C010103000500100010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001439
      4C61006596EF00628FDF0043649B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031200031DB7D02EB2D1E002D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AA4C0CF2AA4D0AF4A5480AF4A0470DF19F430EF000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D93
      BCFC0079ADFF4BD9F7FF0BA3D2FF027FB2FC006899E5004E76B100151F290000
      0000000000000000000000000000000000000000000000000000000000000000
      000033240033EB8B00F4FABD77FFE48302F52F20002F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C76817FFDE8B2FFFD77511FFD4710CFFAA4B00FF00000000007300FF006E
      00FF006B00FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003248671788
      B6FC007CB0FF90EFFFFF2FE0FFFF28E2FFFF1CCBEEFF0EA4D2FF0484B6FE006E
      A1EE005079B70000000000000000000000000000000000000000000000003727
      0037EB8A00F4FAC389FFFAC495FFE8AE72FFE07E02F633200033000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CA6C19FFE09344FFD5771BFFE4AC71FFD9AD88FF00000000007B00FF42DD
      75FF007000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000065C7FB03A9F
      C6FF007EB2FF9FF1FFFF45E2FFFF3FE1FFFF39E0FFFF33E0FFFF32E2FFFF2CD0
      EEFF1FB1DDFF0B86B6FF006190E40000000000000000000000003A28003AEC88
      03F6F9C28DFFF6C08CFFF4B878FFF6B87BFFD69C61FFDE7B03F6352000350000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0741EFFE29B4EFFD98225FFE6B279FF008700FF008500FF008100FF46E1
      79FF007800FF007300FF006E00FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002D3E560279ACEDB6F5
      FBFF0081B4FFB0F7FFFF5DECFFFF57E9FFFF51E7FFFF4AE4FFFF44E2FFFF44E0
      FFFF45E2FFFF3ECFF0FF006CA0FF00000000000000003E26003EEA8400F7EF90
      1CFFEF9D3CFFF5C698FFF1AF6CFFE2A568FFC8802EFFD67D16FFDC7602F7381D
      0039000000000000000000000000000000000000000000000000000000000000
      0000D57B21FFE6A15CFFDD8A31FFE8B682FF008D00FF5CF791FF58F38DFF51EC
      86FF46E179FF43DE76FF007600FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000526F9A41A3C7FADDFF
      FFFF0084B7FFC0FCFFFF76F4FFFF6FF1FFFF69EFFFFF62ECFFFF5BEAFFFF57E9
      FFFF55E4FEFF63DAEDFF006EA2FF000000000000000000000000000000000000
      0000EA8F1CFFF3C08FFFEDA861FFDF9F5EFFD3750CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB8325FFE9AA69FFE1923EFFEBBB8AFF009100FF008D00FF008B00FF58F3
      8DFF008300FF008100FF007B00FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000036D95CAABDCEAFFE5FF
      FFFF0086B9FFD1FFFFFF8EFDFFFF89FAFFFF82F6FFFF79F4FFFF72F3FFFF6BF0
      FFFF4BC9E3FFAAFFFFFF0071A5FF000000000000000000000000000000000000
      0000E58A20FFEFBA86FFE9A054FFDC9853FFCA6E0CFF00000000007400FF006F
      00FF006C00FF0000000000000000000000000000000000000000000000000000
      0000E08A27FFEDB175FFE59949FFEDBF92FFE2B98FFF00000000008F00FF5CF7
      91FF008900FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000083B3F0CAF5FAFFF1FF
      FFFF0088BBFFDCFFFFFFA1FFFFFF9CFBFFFF94F9FFFF8CF7FFFF85F6FFFF7DF5
      FFFF5CCBDFFFD1FFFFFF0073A7FF000000000000000000000000000000000000
      0000DF831CFFEDB379FFE49849FFE8BC8FFFE4B88CFF00000000007C00FF43DD
      76FF007100FF0000000000000000000000000000000000000000000000000000
      0000E6902AFFEFB783FFEAA154FFE59F54FFC77014FF00000000009300FF0091
      00FF008D00FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000018DC0FB0F93C2FE7DC4
      DDFF008ABDFFC3EDF5FF79DBEAFF85E3EFFF92F0F8FF9CFAFFFF94F8FFFF64D2
      E7FFAAF4F9FFDAFFFFFF0076AAFF000000000000000000000000000000000000
      0000D97B1CFFEAAC6FFFE2913CFFE7B889FF008700FF008500FF008100FF47E1
      7AFF007900FF007400FF006F00FF000000000000000000000000000000000000
      0000EC9529FFF3C18FFFECA960FFE9A561FFCD7515FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008DC0FFF2FFFFFFC8F7FBFFABE7F1FF81D4E6FF6AC7DFFF64C6DFFF5EC2
      DBFFD3FFFFFFE7FFFFFF0078ACFF000000000000000000000000000000000000
      0000D37619FFE6A562FFDD8831FFE6B381FF008D00FF5DF791FF59F38DFF52EC
      86FF47E17AFF44DE77FF007700FF000000000000000035302A35E78D11ECF5A3
      39FFF6A63FFFF3BA81FFF0B06EFFECAC6BFFCD8029FFD98525FFD87B0FF33933
      2C3A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007DACD930A5CDFF49B0D3FF83CDE2FFD0EFF6FFE6FCFCFFF1FFFFFFE6FF
      FFFFDEFFFFFFF3FFFFFF007BAFFF000000000000000000000000000000000000
      0000CE6E15FFE49E56FFD98226FFE3AF79FF009100FF008D00FF008B00FF59F3
      8DFF008300FF008100FF007C00FF0000000000000000000000002E2B252EE893
      1CE8FBD3AEFFF7C18DFFF4B879FFF3B77AFFF3B472FFE48C14EF322E28320000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000025323B0048627E00678DB6006E9ACC138EBDFCFFFF
      FFFFFFFFFFFFFFFFFFFF007DB1FF000000000000000000000000000000000000
      0000C86813FFE09748FFD57619FFE2AB71FFD9AB87FF00000000008F00FF5DF7
      91FF008900FF0000000000000000000000000000000000000000000000002725
      2127E29319E2FDD2A6FFF9CA9DFFF6BC7DFFE78E12EB2B28232B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000086B7F6EDF6
      FAFFFFFFFFFFFFFFFFFF007DB1FF000000000000000000000000000000000000
      0000C3610FFFE6A359FFDC892EFFD37917FFAC4A00FF00000000009300FF0091
      00FF008D00FF0000000000000000000000000000000000000000000000000000
      0000201E1C20DD941DDDFDC888FFE79314E824221E2400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006A94BA0086
      B9FF0084B7FF0082B5FF0045679D000000000000000000000000000000000000
      0000A74400F7A94200F9A74000F9A33F00F69E3C00F600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1A181CC3852DC41F1D1B1F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF000000FFFFFFFF00000000F8FFF07F0000
      0000F07FF04700000000E03FF04700000000C01FF00100000000800FF0010000
      0000F07FF00100000000F047F04700000000F047F04700000000F001F07F0000
      0000F001800F00000000F001C01F00000000F047E03F00000000F047F07F0000
      0000F07FF8FF00000000FFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object DataSource1: TDataSource
    DataSet = VirtualTableFiles
    Left = 584
    Top = 136
  end
  object VirtualTableFiles: TVirtualTable
    Left = 496
    Top = 136
    Data = {03000000000000000000}
  end
  object VirtualTableFilter: TVirtualTable
    Left = 680
    Top = 136
    Data = {03000000000000000000}
  end
  object UniFileUpload1: TUniFileUpload
    OnCompleted = UniFileUpload1Completed
    MaxAllowedSize = 0
    Title = 'Uploading...'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Left = 584
    Top = 200
  end
end
