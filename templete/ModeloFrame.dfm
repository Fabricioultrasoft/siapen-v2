object FrmModeloFrame: TFrmModeloFrame
  Left = 0
  Top = 0
  Width = 830
  Height = 363
  OnCreate = UniFrameCreate
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabOrder = 0
  ParentFont = True
  ParentRTL = False
  RTL = False
  object UniPanelTopo: TUniPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 97
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object UniLabel13: TUniLabel
      Left = 141
      Top = 44
      Width = 88
      Height = 13
      Caption = 'Vencimento entre:'
      TabOrder = 6
    end
    object UniDateTimePickerInicio: TUniDateTimePicker
      Left = 286
      Top = 44
      Width = 120
      Height = 22
      Enabled = False
      DateTime = 41650.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 7
    end
    object UniDateTimePickerFim: TUniDateTimePicker
      Left = 432
      Top = 44
      Width = 120
      Height = 22
      Enabled = False
      DateTime = 41650.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 8
    end
    object UniEditLocalizar: TUniEdit
      Left = 286
      Top = 18
      Width = 418
      Enabled = False
      CharCase = ecUpperCase
      TabOrder = 4
      Color = clWindow
      CheckChangeDelay = 500
    end
    object UniLabel2: TUniLabel
      Left = 141
      Top = 18
      Width = 45
      Height = 13
      Caption = 'Localizar:'
      TabOrder = 3
    end
    object UniComboBoxCampo: TUniComboBox
      Left = 189
      Top = 16
      Width = 91
      Enabled = False
      Style = csDropDownList
      Text = 'Nome'
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Hist'#243'rico'
        'Documento'
        'Valor >'
        'Valor <')
      ItemIndex = 1
      TabOrder = 2
    end
    object UniBitBtnFiltrar: TUniBitBtn
      Left = 558
      Top = 43
      Width = 146
      Height = 25
      Enabled = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A7511A91C8A2AFE0B8415FE0069
        00D8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003C9544F579E09DFF13B62EFF0080
        00FF01640152FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00057C1302489F52F67FE1A1FF10B22AFF0185
        02FF036A0755FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0009831B0C45A052F877DE9AFF13B32EFF0488
        07FF07700E64FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00148F29CE38BF5EFF3BCF6CFF1FBA41FF0DA0
        1BFF077A0FF10874101FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF001A9A35CE3ECB67FF46E07CFF2DC65DFF1DB53BFF0AA5
        15FF029403FF087A10EF08751119FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF001FA440D349D975FF5AF38FFF3FD773FF2BC356FF19B132FF07A0
        0EFF009A00FF029404FF097B11EF09761219FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0025B04CD34EE07DFF69FF9FFF52EA87FF3AD26DFF27BF4BFF15AD26FF049D
        06FF009700FF009A00FF029403FF097B12ED09761314FFFFFF00FFFFFF0030C1
        5FD355E888FF63FFA0FF54F791FF45E07AFF38CD72FF1EBD5EFF0DAC39FF049A
        0EFF08A207FF039C05FF009A00FF008E00FF04760AEB0976121030C661DC2DC4
        4DFF23C039FF48B026FF56A91EFF1EAE26FF30BF6AFF2DCDE9FF14CFFCFF11A6
        BEFF41D07FFF5CF685FF52EB7CFF3EE662FF2DC145FF0F821CEA30C861F404A8
        1DFF68A41EFFE8B634FFEEB62CFFAEA619FF26B433FF3ECC88FF4EDCF7FF69E1
        FFFF33B0D0FF55E998FF64FF96FF85C7ACFF48D470FF0C941FF12ACB661447CD
        708ADFCC70FDF7DD92FFEED67AFFEEB62CFF58AD38FE1BB649FD3EC07CFD6EE4
        FCFF36B4ADFC1FA344F491829DFFF434F1FF8A358CF53F52471BFFFFFF00FFFF
        FF00FDDA9CEAF5E8B7FFF0DC8FFFEBB737FF9BA936641FB04C0E23AC441775E9
        D7617DC0B917D187CDB0FD6AFCFFFF8EFFFFF519F5FFA203A1CCFFFFFF00FFFF
        FF00FFE1B335F9DA9DE1EFCC77F3E9B64E8AFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FE96F845E868E8F8FE5DFEFFCD1ECDFC930D9359FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00D471D43EC53CC5EBA327A359FFFFFF00}
      Caption = 'Filtrar'
      TabOrder = 5
      OnClick = UniBitBtnFiltrarClick
    end
    object UniCheckBoxTodos: TUniCheckBox
      Left = 3
      Top = 14
      Width = 121
      Height = 17
      Checked = True
      Caption = 'Todos os registros'
      TabOrder = 1
      OnClick = UniCheckBoxTodosClick
    end
    object UniImage6: TUniImage
      Left = 12
      Top = 74
      Width = 807
      Height = 10
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
    end
  end
  object UniPanelMeio: TUniPanel
    Left = 0
    Top = 97
    Width = 830
    Height = 266
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ExplicitTop = 94
    ExplicitHeight = 179
    object UniDBGridParcelas: TUniDBGrid
      Left = 57
      Top = 1
      Width = 773
      Height = 264
      DataSource = DsParcelas
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      WebOptions.PageSize = 15
      WebOptions.LoadMaskMsg = 'Aguarde...'
      OnDblClick = UniDBGridParcelasDblClick
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      Columns = <
        item
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Title.Caption = '$'
          Width = 35
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'IDCLIFORNE'
          Title.Caption = 'C'#243'digo'
          Width = 50
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 200
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'NUMDOC_EMPRESA'
          Title.Caption = 'Documento'
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'PRAZO'
          Title.Caption = 'Prazo'
          Width = 50
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'DATAPRORROGACAO'
          Title.Caption = 'Vencimento'
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 80
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Width = 200
          Visible = True
          Expanded = False
        end>
    end
    object UniPanelParcela: TUniPanel
      Left = 53
      Top = 31
      Width = 665
      Height = 159
      Visible = False
      TabOrder = 3
      object UniImage7: TUniImage
        Left = 1
        Top = 1
        Width = 663
        Height = 157
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
        ExplicitTop = 2
      end
      object UniBitBtnConfirmaParcela: TUniBitBtn
        Left = 531
        Top = 77
        Width = 106
        Height = 25
        Hint = 'Alterar dados'
        ShowHint = True
        ParentShowHint = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0004700899087B10FD036F0877FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00026D05731C962EFF40C561FF168F26FF016C0462FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00016C
          044F188F28FE48D673FF79EAA0FF7CDC96FF10891EFE006C0459FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00026C05301188
          1FFD4CD576FF53DF81FF30A947FF73BC7DFF79D08AFF13861DFE006C0360FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0017801DE673D6
          8DFF62E58FFF27A53FFF006C03AA016C0390449F4CFF6CC378FF218D2AFF006D
          0473FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0013861DFFAFE8
          BEFF4FB663FF006E04BAFFFFFF00FFFFFF00006B01491F8525FB53AF5DFF278F
          30FF016E067DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000470086E3695
          3DFF0F7814D3FFFFFF00FFFFFF00FFFFFF00FFFFFF00016D040307730BC23094
          37FF208927FF0471098DFFFFFF00FFFFFF00FFFFFF00FFFFFF0005710A12016D
          0494046F0812FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00026F
          0657147E1AFD0D7B13FF047109BAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000370080305720BCC05730AFF05710ADCFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0005710A4905710AF905710AF405710A25FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0005710AB005710ADAFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Caption = 'Alterar dados'
        TabOrder = 14
        OnClick = UniBitBtnConfirmaParcelaClick
      end
      object UniDBNumberEdit7: TUniDBNumberEdit
        Left = 408
        Top = 35
        Width = 95
        Height = 22
        DataField = 'VALOR'
        DataSource = DsParcelas
        TabOrder = 11
        Color = clWindow
      end
      object UniDBDateTimePicker3: TUniDBDateTimePicker
        Left = 304
        Top = 35
        Width = 100
        Height = 22
        DateTime = 41650.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 10
        DataField = 'DATAPRORROGACAO'
        DataSource = DsParcelas
      end
      object UniDBNumberEdit8: TUniDBNumberEdit
        Left = 233
        Top = 35
        Width = 47
        Height = 22
        DataField = 'PRAZO'
        DataSource = DsParcelas
        TabOrder = 9
        Color = clWindow
      end
      object UniDBEdit3: TUniDBEdit
        Left = 24
        Top = 35
        Width = 121
        Height = 22
        DataField = 'NUMDOC_EMPRESA'
        DataSource = DsParcelas
        TabOrder = 7
        Color = clWindow
      end
      object UniBitBtnCancelarParcela: TUniBitBtn
        Left = 531
        Top = 35
        Width = 106
        Height = 25
        ShowHint = True
        ParentShowHint = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CB6601FFCB66
          01FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB66
          01FFCB6601FFCB6601FFCB6601FF000000000000000000000000CB6601FFFDF4
          EBFFFFF6E9FFFFF1DFFFFFEED9FFFFEAD1FFFFE6CAFFFFE3C2FFFFE0BAFFFFDC
          B3FFFFD8ADFFFFE2B5FFCB6601FF000000000000000000000000CB6601FFFDF7
          F0FFFFF9EFFFFFF3E4FFFFF0DDFFFFECD6FFFFE9CEFFFFE5C7FFFFE2C0FFFFDE
          B8FFFFDAB0FFFFE1B5FFCB6601FF000000000000000000000000CB6601FFFDF8
          F4FFFFFAF3FFFFF4E8FFFFF1E2FFFFEEDAFFFFEAD3FFFEE6CBFFFEE3C4FFFEE0
          BDFFFEDCB5FFFFE1B6FFCB6601FF000000000000000000000000CB6601FFFDFA
          F9FFFFFDF8FFFFF7EEFFFFF4E7FFFFF0E0FFFFECD8FFFEE9D0FFFEE6C9FFFFE6
          C3FFFFE3BBFFFFE4BCFFCB6601FF000000000000000000000000CB6601FFFDFB
          FBFFFFFFFEFFFFFAF3FFFFF6ECFFFFF3E5FFFFEFDDFFFEEBD6FFFFEED0FFE6D0
          C2FFE6CCB9FFFFEEC3FFCB6601FF00000000160B890E0000A00BCB6601FFFDFB
          FBFFFFFFFFFFFFFFFDFFFFFBF6FFFFF8EFFFFFF4E7FFFFF5E0FFE2D0CFFF3238
          B8FF3235B3FFDFCABEFFCB6601FF53204EA1000BB9E40106A5ABCB6601FFF9F1
          E8FFFCF6EFFFFBF3EBFFFBF0E5FFFBEDDEFFFBE9D7FFFFEDD1FFCFB8BAFF1F27
          B6FF2246EFFF4144B9FF7F5C80FF141CAFFE0F38F0FF0108A8CCCB6601FFCB66
          01FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFF3A651FFAC6F
          57FF333ABCFF2D4CE9FF192ECDFF2345EBFF070FACC90000961F00000000CB66
          01FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB66
          01FF603D73FE2C46D9FF5680FFFF1E2DC1FF0000905200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003840BEFF4F67E7FF202EC0FB4461EDFF1620B5DE00009630000000000000
          000000000000000000000000000000000000000000000000000005008E2A2833
          C1F06A7FEDFF1014A6B8000090451923B6DB4966EEFF0E13AAD5000000000000
          000000000000000000000000000000000000000000000000000000009D0F1416
          A7BC1416A6C20000961400000000000096311016AADE0609A190000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Caption = 'Cancelar'
        TabOrder = 12
        OnClick = UniBitBtnCancelarParcelaClick
      end
      object UniDBEdit5: TUniDBEdit
        Left = 24
        Top = 80
        Width = 479
        Height = 22
        DataField = 'HISTORICO'
        DataSource = DsParcelas
        TabOrder = 15
        Color = clWindow
      end
      object UniLabel25: TUniLabel
        Left = 408
        Top = 16
        Width = 24
        Height = 13
        Caption = 'Valor'
        TabOrder = 6
      end
      object UniLabel27: TUniLabel
        Left = 233
        Top = 16
        Width = 27
        Height = 13
        Caption = 'Prazo'
        TabOrder = 4
      end
      object UniLabel28: TUniLabel
        Left = 304
        Top = 16
        Width = 55
        Height = 13
        Caption = 'Vencimento'
        TabOrder = 5
      end
      object UniLabel29: TUniLabel
        Left = 24
        Top = 61
        Width = 41
        Height = 13
        Caption = 'Hist'#243'rico'
        TabOrder = 13
      end
      object UniLabel26: TUniLabel
        Left = 24
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Documento'
        TabOrder = 2
      end
      object UniDBLookupComboBox1: TUniDBLookupComboBox
        Left = 24
        Top = 126
        Width = 479
        ListField = 'NOME'
        KeyField = 'IDCXBCO'
        ListFieldIndex = 0
        DataField = 'LOCALCOB'
        DataSource = DsParcelas
        TabOrder = 18
      end
      object UniLabel1: TUniLabel
        Left = 24
        Top = 107
        Width = 88
        Height = 13
        Caption = 'Local de Cobran'#231'a'
        TabOrder = 16
      end
      object UniBitBtn1: TUniBitBtn
        Left = 531
        Top = 119
        Width = 106
        Height = 25
        Hint = 'Confirma valor, vencimento e os prazos das parcelas alteradas.'
        ShowHint = True
        ParentShowHint = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A45A549E7F2B28FFA182
          83FFA18283FFA18283FFA18283FFA18283FF7F2B28FF993C3DA2A46769FF8E5D
          59FF8E5D59FF8C5C58FF875955FF865854FF865854FF7F2B28FFC04141FFE6DC
          DCFF791617FFD7CFD0FFC9C2C5FFBDBABDFF831A1BFF7F2B28FFA46769FFFCEA
          CEFFF0D8BAFFE0C5A4FFC6AC8AFFBDA17EFFBC9F75FF7F2B28FFB73D3DFFE6DC
          DCFF791617FFDCD3D4FFCCC6C9FFC0BCC0FF7F1919FF7F2B28FFA0675BFFFEEF
          DAFFEAD5BDFF056695FF056695FF056695FF056695FF7F2B28FFB74041FFC062
          62FFD18E8CFFC27778FFBF6F70FFBF6C6DFFAD3A3AFF7F2B28FFA0675BFFFFF4
          E5FF056695FF46D3E9FF1CD9FFFF2EDAFFFF7AEDFFFF7F2B28FFBD4B4CFFBD4B
          4CFFBD4B4CFFBD4B4CFFBD4B4CFFBD4B4CFFBD4B4CFF7F2B28FFA7756BFFFFFB
          F0FF056695FF64F7FFFF12CEFEFF21CFFFFF69E1FBFF7F2B28FFBD4B4CFFF7F7
          F7FFF6FBFBFFF6FBFBFFF6FCFCFFF7F7F7FFBD4B4CFF7F2B28FFA7756BFFFFFF
          FCFF056695FFA3F7FCFF9EEAFBFFBFEFFCFFC9F2FBFF7F2B28FFBD4B4CFFF7F7
          F7FFBFBFBFFFBFBFBFFFBFBFBFFFF7F7F7FFBD4B4CFF7F2B28FFBC8268FFFFFF
          FFFF056695FF62BDD7FF1B97C2FF1184B4FF2D96BDFF7F2B28FFBD4B4CFFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFBD4B4CFF7F2B28FFBC8268FFFFFF
          FFFF056695FF3BC2DAFF1ACAF3FF2DD5FEFF6ADCF3FF1893C4FF7F2B28FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF7F2B28FF9D3A3AFFD1926DFFFFFF
          FFFF056695FF64F4FEFF16CEFEFF27CEFFFF6EE0FBFF1FA5D5FF056695FFC1AD
          93FFE6CBA7FFEBCFA4FF80504BFFFFFFFF00FFFFFF00FFFFFF00D1926DFFFFFF
          FFFF056695FF81FCFFFF52FAFFFF67FFFFFF95FCFFFF36C4EFFF056695FFCFC1
          AAFFD4C4ABFFB6AA93FF80504BFFFFFFFF00FFFFFF00FFFFFF00DA9D75FFFFFF
          FFFF056695FFC2EBF4FFFEFFFFFFCEFFFFFFBDFFFFFF88F8FBFF056695FF935E
          54FF9F665AFFA0675BFFA0675BFFFFFFFF00FFFFFF00FFFFFF00DA9D75FFFFFF
          FFFFFFFFFFFF056695FF056695FF056695FF056695FF056695FFD0B8B1FF9F66
          5AFFE19E55FFE68F31FFB56D4DFFFFFFFF00FFFFFF00FFFFFF00E7AB79FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC7C5FFA067
          5BFFF8B55CFFBF7A5CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00E7AB79FFFBF4
          F0FFFBF4EFFFFAF3EFFFFAF3EFFFF8F2EFFFF7F2EFFFF7F2EFFFD8C2C0FFA067
          5BFFC1836CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7AB79FFCF8E
          68FFCF8E68FFCF8E68FFCF8E68FFCF8E68FFCF8E68FFCF8E68FFCF8E68FFA067
          5BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Caption = 'Quitar Parcela'
        TabOrder = 17
        OnClick = UniBitBtn1Click
      end
      object UniLabel3: TUniLabel
        Left = 161
        Top = 16
        Width = 35
        Height = 13
        Caption = 'Parcela'
        TabOrder = 3
      end
      object UniDBNumberEdit1: TUniDBNumberEdit
        Left = 161
        Top = 35
        Width = 47
        Height = 22
        DataField = 'NUM_PARCELA'
        DataSource = DsParcelas
        TabOrder = 8
        Color = clWindow
        ReadOnly = True
      end
    end
    object ToolBarModeloCadastro: TUniToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 51
      Height = 260
      ButtonHeight = 45
      ButtonWidth = 108
      Images = Dm.ImageListCadastro
      BorderWidth = 0
      ShowCaptions = True
      Anchors = [akLeft, akTop, akBottom]
      Align = alLeft
      TabOrder = 2
      ExplicitLeft = 1
      ExplicitTop = 6
      object Novo: TUniToolButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Hint = 'Cadastrar um registro novo.'
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 0
        Caption = 'Novo Registro'
      end
      object Editar: TUniToolButton
        AlignWithMargins = True
        Left = 117
        Top = 3
        Hint = 'Alterar o registro selecionado.'
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 1
        Caption = 'Editar / Alterar'
      end
      object UniToolButton8: TUniToolButton
        AlignWithMargins = True
        Left = 231
        Top = 3
        Width = 20
        Style = tbsSeparator
        Caption = 'UniToolButton8'
      end
      object UniToolButton7: TUniToolButton
        AlignWithMargins = True
        Left = 257
        Top = 3
        Width = 20
        Style = tbsSeparator
        Caption = 'UniToolButton7'
      end
      object Excluir: TUniToolButton
        AlignWithMargins = True
        Left = 283
        Top = 3
        Hint = 'Excluir registro no banco de dados.'
        Visible = False
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 3
        Caption = 'Excluir'
      end
      object Fechar: TUniToolButton
        AlignWithMargins = True
        Left = 397
        Top = 3
        Hint = 'Fechar tela.'
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 4
        Caption = 'Fechar'
      end
    end
  end
  object DsParcelas: TDataSource
    Tag = 1
    DataSet = CdsParcelas
    Left = 768
    Top = 96
  end
  object CdsParcelas: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    ProviderName = 'DspParcelas'
    Left = 740
    Top = 96
    object CdsParcelasIDCTASRP: TIntegerField
      FieldName = 'IDCTASRP'
      Required = True
    end
    object CdsParcelasIDCLIFORNE: TIntegerField
      FieldName = 'IDCLIFORNE'
      Required = True
    end
    object CdsParcelasIDCXBCO: TIntegerField
      FieldName = 'IDCXBCO'
    end
    object CdsParcelasIDMOVFINAN: TIntegerField
      FieldName = 'IDMOVFINAN'
      Required = True
    end
    object CdsParcelasTIPOMOVFINAN: TStringField
      FieldName = 'TIPOMOVFINAN'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CdsParcelasIDMOVFINAN2: TIntegerField
      FieldName = 'IDMOVFINAN2'
    end
    object CdsParcelasLOCALCOB: TIntegerField
      FieldName = 'LOCALCOB'
    end
    object CdsParcelasDATAEMISSAO: TSQLTimeStampField
      FieldName = 'DATAEMISSAO'
    end
    object CdsParcelasNUMDOC_EMPRESA: TStringField
      FieldName = 'NUMDOC_EMPRESA'
      FixedChar = True
      Size = 10
    end
    object CdsParcelasNUMDOC_CLIFORNE: TStringField
      FieldName = 'NUMDOC_CLIFORNE'
      FixedChar = True
      Size = 10
    end
    object CdsParcelasDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
      Required = True
    end
    object CdsParcelasDATAPRORROGACAO: TSQLTimeStampField
      FieldName = 'DATAPRORROGACAO'
    end
    object CdsParcelasDATAPGTORECB: TSQLTimeStampField
      FieldName = 'DATAPGTORECB'
    end
    object CdsParcelasVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
      Required = True
      currency = True
    end
    object CdsParcelasVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
      currency = True
    end
    object CdsParcelasNUM_PARCELA: TIntegerField
      FieldName = 'NUM_PARCELA'
      Required = True
    end
    object CdsParcelasTOT_PARCELA: TIntegerField
      FieldName = 'TOT_PARCELA'
      Required = True
    end
    object CdsParcelasVALOR_PAGO_RECEBIDO: TFloatField
      FieldName = 'VALOR_PAGO_RECEBIDO'
      Required = True
    end
    object CdsParcelasIDMOEDAS: TIntegerField
      FieldName = 'IDMOEDAS'
    end
    object CdsParcelasTAXA_ACRESCIMO: TFloatField
      FieldName = 'TAXA_ACRESCIMO'
      Required = True
    end
    object CdsParcelasMULTA_ATRASO: TFloatField
      FieldName = 'MULTA_ATRASO'
      Required = True
    end
    object CdsParcelasTAXA_JURO_MES: TFloatField
      FieldName = 'TAXA_JURO_MES'
      Required = True
    end
    object CdsParcelasVALOR_JUROS_PAGOS: TFloatField
      FieldName = 'VALOR_JUROS_PAGOS'
      Required = True
      currency = True
    end
    object CdsParcelasVALOR_JUROS_RECEBIDOS: TFloatField
      FieldName = 'VALOR_JUROS_RECEBIDOS'
      currency = True
    end
    object CdsParcelasVALOR_DESCONTO_CONCEDIDO: TFloatField
      FieldName = 'VALOR_DESCONTO_CONCEDIDO'
      currency = True
    end
    object CdsParcelasVALOR_DESCONTO_OBTIDO: TFloatField
      FieldName = 'VALOR_DESCONTO_OBTIDO'
      currency = True
    end
    object CdsParcelasST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
    object CdsParcelasHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object CdsParcelasSEQUENCIA_QUITA_PARCIAL: TIntegerField
      FieldName = 'SEQUENCIA_QUITA_PARCIAL'
    end
    object CdsParcelasIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
    object CdsParcelasIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object CdsParcelasIDCCUSTO: TIntegerField
      FieldName = 'IDCCUSTO'
    end
    object CdsParcelasTPC: TStringField
      FieldName = 'TPC'
      FixedChar = True
      Size = 1
    end
    object CdsParcelasPRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
    object CdsParcelasNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 12
    end
    object CdsParcelasDESCONTADA_RESGATADA: TStringField
      FieldName = 'DESCONTADA_RESGATADA'
      Size = 1
    end
    object CdsParcelasIDMOVESTOQUE: TIntegerField
      FieldName = 'IDMOVESTOQUE'
    end
    object CdsParcelasAUTORIZADO_POR: TIntegerField
      FieldName = 'AUTORIZADO_POR'
    end
    object CdsParcelasDATA_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZACAO'
    end
    object CdsParcelasIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
    end
    object CdsParcelasIDGERENTE: TIntegerField
      FieldName = 'IDGERENTE'
    end
    object CdsParcelasIDPROMOTOR: TIntegerField
      FieldName = 'IDPROMOTOR'
    end
    object CdsParcelasIDSUPERVISOR: TIntegerField
      FieldName = 'IDSUPERVISOR'
    end
    object CdsParcelasSACADOR_AVALISTA: TIntegerField
      FieldName = 'SACADOR_AVALISTA'
    end
    object CdsParcelasIDDIRETOR: TIntegerField
      FieldName = 'IDDIRETOR'
    end
    object CdsParcelasIDMOVPATRIM: TIntegerField
      FieldName = 'IDMOVPATRIM'
    end
    object CdsParcelasREMESSA_ENVIADA_BANCO: TStringField
      FieldName = 'REMESSA_ENVIADA_BANCO'
      FixedChar = True
      Size = 1
    end
    object CdsParcelasEXECUTA_TRIGGER: TStringField
      FieldName = 'EXECUTA_TRIGGER'
      Size = 1
    end
    object CdsParcelasPK_DEFINITIVA: TStringField
      FieldName = 'PK_DEFINITIVA'
      Size = 1
    end
    object CdsParcelasCHEQUES_RECEBIDOS: TStringField
      FieldName = 'CHEQUES_RECEBIDOS'
      Size = 1
    end
    object CdsParcelasVALOR_ADIANTAMENTO: TFloatField
      FieldName = 'VALOR_ADIANTAMENTO'
    end
    object CdsParcelasNR_REMESSA_BANCO: TIntegerField
      FieldName = 'NR_REMESSA_BANCO'
    end
    object CdsParcelasIDCLIFORNE_UTILIZACAO: TIntegerField
      FieldName = 'IDCLIFORNE_UTILIZACAO'
    end
    object CdsParcelasLANC_FRENTE_LOJA: TStringField
      FieldName = 'LANC_FRENTE_LOJA'
      FixedChar = True
      Size = 1
    end
    object CdsParcelasIDCONTA_DESC_DUPL: TIntegerField
      FieldName = 'IDCONTA_DESC_DUPL'
    end
    object CdsParcelasVALOR_TITULO: TFloatField
      FieldName = 'VALOR_TITULO'
    end
    object CdsParcelasLOCALCOB_ENT: TIntegerField
      FieldName = 'LOCALCOB_ENT'
    end
    object CdsParcelasVENDA_ENTREGUE: TStringField
      FieldName = 'VENDA_ENTREGUE'
      Size = 1
    end
    object CdsParcelasDESC_FINAN_BOLETO: TFloatField
      FieldName = 'DESC_FINAN_BOLETO'
    end
    object CdsParcelasDATA_GERACAO_REMESSA: TSQLTimeStampField
      FieldName = 'DATA_GERACAO_REMESSA'
    end
    object CdsParcelasRETORNO_OCORRENCIA: TStringField
      FieldName = 'RETORNO_OCORRENCIA'
      Size = 50
    end
    object CdsParcelasRETORNO_MOTIVO: TStringField
      FieldName = 'RETORNO_MOTIVO'
      Size = 50
    end
    object CdsParcelasIDPRODUTOCODBARRAS: TIntegerField
      FieldName = 'IDPRODUTOCODBARRAS'
    end
    object CdsParcelasCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Size = 50
    end
    object CdsParcelasSTATUS: TStringField
      DisplayWidth = 80
      FieldKind = fkInternalCalc
      FieldName = 'STATUS'
      OnGetText = CdsParcelasSTATUSGetText
      Size = 80
    end
    object CdsParcelasNOME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME'
      OnGetText = CdsParcelasNOMEGetText
      Size = 100
    end
  end
  object DspParcelas: TDataSetProvider
    DataSet = SqlParcelas
    UpdateMode = upWhereKeyOnly
    Left = 712
    Top = 96
  end
  object SqlParcelas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM "CTASRECPAG"')
    SQLConnection = Dm.Conexao
    Left = 684
    Top = 96
    object SqlParcelasIDCTASRP: TIntegerField
      FieldName = 'IDCTASRP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlParcelasIDCLIFORNE: TIntegerField
      FieldName = 'IDCLIFORNE'
      Required = True
    end
    object SqlParcelasIDCXBCO: TIntegerField
      FieldName = 'IDCXBCO'
    end
    object SqlParcelasIDMOVFINAN: TIntegerField
      FieldName = 'IDMOVFINAN'
      Required = True
    end
    object SqlParcelasTIPOMOVFINAN: TStringField
      FieldName = 'TIPOMOVFINAN'
      Required = True
      FixedChar = True
      Size = 2
    end
    object SqlParcelasIDMOVFINAN2: TIntegerField
      FieldName = 'IDMOVFINAN2'
    end
    object SqlParcelasLOCALCOB: TIntegerField
      FieldName = 'LOCALCOB'
    end
    object SqlParcelasDATAEMISSAO: TSQLTimeStampField
      FieldName = 'DATAEMISSAO'
    end
    object SqlParcelasNUMDOC_EMPRESA: TStringField
      FieldName = 'NUMDOC_EMPRESA'
      FixedChar = True
      Size = 10
    end
    object SqlParcelasNUMDOC_CLIFORNE: TStringField
      FieldName = 'NUMDOC_CLIFORNE'
      FixedChar = True
      Size = 10
    end
    object SqlParcelasDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
      Required = True
    end
    object SqlParcelasDATAPRORROGACAO: TSQLTimeStampField
      FieldName = 'DATAPRORROGACAO'
    end
    object SqlParcelasDATAPGTORECB: TSQLTimeStampField
      FieldName = 'DATAPGTORECB'
    end
    object SqlParcelasVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
      Required = True
    end
    object SqlParcelasVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object SqlParcelasNUM_PARCELA: TIntegerField
      FieldName = 'NUM_PARCELA'
      Required = True
    end
    object SqlParcelasTOT_PARCELA: TIntegerField
      FieldName = 'TOT_PARCELA'
      Required = True
    end
    object SqlParcelasVALOR_PAGO_RECEBIDO: TFloatField
      FieldName = 'VALOR_PAGO_RECEBIDO'
      Required = True
    end
    object SqlParcelasIDMOEDAS: TIntegerField
      FieldName = 'IDMOEDAS'
    end
    object SqlParcelasTAXA_ACRESCIMO: TFloatField
      FieldName = 'TAXA_ACRESCIMO'
      Required = True
    end
    object SqlParcelasMULTA_ATRASO: TFloatField
      FieldName = 'MULTA_ATRASO'
      Required = True
    end
    object SqlParcelasTAXA_JURO_MES: TFloatField
      FieldName = 'TAXA_JURO_MES'
      Required = True
    end
    object SqlParcelasVALOR_JUROS_PAGOS: TFloatField
      FieldName = 'VALOR_JUROS_PAGOS'
      Required = True
    end
    object SqlParcelasVALOR_JUROS_RECEBIDOS: TFloatField
      FieldName = 'VALOR_JUROS_RECEBIDOS'
    end
    object SqlParcelasVALOR_DESCONTO_CONCEDIDO: TFloatField
      FieldName = 'VALOR_DESCONTO_CONCEDIDO'
    end
    object SqlParcelasVALOR_DESCONTO_OBTIDO: TFloatField
      FieldName = 'VALOR_DESCONTO_OBTIDO'
    end
    object SqlParcelasST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
    object SqlParcelasHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object SqlParcelasSEQUENCIA_QUITA_PARCIAL: TIntegerField
      FieldName = 'SEQUENCIA_QUITA_PARCIAL'
    end
    object SqlParcelasIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
    object SqlParcelasIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object SqlParcelasIDCCUSTO: TIntegerField
      FieldName = 'IDCCUSTO'
    end
    object SqlParcelasTPC: TStringField
      FieldName = 'TPC'
      FixedChar = True
      Size = 1
    end
    object SqlParcelasPRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
    object SqlParcelasNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 12
    end
    object SqlParcelasDESCONTADA_RESGATADA: TStringField
      FieldName = 'DESCONTADA_RESGATADA'
      Size = 1
    end
    object SqlParcelasIDMOVESTOQUE: TIntegerField
      FieldName = 'IDMOVESTOQUE'
    end
    object SqlParcelasAUTORIZADO_POR: TIntegerField
      FieldName = 'AUTORIZADO_POR'
    end
    object SqlParcelasDATA_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZACAO'
    end
    object SqlParcelasIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
    end
    object SqlParcelasIDGERENTE: TIntegerField
      FieldName = 'IDGERENTE'
    end
    object SqlParcelasIDPROMOTOR: TIntegerField
      FieldName = 'IDPROMOTOR'
    end
    object SqlParcelasIDSUPERVISOR: TIntegerField
      FieldName = 'IDSUPERVISOR'
    end
    object SqlParcelasSACADOR_AVALISTA: TIntegerField
      FieldName = 'SACADOR_AVALISTA'
    end
    object SqlParcelasIDDIRETOR: TIntegerField
      FieldName = 'IDDIRETOR'
    end
    object SqlParcelasIDMOVPATRIM: TIntegerField
      FieldName = 'IDMOVPATRIM'
    end
    object SqlParcelasREMESSA_ENVIADA_BANCO: TStringField
      FieldName = 'REMESSA_ENVIADA_BANCO'
      FixedChar = True
      Size = 1
    end
    object SqlParcelasEXECUTA_TRIGGER: TStringField
      FieldName = 'EXECUTA_TRIGGER'
      Size = 1
    end
    object SqlParcelasPK_DEFINITIVA: TStringField
      FieldName = 'PK_DEFINITIVA'
      Size = 1
    end
    object SqlParcelasCHEQUES_RECEBIDOS: TStringField
      FieldName = 'CHEQUES_RECEBIDOS'
      Size = 1
    end
    object SqlParcelasVALOR_ADIANTAMENTO: TFloatField
      FieldName = 'VALOR_ADIANTAMENTO'
    end
    object SqlParcelasNR_REMESSA_BANCO: TIntegerField
      FieldName = 'NR_REMESSA_BANCO'
    end
    object SqlParcelasIDCLIFORNE_UTILIZACAO: TIntegerField
      FieldName = 'IDCLIFORNE_UTILIZACAO'
    end
    object SqlParcelasLANC_FRENTE_LOJA: TStringField
      FieldName = 'LANC_FRENTE_LOJA'
      FixedChar = True
      Size = 1
    end
    object SqlParcelasIDCONTA_DESC_DUPL: TIntegerField
      FieldName = 'IDCONTA_DESC_DUPL'
    end
    object SqlParcelasVALOR_TITULO: TFloatField
      FieldName = 'VALOR_TITULO'
    end
    object SqlParcelasLOCALCOB_ENT: TIntegerField
      FieldName = 'LOCALCOB_ENT'
    end
    object SqlParcelasVENDA_ENTREGUE: TStringField
      FieldName = 'VENDA_ENTREGUE'
      Size = 1
    end
    object SqlParcelasDESC_FINAN_BOLETO: TFloatField
      FieldName = 'DESC_FINAN_BOLETO'
    end
    object SqlParcelasDATA_GERACAO_REMESSA: TSQLTimeStampField
      FieldName = 'DATA_GERACAO_REMESSA'
    end
    object SqlParcelasRETORNO_OCORRENCIA: TStringField
      FieldName = 'RETORNO_OCORRENCIA'
      Size = 50
    end
    object SqlParcelasRETORNO_MOTIVO: TStringField
      FieldName = 'RETORNO_MOTIVO'
      Size = 50
    end
    object SqlParcelasIDPRODUTOCODBARRAS: TIntegerField
      FieldName = 'IDPRODUTOCODBARRAS'
    end
    object SqlParcelasCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Size = 50
    end
  end
  object UniScreenMaskQuitaCR: TUniScreenMask
    AttachedControl = UniCheckBoxTodos
    Enabled = True
    DisplayMessage = 'Preparando registros de quita'#231#227'o de cr'#233'bito, aguarde...'
    TargetControl = Owner
    Left = 56
    Top = 48
  end
end
