object FrmConsulta: TFrmConsulta
  Left = 0
  Top = 0
  ClientHeight = 275
  ClientWidth = 590
  Caption = 'Consulta'
  OnShow = UniFormShow
  Color = clBtnFace
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  OnKeyDown = UniFormKeyDown
  FreeOnClose = False
  KeyPreview = True
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLocalizaConsulta: TUniPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 65
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    DesignSize = (
      590
      65)
    object UniLabel2: TUniLabel
      Left = 16
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Localizar:'
      TabOrder = 2
    end
    object EditLocalizar: TUniEdit
      Left = 67
      Top = 13
      Width = 502
      CharCase = ecUpperCase
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Color = clWindow
      CheckChangeDelay = 500
      OnChange = EditLocalizarChange
      OnKeyDown = EditLocalizarKeyDown
    end
    object UniBitBtnConfirma: TUniBitBtn
      Left = 507
      Top = 37
      Width = 81
      Height = 25
      Glyph.Data = {
        C6020000424DC602000000000000C60100002800000010000000100000000100
        08000000000000010000120B0000120B00006400000064000000FF00FF00FEFB
        FB00A0675B00FEFBFA00BF886C00FAF3EF00D1926D00C9927200D49C7500FCF6
        F200FBF3ED00E3AA7A00DDA57800F8F3EE00FFFCF800046B0B0011A1220017A4
        2B0019A7300020A73A0025AA420028C24A0029B44A0028B04A002DC051002EBF
        530035D35E0038CE65003CD86A003FDC6E003ED86E0046E57B0047E77F00ADEE
        E000AFF2E600A5E5DA00A5E9E000AFF4EB00A6E7DE00AFF3E900AFF7EF00A6EA
        E200D5FCF800D5FAF600ABF4EE00A5EBE500D5FAF700A6EEEA00D3FAF800A3EB
        E90096D7D500BBE1E00097D9D90098D9D90087C0C000CBFBFB00C0DEDE009CF8
        FA0098DCDE0089FAFF0098DEE20098D9DC00B5DCDE0082F3FE0083F2FE0092F0
        FA0095DAE1007FB8C000A7E7F00065D8EA007AEBFE005CD1EA0070E3FB0086E5
        F70072AFBD00ACD3DC0068DAFB0052C6E90078D9F70045BBE6005ED3FA006CCF
        F4006CADC50057CAF80065A3BC006CACC6006CADC6006DADC6006CACC500A3CC
        DC003BB1E6004DC1F7004FC4F7008CD8FA000274AC0048BCF6004DC1F800FFFF
        FF00FEFEFE0000000000005E5E5E5E5E5E5E5E5E5E5E5E5E00005E5F5E5D5B5B
        605B5B5B5B5B5A515E005E5C5E5956585752555555544F4E5E005E535E4B423C
        3A3D3435324A4D495E005E505E3E312F2D292426234347415E005E4C5E332C28
        2527220F213645395E005E485E61302A2E2B0F140F3844375E005E465E5E5E5E
        5E0F1B20160F5E5E5E005E403F040D0E0F181D1E1F170F0000005E623B07050F
        0F0F0F1C190F0F0F0000005E6208096161610F1A13020000000000005E0C0A01
        03610F150F00000000000000000B0606060F11120F0000000000000000000000
        000F100F00000000000000000000000F0F0F0F000000000000000000000F0F0F
        0F000000000000000000}
      Caption = 'Confirma'
      Anchors = [akTop, akRight]
      TabOrder = 4
      OnClick = UniBitBtnConfirmaClick
    end
    object UniBtnFiltrar: TUniBitBtn
      Left = 420
      Top = 37
      Width = 81
      Height = 25
      Glyph.Data = {
        F2030000424DF203000000000000F20200002800000010000000100000000100
        08000000000000010000120B0000120B0000AF000000AF00000000000000FFFF
        FF00FF00FF00A7776C00A67E74006B362800AC847700977D7500733F2D00935B
        47008C625400BF9F9300925D4800A9847600AB8779005F230500976F5B009F7D
        6C00EBE1DC00622708006F2D0A0084563C00AF8B7800492E1D00955E3C009662
        4300EDE0D800AF510F00914B1C00AD6B3E009C633D00C49C8100C1997F004C49
        4700E0782100E36D0300FF7E0A00FF841200AD652700B7763A00BA793F00D3AD
        8A00FC860F00E5811B00FA902300C7741F00FEA64C008B6D5000F4841000E980
        1100FA891300F68B1800F78C1900F68F1B00F48B1B00653B0F00F3922600F897
        2D00F4952C00E08B3300F69F3D00FBA5460063421F00FBB05D00FCB76D00F3B6
        7200EFBC8300F4AB5100F0BB7B00D0B69600F3C07E00F7C58300EFC18700E9C4
        9500E39F3A007D664600E2C49900E7D8C200DA932600F3D09600CE8B1800CF92
        2300EACF9E0089621000FFE5A500EEE2C000FFEAAB00F7E6B200FFEDAB00FAF2
        C200FFF7C10037330F00827F5D00FAF7D500FEFBCB00FFFCCF006D6B3F00FFFE
        D500FFFEE900C0BF6A00AAAB4700FFFFC900FFFFCE00FFFFD100FFFFD400FFFF
        D500FFFFDA00FFFFDC00FFFFDE00FCFCE0006B6D4700747E02007D825C006287
        0B00557D010088BA57006989500042503700236305003C9619001E6908003897
        1B00238B0C007ECC6B004A903F000C8300005DC1560053BD4E0004800000027D
        0000134611002152200078CF76000081000028A6280034AD3400194F190049BC
        490057C5570068CF680098E19700A6F3A600068B08001599180032AC330044BA
        450055C4560065CE660080DD810081DD82009DEF9E00A3EFA4001CA323000C99
        160075DA7B0078DD7F0017A625003BBD48006AD873004A93C70035A1FA0038A5
        FF003AA7FF003F7FBB003093F6003996EF003A96ED0062686E000F6CD3001177
        E3001174E1004B66870048638700445C7B005D677E0002020202020202020202
        02020202ADA702020202020202020202020202ACA99F020202021E18190C607C
        0202ABAAA2A60202312827261C5B828883AEA8A1A50202333B2B231B03060D0A
        75A3A0A402020238322A2D044D616B5516072102020234352C512F126C65675A
        5410170F020236394A790D6D666669574729051302023A3D649C0E6A66685F48
        414C081402023C3F739D115D5E594F42561F3E3702022E407B9E704558444662
        1A157876020243639A968C5C2049520B09537D810202027E9B8D9784746E4B1D
        226F80020202027F8B9594939198774E25728502020202027F928A8990997A50
        2424020202020202020287868F8E7130020202020202}
      Caption = 'Localizar'
      Anchors = [akTop, akRight]
      TabOrder = 3
      OnClick = UniBtnFiltrarClick
    end
  end
  object DBGridConsulta: TUniDBGrid
    Left = 0
    Top = 65
    Width = 590
    Height = 210
    DataSource = DsCadastro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    WebOptions.Paged = False
    WebOptions.LoadMaskMsg = 'Please wait...'
    OnDblClick = DBGridConsultaDblClick
    StripeRows = True
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
  end
  object DsCadastro: TDataSource
    DataSet = CdsCadastro
    Left = 596
    Top = 200
  end
  object CdsCadastro: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCadastro'
    Left = 568
    Top = 200
  end
  object DspCadastro: TDataSetProvider
    DataSet = SqlCadastro
    Left = 540
    Top = 200
  end
  object SqlCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PLANOCONTAS'
      'ORDER BY DESCRICAO')
    SQLConnection = Dm.Conexao
    Left = 512
    Top = 200
  end
end
