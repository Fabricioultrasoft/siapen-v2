object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  ClientHeight = 248
  ClientWidth = 685
  Caption = 'Informe o login e a senha'
  Color = clBtnFace
  OldCreateOrder = False
  NavigateKeys.Next.Key = 13
  MonitoredKeys.Keys = <>
  ActiveControl = UniEdit1
  OnCreate = UniLoginFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel3: TUniLabel
    AlignWithMargins = True
    Left = 3
    Top = 232
    Width = 679
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Supote: (67) 3901-1330'
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentFont = False
    Font.Name = 'Lucida Console'
    Font.Style = [fsBold]
    TabOrder = 3
  end
  object UniGroupBox1: TUniGroupBox
    Left = 3
    Top = 8
    Width = 676
    Height = 79
    Caption = 'AGEPEN'
    TabOrder = 0
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    object PanelTituloModeloCadastro: TUniPanel
      Left = 2
      Top = 24
      Width = 672
      Height = 47
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      object UniImage2: TUniImage
        Left = 1
        Top = 1
        Width = 670
        Height = 45
        Stretch = True
        Picture.Data = {
          0A544A504547496D6167652E010000FFD8FFE000104A46494600010101004800
          480000FFDB004300100B0B0C0C0C110D0D1118100E10181C151111151C211919
          1919192120191C1C1C1C19202025272827252030303434303040404040404040
          4040404040404040FFDB0043011110101213121612121616121512161C161717
          161C281C1C1D1C1C2831252020202025312C2F2828282F2C3636313136364040
          3F404040404040404040404040FFC00011080013000503012200021101031101
          FFC40017000100030000000000000000000000000000030506FFC4001B100100
          000700000000000000000000000000010311121452A1FFC40014010100000000
          000000000000000000000000FFC4001411010000000000000000000000000000
          0000FFDA000C03010002110311003F00DFD443700A9CB9FB720003FFD9}
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
      end
      object LabelTitulo: TUniLabel
        Left = 85
        Top = 11
        Width = 577
        Height = 23
        AutoSize = False
        Caption = 'AG'#202'NCIA ESTADUAL DE ADMINISTRA'#199#195'O DO SISTEMA PENITENCI'#193'RIO'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object UniImageLogoMarca: TUniImage
        Left = 1
        Top = 4
        Width = 64
        Height = 38
        Center = True
        Stretch = True
        Picture.Data = {
          0A544A504547496D616765BF050000FFD8FFE000104A46494600010100000100
          010000FFDB008400080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C28372E2C30313434341F2744
          3D38323C2E333432010909090D0C0C180C0C1826151015262626262626262626
          2626262626262626262626262626262626262626262626262626262626262626
          262626262626262626FFC00011080037003703012200021101031101FFC4001C
          0000020301010101000000000000000000000504060703020801FFC400351000
          0103020404030702070100000000000102030405110006122113314151142261
          0732527181A1B13442162325638291F015FFC400140101000000000000000000
          00000000000000FFC40014110100000000000000000000000000000000FFDA00
          0C03010002110311003F00C0D861721CD08E7627E8062744A738A6DD92A614F4
          4424DDE40514A4F3E9637FC5F1EE91479F3F5B91D85299085052B5240DC10399
          17DFF18B3660AA4B835266330D06E221000009B207A58DAD6DC73DEFDAC02AF1
          E1CAAA45508D156A0D2B72DB64A502DDC02493EBBF6EB89CC654945A4C879D61
          A6EC5411214A6D4BB73B0B5EC091CEDCFD41C319158751428A9A4B896AC7CE05
          BDE37D77BEDBAB4DBADAD6DB1DAA93254814E78B8D457E3201E13CE841240B03
          A54A06C0DC8BF737EA30151A8C25D3E73B19CE683B1EE08B8FB1C45C5B7FACD7
          AA25662C3D2A5175C7569E337BA80B03E722E480128DEE4002F8F32F2D5316EA
          910EA89E2EFE505A5A09EBA74B8A5DBB5C6C079AD80AEC0FD6B7F5FC1C1890C4
          37A35442568364120AADB0DBAFFDF2B8C1806D1AA01DCBCA8919EE0BC15AFC97
          0ABF946DD790B7C8F5C48A4371E58912AA6BE3B301B49E0937D4A37DD5DFDD26
          DD49DFB16F95320D125E4BFE27CCF51A8458AF4B3162B7063F114B2124951D8E
          D70A1C87BBEA30DE9194729CA975272855CACF80A7535E97505C88E9494A9052
          5B40494F32388795F6F5C0554C882B822732DA223EA415A9C61A0DE86D274F95
          37202D4A2403CC614788E110B2E4684162E96C321E7083BDD4A22FBFCFE98D2B
          2BFB3A63366427EB732639154A8EB3123336FE7258075137DC0E2288DBB0EF84
          7032A655732DB598B34D5AAB0D33E53A88EA8D1C2DB584A88D8EE4F23E980819
          7A532DD29F4EB88A4B8FA43EB4A022E9BA6C0A76B0E1F8907D09E7846F4EAA09
          A44B9120B66E1D6D6A3A5B50F8472163629B7A5B1AB23D9351A895F9A972A558
          7298D428F214B6984DEEE2D7E457A8D0822DB8D5D3638E3172BE49CE79863506
          873E60E1F11C98A531C231D084DAE924798959483A89D89EB80CA99742EA4241
          B6920A34FC66E4DBE405BFD0C18BABF90E353DCCE750ACB92A2C6A04A6A3C611
          928FE6871761B1BFEC5215FE58300CB2A576350B2EC5891BDAD394A0521C7610
          A0B8FA5959DD490B2083BF6D8F3EB7C3BCCBED0B2C5699CD42255F80FD5BC253
          D975719C378C83775E2027FB8E8D37B9084D86E3181E0C07D234DF695ECFD75B
          6A9B0C4D6A3C3A72A99064AD2B2D2D0AD0348401AB528A53E650FDBBF3C2F733
          D232F50F2EE5EA3C9654E4584DB6F95B28D2A7C9B2B4F100510157DD2920DEC2
          E410304892151263125001532E25C00F520DF17F6DFA7A68EAAD4B8CDBCE851D
          01F46B28413F01D8AB5DC74B037076DC34FA5E7680CE5DA82EA59DDD85577E70
          7E4CA4C02E94A021284A1294A0A4248483B5F99DC9DF1505D472C6538B9B24C5
          AA3D3AA153A670634F319D6CC971F2A2E5AE34A6D64AAFB5EFB5ED8A2D52AAD4
          EA7A67C74263C952D491A1011B0B1B5BAF33E6FC6F8ABB8EB8EACA9C5A94A26F
          72701B467CCFF42CCF91A04282F8FF00D7A83ECC8ABB496969BA90CE9F788015
          E64A2D627DD18318EC0FD6B7F5FC1C180F3E11FF0083EE307847FE0FB8C18301
          FA98D210B4A8205C1B8B9070E204A75A8EEA1E62ECEAD6B6C1075A88F5EF617B
          FD2DC898300B6509325C51E10422FB2136000ED8E1E11FF83EE3060C0778519E
          4CC6C946DBF51D8E0C18301FFFD9}
        Proportional = True
      end
    end
  end
  object UniGroupBox2: TUniGroupBox
    Left = 8
    Top = 93
    Width = 145
    Height = 125
    Caption = 'Identifica'#231#227'o'
    TabOrder = 1
    ParentFont = False
    Font.Style = [fsBold]
    object UniEdit1: TUniEdit
      Left = 9
      Top = 42
      Width = 116
      Hint = 'Informe o seu login.'
      ShowHint = True
      ParentShowHint = False
      CharCase = ecUpperCase
      TabOrder = 2
      Color = clWindow
      OnExit = UniEdit1Exit
      OnKeyDown = UniEdit1KeyDown
    end
    object UniEdit2: TUniEdit
      Left = 9
      Top = 89
      Width = 116
      Hint = 'Informe sua senha.'
      ScreenMask.Enabled = True
      ScreenMask.Message = '( Criptografando sua senha )'
      ShowHint = True
      ParentShowHint = False
      PasswordChar = '*'
      CharCase = ecUpperCase
      TabOrder = 4
      Color = clWindow
      OnKeyDown = UniEdit2KeyDown
    end
    object UniLabel2: TUniLabel
      Left = 9
      Top = 70
      Width = 35
      Height = 13
      Alignment = taCenter
      Caption = 'Senha'
      TabOrder = 3
    end
    object UniLabel1: TUniLabel
      Left = 9
      Top = 23
      Width = 30
      Height = 13
      Alignment = taCenter
      Caption = 'Login'
      TabOrder = 1
      OnClick = UniLabel1Click
    end
  end
  object UniGroupBox3: TUniGroupBox
    Left = 157
    Top = 93
    Width = 520
    Height = 125
    Caption = 'Estabelecimento Penal'
    TabOrder = 2
    ParentFont = False
    Font.Style = [fsBold]
    object UniBitBtn2: TUniBitBtn
      Left = 304
      Top = 61
      Width = 140
      Height = 38
      Glyph.Data = {
        6A060000424D6A060000000000002A0400002800000018000000180000000100
        08000000000040020000120B0000120B0000FD000000FD00000000000000FFFF
        FF00FF00FF0099330000CE6C0900BA6F1C00EB8C2900F39B3F00FFF0C200988E
        6200D7E0C300D7F2EF00B5E6E400A4FFFF00B5FCFD00BAFFFF00D6F3F300E3FF
        FF00F7FFFF00F8FFFF00FDFFFF00FEFFFF009FFCFF00B6FDFF00D9FEFF00DAFE
        FF00E1FDFE0098FAFF0090ECF20091ECF200C3FAFD008FF6FF008EF2FB0091F6
        FF0092F6FF0093F7FF0095F8FF009AF7FE0095ECF20095EAF100A3F8FF00A4F8
        FF00A7F9FF009EECF200C2FAFF00C4FBFF00D0F2F50088EEFA0089EEF9008EF3
        FF008CEFF9008EF2FC0091F4FF0096F5FF00AEECF200E9FDFF0063D2E20071E3
        F30072E3F20087F0FD0089F1FE008BF2FF00A6F1FC00E7FBFE006ADEF30064CE
        E0007AE9FC0075DBED007BE1F10074D4E30081E9FC0083EAFD0082E9FC0086ED
        FF0085ECFE0087EDFF0086ECFE0089EEFF0083E4F3008DEEFF008DEDFE00BBF4
        FE00CFF3F9005EC8DC0069CFE4007CE7FE007BE7FC007CE7FC007AE1F7007EE6
        FC0080E7FD0081E8FE0081E7FD0080E7FB0082E8FE0084E9FE009CE4F200ADE9
        F500BFEEF80065D9F30076E5FF007BE4FE007DE4FE0081E7FE0088E7FF00A6EE
        FF00A9EEFF00C6F4FF00E9F9FD0043C1E2005ED3F1007CE2FE007CE3FE007DE3
        FE008FE8FF00A7EDFF00B6E6F300BDEEFB00CEEEF700149BC70019A2CF001FA9
        D60052C2E7005ED1F30070DCFF0071DDFE0076DEFE0077DEFE0078DFFF007ADE
        FF007BDFFF007CE1FF0073CBE7008ED2E6009FE9FF00A9E9FE00ADE2F300019A
        CF000198CD000193C800018CC000029BD000069CD0000D9ED1000D9FD10015A1
        D0001DA7D5001FA8D8001FA7D7001FA7D5001B91BA0022ACDD0028B0E00029AC
        D80030B3E30031B1DC0034AFD90045C0ED0049B7DE005CCCF50063D1F90060CA
        EF0065D2F80065CFF5005EC1E20069D1F8006DD8FF006ED8FF006BD3F8006FD8
        FE006FD9FE0070D8FE0071D9FE0073D9FF0073DAFE0074DBFF0075DBFF0076DC
        FF0077DBFF0077DCFF0078DCFF0079DDFF0076C8E50077BFD8008BD4EE0097E4
        FF008FD3EB00BCE9F800018BC0003EB8E9003EB7E50067D3FF0071D8FF0077D5
        FC0099E2FF0055C4F3005FCDFF0064CDFE008BDBFF0002679B005CC8FB004071
        FA004274FF00497AFC00275AFF002C5FFF003664FA00386BFF00174AFD001A4C
        FF001B4DFF001D50FF002355FF002558FF002655FA002E5BF9002D59F400325D
        F1003B66F3000030FC000132FF000134FF000C3CFF00103DFB00103BF4001342
        FF001743F6001847FF001A48F9001A47F8001B46F6001D4BFF001C47F6001D48
        F6001D49F600214EFC00204BF800204CF800224DF800224CF400224DF1002550
        F400002CF800002DF800002CF600002AF300012DF600032BF2000431FE000733
        F600123BF100143EF40000009A00020202020202020202020202020202020202
        0202020202020202898989890202020202020202020202020202020202020290
        B8A89D98898989890202020202020202020202020202028EB687A6B0B3B2A09A
        8D8989898902020202020202020202899CBBA7A9ABABC0AF81B5AD9F97898989
        020202020202028979BAB9AAACACACACACACAEB18281B4B38902020202020289
        9B9E757D7F7F7F7F7F7F7F7E7E7E8083A2890202020202897A9288726F707070
        70707070707066717B89020202020289A193A451555C5A5A5C675B5B5B5B5E5F
        6E4F890202020289A3BE996250474846474A4C4949494B4D6335890202020289
        A5C394841E2032302F3B3C3D3D3D3D3140241B8902020289C1C8BD9574522E10
        0B0C251F2122232439160D6D89020289C6C4C5FCFC8F779178851AFCFC28292A
        4E170F0E89020289C2BFFCD0E0FC050A0996FCF2DBFC2C2D6019181161890289
        867CFCE5D1FAFC0806FCF6DCF5FC3F37761312156C890289696465FCE8D2FBFC
        FCF3DDF7FC898989898989898989028A3E425D58FCE9D3DFF8DCF4FC56575933
        890202020202028B363A444354FCE4E1DEF9FC27261D1C2B890202020202028C
        B745384153FCEBE7E3E2FCBC8C8C8C89020202020202030303030303FCD7CDEE
        ECD4E6FC030303030303030303030707070707FCCECFD8FCFCEFD5EAFC070707
        07070707070708080808FCC9CAD9FC7368FCF0CCEDFC08080808080808080404
        0404FCCBDAFC146B6A34FCF1D6FC04040404040404040202020202FCFCC7C7C7
        C7C7C7FCFC020202020202020202}
      Caption = 'Sair'
      TabOrder = 2
      OnClick = UniBitBtn2Click
    end
    object UniBitBtnEntrar: TUniBitBtn
      Left = 104
      Top = 61
      Width = 140
      Height = 38
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Validando login...'
      ScreenMask.Target = Owner
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000120B0000120B0000000100000000000000000000FFFF
        FF00EEEDF0007E7D7F00A3A2A400959496008D8C8E0087868800F8F7F900F4F3
        F500E8E7E900DDDCDE00D3D2D400BAB9BB00B8B7B900BDBBBE00B0AEB100E6E4
        E700918E9200A7A4A800CBC8CC00918D9200CFCBD000FF00FF00B5B0B500B3AE
        B300928E9200C4BFC40075727500908D9000838083006361630073717300C8C5
        C800A4A2A400A3A1A3009A989A008E8C8E0084828400ECEAEC00C3C1C300B6B4
        B6007B7A7B00777677006A696A006463640063626300FBFAFB00BFBEBF008B8A
        8B00A8A2A700908B8F007E7A7D008D898C00C2BEC100D8D4D700B4ADB2005B58
        5A006663650074717300BAB7B900928D90008F888C00AFA8AC0098909400726E
        7000B2AEB000918F9000BDB6B900BAB3B6007D787A008E868900A59DA0007670
        7200A69C9F008981830058545500605C5D00ACA8A900D3CFD000686364006861
        62007770710078717200938082006A6162008B8283008F8586009F9596009C92
        9300887B7C009B8383003B353500686363004441410055525200424040008986
        8600878484008E8C8C0048474700908F8F008C8B8B00988D8800999390008B89
        8800FFFDFC00F9ECE300D0670800D26F1700DA781E00D3752100D3752300D376
        2500D67C2B00DC8B3F00E2995600E8B07C00DA883700DA873900E08F3D00DF94
        4700E1975100E3A05D00E3A26000E7AB7000EEC09200EFCEAF00FEF7F0008F8E
        8D00E4A05600F0C39100F3CCA0009E8D7B00FDF2E600E38A2500EA953000E18F
        3200E19D4E00E4A35900E8AF6E00F6D9B700FDECD700FEF5EA00EF9A2900D28D
        3000E6A24A00E8A64E00E9AD5C00E9B36C00655744009D896E00A4907600F9E3
        C7007E756900ECE0D000FFFCF800DD942800F1A33300EBA64700F6BB6300E3BD
        8400A08D7200FEA71A00FEA81B00FEA91F00FEAB2100FEAC2500FEAD2800CB8B
        2300FBB23A00FEBD5300DEA74D00ECC28000FFD38D00FEE2B700FEAD2600FEB0
        2D00FEB33200FDB23500FEB53600CB902C00FEB83C00FEBB4300CC953600FFBD
        4500CB9B4B00B6986200F0CC8C00FFC24F00FFC25100CC9D4500F9C25900FFC7
        5C00FFC95E00FFCA6000BF964A00FFCC6400CCA25100F8CB7500CABCA0003F3C
        3600FFF6E400FFCF6B00FFD06D00FFD17000CCA75A00CCA95E00FFD57700F8D9
        9900CAC0AB00FFF3D900FFF5E000FFD77B00FFD97F00FFDB8300CCAF6C00D1B8
        7A00FFFCF500FEDF8B00F2D58800D7C59200FDE49A009C988B00BBB49A00FEFA
        EC00B6AD8B00CBC08E00FFFFFD00FFFFFE00374A390051525200464747005C5D
        5D00898A8A0057585900525253007C7C7D00707071006B6B6C00C6C6C700C5C5
        C6008C8C8D00C5C5C500898989007F7F7F006666660065656500606060005E5E
        5E00505050004D4D4D00454545003E3E3E00333333002C2C2C00171717171717
        E8E8E8E8E8E8E8171717171717171717171717171717E7E814161B184A595360
        FF17EEEEEEEE17171717171717EC0C11110B0F3F3F585751FC260E10131E6417
        1717171717E827090E03202DEC5F5A4D0A0A0E101336384D17171717172C022F
        240D453F38355EF5083622F6F63A3846171717E8E8E82E052D495A5B5455FFE6
        ED2AF40D361C3B601717E84E63243D474B505DFB5CF6EF213744684B41ECFE17
        1717FA4E47012F274F364A5956F626BAABAEAF9B3721192BFE17E9423EA3A8AB
        CDD199273CF662A9A4A5A7B3AAA0A1C822ECF92933A3A3A4A5A6A7A7ACF661A9
        B18778889EAAB4B091F6F80D1DA3A66C6E6E87909DF669B8B97BE499838C89B6
        B51F2E3012B0B26F6B7F757A76F666BFC17B01DAD3D382BDB84D2E2812B4B76F
        01E5E18E8DF663C6CD7B01019CCA8BC3BF39F7F343B7BE7001E4DA8FD4F681CE
        D5947D7E8D867CCBC44CF6F01DBEC37001E59C8F8EF665CFD6DEDCAD8B7393CD
        BB4CF6F065C1CC710101016A80F64368D2E0C8E0E3D9D7CCBB64F6F006C5D06D
        DAE40101019C96C9FEFD2EEF032A2E209AFEF6F1F2CBD592747D7E8D99868F6A
        72C0F6F6F6F6E6FEFE17F6F331CCD6DB948A737773747D846FC297E817171717
        1717F6F3EAD9D8DCDEDED1BC9579726D9FC2A2E8171717171717F6F3F4EA31F2
        2BDFDFE0E2DDD9C7CDC198E8171717171717F6E8E80B0C0F29042312431A151D
        348567E8171717171717171717E8E8EBE91C072513051832484052E817171717
        17171717171717171717E8E8E8E8E8E8ECFBE817171717171717}
      Caption = 'Entrar'
      TabOrder = 1
      OnClick = UniBitBtnEntrarClick
    end
  end
  object UniDBEdit1: TUniDBEdit
    Left = 176
    Top = 112
    Width = 491
    Height = 22
    DataField = 'NOME_UP'
    DataSource = Dm.DsUP
    TabOrder = 4
    Color = clWindow
    ReadOnly = True
  end
  object UniTimer1: TUniTimer
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      '   '
      '}')
    Left = 256
    Top = 216
  end
  object Sqlservidor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM FUNCIONARIO')
    SQLConnection = Dm.Conexao
    Left = 488
    Top = 16
  end
  object Dspservidor: TDataSetProvider
    DataSet = Sqlservidor
    Left = 516
    Top = 16
  end
  object Cdsservidor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspservidor'
    Left = 544
    Top = 16
  end
  object Dsservidor: TDataSource
    DataSet = Cdsservidor
    Left = 572
    Top = 16
  end
end
