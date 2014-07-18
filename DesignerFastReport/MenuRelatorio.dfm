object FrmMenuRelatorio: TFrmMenuRelatorio
  Left = 187
  Top = 123
  Caption = 'Menu de Relat'#243'rios'
  ClientHeight = 459
  ClientWidth = 671
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    671
    459)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 108
    Height = 13
    Caption = 'C:\Windows\system32'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 255
    Top = 421
    Width = 97
    Height = 25
    Anchors = [akBottom]
    Caption = 'Visualizar'
    TabOrder = 5
    OnClick = Button1Click
    ExplicitLeft = 241
    ExplicitTop = 366
  end
  object ListBox1: TListBox
    Left = 568
    Top = 368
    Width = 81
    Height = 80
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 21
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 6
    Visible = False
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 36
    Width = 193
    Height = 290
    Ctl3D = False
    DirLabel = Label1
    FileList = FileListBox2
    IntegralHeight = True
    ParentCtl3D = False
    TabOrder = 2
    OnChange = DirectoryListBox1Change
    OnDblClick = DirectoryListBox1DblClick
  end
  object FilterComboBox1: TFilterComboBox
    Left = 8
    Top = 331
    Width = 193
    Height = 21
    Ctl3D = False
    FileList = FileListBox2
    Filter = 'Relat'#243'rios SIAP (*.fr3)|*.fr3'
    ParentCtl3D = False
    TabOrder = 4
  end
  object FileListBox2: TFileListBox
    Left = 216
    Top = 28
    Width = 449
    Height = 378
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    Ctl3D = False
    FileEdit = FileEdit
    ItemHeight = 13
    Mask = '*.fr3'
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    OnDblClick = Button1Click
  end
  object FileEdit: TEdit
    Left = 216
    Top = 5
    Width = 449
    Height = 19
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = '*.fr3'
  end
  object DirectoryListBoxTeste: TDirectoryListBox
    Left = 16
    Top = 227
    Width = 95
    Height = 98
    Ctl3D = False
    IntegralHeight = True
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 96
    Top = 192
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 128
    Top = 192
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 552
    Top = 56
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 192
    Top = 192
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 224
    Top = 192
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 256
    Top = 192
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 288
    Top = 192
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 320
    Top = 192
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'H:\SIAP\ENTREVISTA PSICOSSOCIAL - ESPELHO.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 352
    Top = 192
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 384
    Top = 192
  end
  object frxODTExport1: TfrxODTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 416
    Top = 192
  end
  object frxCrypt1: TfrxCrypt
    Left = 232
    Top = 228
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 200
    Top = 228
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = False
    Left = 160
    Top = 228
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 128
    Top = 228
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 96
    Top = 228
  end
  object frxReport1: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39864.392612476900000000
    ReportOptions.LastChange = 40967.366631169000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Database.Params.LoadFromFile('#39'..\..\config\dbxconnections.ini'#39 +
        ');  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnBeforeConnect = frxReport1BeforeConnect
    Left = 248
    Top = 72
    Datasets = <
      item
        DataSetName = 'SqlResumoGeral'
      end
      item
        DataSetName = 'SqlGraficoPavilhao'
      end>
    Variables = <
      item
        Name = ' SIAP'
        Value = Null
      end
      item
        Name = 'ID_UP'
        Value = '501'
      end
      item
        Name = 'ID_FUNCIONARIO'
        Value = '101'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      PaperWidth = 70.100000000000000000
      PaperHeight = 31.000000000000000000
      PaperSize = 256
      Columns = 1
      ColumnWidth = 211.900000000000000000
      ColumnPositions.Strings = (
        '0')
      OnBeforePrint = 'Page1OnBeforePrint'
      object Chart1: TfrxChartView
        Align = baClient
        Width = 264.945053000000000000
        Height = 117.165430000000000000
        ShowHint = False
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E4272757368
          2E436F6C6F720707636C5768697465144261636B57616C6C2E50656E2E566973
          69626C6508114772616469656E742E456E64436F6C6F720709636C536B79426C
          7565104772616469656E742E56697369626C65090E4C6567656E642E56697369
          626C6508125469746C652E546578742E537472696E67730106325B53716C5265
          73756D6F476572616C2E225349474C41225D3A205B53716C526573756D6F4765
          72616C2E22544F54414C225D000D5469746C652E56697369626C65080D467261
          6D652E56697369626C65080656696577334408175669657733444F7074696F6E
          732E456C65766174696F6E033B01185669657733444F7074696F6E732E4F7274
          686F676F6E616C08195669657733444F7074696F6E732E506572737065637469
          76650200165669657733444F7074696F6E732E526F746174696F6E0368010A42
          6576656C4F75746572070662764E6F6E6505436F6C6F720707636C5768697465
          11436F6C6F7250616C65747465496E646578020D000F54486F72697A42617253
          657269657307536572696573321B42617242727573682E4772616469656E742E
          446972656374696F6E070B67644C65667452696768740E436F6C6F7245616368
          506F696E7409134D61726B732E4172726F772E56697369626C6509194D61726B
          732E43616C6C6F75742E42727573682E436F6C6F720707636C426C61636B1B4D
          61726B732E43616C6C6F75742E4172726F772E56697369626C6509114D61726B
          732E466F6E742E48656967687402F80B4D61726B732E5374796C650709736D73
          5856616C75650D4D61726B732E56697369626C65090B536572696573436F6C6F
          720707636C477265656E0C53686F77496E4C6567656E64080B4175746F426172
          53697A6509124772616469656E742E446972656374696F6E070B67644C656674
          52696768740C5856616C7565732E4E616D6506034261720D5856616C7565732E
          4F7264657207066C6F4E6F6E650C5956616C7565732E4E616D650601590D5956
          616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 315
        SeriesData = <
          item
            DataType = dtDBData
            DataSetName = 'SqlGraficoPavilhao'
            SortOrder = soNone
            TopN = 30
            TopNCaption = 'Internos'
            XType = xtText
            Source1 = 'SqlGraficoPavilhao."PAVILHAO"'
            Source2 = 'SqlGraficoPavilhao."TOTAL"'
            XSource = 'SqlGraficoPavilhao."PAVILHAO"'
            YSource = 'SqlGraficoPavilhao."TOTAL"'
          end>
      end
      object Memo1: TfrxMemoView
        Left = 1.338590000000000000
        Top = 99.488250000000000000
        Width = 64.252010000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Color = clBlack
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        Frame.Color = clWhite
        Memo.UTF8W = (
          '[SqlResumoGeral."SIGLA"]: [SqlResumoGeral."TOTAL"]')
        ParentFont = False
        WordWrap = False
      end
    end
  end
  object frxRichObject1: TfrxRichObject
    Left = 96
    Top = 272
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 128
    Top = 272
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 192
    Top = 272
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 224
    Top = 272
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 256
    Top = 272
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 288
    Top = 272
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 320
    Top = 272
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 208
    Top = 104
  end
  object frxIBXComponents1: TfrxIBXComponents
    Left = 408
    Top = 240
  end
  object frxChartObject1: TfrxChartObject
    Left = 464
    Top = 264
  end
  object DsCadastro: TDataSource
    DataSet = CdsCadastro
    Left = 604
    Top = 152
  end
  object CdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCadastro'
    Left = 576
    Top = 152
  end
  object DspCadastro: TDataSetProvider
    DataSet = SqlCadastro
    Left = 548
    Top = 152
  end
  object SqlCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM rdb$database')
    Left = 520
    Top = 152
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = SqlCadastro
    BCDToCurrency = False
    Left = 496
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 80
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      object Designer1: TMenuItem
        Caption = 'Designer'
        OnClick = Designer1Click
      end
    end
  end
  object frxDBXComponents1: TfrxDBXComponents
    Left = 408
    Top = 80
  end
end
