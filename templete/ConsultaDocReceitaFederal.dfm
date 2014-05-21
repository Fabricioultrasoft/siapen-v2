object FrmConsultaDocReceitaFederal: TFrmConsultaDocReceitaFederal
  Left = 0
  Top = 0
  ClientHeight = 443
  ClientWidth = 632
  Caption = 'Consultar Documentos na Receita Federal'
  OnShow = UniFormShow
  Color = clBtnFace
  OldCreateOrder = False
  OnActivate = UniFormActivate
  FreeOnClose = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTituloModeloCadastro: TUniPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 41
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object UniImage1: TUniImage
      Left = 78
      Top = 1
      Width = 554
      Height = 39
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
      Top = 7
      Width = 759
      Height = 23
      AutoSize = False
      Caption = 'Consultar Documentos na Receita Federal'
      ParentFont = False
      Font.Height = -21
      Font.Name = 'Times New Roman'
      TabOrder = 3
    end
    object UniImageLogoMarca: TUniImage
      Left = 1
      Top = 1
      Width = 78
      Height = 39
      Center = True
      Stretch = True
      Proportional = True
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      Transparent = True
    end
  end
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 41
    Width = 632
    Height = 402
    OnChange = UniPageControl1Change
    ActivePage = UniTabSheetCNPJ
    TabOrder = 1
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UniTabSheetCNPJ: TUniTabSheet
      Caption = 'Consulta CNPJ'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object UniPanel1: TUniPanel
        Left = 3
        Top = 3
        Width = 619
        Height = 140
        TabOrder = 0
        object UniEditCNPJ: TUniEdit
          Left = 360
          Top = 24
          Width = 240
          Height = 33
          ParentFont = False
          Font.Height = -19
          TabOrder = 2
          Color = clWindow
        end
        object UniLabel1: TUniLabel
          Left = 360
          Top = 8
          Width = 68
          Height = 13
          Caption = 'Digite o CNPJ:'
          TabOrder = 1
        end
        object UniLabel2: TUniLabel
          Left = 360
          Top = 64
          Width = 90
          Height = 13
          Caption = 'Digite o CAPTCHA:'
          TabOrder = 3
        end
        object UniEditCNPJCaptcha: TUniEdit
          Left = 360
          Top = 80
          Width = 137
          Height = 33
          ParentFont = False
          Font.Height = -16
          TabOrder = 4
          Color = clWindow
        end
        object UniBtnConsultarCNPJ: TUniBitBtn
          Left = 503
          Top = 80
          Width = 97
          Height = 34
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
          Caption = 'Consultar'
          TabOrder = 5
          OnClick = UniBtnConsultarCNPJClick
        end
        object UniLabelAtualizaCaptcha: TUniLabel
          Left = 1
          Top = 82
          Width = 353
          Height = 25
          Alignment = taCenter
          TextConversion = txtHTML
          AutoSize = False
          Caption = 'Atualizar Captcha'
          ParentFont = False
          Font.Color = clHotLight
          Font.Height = -16
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          Color = clYellow
          Transparent = False
          TabOrder = 7
          OnClick = UniLabelAtualizaCaptchaClick
        end
        object UniImageCNPJCaptcha: TUniImage
          Left = 3
          Top = 9
          Width = 351
          Height = 67
          Center = True
          Stretch = True
          Proportional = True
        end
        object ckRemoverEspacosDuplos: TUniCheckBox
          Left = 3
          Top = 113
          Width = 338
          Height = 17
          Checked = False
          Caption = 'Remover espa'#231'os duplos dos dados retornados'
          TabOrder = 8
        end
      end
      object UniPanel2: TUniPanel
        Left = 3
        Top = 145
        Width = 619
        Height = 192
        TabOrder = 1
        object UniEditTipoEmpresa: TUniEdit
          Left = 8
          Top = 23
          Width = 83
          TabOrder = 6
          Color = clWindow
        end
        object UniLabel4: TUniLabel
          Left = 8
          Top = 4
          Width = 79
          Height = 13
          Caption = 'Tipo de Empresa'
          TabOrder = 1
        end
        object UniEditRazaoSocial: TUniEdit
          Left = 97
          Top = 20
          Width = 400
          TabOrder = 4
          Color = clWindow
        end
        object UniLabel5: TUniLabel
          Left = 97
          Top = 4
          Width = 60
          Height = 13
          Caption = 'Raz'#227'o Social'
          TabOrder = 2
        end
        object UniLabel6: TUniLabel
          Left = 503
          Top = 4
          Width = 43
          Height = 13
          Caption = 'Abertura'
          TabOrder = 3
        end
        object UniEditAbertura: TUniEdit
          Left = 503
          Top = 20
          Width = 113
          TabOrder = 5
          Color = clWindow
        end
        object UniLabel7: TUniLabel
          Left = 3
          Top = 48
          Width = 41
          Height = 13
          Caption = 'Fantasia'
          TabOrder = 7
        end
        object UniEditFantasia: TUniEdit
          Left = 8
          Top = 68
          Width = 169
          TabOrder = 10
          Color = clWindow
        end
        object UniEditEndereco: TUniEdit
          Left = 183
          Top = 68
          Width = 314
          TabOrder = 11
          Color = clWindow
        end
        object UniLabel8: TUniLabel
          Left = 183
          Top = 48
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          TabOrder = 8
        end
        object UniLabel9: TUniLabel
          Left = 508
          Top = 52
          Width = 37
          Height = 13
          Caption = 'Numero'
          TabOrder = 9
        end
        object UniEditNumero: TUniEdit
          Left = 503
          Top = 68
          Width = 113
          TabOrder = 12
          Color = clWindow
        end
        object UniLabel10: TUniLabel
          Left = 8
          Top = 96
          Width = 65
          Height = 13
          Caption = 'Complemento'
          TabOrder = 13
        end
        object UniEditComplemento: TUniEdit
          Left = 8
          Top = 116
          Width = 314
          TabOrder = 15
          Color = clWindow
        end
        object UniEditBairro: TUniEdit
          Left = 328
          Top = 116
          Width = 288
          TabOrder = 16
          Color = clWindow
        end
        object UniLabel11: TUniLabel
          Left = 328
          Top = 96
          Width = 28
          Height = 13
          Caption = 'Bairro'
          TabOrder = 14
        end
        object UniLabel12: TUniLabel
          Left = 8
          Top = 144
          Width = 33
          Height = 13
          Caption = 'Cidade'
          TabOrder = 17
        end
        object UniEditCidade: TUniEdit
          Left = 8
          Top = 164
          Width = 257
          TabOrder = 22
          Color = clWindow
        end
        object UniEditUF: TUniEdit
          Left = 271
          Top = 164
          Width = 51
          TabOrder = 23
          Color = clWindow
        end
        object UniLabel13: TUniLabel
          Left = 271
          Top = 144
          Width = 13
          Height = 13
          Caption = 'UF'
          TabOrder = 18
        end
        object UniLabel14: TUniLabel
          Left = 328
          Top = 144
          Width = 19
          Height = 13
          Caption = 'CEP'
          TabOrder = 19
        end
        object UniEditCEP: TUniEdit
          Left = 328
          Top = 164
          Width = 129
          TabOrder = 24
          Color = clWindow
        end
        object UniLabel15: TUniLabel
          Left = 464
          Top = 144
          Width = 41
          Height = 13
          Caption = 'Situa'#231#227'o'
          TabOrder = 20
        end
        object UniEditSituacao: TUniEdit
          Left = 464
          Top = 163
          Width = 152
          TabOrder = 21
          Color = clWindow
        end
      end
      object UniBitBtnConfirmaCNPJ: TUniBitBtn
        Left = 221
        Top = 343
        Width = 148
        Height = 25
        Caption = 'Confirma CNPJ'
        TabOrder = 2
        OnClick = UniBitBtnConfirmaCNPJClick
      end
    end
    object UniTabSheetCPF: TUniTabSheet
      Caption = 'Consulta CPF'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object UniPanel3: TUniPanel
        Left = 2
        Top = 3
        Width = 619
        Height = 125
        TabOrder = 0
        object UniEditCPF: TUniEdit
          Left = 360
          Top = 24
          Width = 240
          Height = 33
          ParentFont = False
          Font.Height = -19
          TabOrder = 2
          Color = clWindow
        end
        object UniLabel3: TUniLabel
          Left = 360
          Top = 8
          Width = 62
          Height = 13
          Caption = 'Digite o CPF:'
          TabOrder = 1
        end
        object UniLabel16: TUniLabel
          Left = 360
          Top = 64
          Width = 90
          Height = 13
          Caption = 'Digite o CAPTCHA:'
          TabOrder = 3
        end
        object UniEditCPFCaptcha: TUniEdit
          Left = 360
          Top = 80
          Width = 137
          Height = 33
          ParentFont = False
          Font.Height = -16
          TabOrder = 4
          Color = clWindow
        end
        object UniBitBtnConsultaCPF: TUniBitBtn
          Left = 503
          Top = 80
          Width = 97
          Height = 34
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
          Caption = 'Consultar'
          TabOrder = 5
          OnClick = UniBitBtnConsultaCPFClick
        end
        object UniLabelAtualizaCPFCaptcha: TUniLabel
          Left = 1
          Top = 82
          Width = 353
          Height = 25
          Alignment = taCenter
          TextConversion = txtHTML
          AutoSize = False
          Caption = 'Atualizar Captcha'
          ParentFont = False
          Font.Color = clHotLight
          Font.Height = -16
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          Color = clYellow
          Transparent = False
          TabOrder = 7
          OnClick = UniLabelAtualizaCPFCaptchaClick
        end
        object UniImageCPFCaptcha: TUniImage
          Left = 3
          Top = 9
          Width = 351
          Height = 67
          Center = True
          Stretch = True
          Proportional = True
        end
      end
      object UniPanel4: TUniPanel
        Left = 3
        Top = 145
        Width = 619
        Height = 157
        TabOrder = 1
        object UniEditCPFNomePessoaFisica: TUniEdit
          Left = 6
          Top = 23
          Width = 400
          TabOrder = 3
          Color = clWindow
        end
        object UniLabel19: TUniLabel
          Left = 9
          Top = 7
          Width = 108
          Height = 13
          Caption = 'Nome da Pessoa F'#237'sica'
          TabOrder = 2
        end
        object UniLabel21: TUniLabel
          Left = 8
          Top = 52
          Width = 81
          Height = 13
          Caption = 'Digito Verificador'
          TabOrder = 5
        end
        object UniEditDigitoVerificador: TUniEdit
          Left = 8
          Top = 68
          Width = 169
          TabOrder = 7
          Color = clWindow
        end
        object UniEditComprovante: TUniEdit
          Left = 183
          Top = 68
          Width = 433
          TabOrder = 8
          Color = clWindow
        end
        object UniLabel22: TUniLabel
          Left = 183
          Top = 52
          Width = 120
          Height = 13
          Caption = 'Comprovante emitido '#224's:'
          TabOrder = 6
        end
        object UniLabel24: TUniLabel
          Left = 8
          Top = 96
          Width = 175
          Height = 13
          Caption = 'C'#243'digo de controle do comprovante:'
          TabOrder = 9
        end
        object UniEditControleComprovante: TUniEdit
          Left = 8
          Top = 116
          Width = 608
          TabOrder = 10
          Color = clWindow
        end
        object UniLabel29: TUniLabel
          Left = 412
          Top = 4
          Width = 90
          Height = 13
          Caption = 'Situa'#231#227'o Cadastral'
          TabOrder = 1
        end
        object UniEditCPFSituacaoCadastral: TUniEdit
          Left = 412
          Top = 23
          Width = 204
          TabOrder = 4
          Color = clWindow
        end
      end
    end
  end
  object ACBrConsultaCNPJ1: TACBrConsultaCNPJ
    ProxyPort = '8080'
    Left = 26
    Top = 73
  end
  object UniTimer1: TUniTimer
    OnTimer = UniTimer1Timer
    Enabled = False
    RunOnce = True
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      '   '
      '}')
    Left = 384
    Top = 152
  end
  object ACBrConsultaCPF1: TACBrConsultaCPF
    ProxyPort = '8080'
    Left = 110
    Top = 74
  end
end
