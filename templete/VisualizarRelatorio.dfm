object FrmVisualizarRelatorio: TFrmVisualizarRelatorio
  Left = 0
  Top = 0
  ClientHeight = 461
  ClientWidth = 771
  Caption = 'Visualizar Relat'#243'rios'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  WindowState = wsMaximized
  OldCreateOrder = False
  OnClose = UniFormClose
  OnKeyDown = UniFormKeyDown
  MonitoredKeys.Keys = <>
  ScreenMask.Enabled = True
  ScreenMask.WaitData = True
  ScreenMask.Message = 'Por favor aguarde... gerando base web...'
  ScreenMask.Target = Owner
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniURLFrame1: TUniURLFrame
    Left = 0
    Top = 37
    Width = 771
    Height = 424
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Aguarde, montando o HTML...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ParentColor = False
    Color = clWindow
  end
  object UniPanel1: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 765
    Height = 31
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object UniImage1: TUniImage
      Left = 1
      Top = 1
      Width = 763
      Height = 29
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
    object UniBitBtn1: TUniBitBtn
      Left = 612
      Top = 3
      Width = 125
      Height = 25
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000000F68CC6A0E63
        CDFC0C61CCFB0A5DC7FA095AC4FA0957BFFA0756BAFA0553B7FA0451B3FA034E
        B0FA024CACFA024AA7FA0149A4FA0045A0FB004494FC0043806A1169D4FC1E6A
        EFFF1D6EECFF1A6EEBFF1469EAFF1065E9FF0D62E8FF0A5EE9FF075BE9FF0558
        E8FF0355E7FF0153E8FF0050E7FF004EE7FF0045F2FF004494FC146ADBFB297A
        EEFF2B81E9FF267FE9FF1F79E8FF1A75E7FF1570E6FF116CE4FF0D69E5FF0A65
        E2FF0662E3FF055FE1FF035CE2FF0057E0FF004EE7FF0045A0FB156DDDFA3685
        EEFF378BECFF2D85E9FF277EE9FF1B77E7FF1B76E7FF1670E6FF106CE4FF0C6A
        E5FF0563E3FF0663E3FF0560E1FF035CE2FF0050E7FF0147A4FA1771E1FA408E
        F0FF4093ECFF368CECFF257FE8FF3B8CEAFF0C6FE5FF1A76E7FF1570E6FF005F
        E2FF1E74E6FF0260E3FF0663E3FF055FE1FF0153E8FF024AA7FA1873E4FA4C96
        F0FF4D9BEFFF3C90ECFF4996EEFFFFFFFFFFB4D3F6FF0066E4FF0061E3FFA5CA
        F5FFFFFFFFFF2377E6FF0563E3FF0662E3FF0355E7FF024CACFA1A75E8FA579F
        F2FF5AA4EFFF4C9AEFFF2E87EAFFBBD8F7FFFFFFFFFFA3C9F5FF98C2F3FFFFFF
        FFFFAED0F5FF0060E2FF0C6AE5FF0A65E2FF0557E8FF034EB0FA1A76ECFA67A8
        F3FF6BB0F2FF59A3EFFF4C9AEFFF2381EAFFABD0F6FFFFFFFFFFFFFFFFFFA0C8
        F5FF0061E3FF1570E6FF106CE4FF0D69E5FF0759E9FF0451B3FA1C79EFFA76B2
        F5FF7DBAF5FF69ADF1FF59A3EFFF328CECFFA6CDF5FFFFFFFFFFFFFFFFFFA2C9
        F5FF0067E4FF1A76E7FF1670E6FF116CE4FF095EE9FF0553B7FA1D7BF1FA88BD
        F7FF90C5F6FF7AB9F4FF5BA5F0FFC0DCF9FFFFFFFFFFAED0F7FFABCFF5FFFFFF
        FFFFB4D3F6FF0D6FE5FF1B76E7FF1570E6FF0E61E8FF0755BAFA1F7CF4FA98C9
        F9FFA5D0F8FF8BC2F5FF85BDF5FFFFFFFFFFC7E1F9FF318BECFF2381EAFFBBD8
        F7FFFFFFFFFF3689EAFF1C77E7FF1A75E7FF1065E9FF0958BFFA1F7FF7FAABD3
        FAFFBBDEFAFFA1CEF8FF88C1F5FF86BFF5FF5AA6F0FF59A3EFFF4C9AEFFF2F87
        EAFF4293ECFF2680E8FF277EE9FF1F79E8FF1568EAFF0959C4FA2081F9FAC0DF
        FCFFD1E9FCFFB7DCFAFFA1CEF8FF8BC2F5FF7AB9F4FF69ADF1FF59A3EFFF4C9A
        EFFF3D90ECFF368CECFF2D85E9FF267DE9FF186DEBFF0B5CC7FA2785FCFBA5D1
        FBFFF1F9FDFFD1E9FCFFBBDEFAFFA5D2F8FF90C5F6FF7DBAF5FF6BB0F2FF5AA5
        EFFF4D9BEFFF4093ECFF378BECFF2A82E9FF1D6DECFF0C60CCFB2584FEFC7FBF
        FDFFA4D1FBFFC0DFFCFFABD3FAFF97C7F9FF86BDF7FF74B2F5FF66A7F3FF589F
        F2FF4A95F0FF408CF0FF3684EEFF2979EEFF1E6BEFFF0E63CDFC197DFF6A2584
        FEFC2685FCFB2181F9FA1F7FF7FA1E7CF4FA1C7BF1FA1D79EFFA1A76ECFA1974
        E8FA1872E4FA1670E1FA156DDDFA136BDBFB1169D4FC0E68CA6A}
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = UniBitBtn1Click
    end
    object LabelTitulo: TUniLabel
      Left = 85
      Top = 3
      Width = 481
      Height = 23
      AutoSize = False
      Caption = 'Visualizar Impress'#227'o'
      ParentFont = False
      Font.Height = -21
      Font.Name = 'Times New Roman'
      TabOrder = 4
    end
    object UniImageLogoMarca: TUniImage
      Left = 1
      Top = 1
      Width = 40
      Height = 29
      Center = True
      Stretch = True
      Picture.Data = {
        07544269746D617062060000424D620600000000000022040000280000001800
        000018000000010008000000000040020000120B0000120B0000FB000000FB00
        000000000000FFFFFF0069687700FF00FF00776D77007A6D78007D6A72009277
        7700CAB4B400E7DDDD00C6BDBD00EBE5E500F3F0F0006C424100734746006B42
        410074484700AA848300AC929100976D6B00A67F7D009E7A78008C7675007867
        66006D413D007448440082514D008E5D59008C5D5900AF979500CFC1C0005F3B
        37007F4F4A007D4E49007B4D4800764A450080504B006B433F005C3A3600986D
        6800936A65007547400073453F00996B65009E726C00DCC7C4009A6F6800A578
        7000784A410091635A00A17269009E736B007D4D4200A77A70009D746A00AD83
        79008051440095635600A0766B00B0837700A67F75007B66600086554500AD86
        7A008A594700B1847500905E4900A37E6D00B88F7D00AC897A00BFA09200934F
        2E00975D400095644B00B78F7B0093491F009A684D00B7917B008E726300C6A6
        9500A6725100A06D4F00D1926D00BC4B0000BB4B0000B8490000B7490000B64B
        0200B0795400AA765200BD9A830091572A00B27E5600C4997A00915727009A5E
        2C00E79F6200BA835800B7815700AD6A2C00EAA96D00765F4B00DCCEC200FE80
        0000975A1F00A6652300CB9D7000CA9E7400F87E0000CE7D2500C97924009D5E
        1C00D5812700D07E2600CC7B2500CA7A2500C7782400D4802700B86F2200EFB4
        7400EFB77A00EEB77E00EEBA8000D3B69600C6AF9700CCB69E00EDBA7A00EFBF
        7E00D9BA9000E1C49D00D5C2A90079757000F4CA8C00EDC48800F0C68A00C9A7
        7400F2CA8E00C9A77700FFD9A100F2D4A900D3C0A500FBF0E000EAC07F00EBC1
        8000E9BF7F00E5BC7D00DAB47700E9C08100EDC48400EAC28400EDC68A00EEC9
        8C00F4CE9300CCAC7B00CAAB7A00EECA9100EAC68F00F3CE9600EFCC9700EFCE
        9900F0D09C00DABC8E00F0D1A100E5C79900F2D5A600F2D7AB00F3D8AD00F2D8
        AF00F3DAB400F4DEBA00F8E3C100F6E1C000E6D5BA00F8E7CC00F2E2C900FAED
        D900F8D49500D1B48300EBD0A300F3DCB400F6E2C000F7E5C700F7E9D100FAEE
        D900FBF3E500F6D49500F7DCA500E6D0A300F8F2E600F8DCA000F7DEAA00FCF8
        EF00FEFBF400EDD9A100FAE5AA00F8E2A900EAD8A500FBEAB500E7DDBD00FEEF
        B800FAEBB700EAE1C100FFF0B100EDE5C500FFFEFA00FBEFBB00EDE5C200FBF2
        BF00FFF8C400FAF7D000FFFCC900FFFCCB00FFFFCC00FFFFCE00FFFFD000FFFF
        D400FFFFDA00FFFFEF00FFFFF000FFFFF6005A5C370000810000007F000000BC
        FE0000B8F80082898C003F4A51003CAFFF004F7791003AA9FF0035A1FB0037A1
        FB0039A0F80039A0F7003EA7FF003FA9FF003C8BCC000D5BA900105BA4001159
        A1004F83B6000D5FB400216EC1003B81CA00197FFA00197DF7001A7FFB00FEFE
        FE00F8F8F800F0F0F000E9E9E900032A1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1C
        21030302E2830318A8A78BA29F9B96948F8F8F8F8F8F8E91230304F1F2E1032A
        A8A6A4A2A09E9B9785959390909091921A05EDF6E3EC032AAB70707070707575
        716D736E7372746A06EDF4EBE9030329ADB5B4A9B3A5B2A3A1B19A8987996B16
        EEF5EBE803030330B770707075717476695F5B5E686F4EEFF5EAE70303030334
        B88DAFB6AEAC7C362F373F3C313DE4F3E5E6030303030338BF7070757263394F
        CED1D1CB8C43070AF00303030303033ECCC0BFBC66282DDBD5D4D4D5D0C44A35
        2603030303030340015354564B4501DAD4D5D5D6CF9880321F03030303030342
        0153676C4882D8D6D5D5D5D6CD799C440F030303030303490153DFE017C9D6D4
        D5D5D5D5BA64844D100303030303034C0153DDDE65C6D6D5D5D5D6C87A60B94A
        0E030303030303510153DDDEDC7DD7D5D6D3C5887E86C1410D03030303030350
        01538A8A5D3AD2C7BE9D787FAAD97B2B25030303030303590153535357475ACA
        B07877BDCC09331D190303030303035801010101F70B113B81C3C2BB461312FA
        220303030303035C0101010101F70C08142C2E27151EF9F82003030303030362
        015353535353535454555656565554F724030303030303610153535353535353
        5353545454535301240303030303036101010101010101010101010101010101
        2403030303030361525252525252525252525252525252525203030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303}
      Proportional = True
      Transparent = True
    end
    object UniBitBtnRecarregar: TUniBitBtn
      Left = 504
      Top = 3
      Width = 102
      Height = 25
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF00043E
        9000003A990008479F000141A400094FAF00034BB4003D73B4000C5DCF00004B
        DE00035BDE00045BDE000F6ADE001169DE00004BE000004EE0000051E0000055
        E000025CE200045EE2000160E5000D67E2000F6AE0000A6AE6000F6AE5000F6E
        E7001069E500166EE6001674E7001871E5001176EA00137AEA001878E900297F
        E9005580B0005B89BC005E8CBF001582EF001A82EE001E87EF001C89F0001F90
        F3002A8CEF003585EA003688EA00318BEE003688ED003B8AEB003990EE00208C
        F2002092F4003298F2003599F300369CF4003AA0F6004586CF004787D1006392
        C700459AEF00509CEE00599EEE00529EF4005CA0EF0041AFFC005EA3F0005DA5
        F20045B4FE005EB8F80066A7EF0070A9E60064A6F20070AFF40077B1F00073B0
        F40076B2F4007AB4F2007AB5F60075BBF70076BDF9007FC5FA00809EBC0082BC
        F60087C0F60089C4F70081C7FA0088C5F8008EC7F8009ECAF6009ECAF800B5D0
        EE00A4CCF700A5DDFD00B7D3F000DED9D500CFDAE600C1DDFA00C4DDF900C9E3
        FB00CCE3FB00CAE5FB00CCE7FB00CBE6FC00C5EDFF00D9E6F000D9EAFC00DCED
        FC00EEEAE700F8F4EF00E3EEF700E2F0FE00E6F2FC00E9F3FC00EAF5FE00EEF6
        FE00F6F4F600F8FAF600F8FBFF00F9FDFF00FEFEFF0000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000001
        01010101010000000000000000060608373924070302010000000000060B4872
        675C595E5D220401000000060B58763C1A12121A3E6B5004010000064C762109
        1A2F2C120E2C732401000C0D763C0E2C6E5F68621A11466A05010C416E1C1968
        3C1111575A111A6C38010C51621E2C701776111D4C11125F45010C5362262A6E
        3076761D1111125F4C010C4E70332554767676763C111A703D010C33764F2931
        4D7676571D0E44761501000D5B76433228763A14112C76470600000C3F667654
        33311F204176580B060000000C425B767062626E76470B0600000000000C0D36
        4E56524117060600000000000000000C0C0C0C0D0D0000000000}
      Caption = 'Recarregar'
      TabOrder = 5
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Aguarde, recarregando...'
      OnClick = UniBitBtnRecarregarClick
    end
  end
  object UniTimerVisualizar: TUniTimer
    OnTimer = UniTimerVisualizarTimer
    Interval = 500
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      '   '
      '}')
    Left = 344
    Top = 8
  end
  object SqlConsultaBackup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '   cast(substr(unidade_penal.sigla,1,8) as varchar(8)) UP,'
      '    interno.nome_interno NOME,'
      '    interno.rgi,'
      '    interno.id_interno Id,'
      '    INTERNO.VULGO,'
      '    INTERNO.FACCAO,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    galeria.galeria,'
      '    solario.solario,'
      '    cela.cela,'
      '    iif(coalesce(interno.st,'#39'I'#39')='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito,'
      
        '    PROCEDENCIA.PROEDENCIA||'#39'/'#39'||coalesce(PROCEDENCIA.UF,'#39'UF'#39') A' +
        'S PROCEDENCIA'
      'from interno'
      '   left join cela on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join galeria on (interno.idgaleria = galeria.id_galeria)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      
        '   LEFT JOIN PROCEDENCIA ON (INTERNO.ID_PROCEDENCIA = PROCEDENCI' +
        'A.ID_PROCEDENCIA)'
      'where coalesce(interno.nome_interno,'#39#39')<>'#39#39)
    Left = 104
    Top = 32
  end
  object UniTimerFechar: TUniTimer
    OnTimer = UniTimerFecharTimer
    Interval = 500
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      '   '
      '}')
    Left = 432
    Top = 8
  end
end
