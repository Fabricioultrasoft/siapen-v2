inherited FrmInterno: TFrmInterno
  ClientHeight = 607
  ClientWidth = 892
  Caption = 'Cadastro do Interno'
  WindowState = wsMaximized
  ExplicitWidth = 908
  ExplicitHeight = 646
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelTituloModeloCadastro: TUniPanel
    Width = 892
    ExplicitWidth = 892
    inherited UniImage1: TUniImage
      Width = 890
      ExplicitWidth = 890
    end
  end
  inherited PanelBotoes: TUniPanel
    Width = 105
    Height = 540
    ExplicitWidth = 105
    ExplicitHeight = 540
    inherited Editar: TUniBitBtn
      Top = 51
      ScreenMask.Enabled = True
      ScreenMask.Message = 'Preparando edi'#231#227'o...'
      ExplicitTop = 51
    end
    inherited Novo: TUniBitBtn
      Enabled = False
      OnClick = nil
    end
    object UniDBImage1: TUniDBImage
      Left = 1
      Top = 383
      Width = 103
      Height = 157
      DataField = 'FOTO'
      DataSource = DsConsulta
      Stretch = True
      Proportional = True
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
    end
  end
  inherited PanelModeloCadastro: TUniPanel
    Left = 105
    Width = 787
    Height = 540
    ExplicitLeft = 96
    ExplicitWidth = 449
    ExplicitHeight = 588
    inherited PageControlModeloCadastro: TUniPageControl
      Width = 785
      Height = 538
      ActivePage = TabSheetCadastro
      ExplicitWidth = 785
      ExplicitHeight = 538
      inherited TabSheetCadastro: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1067
        ExplicitHeight = 503
        inherited PanelCadastro: TUniPanel
          Width = 777
          Height = 510
          ExplicitWidth = 777
          ExplicitHeight = 510
          object PageControlInterno: TUniPageControl
            Left = 1
            Top = 1
            Width = 775
            Height = 508
            ActivePage = TabSheetMapa
            TabOrder = 1
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            ExplicitWidth = 799
            ExplicitHeight = 523
            object TabSheetPrincipal: TUniTabSheet
              Caption = 'Principal'
              object Label2: TUniLabel
                Left = 149
                Top = 9
                Width = 11
                Height = 13
                Caption = 'ID'
                TabOrder = 0
              end
              object Label3: TUniLabel
                Left = 231
                Top = 9
                Width = 36
                Height = 13
                Caption = 'Interno'
                TabOrder = 7
              end
              object Label4: TUniLabel
                Left = 269
                Top = 55
                Width = 79
                Height = 13
                Caption = 'RGI (Prontu'#225'rio)'
                TabOrder = 14
              end
              object Label10: TUniLabel
                Left = 149
                Top = 136
                Width = 64
                Height = 13
                Caption = 'Data Entrada'
                TabOrder = 25
              end
              object Label12: TUniLabel
                Left = 8
                Top = 303
                Width = 58
                Height = 13
                Caption = 'Proced'#234'ncia'
                TabOrder = 26
              end
              object Label40: TUniLabel
                Left = 248
                Top = 136
                Width = 55
                Height = 13
                Caption = 'Data Pris'#227'o'
                TabOrder = 27
              end
              object Label45: TUniLabel
                Left = 8
                Top = 345
                Width = 98
                Height = 13
                Caption = 'Condi'#231#227'o do Interno'
                TabOrder = 28
              end
              object Label43: TUniLabel
                Left = 8
                Top = 262
                Width = 11
                Height = 13
                Caption = 'ID'
                TabOrder = 29
              end
              object Label46: TUniLabel
                Left = 66
                Top = 262
                Width = 68
                Height = 13
                Caption = 'Unidade Penal'
                TabOrder = 30
              end
              object Label27: TUniLabel
                Left = 149
                Top = 96
                Width = 58
                Height = 13
                Caption = 'Outro Nome'
                TabOrder = 31
              end
              object Label36: TUniLabel
                Left = 432
                Top = 96
                Width = 26
                Height = 13
                Caption = 'Vulgo'
                TabOrder = 32
              end
              object Label55: TUniLabel
                Left = 442
                Top = 136
                Width = 70
                Height = 13
                Caption = 'CI/OF Entrada'
                TabOrder = 33
              end
              object Label65: TUniLabel
                Left = 168
                Top = 180
                Width = 69
                Height = 13
                Caption = 'NOME SOCIAL'
                TabOrder = 34
              end
              object Label66: TUniLabel
                Left = 8
                Top = 221
                Width = 88
                Height = 13
                Caption = 'Orienta'#231#227'o Sexual'
                TabOrder = 35
              end
              object Label163: TUniLabel
                Left = 302
                Top = 342
                Width = 81
                Height = 13
                Caption = 'Cargo na Fac'#231#227'o'
                TabOrder = 36
              end
              object lbl1: TUniLabel
                Left = 149
                Top = 57
                Width = 53
                Height = 13
                Caption = 'N'#186' Infopen'
                TabOrder = 37
              end
              object Label38: TUniLabel
                Left = 8
                Top = 179
                Width = 65
                Height = 13
                Caption = 'Regime Inicial'
                TabOrder = 38
              end
              object Label49: TUniLabel
                Left = 346
                Top = 136
                Width = 87
                Height = 13
                Caption = 'Data Perman'#234'ncia'
                TabOrder = 39
              end
              object Label62: TUniLabel
                Left = 365
                Top = 261
                Width = 61
                Height = 13
                Caption = 'N'#186' da Roupa'
                TabOrder = 40
              end
              object Label78: TUniLabel
                Left = 8
                Top = 427
                Width = 32
                Height = 13
                Caption = 'Ano(s)'
                TabOrder = 41
              end
              object Label79: TUniLabel
                Left = 74
                Top = 427
                Width = 38
                Height = 13
                Caption = 'M'#234's(es)'
                TabOrder = 42
              end
              object Label80: TUniLabel
                Left = 141
                Top = 427
                Width = 28
                Height = 13
                Caption = 'Dia(s)'
                TabOrder = 43
              end
              object Label82: TUniLabel
                Left = 218
                Top = 427
                Width = 63
                Height = 13
                Caption = 'Regime Atual'
                TabOrder = 44
              end
              object Label83: TUniLabel
                Left = 490
                Top = 427
                Width = 109
                Height = 13
                Caption = 'Grau de Periculosidade'
                TabOrder = 45
              end
              object Label67: TUniLabel
                Left = 373
                Top = 57
                Width = 56
                Height = 13
                Caption = 'Tipo Justi'#231'a'
                TabOrder = 46
              end
              object Label18: TUniLabel
                Left = 302
                Top = 303
                Width = 34
                Height = 13
                Caption = 'Fac'#231#227'o'
                TabOrder = 47
              end
              object Label51: TUniLabel
                Left = 507
                Top = 57
                Width = 73
                Height = 13
                Caption = 'ID Monitora'#231#227'o'
                TabOrder = 48
              end
              object Label57: TUniLabel
                Left = 8
                Top = 386
                Width = 226
                Height = 13
                Caption = 'Origem do Mandado/Estado solicitante da vaga'
                TabOrder = 49
              end
              object Label58: TUniLabel
                Left = 302
                Top = 386
                Width = 89
                Height = 13
                Caption = 'Presidio de Origem'
                TabOrder = 50
              end
              object Label60: TUniLabel
                Left = 421
                Top = 220
                Width = 131
                Height = 13
                Caption = 'Comportamento do Interno'
                TabOrder = 51
              end
              object DBEditCodigo: TUniDBEdit
                Left = 149
                Top = 25
                Width = 76
                Height = 21
                Enabled = False
                DataField = 'ID_INTERNO'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object DBEdit2: TUniDBEdit
                Left = 232
                Top = 25
                Width = 370
                Height = 21
                DataField = 'NOME_INTERNO'
                DataSource = DsCadastro
                CharCase = ecUpperCase
                TabOrder = 2
                Color = clWindow
              end
              object DBEdit3: TUniDBEdit
                Left = 267
                Top = 72
                Width = 100
                Height = 21
                DataField = 'RGI'
                DataSource = DsCadastro
                TabOrder = 4
                Color = clWindow
              end
              object DBEdit7: TUniDBEdit
                Left = 8
                Top = 278
                Width = 52
                Height = 21
                Enabled = False
                DataField = 'ID_UP'
                DataSource = DsCadastro
                TabOrder = 16
                Color = clWindow
              end
              object DBLookupComboBox2: TUniDBLookupComboBox
                Left = 66
                Top = 278
                Width = 295
                Height = 21
                Enabled = False
                ListField = 'SIGLA'
                ListSource = Dm.DsUP
                KeyField = 'ID_UP'
                ListFieldIndex = 0
                DataField = 'ID_UP'
                DataSource = DsCadastro
                TabOrder = 17
              end
              object DBEdit24: TUniDBEdit
                Left = 149
                Top = 112
                Width = 276
                Height = 21
                DataField = 'OUTRO_NOME'
                DataSource = DsCadastro
                TabOrder = 8
                Color = clWindow
              end
              object DBEdit25: TUniDBEdit
                Left = 430
                Top = 112
                Width = 171
                Height = 21
                DataField = 'VULGO'
                DataSource = DsCadastro
                TabOrder = 9
                Color = clWindow
              end
              object DBEdit29: TUniDBEdit
                Left = 443
                Top = 152
                Width = 159
                Height = 21
                DataField = 'CI'
                DataSource = DsCadastro
                TabOrder = 10
                Color = clWindow
              end
              object DBEdit35: TUniDBEdit
                Left = 168
                Top = 196
                Width = 433
                Height = 21
                DataField = 'NOME_SOCIAL'
                DataSource = DsCadastro
                TabOrder = 12
                Color = clWindow
              end
              object DBComboBox3: TUniDBComboBox
                Left = 8
                Top = 237
                Width = 225
                Height = 21
                DataField = 'ORIENTACAO_SEXUAL'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  'HOMOSEXUAL'
                  'BISSEXUAL'
                  'HETEROSEXUAL')
                ItemIndex = -1
                TabOrder = 13
              end
              object DBEdit86: TUniDBEdit
                Left = 149
                Top = 72
                Width = 114
                Height = 21
                DataField = 'NUMERO_INFOPEN'
                DataSource = DsCadastro
                TabOrder = 3
                Color = clWindow
              end
              object DBComboBox2: TUniDBComboBox
                Left = 8
                Top = 195
                Width = 153
                Height = 21
                DataField = 'TIPOREGIME'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  'Aberto'
                  'Fechado'
                  'Semi-Aberto Sem Sa'#237'da'
                  'Semi-Aberto Com Trabalho Externo'
                  'Semi-Aberto Com Trabalho Concedido'
                  'Semi-Aberto Com Trabalho Concedido e Sa'#237'da'
                  'Semi-Aberto Com Trabalho e Sa'#237'da'
                  'Semi-Aberto Com Sa'#237'da')
                ItemIndex = -1
                TabOrder = 11
              end
              object DBEdit19: TUniDBEdit
                Left = 366
                Top = 278
                Width = 234
                Height = 21
                DataField = 'NUMERO_ROUPA'
                DataSource = DsCadastro
                TabOrder = 18
                Color = clWindow
              end
              object DBEdit28: TUniDBEdit
                Left = 8
                Top = 443
                Width = 65
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_ANO'
                DataSource = DsCadastro
                TabOrder = 20
                Color = clWindow
              end
              object DBEdit31: TUniDBEdit
                Left = 74
                Top = 443
                Width = 65
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_MES'
                DataSource = DsCadastro
                TabOrder = 21
                Color = clWindow
              end
              object DBEdit33: TUniDBEdit
                Left = 141
                Top = 443
                Width = 65
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_DIA'
                DataSource = DsCadastro
                TabOrder = 22
                Color = clWindow
              end
              object DBComboBox5: TUniDBComboBox
                Left = 216
                Top = 443
                Width = 265
                Height = 21
                DataField = 'REGIME_ATUAL'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  'Aberto'
                  'Fechado'
                  'Mandado de Pris'#227'o C'#237'vel'
                  'Medida de Seguran'#231'a'
                  'Medida de Tratamento'
                  'Provis'#243'rio'
                  'Semi-Aberto Sem Sa'#237'da'
                  'Semi-Aberto Com Trabalho Externo'
                  'Semi-Aberto Com Sa'#237'da'
                  'Semi-Aberto Com Trabalho Concedido'
                  'Semi-Aberto Com Trabalho Concedido e Sa'#237'da'
                  'Semi-Aberto Com Trabalho e Sa'#237'da'
                  'Tempor'#225'rio'
                  'N'#227'o Informado')
                ItemIndex = -1
                TabOrder = 23
              end
              object DBComboBoxpericulosidade: TUniDBComboBox
                Left = 490
                Top = 443
                Width = 111
                Height = 21
                DataField = 'GRAU_PERICULOSIDADE'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  'Nivel 1'
                  'Nivel 1-A'
                  'Nivel 2'
                  'Nivel 2-A'
                  'Nivel 3'
                  'Nivel 3-A'
                  'Nivel 4'
                  'Nivel 4-A'
                  'Nivel 5'
                  'Nivel 5-A')
                ItemIndex = -1
                TabOrder = 24
              end
              object DBEdit36: TUniDBEdit
                Left = 373
                Top = 72
                Width = 108
                Height = 21
                DataField = 'NUMERO_PROCED'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBEdit84: TUniDBEdit
                Left = 302
                Top = 361
                Width = 297
                Height = 21
                Hint = 'FACCAO'
                DataField = 'FACCAO'
                DataSource = DsCadastro
                TabOrder = 19
                Color = clWindow
              end
              object DBEdit8: TUniDBEdit
                Left = 507
                Top = 72
                Width = 94
                Height = 21
                DataField = 'ID_ME'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object DBComboBox6: TUniDBComboBox
                Left = 420
                Top = 237
                Width = 181
                Height = 21
                DataField = 'TIPOCONDUTA'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  'BOM'
                  'REGULAR'
                  'RUIM')
                ItemIndex = -1
                TabOrder = 15
              end
              object UniLabel8: TUniLabel
                Left = 239
                Top = 219
                Width = 24
                Height = 13
                Caption = 'Sexo'
                TabOrder = 52
              end
              object UniDBComboBoxSexo: TUniDBComboBox
                Left = 239
                Top = 237
                Width = 60
                DataField = 'SEXO'
                DataSource = DsCadastro
                Items.Strings = (
                  'M'
                  'F')
                ItemIndex = -1
                TabOrder = 53
              end
              object UniLabel1: TUniLabel
                Left = 305
                Top = 219
                Width = 104
                Height = 13
                Caption = 'Reincidente / Prim'#225'rio'
                TabOrder = 54
              end
              object UniDBComboBox1: TUniDBComboBox
                Left = 305
                Top = 237
                Width = 109
                DataField = 'REINCERSAO'
                DataSource = DsCadastro
                Items.Strings = (
                  'R'
                  'P')
                ItemIndex = -1
                TabOrder = 55
              end
              object UniDBCheckBoxStatus: TUniDBCheckBox
                Left = 607
                Top = 26
                Width = 97
                Height = 17
                Enabled = False
                DataField = 'ST'
                DataSource = DsCadastro
                ValueChecked = 'A'
                ValueUnchecked = 'I'
                Caption = 'Status: ATIVO'
                TabOrder = 56
              end
              object UniLabelProcedencia: TUniLabel
                Left = 96
                Top = 323
                Width = 197
                Height = 13
                AutoSize = False
                Caption = '(PROCEDENCIA)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 57
              end
              object UniBitBtnProcedencia: TUniBitBtn
                Left = 68
                Top = 319
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 58
                OnClick = UniBitBtnProcedenciaClick
              end
              object UniDBEditProcedencia: TUniDBEdit
                Left = 8
                Top = 319
                Width = 60
                Height = 22
                DataField = 'ID_PROCEDENCIA'
                DataSource = DsCadastro
                TabOrder = 59
                Color = clWindow
                OnExit = UniDBEditProcedenciaExit
              end
              object UniLabelFaccao: TUniLabel
                Left = 390
                Top = 323
                Width = 197
                Height = 13
                AutoSize = False
                Caption = '(FAC'#199#195'O)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 60
              end
              object UniBitBtnFaccao: TUniBitBtn
                Left = 363
                Top = 319
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 61
                OnClick = UniBitBtnFaccaoClick
              end
              object UniDBEditFaccao: TUniDBEdit
                Left = 302
                Top = 319
                Width = 60
                Height = 22
                DataField = 'ID_FACCAO'
                DataSource = DsCadastro
                TabOrder = 62
                Color = clWindow
                OnExit = UniDBEditFaccaoExit
              end
              object UniDBEditCondicao: TUniDBEdit
                Left = 8
                Top = 361
                Width = 60
                Height = 22
                DataField = 'IDCONDICAO_INTERNO'
                DataSource = DsCadastro
                TabOrder = 63
                Color = clWindow
                OnExit = UniDBEditCondicaoExit
              end
              object UniBitBtnCondicao: TUniBitBtn
                Left = 68
                Top = 361
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 64
                OnClick = UniBitBtnCondicaoClick
              end
              object UniLabelCondicao: TUniLabel
                Left = 97
                Top = 365
                Width = 197
                Height = 13
                AutoSize = False
                Caption = '(CONDI'#199#195'O)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 65
              end
              object UniDBEditOrigem: TUniDBEdit
                Left = 8
                Top = 401
                Width = 60
                Height = 22
                DataField = 'ID_SOLICITANTE_VAGA'
                DataSource = DsCadastro
                TabOrder = 66
                Color = clWindow
                OnExit = UniDBEditOrigemExit
              end
              object UniBitBtnOrigem: TUniBitBtn
                Left = 68
                Top = 401
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 67
                OnClick = UniBitBtnOrigemClick
              end
              object UniLabelOrigem: TUniLabel
                Left = 99
                Top = 405
                Width = 197
                Height = 13
                AutoSize = False
                Caption = '(ORIGEM)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 68
              end
              object UniDBEditPresidioOrigem: TUniDBEdit
                Left = 302
                Top = 401
                Width = 60
                Height = 22
                DataField = 'ID_PRESIDIO_ORIGEM'
                DataSource = DsCadastro
                TabOrder = 69
                Color = clWindow
                OnExit = UniDBEditPresidioOrigemExit
              end
              object UniBitBtnPresidioOrigem: TUniBitBtn
                Left = 363
                Top = 401
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 70
                OnClick = UniBitBtnPresidioOrigemClick
              end
              object UniLabelPresidioOrigem: TUniLabel
                Left = 389
                Top = 405
                Width = 197
                Height = 13
                AutoSize = False
                Caption = '(PRESIDIO DE ORIGEM)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 71
              end
              object UniPanel9: TUniPanel
                Left = 7
                Top = 11
                Width = 139
                Height = 167
                Caption = 'UniPanel1'
                TabOrder = 72
                object DBImageFOTOInterno: TUniDBImage
                  Left = 1
                  Top = 1
                  Width = 137
                  Height = 165
                  DataField = 'FOTO'
                  DataSource = DsCadastro
                  Stretch = True
                  Proportional = True
                  Align = alClient
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  OnClick = DBImageFOTOInternoClick
                end
              end
              object UniDBDateTimePicker2: TUniDBDateTimePicker
                Left = 248
                Top = 152
                Width = 92
                Height = 22
                DateTime = 41821.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 73
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
              end
              object UniDBDateTimePicker3: TUniDBDateTimePicker
                Left = 149
                Top = 152
                Width = 95
                Height = 22
                DateTime = 41821.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 74
                DataField = 'DATA_ENTRADA'
                DataSource = DsCadastro
              end
              object UniDBDateTimePicker4: TUniDBDateTimePicker
                Left = 346
                Top = 151
                Width = 92
                Height = 22
                DateTime = 41821.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 75
                DataField = 'DATA_PERMANENCIA'
                DataSource = DsCadastro
              end
            end
            object TabSheetDadosGerais: TUniTabSheet
              Caption = 'Dados Gerais'
              object Label11: TUniLabel
                Left = 24
                Top = 56
                Width = 20
                Height = 13
                Caption = 'M'#227'e'
                TabOrder = 17
              end
              object Label19: TUniLabel
                Left = 312
                Top = 56
                Width = 14
                Height = 13
                Caption = 'Pai'
                TabOrder = 18
              end
              object Label21: TUniLabel
                Left = 312
                Top = 96
                Width = 66
                Height = 13
                Caption = 'Nacionalidade'
                TabOrder = 19
              end
              object Label22: TUniLabel
                Left = 134
                Top = 135
                Width = 24
                Height = 13
                Caption = 'Ra'#231'a'
                TabOrder = 20
              end
              object Label23: TUniLabel
                Left = 25
                Top = 176
                Width = 60
                Height = 13
                Caption = 'Escolaridade'
                TabOrder = 21
              end
              object Label20: TUniLabel
                Left = 24
                Top = 96
                Width = 61
                Height = 13
                Caption = 'Naturalidade'
                TabOrder = 22
              end
              object Label37: TUniLabel
                Left = 25
                Top = 217
                Width = 37
                Height = 13
                Caption = 'Religi'#227'o'
                TabOrder = 23
              end
              object Label41: TUniLabel
                Left = 24
                Top = 299
                Width = 60
                Height = 13
                Caption = 'Condena'#231#227'o'
                TabOrder = 24
              end
              object Label42: TUniLabel
                Left = 24
                Top = 337
                Width = 41
                Height = 13
                Caption = 'Hist'#243'rico'
                TabOrder = 25
              end
              object Label13: TUniLabel
                Left = 312
                Top = 216
                Width = 44
                Height = 13
                Caption = 'Profiss'#227'o'
                TabOrder = 26
              end
              object Label5: TUniLabel
                Left = 137
                Top = 16
                Width = 14
                Height = 13
                Caption = 'RG'
                TabOrder = 27
              end
              object Label24: TUniLabel
                Left = 351
                Top = 16
                Width = 19
                Height = 13
                Caption = 'CPF'
                TabOrder = 28
              end
              object Label25: TUniLabel
                Left = 486
                Top = 16
                Width = 55
                Height = 13
                Caption = 'Estado Civil'
                TabOrder = 29
              end
              object Label26: TUniLabel
                Left = 24
                Top = 376
                Width = 86
                Height = 13
                Caption = 'Sinais Particulares'
                TabOrder = 30
              end
              object Label39: TUniLabel
                Left = 24
                Top = 136
                Width = 29
                Height = 13
                Caption = 'Altura'
                TabOrder = 31
              end
              object Label47: TUniLabel
                Left = 74
                Top = 136
                Width = 23
                Height = 13
                Caption = 'Peso'
                TabOrder = 32
              end
              object Label52: TUniLabel
                Left = 24
                Top = 16
                Width = 81
                Height = 13
                Caption = 'Data Nascimento'
                TabOrder = 33
              end
              object Label56: TUniLabel
                Left = 24
                Top = 261
                Width = 29
                Height = 13
                Caption = 'Artigo'
                TabOrder = 34
              end
              object Label63: TUniLabel
                Left = 311
                Top = 136
                Width = 67
                Height = 13
                Caption = 'Cor dos Olhos'
                TabOrder = 35
              end
              object Label64: TUniLabel
                Left = 458
                Top = 135
                Width = 68
                Height = 13
                Caption = 'Cor do Cabelo'
                TabOrder = 36
              end
              object Label149: TUniLabel
                Left = 24
                Top = 413
                Width = 46
                Height = 13
                Caption = 'Visitantes'
                TabOrder = 37
              end
              object Label48: TUniLabel
                Left = 311
                Top = 176
                Width = 74
                Height = 13
                Caption = 'Titulo de Eleitor'
                TabOrder = 38
              end
              object Label77: TUniLabel
                Left = 241
                Top = 16
                Width = 69
                Height = 13
                Caption = 'Org'#227'o Emissor'
                TabOrder = 39
              end
              object DBEdit1: TUniDBEdit
                Left = 24
                Top = 72
                Width = 281
                Height = 21
                DataField = 'MAE'
                DataSource = DsCadastro
                TabOrder = 4
                Color = clWindow
              end
              object DBEdit5: TUniDBEdit
                Left = 312
                Top = 72
                Width = 313
                Height = 21
                DataField = 'PAI'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBEdit21: TUniDBEdit
                Left = 24
                Top = 314
                Width = 601
                Height = 21
                DataField = 'CONDENACAO'
                DataSource = DsCadastro
                TabOrder = 12
                Color = clWindow
              end
              object DBEdit22: TUniDBEdit
                Left = 24
                Top = 353
                Width = 601
                Height = 21
                DataField = 'HISTORICO'
                DataSource = DsCadastro
                TabOrder = 13
                Color = clWindow
              end
              object DBEditrg: TUniDBEdit
                Left = 137
                Top = 32
                Width = 98
                Height = 21
                DataField = 'RG'
                DataSource = DsCadastro
                TabOrder = 0
                Color = clWindow
              end
              object DBEditCPF: TUniDBEdit
                Left = 352
                Top = 32
                Width = 131
                Height = 21
                DataField = 'CPF'
                DataSource = DsCadastro
                TabOrder = 2
                Color = clWindow
              end
              object DBEdit23: TUniDBEdit
                Left = 24
                Top = 392
                Width = 600
                Height = 21
                DataField = 'SINAIS_PARTICULARES'
                DataSource = DsCadastro
                TabOrder = 14
                Color = clWindow
              end
              object DBComboBox1: TUniDBComboBox
                Left = 486
                Top = 32
                Width = 137
                Height = 21
                DataField = 'ESTADO_CIVIL'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  'Amasiado'
                  'Casado'
                  'Divorciado'
                  'Separado Judicialmente'
                  'Solteiro'
                  'Vi'#250'vo'
                  'Uni'#227'o Est'#225'vel'
                  'N'#227'o Declarado')
                ItemIndex = -1
                TabOrder = 3
              end
              object DBEdit26: TUniDBEdit
                Left = 24
                Top = 152
                Width = 49
                Height = 21
                DataField = 'ALTURA'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object DBEdit27: TUniDBEdit
                Left = 74
                Top = 152
                Width = 57
                Height = 21
                DataField = 'PESO'
                DataSource = DsCadastro
                TabOrder = 7
                Color = clWindow
              end
              object DBEdit30: TUniDBEdit
                Left = 24
                Top = 278
                Width = 601
                Height = 21
                DataField = 'ARTIGO'
                DataSource = DsCadastro
                TabOrder = 11
                Color = clWindow
              end
              object DBEdit32: TUniDBEdit
                Left = 311
                Top = 151
                Width = 143
                Height = 21
                DataField = 'COR_OLHOS'
                DataSource = DsCadastro
                TabOrder = 8
                Color = clWindow
              end
              object DBEdit34: TUniDBEdit
                Left = 458
                Top = 152
                Width = 167
                Height = 21
                DataField = 'COR_CABELOS'
                DataSource = DsCadastro
                TabOrder = 9
                Color = clWindow
              end
              object DBEdit83: TUniDBEdit
                Left = 24
                Top = 429
                Width = 601
                Height = 21
                DataField = 'VISITANTES'
                DataSource = DsCadastro
                TabOrder = 15
                Color = clWindow
              end
              object DBEdit4: TUniDBEdit
                Left = 312
                Top = 192
                Width = 313
                Height = 21
                DataField = 'TITULO_ELEITOR'
                DataSource = DsCadastro
                TabOrder = 10
                Color = clWindow
              end
              object DBEdit20: TUniDBEdit
                Left = 241
                Top = 32
                Width = 98
                Height = 21
                DataField = 'ORGAO_EMISSOR_RG'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object DBComboBox4: TUniDBComboBox
                Left = 26
                Top = 235
                Width = 273
                Height = 21
                DataField = 'RELIGIAO'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  'Adventista'
                  'Ateu'
                  'Budista'
                  'Cat'#243'lica'
                  'Evang'#233'lica'
                  'Esp'#237'rita'
                  'Mul'#231'umano'
                  'N'#227'o Informada'
                  'Sem Religi'#227'o'
                  'Outras')
                ItemIndex = -1
                TabOrder = 16
              end
              object UniBitBtnNaturalidade: TUniBitBtn
                Left = 83
                Top = 111
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 40
                OnClick = UniBitBtnNaturalidadeClick
              end
              object UniLabelNaturalidade: TUniLabel
                Left = 112
                Top = 115
                Width = 197
                Height = 13
                AutoSize = False
                Caption = '(NATURALIDADE)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 41
              end
              object UniDBEditNaturalidade: TUniDBEdit
                Left = 23
                Top = 111
                Width = 60
                Height = 22
                DataField = 'IDNATURALIDADE'
                DataSource = DsCadastro
                TabOrder = 42
                Color = clWindow
                OnExit = UniDBEditNaturalidadeExit
              end
              object UniLabelNacionalidade: TUniLabel
                Left = 401
                Top = 115
                Width = 197
                Height = 13
                AutoSize = False
                Caption = '(NACIONALIDADE)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 43
              end
              object UniBitBtnNacionalidade: TUniBitBtn
                Left = 372
                Top = 111
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 44
                OnClick = UniBitBtnNacionalidadeClick
              end
              object UniDBEditNacionalidade: TUniDBEdit
                Left = 312
                Top = 111
                Width = 60
                Height = 22
                DataField = 'IDNACIONALIDADE'
                DataSource = DsCadastro
                TabOrder = 45
                Color = clWindow
                OnExit = UniDBEditNacionalidadeExit
              end
              object UniDBEditRaca: TUniDBEdit
                Left = 133
                Top = 152
                Width = 49
                Height = 22
                DataField = 'IDRACA'
                DataSource = DsCadastro
                TabOrder = 46
                Color = clWindow
                OnExit = UniDBEditRacaExit
              end
              object UniBitBtnRaca: TUniBitBtn
                Left = 184
                Top = 152
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 47
                OnClick = UniBitBtnRacaClick
              end
              object UniLabelRaca: TUniLabel
                Left = 213
                Top = 156
                Width = 90
                Height = 13
                AutoSize = False
                Caption = '(RA'#199'A)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 48
              end
              object UniDBEditProfissao: TUniDBEdit
                Left = 312
                Top = 234
                Width = 60
                Height = 22
                DataField = 'IDPROFISSAO'
                DataSource = DsCadastro
                TabOrder = 49
                Color = clWindow
                OnExit = UniDBEditProfissaoExit
              end
              object UniBitBtnProfissao: TUniBitBtn
                Left = 372
                Top = 234
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 50
                OnClick = UniBitBtnProfissaoClick
              end
              object UniLabelProfissao: TUniLabel
                Left = 401
                Top = 238
                Width = 222
                Height = 13
                AutoSize = False
                Caption = '(PROFISS'#195'O)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 51
              end
              object UniDBEditEscolaridade: TUniDBEdit
                Left = 25
                Top = 192
                Width = 60
                Height = 22
                DataField = 'IDESCOLARIDADE'
                DataSource = DsCadastro
                TabOrder = 52
                Color = clWindow
                OnExit = UniDBEditEscolaridadeExit
              end
              object UniBitBtnEscolaridade: TUniBitBtn
                Left = 85
                Top = 192
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 53
                OnClick = UniBitBtnEscolaridadeClick
              end
              object UniLabelEscolaridade: TUniLabel
                Left = 114
                Top = 196
                Width = 194
                Height = 13
                AutoSize = False
                Caption = '(ESCOLARIDADE)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 54
              end
              object UniDBDateTimePicker5: TUniDBDateTimePicker
                Left = 24
                Top = 31
                Width = 102
                Height = 22
                DateTime = 41821.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 55
                DataField = 'DATA_NASCIMENTO'
                DataSource = DsCadastro
              end
            end
            object TabSheetAdvogados: TUniTabSheet
              Caption = 'Advogados'
              object lbl3: TUniLabel
                Left = 16
                Top = 21
                Width = 97
                Height = 13
                Caption = 'Advogado/Escrit'#243'rio'
                TabOrder = 4
              end
              object Label50: TUniLabel
                Left = 16
                Top = 64
                Width = 63
                Height = 13
                Caption = 'Observa'#231#245'es'
                TabOrder = 5
              end
              object Button2: TUniButton
                Left = 16
                Top = 148
                Width = 200
                Height = 25
                Caption = 'Constituir'
                ParentFont = False
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                TabOrder = 1
                OnClick = Button2Click
              end
              object Memoobsadvogado: TUniMemo
                Left = 16
                Top = 80
                Width = 609
                Height = 65
                Color = clWindow
                TabOrder = 0
              end
              object DBGrid3: TUniDBGrid
                Left = 16
                Top = 176
                Width = 609
                Height = 145
                Enabled = False
                DataSource = dsADVOGADO_INTERNO
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ReadOnly = True
                WebOptions.LoadMaskMsg = 'Please wait...'
                TabOrder = 2
                Columns = <
                  item
                    FieldName = 'ADVOGADO/ESCRIT'#211'RIO'
                    Title.Caption = 'Advogado/Escrit'#243'rio'
                    Width = 370
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'OBSADVOGADO_INTERNO'
                    Title.Caption = 'Observa'#231#245'es'
                    Width = 279
                    Visible = True
                    Expanded = False
                  end>
              end
              object Button3: TUniButton
                Left = 16
                Top = 320
                Width = 200
                Height = 25
                Caption = 'Desconstituir'
                ParentFont = False
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                TabOrder = 3
                OnClick = Button3Click
              end
              object UniDBEditAdvogado: TUniDBEdit
                Left = 14
                Top = 36
                Width = 60
                Height = 22
                DataField = 'IDADVOGADO'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
                OnExit = UniDBEditAdvogadoExit
              end
              object UniBitBtnAdvogado: TUniBitBtn
                Left = 76
                Top = 37
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 7
                OnClick = UniBitBtnAdvogadoClick
              end
              object UniLabelAdvogado: TUniLabel
                Left = 105
                Top = 41
                Width = 428
                Height = 13
                AutoSize = False
                Caption = '(ADVOGADO)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 8
              end
            end
            object TabSheetEndereco: TUniTabSheet
              Caption = 'Endere'#231'o'
              object Label28: TUniLabel
                Left = 16
                Top = 8
                Width = 45
                Height = 13
                Caption = 'Endere'#231'o'
                TabOrder = 7
              end
              object Label29: TUniLabel
                Left = 16
                Top = 48
                Width = 12
                Height = 13
                Caption = 'N'#186
                TabOrder = 8
              end
              object Label30: TUniLabel
                Left = 80
                Top = 48
                Width = 28
                Height = 13
                Caption = 'Bairro'
                TabOrder = 9
              end
              object Label31: TUniLabel
                Left = 16
                Top = 96
                Width = 65
                Height = 13
                Caption = 'Complemento'
                TabOrder = 10
              end
              object Label32: TUniLabel
                Left = 496
                Top = 96
                Width = 19
                Height = 13
                Caption = 'CEP'
                TabOrder = 11
              end
              object Label33: TUniLabel
                Left = 16
                Top = 142
                Width = 33
                Height = 13
                Caption = 'Cidade'
                TabOrder = 12
              end
              object Label34: TUniLabel
                Left = 496
                Top = 142
                Width = 42
                Height = 13
                Caption = 'Telefone'
                TabOrder = 13
              end
              object Label35: TUniLabel
                Left = 376
                Top = 184
                Width = 39
                Height = 13
                Caption = 'Contato'
                TabOrder = 14
              end
              object lbl2: TUniLabel
                Left = 16
                Top = 184
                Width = 19
                Height = 13
                Caption = 'Pais'
                TabOrder = 15
              end
              object DBEdit10: TUniDBEdit
                Left = 16
                Top = 24
                Width = 600
                Height = 21
                DataField = 'ENDERECO'
                DataSource = DsCadastro
                TabOrder = 0
                Color = clWindow
              end
              object DBEdit11: TUniDBEdit
                Left = 16
                Top = 64
                Width = 57
                Height = 21
                DataField = 'NUMERO'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object DBEdit12: TUniDBEdit
                Left = 80
                Top = 64
                Width = 537
                Height = 21
                DataField = 'BAIRRO'
                DataSource = DsCadastro
                TabOrder = 2
                Color = clWindow
              end
              object DBEdit13: TUniDBEdit
                Left = 16
                Top = 112
                Width = 465
                Height = 21
                DataField = 'COMPLEMENETO'
                DataSource = DsCadastro
                TabOrder = 3
                Color = clWindow
              end
              object DBEditcep: TUniDBEdit
                Left = 496
                Top = 112
                Width = 121
                Height = 21
                DataField = 'CEP'
                DataSource = DsCadastro
                TabOrder = 4
                Color = clWindow
              end
              object DBEditfone: TUniDBEdit
                Left = 496
                Top = 158
                Width = 121
                Height = 21
                DataField = 'FONE'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBEdit17: TUniDBEdit
                Left = 376
                Top = 200
                Width = 241
                Height = 21
                DataField = 'CONTATO'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object UniDBEditCidade: TUniDBEdit
                Left = 16
                Top = 158
                Width = 60
                Height = 22
                DataField = 'IDCIDADE'
                DataSource = DsCadastro
                TabOrder = 16
                Color = clWindow
                OnExit = UniDBEditCidadeExit
              end
              object UniBitBtnCidade: TUniBitBtn
                Left = 76
                Top = 158
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 17
                OnClick = UniBitBtnCidadeClick
              end
              object UniLabelCidade: TUniLabel
                Left = 105
                Top = 162
                Width = 385
                Height = 13
                AutoSize = False
                Caption = '(CIDADE)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 18
              end
              object UniDBEditPais: TUniDBEdit
                Left = 16
                Top = 199
                Width = 60
                Height = 22
                DataField = 'IDPAIS_ENDERECO'
                DataSource = DsCadastro
                TabOrder = 19
                Color = clWindow
                OnExit = UniDBEditPaisExit
              end
              object UniBitBtnPais: TUniBitBtn
                Left = 76
                Top = 199
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 20
                OnClick = UniBitBtnPaisClick
              end
              object UniLabelPais: TUniLabel
                Left = 105
                Top = 203
                Width = 265
                Height = 13
                AutoSize = False
                Caption = '(PAIS)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 21
              end
            end
            object TabSheetHistorico: TUniTabSheet
              Caption = 'Hist'#243'rico'
              DesignSize = (
                767
                480)
              object Label53: TUniLabel
                Left = 7
                Top = 16
                Width = 63
                Height = 13
                Caption = 'Data do Fato'
                TabOrder = 5
              end
              object Label54: TUniLabel
                Left = 112
                Top = 16
                Width = 208
                Height = 13
                Caption = 'Descri'#231#227'o do Hist'#243'rico para Ficha Disciplinar'
                TabOrder = 6
              end
              object DBGrid1: TUniDBGrid
                Left = 8
                Top = 157
                Width = 756
                Height = 136
                DataSource = DSHISTORICO_interno
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                WebOptions.LoadMaskMsg = 'Please wait...'
                OnCellClick = DBGrid1CellClick
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 3
                Columns = <
                  item
                    FieldName = 'DATA_HORA'
                    Title.Caption = 'Data'
                    Width = 80
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'SETOR'
                    Title.Caption = 'Setor'
                    Width = 80
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 400
                    Visible = True
                    Expanded = False
                  end>
              end
              object Button1: TUniButton
                Left = 8
                Top = 124
                Width = 98
                Height = 25
                Caption = 'Incluir'
                ParentFont = False
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                TabOrder = 2
                OnClick = Button1Click
              end
              object DBMemo1: TUniDBMemo
                Left = 8
                Top = 301
                Width = 756
                Height = 176
                DataField = 'DESCRICAO'
                DataSource = DSHISTORICO_interno
                Anchors = [akLeft, akTop, akRight, akBottom]
                ReadOnly = True
                TabOrder = 4
                Color = clWindow
              end
              object MemoDescricao: TUniMemo
                Left = 108
                Top = 33
                Width = 656
                Height = 117
                Anchors = [akLeft, akTop, akRight]
                Color = clWindow
                TabOrder = 1
              end
              object DateTimePickerHistorico: TUniDateTimePicker
                Left = 7
                Top = 33
                Width = 91
                Height = 21
                DateTime = 41785.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 0
              end
            end
            object TabSheetFotos: TUniTabSheet
              Caption = 'Fotos'
              object FOTO: TUniLabel
                Left = 16
                Top = 5
                Width = 127
                Height = 146
                AutoSize = False
                Caption = 'Perfil'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
                ParentColor = False
                Color = clSilver
                TabOrder = 0
              end
              object Label6: TUniLabel
                Left = 168
                Top = 7
                Width = 91
                Height = 13
                Caption = 'Tatuagem Principal'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
                TabOrder = 1
              end
              object Label7: TUniLabel
                Left = 320
                Top = 7
                Width = 86
                Height = 13
                Caption = 'Sinais Particulares'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
                TabOrder = 2
              end
              object Label8: TUniLabel
                Left = 472
                Top = 7
                Width = 95
                Height = 13
                Caption = 'Sinais Particulares 1'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
                TabOrder = 3
              end
              object Label9: TUniLabel
                Left = 168
                Top = 155
                Width = 95
                Height = 13
                Caption = 'Sinais Particulares 2'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
                TabOrder = 4
              end
              object Label14: TUniLabel
                Left = 320
                Top = 155
                Width = 95
                Height = 13
                Caption = 'Sinais Particulares 3'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
                TabOrder = 5
              end
              object Label15: TUniLabel
                Left = 472
                Top = 153
                Width = 95
                Height = 13
                Caption = 'Sinais Particulares 4'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
                TabOrder = 6
              end
              object DBNavigator3: TUniDBNavigator
                Left = 3
                Top = 305
                Width = 240
                Height = 25
                DataSource = DsFoto
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
                TabOrder = 7
              end
              object UniPanelFoto: TUniPanel
                Left = 0
                Top = 333
                Width = 767
                Height = 147
                Enabled = False
                Align = alBottom
                Anchors = [akLeft, akRight, akBottom]
                TabOrder = 8
                object Label17: TUniLabel
                  Left = 10
                  Top = 47
                  Width = 23
                  Height = 13
                  Caption = 'Data'
                  TabOrder = 1
                end
                object UniDBDateTimePicker1: TUniDBDateTimePicker
                  Left = 10
                  Top = 66
                  Width = 120
                  Height = 22
                  DateTime = 41785.000000000000000000
                  DateFormat = 'dd/MM/yyyy'
                  TimeFormat = 'HH:mm:ss'
                  TabOrder = 2
                  DataField = 'DATA'
                  DataSource = DsFoto
                end
                object Label44: TUniLabel
                  Left = 10
                  Top = 94
                  Width = 46
                  Height = 13
                  Caption = 'Descri'#231#227'o'
                  TabOrder = 3
                end
                object DBEdit6: TUniDBEdit
                  Left = 10
                  Top = 115
                  Width = 209
                  Height = 21
                  DataField = 'DESCRICAO'
                  DataSource = DsFoto
                  TabOrder = 4
                  Color = clWindow
                end
                object DBGrid4: TUniDBGrid
                  Left = 373
                  Top = 14
                  Width = 320
                  Height = 120
                  DataSource = DsFoto
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  ReadOnly = True
                  WebOptions.LoadMaskMsg = 'Please wait...'
                  TabOrder = 5
                  Columns = <
                    item
                      FieldName = 'DATA'
                      Title.Caption = 'Data'
                      Width = 70
                      Visible = True
                      Expanded = False
                    end
                    item
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o'
                      Width = 200
                      Visible = True
                      Expanded = False
                    end>
                end
                object UniLabel4: TUniLabel
                  Left = 240
                  Top = 6
                  Width = 70
                  Height = 13
                  Caption = 'Fotos diversas'
                  TabOrder = 6
                end
                object UniPanel8: TUniPanel
                  Left = 239
                  Top = 22
                  Width = 113
                  Height = 122
                  Caption = 'UniPanel1'
                  TabOrder = 7
                  object DBImageOutras: TUniDBImage
                    Left = 1
                    Top = 1
                    Width = 111
                    Height = 120
                    DataField = 'FOTO'
                    DataSource = DsFoto
                    Stretch = True
                    Proportional = True
                    Align = alClient
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    OnClick = DBImageOutrasClick
                  end
                end
              end
              object Label16: TUniLabel
                Left = 249
                Top = 305
                Width = 211
                Height = 13
                Caption = 'Outras Fotos (Clique em novo no navegador)'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
                TabOrder = 9
              end
              object UniPanel1: TUniPanel
                Left = 11
                Top = 19
                Width = 133
                Height = 132
                Caption = 'UniPanel1'
                TabOrder = 10
                object DBImageFOTOPERFIL: TUniDBImage
                  Left = 1
                  Top = 1
                  Width = 131
                  Height = 130
                  DataField = 'FOTO_PERFIL'
                  DataSource = DsCadastro
                  Stretch = True
                  Proportional = True
                  Align = alClient
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  OnClick = DBImageFOTOPERFILClick
                end
              end
              object UniPanel2: TUniPanel
                Left = 168
                Top = 20
                Width = 133
                Height = 132
                Caption = 'UniPanel1'
                TabOrder = 11
                object DBImagetatuagem1: TUniDBImage
                  Left = 1
                  Top = 1
                  Width = 131
                  Height = 130
                  DataField = 'FOTO_TATUAGEM'
                  DataSource = DsCadastro
                  Proportional = True
                  Align = alClient
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  OnClick = DBImagetatuagem1Click
                end
              end
              object UniPanel3: TUniPanel
                Left = 320
                Top = 20
                Width = 133
                Height = 132
                Caption = 'UniPanel1'
                TabOrder = 12
                object DBImageFOTO_SINAIS: TUniDBImage
                  Left = 1
                  Top = 1
                  Width = 131
                  Height = 130
                  DataField = 'FOTO_SINAIS'
                  DataSource = DsCadastro
                  Proportional = True
                  Align = alClient
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  OnClick = DBImageFOTO_SINAISClick
                end
              end
              object UniPanel4: TUniPanel
                Left = 472
                Top = 20
                Width = 133
                Height = 132
                Caption = 'UniPanel1'
                TabOrder = 13
                object DBImageFOTO_SINAIS1: TUniDBImage
                  Left = 1
                  Top = 1
                  Width = 131
                  Height = 130
                  DataField = 'FOTO_SINAIS1'
                  DataSource = DsCadastro
                  Proportional = True
                  Align = alClient
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  OnClick = DBImageFOTO_SINAIS1Click
                end
              end
              object UniPanel5: TUniPanel
                Left = 168
                Top = 170
                Width = 133
                Height = 132
                Caption = 'UniPanel1'
                TabOrder = 14
                object DBImageFOTO_SINAIS2: TUniDBImage
                  Left = 1
                  Top = 1
                  Width = 131
                  Height = 130
                  DataField = 'FOTO_SINAIS2'
                  DataSource = DsCadastro
                  Proportional = True
                  Align = alClient
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  OnClick = DBImageFOTO_SINAIS2Click
                end
              end
              object UniPanel6: TUniPanel
                Left = 320
                Top = 169
                Width = 133
                Height = 132
                Caption = 'UniPanel1'
                TabOrder = 15
                object DBImageFOTO_SINAIS3: TUniDBImage
                  Left = 1
                  Top = 1
                  Width = 131
                  Height = 130
                  DataField = 'FOTO_SINAIS3'
                  DataSource = DsCadastro
                  Proportional = True
                  Align = alClient
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  OnClick = DBImageFOTO_SINAIS3Click
                end
              end
              object UniPanel7: TUniPanel
                Left = 472
                Top = 170
                Width = 133
                Height = 132
                Caption = 'UniPanel1'
                TabOrder = 16
                object DBImageFOTO_SINAIS4: TUniDBImage
                  Left = 1
                  Top = 1
                  Width = 131
                  Height = 130
                  DataField = 'FOTO_SINAIS4'
                  DataSource = DsCadastro
                  Proportional = True
                  Align = alClient
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  OnClick = DBImageFOTO_SINAIS4Click
                end
              end
            end
            object TabSheetMovAnterior: TUniTabSheet
              Caption = 'Mov. Anterior'
              object DBMemo2: TUniDBMemo
                Left = 0
                Top = 0
                Width = 767
                Height = 480
                DataField = 'HISTORICO_VELHO'
                DataSource = DsCadastro
                Align = alClient
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 0
                Color = clWindow
              end
            end
            object TabSheetMapa: TUniTabSheet
              Caption = 'Mapa'
              object Label61: TUniLabel
                Left = 24
                Top = 16
                Width = 81
                Height = 13
                Caption = 'Data Nascimento'
                TabOrder = 2
              end
              object Label70: TUniLabel
                Left = 136
                Top = 16
                Width = 61
                Height = 13
                Caption = 'Naturalidade'
                TabOrder = 7
              end
              object Label71: TUniLabel
                Left = 418
                Top = 14
                Width = 51
                Height = 13
                Caption = 'Resid'#234'ncia'
                TabOrder = 8
              end
              object Label72: TUniLabel
                Left = 24
                Top = 64
                Width = 55
                Height = 13
                Caption = 'Data Pris'#227'o'
                TabOrder = 9
              end
              object Label75: TUniLabel
                Left = 136
                Top = 63
                Width = 226
                Height = 13
                Caption = 'Origem do Mandado/Estado solicitante da vaga'
                TabOrder = 10
              end
              object Label81: TUniLabel
                Left = 418
                Top = 61
                Width = 34
                Height = 13
                Caption = 'Artigos'
                TabOrder = 11
              end
              object Label85: TUniLabel
                Left = 24
                Top = 113
                Width = 93
                Height = 13
                Caption = 'Tipo Justi'#231'a, ex: JF'
                TabOrder = 12
              end
              object Label84: TUniLabel
                Left = 24
                Top = 155
                Width = 133
                Height = 13
                Caption = 'Benef'#237'cio / Situa'#231#227'o Jurid'#237'ca'
                TabOrder = 13
              end
              object Label86: TUniLabel
                Left = 418
                Top = 155
                Width = 60
                Height = 13
                Caption = 'Escolaridade'
                TabOrder = 14
              end
              object Label87: TUniLabel
                Left = 24
                Top = 197
                Width = 162
                Height = 13
                Caption = 'Previs'#227'o de Sa'#237'da e/ou Obs.Mapa'
                TabOrder = 15
              end
              object Label88: TUniLabel
                Left = 136
                Top = 113
                Width = 191
                Height = 13
                Caption = 'Condena'#231#227'o Descri'#231#227'o, ex: 10a 5m 12d'
                TabOrder = 16
              end
              object Label89: TUniLabel
                Left = 351
                Top = 112
                Width = 182
                Height = 13
                Caption = 'Quantidade de Ano(s) da condena'#231#227'o'
                TabOrder = 17
              end
              object DBEdit15: TUniDBEdit
                Left = 418
                Top = 78
                Width = 299
                Height = 21
                DataField = 'ARTIGO'
                DataSource = DsCadastro
                TabOrder = 0
                Color = clWindow
              end
              object DBEdit16: TUniDBEdit
                Left = 24
                Top = 128
                Width = 105
                Height = 21
                DataField = 'NUMERO_PROCED'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object DBComboBox7: TUniDBComboBox
                Left = 24
                Top = 172
                Width = 377
                Height = 21
                DataField = 'TIPOPROCESSO'
                DataSource = DsCadastro
                Style = csSimple
                Items.Strings = (
                  'Condenado'
                  'Evas'#227'o'
                  'Lc.Susp.'
                  'Liv. Cond.'
                  'Med. Segur.'
                  'Med. Seguran'#231'a'
                  'MP'
                  'MP/Evas'#227'o'
                  'MP/Q'
                  'Processado'
                  'R.S.Aberto'
                  'Regime Aberto'
                  'Reg. In. Sa'
                  'Regr.SA'
                  'Resp. Proc.'
                  'S.Aberto'
                  'Semiaberto'
                  '')
                ItemIndex = -1
                TabOrder = 3
              end
              object DBEdit18: TUniDBEdit
                Tag = 1
                Left = 24
                Top = 214
                Width = 691
                Height = 21
                DataField = 'OBS_MAPA'
                DataSource = DsCadastro
                TabOrder = 4
                Color = clWindow
              end
              object DBEdit37: TUniDBEdit
                Left = 136
                Top = 128
                Width = 209
                Height = 21
                DataField = 'CONDENACAO'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBEdit38: TUniDBEdit
                Left = 351
                Top = 128
                Width = 186
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_ANO'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object UniLabel3: TUniLabel
                Left = 544
                Top = 110
                Width = 104
                Height = 13
                Caption = 'Reincidente / Prim'#225'rio'
                TabOrder = 18
              end
              object UniDBComboBox2: TUniDBComboBox
                Left = 544
                Top = 128
                Width = 109
                DataField = 'REINCERSAO'
                DataSource = DsCadastro
                Items.Strings = (
                  'R'
                  'P')
                ItemIndex = -1
                TabOrder = 19
              end
              object UniLabelNaturalidade2: TUniLabel
                Left = 226
                Top = 34
                Width = 188
                Height = 13
                AutoSize = False
                Caption = '(NATURALIDADE)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 20
              end
              object UniLabelCidade2: TUniLabel
                Left = 507
                Top = 35
                Width = 206
                Height = 13
                AutoSize = False
                Caption = '(CIDADE)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 21
              end
              object UniLabelEscolaridade2: TUniLabel
                Left = 418
                Top = 174
                Width = 311
                Height = 13
                AutoSize = False
                Caption = '(ESCOLARIDADE)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 22
              end
              object UniLabelOrigem2: TUniLabel
                Left = 227
                Top = 84
                Width = 186
                Height = 13
                AutoSize = False
                Caption = '(ORIGEM)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 23
              end
              object UniBitBtn1: TUniBitBtn
                Left = 196
                Top = 80
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 24
                OnClick = UniBitBtnOrigemClick
              end
              object UniDBEditOrigem2: TUniDBEdit
                Left = 136
                Top = 80
                Width = 60
                Height = 22
                DataField = 'ID_SOLICITANTE_VAGA'
                DataSource = DsCadastro
                TabOrder = 25
                Color = clWindow
                OnExit = UniDBEditOrigemExit
              end
              object UniBitBtnNaturalidade2: TUniBitBtn
                Left = 194
                Top = 32
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 26
                OnClick = UniBitBtnNaturalidadeClick
              end
              object UniDBEditNaturalidade2: TUniDBEdit
                Left = 134
                Top = 32
                Width = 60
                Height = 22
                DataField = 'IDNATURALIDADE'
                DataSource = DsCadastro
                TabOrder = 27
                Color = clWindow
                OnExit = UniDBEditNaturalidadeExit
              end
              object UniDBEditCidade2: TUniDBEdit
                Left = 418
                Top = 31
                Width = 60
                Height = 22
                DataField = 'IDCIDADE'
                DataSource = DsCadastro
                TabOrder = 28
                Color = clWindow
                OnExit = UniDBEditCidadeExit
              end
              object UniBitBtn2: TUniBitBtn
                Left = 478
                Top = 31
                Width = 26
                Height = 22
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                  B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                  83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                  D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                  3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                  97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                  DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                  B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                  99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                  978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                  BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                  A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                  EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                  CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                  B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                  F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                  DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                  C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                  9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                  E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                  70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                  EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                  86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                  A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                TabOrder = 29
                OnClick = UniBitBtnCidadeClick
              end
              object UniDBDateTimePicker6: TUniDBDateTimePicker
                Left = 24
                Top = 80
                Width = 106
                Height = 22
                DateTime = 41821.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 30
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
              end
              object UniDBDateTimePicker7: TUniDBDateTimePicker
                Left = 24
                Top = 31
                Width = 105
                Height = 22
                DateTime = 41821.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 31
                DataField = 'DATA_NASCIMENTO'
                DataSource = DsCadastro
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 777
        ExplicitHeight = 510
        inherited PanelLocalizaConsulta: TUniPanel
          Width = 777
          Height = 60
          ExplicitWidth = 777
          ExplicitHeight = 60
          inherited UniLabel2: TUniLabel
            Left = 114
            Top = 31
            ExplicitLeft = 114
            ExplicitTop = 31
          end
          inherited EditLocalizar: TUniEdit
            Left = 165
            Top = 25
            Width = 435
            ExplicitLeft = 165
            ExplicitTop = 25
            ExplicitWidth = 435
          end
          inherited UniBtnFiltrar: TUniBitBtn
            Left = 601
            Top = 25
            Height = 22
            ExplicitLeft = 601
            ExplicitTop = 25
            ExplicitHeight = 22
          end
          object UniRadioGroupStatus: TUniRadioGroup
            AlignWithMargins = True
            Left = 3
            Top = 4
            Width = 105
            Height = 48
            ParentRTL = False
            Items.Strings = (
              'Ativo'
              'Inativo')
            ItemIndex = 0
            TabOrder = 4
          end
        end
        inherited DBGridConsulta: TUniDBGrid
          Top = 60
          Width = 777
          Height = 450
          DataSource = DsConsulta
          Columns = <
            item
              FieldName = 'NOME_INTERNO'
              Title.Caption = 'Nome do Interno'
              Width = 397
              Visible = True
              Font.Height = -13
              Font.Name = 'Lucida Console'
              Font.Style = [fsBold]
              Expanded = False
            end
            item
              FieldName = 'RGI'
              Title.Caption = 'Prontu'#225'rio'
              Width = 60
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'NUMERO_ROUPA'
              Title.Caption = 'Roupa'
              Width = 40
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'SIGLA'
              Title.Caption = 'Sigla'
              Width = 60
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'STATUS'
              Title.Caption = 'Status'
              Width = 56
              Visible = True
              Expanded = False
            end>
        end
      end
    end
  end
  inherited StatusBar1: TUniStatusBar
    Top = 584
    Width = 886
    ExplicitTop = 584
    ExplicitWidth = 886
  end
  inherited UniScreenMaskEditLocalizar: TUniScreenMask
    AttachedControl = UniBtnFiltrar
  end
  object SqlConsultaBackup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FIRST 20'
      '    interno.foto,'
      '    interno.nome_interno,'
      '    interno.rgi,'
      '    INTERNO.VULGO,'
      '    INTERNO.FACCAO,'
      '    '#39#39' as  nome_interno_soundex,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    galeria.galeria,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.numero_roupa,'
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
    Left = 280
    Top = 288
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    interno.rgi,'
      '    INTERNO.VULGO,'
      '    INTERNO.FACCAO,'
      '    '#39#39' as  nome_interno_soundex,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    galeria.galeria,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.numero_roupa,'
      '    iif(coalesce(interno.st,'#39'I'#39')='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito,'
      
        '    PROCEDENCIA.PROEDENCIA||'#39'/'#39'||coalesce(PROCEDENCIA.UF,'#39'UF'#39') A' +
        'S PROCEDENCIA'
      'from interno'
      '  left join cela on (cela.id_cela = interno.idcela)'
      
        '  left join pavilhao on (interno.idpavilhao = pavilhao.id_pavilh' +
        'ao)'
      
        '  left join unidade_penal on (pavilhao.id_up = unidade_penal.id_' +
        'up)'
      '  left  join galeria on (interno.idgaleria = galeria.id_galeria)'
      '  left  join solario on (interno.idsolario = solario.id_solario)'
      
        '   LEFT JOIN PROCEDENCIA ON (INTERNO.ID_PROCEDENCIA = PROCEDENCI' +
        'A.ID_PROCEDENCIA)'
      'where coalesce(interno.nome_interno,'#39#39')<>'#39#39
      'ORDER BY INTERNO.NOME_INTERNO collate win_ptbr'
      ''
      ' ')
    Left = 313
    Top = 287
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 344
    Top = 287
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 377
    Top = 287
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 405
    Top = 287
  end
  object SqlFilhos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from filhos'
      'where idinterno=:id_interno'
      '')
    Left = 273
    Top = 345
  end
  object DspFilhos: TDataSetProvider
    DataSet = SqlFilhos
    Left = 301
    Top = 345
  end
  object CdsFilhos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspFilhos'
    Left = 329
    Top = 345
    object CdsFilhosIDFILHOS: TIntegerField
      FieldName = 'IDFILHOS'
      Required = True
    end
    object CdsFilhosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsFilhosDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
    end
    object CdsFilhosESCOLA: TStringField
      FieldName = 'ESCOLA'
      Size = 100
    end
    object CdsFilhosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsFilhosIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object CdsFilhosNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Size = 50
    end
    object CdsFilhosIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
    end
  end
  object DsFilhos: TDataSource
    DataSet = CdsFilhos
    Left = 357
    Top = 345
  end
  object SQLHISTORICO_interno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from historico_interno'
      'where idinterno=:id_interno'
      'order by data_hora desc')
    Left = 169
    Top = 65529
  end
  object DSPHISTORICO_interno: TDataSetProvider
    DataSet = SQLHISTORICO_interno
    Left = 197
    Top = 65529
  end
  object CDSHISTORICO_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICO_interno'
    Left = 225
    Top = 65529
  end
  object DSHISTORICO_interno: TDataSource
    DataSet = CDSHISTORICO_interno
    Left = 253
    Top = 65529
  end
  object SqlFoto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select *'
      'from foto_interno'
      'where id_interno=:id_interno'
      '')
    Left = 297
    Top = 1
  end
  object DspFoto: TDataSetProvider
    DataSet = SqlFoto
    Left = 325
    Top = 1
  end
  object CdsFoto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFoto'
    AfterInsert = CdsFotoAfterInsert
    Left = 353
    Top = 1
  end
  object DsFoto: TDataSource
    DataSet = CdsFoto
    OnDataChange = DsFotoDataChange
    Left = 381
    Top = 1
  end
  object SqlLista: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT FACCAO FROM INTERNO')
    Left = 456
  end
  object DspLista: TDataSetProvider
    DataSet = SqlLista
    Left = 484
  end
  object CdsLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspLista'
    Left = 512
  end
  object DsLista: TDataSource
    DataSet = CdsLista
    Left = 540
  end
  object SqlSelectInternoInativo: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select '
      '   nome_interno,'
      '   '#39'INAT'#39' sigla,'
      '   '#39#39' pavilhao,'
      '   '#39#39' solario,'
      '   '#39#39' cela,'
      '    id_interno,'
      '    idpavilhao,'
      '    idgaleria,'
      '    idsolario,'
      ' '#39'INATIVO'#39' status'
      'from interno')
    Left = 592
    Top = 12
  end
  object SqlSelectInterno: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario,'
      'iif(interno.st='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status'
      'from cela'
      '   inner join interno on (cela.id_cela = interno.idcela)'
      
        '   inner join pavilhao on (interno.idpavilhao = pavilhao.id_pavi' +
        'lhao)'
      
        '   inner join unidade_penal on (pavilhao.id_up = unidade_penal.i' +
        'd_up)'
      
        '   inner join solario on (interno.idsolario = solario.id_solario' +
        ')'
      '   ')
    Left = 640
    Top = 12
  end
  object SQLadvogadointerno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM advogados_internos'
      'where id_interno = :id_interno')
    SQLConnection = Dm.Conexao
    Left = 696
    Top = 8
  end
  object dspadvogadointerno: TDataSetProvider
    DataSet = SQLadvogadointerno
    Left = 720
    Top = 8
  end
  object cdsadvogadointerno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspadvogadointerno'
    Left = 744
    Top = 8
    object cdsadvogadointernoADVOGADOESCRITRIO: TStringField
      FieldKind = fkLookup
      FieldName = 'ADVOGADO/ESCRIT'#211'RIO'
      LookupDataSet = Dm.CDSADVOGADO
      LookupKeyFields = 'ID_ADVOGADO'
      LookupResultField = 'ADVOGADO'
      KeyFields = 'ID_ADVOGADO'
      Size = 50
      Lookup = True
    end
    object cdsadvogadointernoID_ADVOGADOS_INTERNOS: TIntegerField
      FieldName = 'ID_ADVOGADOS_INTERNOS'
      Required = True
    end
    object cdsadvogadointernoID_ADVOGADO: TIntegerField
      FieldName = 'ID_ADVOGADO'
    end
    object cdsadvogadointernoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdsadvogadointernoOBSADVOGADO_INTERNO: TStringField
      FieldName = 'OBSADVOGADO_INTERNO'
      Size = 8192
    end
  end
  object dsADVOGADO_INTERNO: TDataSource
    DataSet = cdsadvogadointerno
    Left = 768
    Top = 8
  end
  object dsdataservidor: TDataSource
    DataSet = cdsdataservidor
    Left = 504
    Top = 72
  end
  object dstdataservidor: TDataSetProvider
    DataSet = SQLdataservidor
    Left = 456
    Top = 72
  end
  object SQLdataservidor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select current_date as data from rdb$database')
    SQLConnection = Dm.Conexao
    Left = 432
    Top = 72
  end
  object cdsdataservidor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dstdataservidor'
    Left = 478
    Top = 72
  end
end
