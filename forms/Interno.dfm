inherited FrmInterno: TFrmInterno
  ClientHeight = 607
  ClientWidth = 884
  Caption = 'Cadastro do Interno'
  ExplicitLeft = -111
  ExplicitWidth = 900
  ExplicitHeight = 646
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelTituloModeloCadastro: TUniPanel
    Width = 884
    ExplicitWidth = 773
    inherited UniImage1: TUniImage
      Width = 882
      ExplicitWidth = 771
    end
  end
  inherited PanelBotoes: TUniPanel
    Width = 96
    Height = 540
    ExplicitLeft = 0
    ExplicitTop = 41
    ExplicitWidth = 96
    ExplicitHeight = 588
    inherited Fechar: TUniBitBtn
      OnClick = nil
    end
    inherited Excluir: TUniBitBtn
      OnClick = nil
    end
    inherited Salvar: TUniBitBtn
      OnClick = nil
    end
    inherited Cancelar: TUniBitBtn
      OnClick = nil
    end
    inherited Editar: TUniBitBtn
      OnClick = nil
    end
    inherited Novo: TUniBitBtn
      OnClick = nil
    end
  end
  inherited PanelModeloCadastro: TUniPanel
    Left = 96
    Width = 788
    Height = 540
    ExplicitWidth = 449
    ExplicitHeight = 588
    inherited PageControlModeloCadastro: TUniPageControl
      Width = 786
      Height = 538
      ExplicitWidth = 771
      ExplicitHeight = 531
      inherited TabSheetCadastro: TUniTabSheet
        ExplicitWidth = 1067
        ExplicitHeight = 503
        inherited PanelCadastro: TUniPanel
          Width = 778
          Height = 510
          ExplicitWidth = 763
          ExplicitHeight = 503
          object PageControlInterno: TUniPageControl
            Left = 1
            Top = 1
            Width = 776
            Height = 508
            ActivePage = TabSheet7
            TabOrder = 1
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            ExplicitWidth = 799
            ExplicitHeight = 523
            object TabSheet1: TUniTabSheet
              Caption = 'Principal'
              ExplicitWidth = 753
              ExplicitHeight = 473
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
                TabOrder = 8
              end
              object Label4: TUniLabel
                Left = 269
                Top = 55
                Width = 79
                Height = 13
                Caption = 'RGI (Prontu'#225'rio)'
                TabOrder = 18
              end
              object Label10: TUniLabel
                Left = 149
                Top = 136
                Width = 64
                Height = 13
                Caption = 'Data Entrada'
                TabOrder = 34
              end
              object Label12: TUniLabel
                Left = 8
                Top = 303
                Width = 58
                Height = 13
                Caption = 'Proced'#234'ncia'
                TabOrder = 35
              end
              object Label40: TUniLabel
                Left = 238
                Top = 136
                Width = 55
                Height = 13
                Caption = 'Data Pris'#227'o'
                TabOrder = 36
              end
              object SpeedButton1: TUniSpeedButton
                Left = 273
                Top = 319
                Width = 23
                Height = 22
                Hint = 'Cadastrar Procedencia'
                ShowHint = True
                ParentShowHint = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object Label45: TUniLabel
                Left = 7
                Top = 345
                Width = 98
                Height = 13
                Caption = 'Condi'#231#227'o do Interno'
                TabOrder = 38
              end
              object Label43: TUniLabel
                Left = 8
                Top = 262
                Width = 11
                Height = 13
                Caption = 'ID'
                TabOrder = 39
              end
              object Label46: TUniLabel
                Left = 66
                Top = 262
                Width = 68
                Height = 13
                Caption = 'Unidade Penal'
                TabOrder = 40
              end
              object SpeedButton2: TUniSpeedButton
                Left = 273
                Top = 358
                Width = 23
                Height = 22
                Hint = 'Cadastrar Procedencia'
                ShowHint = True
                ParentShowHint = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object Label27: TUniLabel
                Left = 149
                Top = 96
                Width = 58
                Height = 13
                Caption = 'Outro Nome'
                TabOrder = 42
              end
              object Label36: TUniLabel
                Left = 432
                Top = 96
                Width = 26
                Height = 13
                Caption = 'Vulgo'
                TabOrder = 43
              end
              object Label55: TUniLabel
                Left = 431
                Top = 135
                Width = 70
                Height = 13
                Caption = 'CI/OF Entrada'
                TabOrder = 44
              end
              object Label65: TUniLabel
                Left = 168
                Top = 180
                Width = 69
                Height = 13
                Caption = 'NOME SOCIAL'
                TabOrder = 45
              end
              object Label66: TUniLabel
                Left = 8
                Top = 221
                Width = 88
                Height = 13
                Caption = 'Orienta'#231#227'o Sexual'
                TabOrder = 46
              end
              object Label163: TUniLabel
                Left = 305
                Top = 343
                Width = 81
                Height = 13
                Caption = 'Cargo na Fac'#231#227'o'
                TabOrder = 47
              end
              object lbl1: TUniLabel
                Left = 149
                Top = 57
                Width = 53
                Height = 13
                Caption = 'N'#186' Infopen'
                TabOrder = 48
              end
              object Label38: TUniLabel
                Left = 8
                Top = 179
                Width = 65
                Height = 13
                Caption = 'Regime Inicial'
                TabOrder = 49
              end
              object Label49: TUniLabel
                Left = 327
                Top = 136
                Width = 87
                Height = 13
                Caption = 'Data Perman'#234'ncia'
                TabOrder = 50
              end
              object Label62: TUniLabel
                Left = 365
                Top = 261
                Width = 61
                Height = 13
                Caption = 'N'#186' da Roupa'
                TabOrder = 51
              end
              object Label78: TUniLabel
                Left = 7
                Top = 427
                Width = 32
                Height = 13
                Caption = 'Ano(s)'
                TabOrder = 52
              end
              object Label79: TUniLabel
                Left = 74
                Top = 427
                Width = 38
                Height = 13
                Caption = 'M'#234's(es)'
                TabOrder = 53
              end
              object Label80: TUniLabel
                Left = 141
                Top = 427
                Width = 28
                Height = 13
                Caption = 'Dia(s)'
                TabOrder = 54
              end
              object Label82: TUniLabel
                Left = 218
                Top = 427
                Width = 63
                Height = 13
                Caption = 'Regime Atual'
                TabOrder = 55
              end
              object Label83: TUniLabel
                Left = 490
                Top = 427
                Width = 109
                Height = 13
                Caption = 'Grau de Periculosidade'
                TabOrder = 56
              end
              object Label67: TUniLabel
                Left = 373
                Top = 57
                Width = 56
                Height = 13
                Caption = 'Tipo Justi'#231'a'
                TabOrder = 57
              end
              object Label18: TUniLabel
                Left = 304
                Top = 303
                Width = 34
                Height = 13
                Caption = 'Fac'#231#227'o'
                TabOrder = 58
              end
              object SpeedButton8: TUniSpeedButton
                Left = 577
                Top = 319
                Width = 23
                Height = 22
                Hint = 'Cadastrar Procedencia'
                ShowHint = True
                ParentShowHint = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object Label51: TUniLabel
                Left = 507
                Top = 57
                Width = 73
                Height = 13
                Caption = 'ID Monitora'#231#227'o'
                TabOrder = 60
              end
              object Label57: TUniLabel
                Left = 8
                Top = 386
                Width = 226
                Height = 13
                Caption = 'Origem do Mandado/Estado solicitante da vaga'
                TabOrder = 61
              end
              object Label58: TUniLabel
                Left = 304
                Top = 384
                Width = 89
                Height = 13
                Caption = 'Presidio de Origem'
                TabOrder = 62
              end
              object Label60: TUniLabel
                Left = 421
                Top = 220
                Width = 131
                Height = 13
                Caption = 'Comportamento do Interno'
                TabOrder = 63
              end
              object DBEditCodigo: TUniDBEdit
                Left = 149
                Top = 25
                Width = 76
                Height = 21
                Enabled = False
                DataField = 'ID_INTERNO'
                DataSource = DsCadastro
                TabOrder = 2
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
                TabOrder = 3
                Color = clWindow
              end
              object DBEdit3: TUniDBEdit
                Left = 267
                Top = 72
                Width = 100
                Height = 21
                DataField = 'RGI'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBEditdtentrada: TUniDBEdit
                Left = 149
                Top = 152
                Width = 84
                Height = 21
                DataField = 'DATA_ENTRADA'
                DataSource = DsCadastro
                TabOrder = 11
                Color = clWindow
              end
              object DBLookupComboBoxID_PROCEDENCIA: TUniDBLookupComboBox
                Left = 7
                Top = 319
                Width = 265
                Height = 21
                ListField = 'PROCEDENCIA'
                ListSource = Dm.DsProcedencia
                KeyField = 'ID_PROCEDENCIA'
                ListFieldIndex = 0
                DataField = 'ID_PROCEDENCIA'
                DataSource = DsCadastro
                TabOrder = 23
              end
              object DBEditdtprisao: TUniDBEdit
                Left = 238
                Top = 152
                Width = 83
                Height = 21
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
                TabOrder = 12
                Color = clWindow
              end
              object DBLookupComboBox1: TUniDBLookupComboBox
                Left = 7
                Top = 361
                Width = 266
                Height = 21
                ListField = 'DESCRICAO'
                ListSource = Dm.DsCondicaoInterno
                KeyField = 'IDCONDICAO_INTERNO'
                ListFieldIndex = 0
                DataField = 'IDCONDICAO_INTERNO'
                DataSource = DsCadastro
                TabOrder = 25
              end
              object DBEdit7: TUniDBEdit
                Left = 8
                Top = 278
                Width = 52
                Height = 21
                Enabled = False
                DataField = 'ID_UP'
                DataSource = DsCadastro
                TabOrder = 20
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
                TabOrder = 21
              end
              object DBImageFOTOInterno: TUniDBImage
                Left = 10
                Top = 13
                Width = 135
                Height = 127
                DataField = 'FOTO'
                DataSource = DsCadastro
                Stretch = True
              end
              object DBEdit24: TUniDBEdit
                Left = 149
                Top = 112
                Width = 276
                Height = 21
                DataField = 'OUTRO_NOME'
                DataSource = DsCadastro
                TabOrder = 9
                Color = clWindow
              end
              object DBEdit25: TUniDBEdit
                Left = 430
                Top = 112
                Width = 171
                Height = 21
                DataField = 'VULGO'
                DataSource = DsCadastro
                TabOrder = 10
                Color = clWindow
              end
              object DBEdit29: TUniDBEdit
                Left = 432
                Top = 151
                Width = 169
                Height = 21
                DataField = 'CI'
                DataSource = DsCadastro
                TabOrder = 14
                Color = clWindow
              end
              object DBEdit35: TUniDBEdit
                Left = 168
                Top = 196
                Width = 433
                Height = 21
                DataField = 'NOME_SOCIAL'
                DataSource = DsCadastro
                TabOrder = 16
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
                TabOrder = 17
              end
              object DBEdit86: TUniDBEdit
                Left = 149
                Top = 72
                Width = 114
                Height = 21
                DataField = 'NUMERO_INFOPEN'
                DataSource = DsCadastro
                TabOrder = 4
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
                TabOrder = 15
              end
              object DBEditpermanencia: TUniDBEdit
                Left = 326
                Top = 152
                Width = 91
                Height = 21
                Enabled = False
                DataField = 'DATA_PERMANENCIA'
                DataSource = DsCadastro
                TabOrder = 13
                Color = clWindow
              end
              object BitBtn1: TUniBitBtn
                Left = 16
                Top = 144
                Width = 121
                Height = 25
                Caption = 'Salvar em disco'
                TabOrder = 1
              end
              object DBEdit19: TUniDBEdit
                Left = 366
                Top = 278
                Width = 234
                Height = 21
                DataField = 'NUMERO_ROUPA'
                DataSource = DsCadastro
                TabOrder = 22
                Color = clWindow
              end
              object DBEdit28: TUniDBEdit
                Left = 7
                Top = 443
                Width = 65
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_ANO'
                DataSource = DsCadastro
                TabOrder = 29
                Color = clWindow
              end
              object DBEdit31: TUniDBEdit
                Left = 74
                Top = 443
                Width = 65
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_MES'
                DataSource = DsCadastro
                TabOrder = 30
                Color = clWindow
              end
              object DBEdit33: TUniDBEdit
                Left = 141
                Top = 443
                Width = 65
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_DIA'
                DataSource = DsCadastro
                TabOrder = 31
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
                TabOrder = 32
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
                TabOrder = 33
              end
              object DBEdit36: TUniDBEdit
                Left = 373
                Top = 72
                Width = 108
                Height = 21
                DataField = 'NUMERO_PROCED'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object DBLookupComboBoxFACCAO: TUniDBLookupComboBox
                Left = 303
                Top = 319
                Width = 274
                Height = 21
                ListField = 'FACCAO'
                ListSource = DsFaccao
                KeyField = 'ID_FACCAO'
                ListFieldIndex = 0
                DataField = 'ID_FACCAO'
                DataSource = DsCadastro
                TabOrder = 24
              end
              object DBEdit84: TUniDBEdit
                Left = 307
                Top = 359
                Width = 297
                Height = 21
                Hint = 'FACCAO'
                DataField = 'FACCAO'
                DataSource = DsCadastro
                TabOrder = 26
                Color = clWindow
              end
              object DBEdit8: TUniDBEdit
                Left = 507
                Top = 72
                Width = 94
                Height = 21
                DataField = 'ID_ME'
                DataSource = DsCadastro
                TabOrder = 7
                Color = clWindow
              end
              object DBLookupComboBoxSolicitanteVaga: TUniDBLookupComboBox
                Left = 7
                Top = 402
                Width = 258
                Height = 21
                ListField = 'CIDADE'
                ListSource = Dm.DSCIDADE
                KeyField = 'ID_CIDADE'
                ListFieldIndex = 0
                DataField = 'ID_SOLICITANTE_VAGA'
                DataSource = DsCadastro
                TabOrder = 27
              end
              object DBLookupComboBoxPresidioOrigem: TUniDBLookupComboBox
                Left = 304
                Top = 401
                Width = 273
                Height = 21
                ListField = 'PROCEDENCIA'
                ListSource = Dm.DsProcedencia
                KeyField = 'ID_PROCEDENCIA'
                ListFieldIndex = 0
                DataField = 'ID_PRESIDIO_ORIGEM'
                DataSource = DsCadastro
                TabOrder = 28
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
                TabOrder = 19
              end
              object UniLabel8: TUniLabel
                Left = 239
                Top = 219
                Width = 24
                Height = 13
                Caption = 'Sexo'
                TabOrder = 65
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
                TabOrder = 66
              end
              object UniLabel1: TUniLabel
                Left = 305
                Top = 219
                Width = 104
                Height = 13
                Caption = 'Reincidente / Prim'#225'rio'
                TabOrder = 67
              end
              object UniDBComboBox1: TUniDBComboBox
                Left = 305
                Top = 237
                Width = 109
                DataField = 'SEXO'
                DataSource = DsCadastro
                Items.Strings = (
                  'R'
                  'P')
                ItemIndex = -1
                TabOrder = 68
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
                TabOrder = 69
              end
            end
            object TabSheet2: TUniTabSheet
              Caption = 'Dados Gerais'
              ExplicitWidth = 753
              ExplicitHeight = 473
              object Label11: TUniLabel
                Left = 24
                Top = 56
                Width = 20
                Height = 13
                Caption = 'M'#227'e'
                TabOrder = 23
              end
              object Label19: TUniLabel
                Left = 312
                Top = 56
                Width = 14
                Height = 13
                Caption = 'Pai'
                TabOrder = 24
              end
              object Label21: TUniLabel
                Left = 312
                Top = 96
                Width = 66
                Height = 13
                Caption = 'Nacionalidade'
                TabOrder = 25
              end
              object Label22: TUniLabel
                Left = 144
                Top = 135
                Width = 24
                Height = 13
                Caption = 'Ra'#231'a'
                TabOrder = 26
              end
              object Label23: TUniLabel
                Left = 25
                Top = 176
                Width = 60
                Height = 13
                Caption = 'Escolaridade'
                TabOrder = 27
              end
              object Label20: TUniLabel
                Left = 24
                Top = 96
                Width = 61
                Height = 13
                Caption = 'Naturalidade'
                TabOrder = 28
              end
              object Label37: TUniLabel
                Left = 25
                Top = 217
                Width = 37
                Height = 13
                Caption = 'Religi'#227'o'
                TabOrder = 29
              end
              object Label41: TUniLabel
                Left = 24
                Top = 291
                Width = 60
                Height = 13
                Caption = 'Condena'#231#227'o'
                TabOrder = 30
              end
              object Label42: TUniLabel
                Left = 24
                Top = 329
                Width = 41
                Height = 13
                Caption = 'Hist'#243'rico'
                TabOrder = 31
              end
              object Label13: TUniLabel
                Left = 336
                Top = 216
                Width = 44
                Height = 13
                Caption = 'Profiss'#227'o'
                TabOrder = 32
              end
              object SpeedButton4: TUniSpeedButton
                Left = 284
                Top = 111
                Width = 23
                Height = 22
                Visible = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object SpeedButton5: TUniSpeedButton
                Left = 594
                Top = 111
                Width = 23
                Height = 22
                Visible = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object SpeedButton6: TUniSpeedButton
                Left = 301
                Top = 151
                Width = 23
                Height = 22
                Visible = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object SpeedButton7: TUniSpeedButton
                Left = 285
                Top = 190
                Width = 23
                Height = 22
                Visible = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object SpeedButton9: TUniSpeedButton
                Left = 602
                Top = 229
                Width = 23
                Height = 22
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object Label5: TUniLabel
                Left = 137
                Top = 16
                Width = 14
                Height = 13
                Caption = 'RG'
                TabOrder = 38
              end
              object Label24: TUniLabel
                Left = 351
                Top = 16
                Width = 19
                Height = 13
                Caption = 'CPF'
                TabOrder = 39
              end
              object Label25: TUniLabel
                Left = 486
                Top = 16
                Width = 55
                Height = 13
                Caption = 'Estado Civil'
                TabOrder = 40
              end
              object Label26: TUniLabel
                Left = 24
                Top = 368
                Width = 86
                Height = 13
                Caption = 'Sinais Particulares'
                TabOrder = 41
              end
              object Label39: TUniLabel
                Left = 24
                Top = 136
                Width = 29
                Height = 13
                Caption = 'Altura'
                TabOrder = 42
              end
              object Label47: TUniLabel
                Left = 80
                Top = 136
                Width = 23
                Height = 13
                Caption = 'Peso'
                TabOrder = 43
              end
              object Label52: TUniLabel
                Left = 24
                Top = 16
                Width = 81
                Height = 13
                Caption = 'Data Nascimento'
                TabOrder = 44
              end
              object Label56: TUniLabel
                Left = 24
                Top = 253
                Width = 29
                Height = 13
                Caption = 'Artigo'
                TabOrder = 45
              end
              object Label63: TUniLabel
                Left = 329
                Top = 136
                Width = 67
                Height = 13
                Caption = 'Cor dos Olhos'
                TabOrder = 46
              end
              object Label64: TUniLabel
                Left = 458
                Top = 135
                Width = 68
                Height = 13
                Caption = 'Cor do Cabelo'
                TabOrder = 47
              end
              object Label149: TUniLabel
                Left = 24
                Top = 405
                Width = 46
                Height = 13
                Caption = 'Visitantes'
                TabOrder = 48
              end
              object Label48: TUniLabel
                Left = 311
                Top = 176
                Width = 74
                Height = 13
                Caption = 'Titulo de Eleitor'
                TabOrder = 49
              end
              object Label77: TUniLabel
                Left = 241
                Top = 16
                Width = 69
                Height = 13
                Caption = 'Org'#227'o Emissor'
                TabOrder = 50
              end
              object DBEdit1: TUniDBEdit
                Left = 24
                Top = 72
                Width = 281
                Height = 21
                DataField = 'MAE'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBEdit5: TUniDBEdit
                Left = 312
                Top = 72
                Width = 313
                Height = 21
                DataField = 'PAI'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object DBLookupComboBoxIDNATURALIDADE: TUniDBLookupComboBox
                Left = 24
                Top = 112
                Width = 257
                Height = 21
                ListField = 'CIDADE'
                ListSource = Dm.DSCIDADE
                KeyField = 'ID_CIDADE'
                ListFieldIndex = 0
                DataField = 'IDNATURALIDADE'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBLookupComboBoxIDNACIONALIDADE: TUniDBLookupComboBox
                Left = 312
                Top = 112
                Width = 281
                Height = 21
                ListField = 'NACIONALIDADE'
                ListSource = Dm.DSNACIONALIDADE
                KeyField = 'ID_NACIONALIDADE'
                ListFieldIndex = 0
                DataField = 'IDNACIONALIDADE'
                DataSource = DsCadastro
                TabOrder = 8
              end
              object DBLookupComboBoxIDRACA: TUniDBLookupComboBox
                Left = 144
                Top = 151
                Width = 153
                Height = 21
                ListField = 'RACA'
                ListSource = Dm.DSRACA
                KeyField = 'ID_RACA'
                ListFieldIndex = 0
                DataField = 'IDRACA'
                DataSource = DsCadastro
                TabOrder = 11
              end
              object DBLookupComboBoxIDESCOLARIDADE: TUniDBLookupComboBox
                Left = 24
                Top = 192
                Width = 257
                Height = 21
                ListField = 'ESCOLARIDADE'
                ListSource = Dm.DSESCOLARIDADE
                KeyField = 'ID_ESCOLARIDADE'
                ListFieldIndex = 0
                DataField = 'IDESCOLARIDADE'
                DataSource = DsCadastro
                TabOrder = 14
              end
              object DBEdit21: TUniDBEdit
                Left = 24
                Top = 306
                Width = 601
                Height = 21
                DataField = 'CONDENACAO'
                DataSource = DsCadastro
                TabOrder = 18
                Color = clWindow
              end
              object DBEdit22: TUniDBEdit
                Left = 24
                Top = 345
                Width = 601
                Height = 21
                DataField = 'HISTORICO'
                DataSource = DsCadastro
                TabOrder = 19
                Color = clWindow
              end
              object DBLookupComboBoxIDPROFISSAO: TUniDBLookupComboBox
                Left = 336
                Top = 232
                Width = 257
                Height = 21
                ListField = 'PROFISSAO'
                ListSource = Dm.DsProfissao
                KeyField = 'ID_PROFISSAO'
                ListFieldIndex = 0
                DataField = 'IDPROFISSAO'
                DataSource = DsCadastro
                TabOrder = 16
              end
              object DBEditrg: TUniDBEdit
                Left = 137
                Top = 32
                Width = 98
                Height = 21
                DataField = 'RG'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object DBEditCPF: TUniDBEdit
                Left = 352
                Top = 32
                Width = 131
                Height = 21
                DataField = 'CPF'
                DataSource = DsCadastro
                TabOrder = 3
                Color = clWindow
              end
              object DBEdit23: TUniDBEdit
                Left = 24
                Top = 384
                Width = 600
                Height = 21
                DataField = 'SINAIS_PARTICULARES'
                DataSource = DsCadastro
                TabOrder = 20
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
                TabOrder = 4
              end
              object DBEdit26: TUniDBEdit
                Left = 24
                Top = 152
                Width = 49
                Height = 21
                DataField = 'ALTURA'
                DataSource = DsCadastro
                TabOrder = 9
                Color = clWindow
              end
              object DBEdit27: TUniDBEdit
                Left = 80
                Top = 152
                Width = 57
                Height = 21
                DataField = 'PESO'
                DataSource = DsCadastro
                TabOrder = 10
                Color = clWindow
              end
              object DBEditdtrnascimento: TUniDBEdit
                Left = 24
                Top = 32
                Width = 105
                Height = 21
                DataField = 'DATA_NASCIMENTO'
                DataSource = DsCadastro
                TabOrder = 0
                Color = clWindow
              end
              object DBEdit30: TUniDBEdit
                Left = 24
                Top = 270
                Width = 601
                Height = 21
                DataField = 'ARTIGO'
                DataSource = DsCadastro
                TabOrder = 17
                Color = clWindow
              end
              object DBEdit32: TUniDBEdit
                Left = 328
                Top = 151
                Width = 119
                Height = 21
                DataField = 'COR_OLHOS'
                DataSource = DsCadastro
                TabOrder = 12
                Color = clWindow
              end
              object DBEdit34: TUniDBEdit
                Left = 456
                Top = 151
                Width = 169
                Height = 21
                DataField = 'COR_CABELOS'
                DataSource = DsCadastro
                TabOrder = 13
                Color = clWindow
              end
              object DBEdit83: TUniDBEdit
                Left = 24
                Top = 421
                Width = 601
                Height = 21
                DataField = 'VISITANTES'
                DataSource = DsCadastro
                TabOrder = 21
                Color = clWindow
              end
              object DBEdit4: TUniDBEdit
                Left = 312
                Top = 192
                Width = 311
                Height = 21
                DataField = 'TITULO_ELEITOR'
                DataSource = DsCadastro
                TabOrder = 15
                Color = clWindow
              end
              object DBEdit20: TUniDBEdit
                Left = 241
                Top = 32
                Width = 98
                Height = 21
                DataField = 'ORGAO_EMISSOR_RG'
                DataSource = DsCadastro
                TabOrder = 2
                Color = clWindow
              end
              object DBComboBox4: TUniDBComboBox
                Left = 26
                Top = 232
                Width = 289
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
                TabOrder = 22
              end
            end
            object ts1: TUniTabSheet
              Caption = 'Advogados'
              ExplicitWidth = 753
              ExplicitHeight = 473
              object lbl3: TUniLabel
                Left = 16
                Top = 21
                Width = 97
                Height = 13
                Caption = 'Advogado/Escrit'#243'rio'
                TabOrder = 5
              end
              object btn2: TUniSpeedButton
                Left = 604
                Top = 36
                Width = 23
                Height = 22
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object Label50: TUniLabel
                Left = 16
                Top = 64
                Width = 63
                Height = 13
                Caption = 'Observa'#231#245'es'
                TabOrder = 7
              end
              object DBLookupComboBoxIDADVOGADO: TUniDBLookupComboBox
                Left = 15
                Top = 37
                Width = 586
                Height = 21
                ListField = 'ADVOGADO'
                ListSource = Dm.DsAdvogado
                KeyField = 'ID_ADVOGADO'
                ListFieldIndex = 0
                TabOrder = 0
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
                TabOrder = 2
              end
              object Memoobsadvogado: TUniMemo
                Left = 16
                Top = 80
                Width = 609
                Height = 65
                Color = clWindow
                TabOrder = 1
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
                TabOrder = 3
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
                TabOrder = 4
              end
            end
            object TabSheet3: TUniTabSheet
              Caption = 'Endere'#231'o'
              ExplicitWidth = 753
              ExplicitHeight = 473
              object Label28: TUniLabel
                Left = 16
                Top = 8
                Width = 45
                Height = 13
                Caption = 'Endere'#231'o'
                TabOrder = 9
              end
              object Label29: TUniLabel
                Left = 16
                Top = 48
                Width = 12
                Height = 13
                Caption = 'N'#186
                TabOrder = 10
              end
              object Label30: TUniLabel
                Left = 80
                Top = 48
                Width = 28
                Height = 13
                Caption = 'Bairro'
                TabOrder = 11
              end
              object Label31: TUniLabel
                Left = 16
                Top = 96
                Width = 65
                Height = 13
                Caption = 'Complemento'
                TabOrder = 12
              end
              object Label32: TUniLabel
                Left = 496
                Top = 96
                Width = 19
                Height = 13
                Caption = 'CEP'
                TabOrder = 13
              end
              object Label33: TUniLabel
                Left = 16
                Top = 142
                Width = 33
                Height = 13
                Caption = 'Cidade'
                TabOrder = 14
              end
              object Label34: TUniLabel
                Left = 496
                Top = 142
                Width = 42
                Height = 13
                Caption = 'Telefone'
                TabOrder = 15
              end
              object Label35: TUniLabel
                Left = 376
                Top = 184
                Width = 39
                Height = 13
                Caption = 'Contato'
                TabOrder = 16
              end
              object SpeedButton11: TUniSpeedButton
                Left = 462
                Top = 156
                Width = 23
                Height = 22
                Hint = 'Cadastrar Cidade'
                Visible = False
                ShowHint = True
                ParentShowHint = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object lbl2: TUniLabel
                Left = 16
                Top = 184
                Width = 19
                Height = 13
                Caption = 'Pais'
                TabOrder = 18
              end
              object btn1: TUniSpeedButton
                Left = 342
                Top = 199
                Width = 23
                Height = 22
                Caption = '...'
                ParentColor = False
                Color = clWindow
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
                TabOrder = 6
                Color = clWindow
              end
              object DBEdit17: TUniDBEdit
                Left = 376
                Top = 200
                Width = 241
                Height = 21
                DataField = 'CONTATO'
                DataSource = DsCadastro
                TabOrder = 8
                Color = clWindow
              end
              object DBLookupComboBoxIDCIDADE: TUniDBLookupComboBox
                Left = 16
                Top = 158
                Width = 441
                Height = 21
                ListField = 'CIDADE'
                ListSource = Dm.DSCIDADE
                KeyField = 'ID_CIDADE'
                ListFieldIndex = 0
                DataField = 'IDCIDADE'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object DBLookupComboBoxIDNACIONALIDADE1: TUniDBLookupComboBox
                Left = 16
                Top = 200
                Width = 321
                Height = 21
                ListField = 'NACIONALIDADE'
                ListSource = Dm.DsPais
                KeyField = 'ID_NACIONALIDADE'
                ListFieldIndex = 0
                DataField = 'IDPAIS_ENDERECO'
                DataSource = DsCadastro
                TabOrder = 7
              end
            end
            object TabSheet5: TUniTabSheet
              Caption = 'Hist'#243'rico'
              ExplicitWidth = 753
              ExplicitHeight = 473
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
                Width = 610
                Height = 129
                DataSource = DSHISTORICO_interno
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                WebOptions.LoadMaskMsg = 'Please wait...'
                TabOrder = 3
                Columns = <
                  item
                    FieldName = 'DATA_HORA'
                    Title.Caption = 'DATA_HORA'
                    Width = 60
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'SETOR'
                    Title.Caption = 'SETOR'
                    Width = 50
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'DESCRICAO'
                    Width = 64
                    Visible = True
                    Expanded = False
                  end>
              end
              object Button1: TUniButton
                Left = 6
                Top = 106
                Width = 98
                Height = 25
                Caption = 'Incluir'
                ParentFont = False
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                TabOrder = 2
              end
              object DBMemo1: TUniDBMemo
                Left = 8
                Top = 301
                Width = 610
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = DSHISTORICO_interno
                TabOrder = 4
                Color = clWindow
              end
              object MemoDescricao: TUniMemo
                Left = 108
                Top = 33
                Width = 506
                Height = 97
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
            object TabSheet6: TUniTabSheet
              Caption = 'Fotos'
              ExplicitWidth = 753
              ExplicitHeight = 473
              object FOTO: TUniLabel
                Left = 16
                Top = 7
                Width = 23
                Height = 13
                Caption = 'Perfil'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
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
              object Label16: TUniLabel
                Left = 15
                Top = 297
                Width = 60
                Height = 13
                Caption = 'Outras Fotos'
                ParentFont = False
                Font.Name = 'MS Sans Serif'
                TabOrder = 7
              end
              object Label17: TUniLabel
                Left = 152
                Top = 314
                Width = 23
                Height = 13
                Caption = 'Data'
                TabOrder = 11
              end
              object Label44: TUniLabel
                Left = 152
                Top = 357
                Width = 46
                Height = 13
                Caption = 'Descri'#231#227'o'
                TabOrder = 12
              end
              object DBImageFOTOPERFIL: TUniDBImage
                Left = 16
                Top = 23
                Width = 127
                Height = 127
                DataField = 'FOTO_PERFIL'
                DataSource = DsCadastro
                Stretch = True
              end
              object DBImagetatuagem1: TUniDBImage
                Left = 168
                Top = 23
                Width = 127
                Height = 127
                DataField = 'FOTO_TATUAGEM'
                DataSource = DsCadastro
              end
              object DBImageFOTO_SINAIS: TUniDBImage
                Left = 320
                Top = 23
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS'
                DataSource = DsCadastro
              end
              object DBImageFOTO_SINAIS1: TUniDBImage
                Left = 472
                Top = 23
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS1'
                DataSource = DsCadastro
              end
              object DBImageFOTO_SINAIS2: TUniDBImage
                Left = 168
                Top = 170
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS2'
                DataSource = DsCadastro
              end
              object DBImageFOTO_SINAIS3: TUniDBImage
                Left = 320
                Top = 170
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS3'
                DataSource = DsCadastro
              end
              object DBImageFOTO_SINAIS4: TUniDBImage
                Left = 472
                Top = 170
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS4'
                DataSource = DsCadastro
              end
              object DBImageOutras: TUniDBImage
                Left = 15
                Top = 314
                Width = 127
                Height = 127
                DataField = 'FOTO'
                DataSource = DsFoto
                Stretch = True
              end
              object DBGrid4: TUniDBGrid
                Left = 384
                Top = 312
                Width = 320
                Height = 120
                DataSource = DsFoto
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ReadOnly = True
                WebOptions.LoadMaskMsg = 'Please wait...'
                TabOrder = 8
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
              object DBEdit6: TUniDBEdit
                Left = 152
                Top = 373
                Width = 209
                Height = 21
                DataField = 'DESCRICAO'
                DataSource = DsFoto
                TabOrder = 9
                Color = clWindow
              end
              object DBNavigator3: TUniDBNavigator
                Left = 141
                Top = 413
                Width = 240
                Height = 25
                DataSource = DsFoto
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
                TabOrder = 10
              end
            end
            object TabSheet4: TUniTabSheet
              Caption = 'Mov. Anterior'
              ExplicitWidth = 753
              ExplicitHeight = 473
              object DBMemo2: TUniDBMemo
                Left = 0
                Top = 0
                Width = 768
                Height = 480
                DataField = 'HISTORICO_VELHO'
                DataSource = DsCadastro
                Align = alClient
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 0
                Color = clWindow
                ExplicitWidth = 753
                ExplicitHeight = 473
              end
            end
            object TabSheet7: TUniTabSheet
              Caption = 'Mapa'
              ExplicitWidth = 753
              ExplicitHeight = 473
              object Label61: TUniLabel
                Left = 24
                Top = 16
                Width = 81
                Height = 13
                Caption = 'Data Nascimento'
                TabOrder = 7
              end
              object Label70: TUniLabel
                Left = 136
                Top = 16
                Width = 61
                Height = 13
                Caption = 'Naturalidade'
                TabOrder = 14
              end
              object Label71: TUniLabel
                Left = 418
                Top = 14
                Width = 51
                Height = 13
                Caption = 'Resid'#234'ncia'
                TabOrder = 15
              end
              object Label72: TUniLabel
                Left = 24
                Top = 64
                Width = 55
                Height = 13
                Caption = 'Data Pris'#227'o'
                TabOrder = 16
              end
              object Label75: TUniLabel
                Left = 136
                Top = 63
                Width = 226
                Height = 13
                Caption = 'Origem do Mandado/Estado solicitante da vaga'
                TabOrder = 17
              end
              object Label81: TUniLabel
                Left = 418
                Top = 61
                Width = 34
                Height = 13
                Caption = 'Artigos'
                TabOrder = 18
              end
              object Label85: TUniLabel
                Left = 24
                Top = 113
                Width = 93
                Height = 13
                Caption = 'Tipo Justi'#231'a, ex: JF'
                TabOrder = 19
              end
              object Label84: TUniLabel
                Left = 24
                Top = 155
                Width = 133
                Height = 13
                Caption = 'Benef'#237'cio / Situa'#231#227'o Jurid'#237'ca'
                TabOrder = 20
              end
              object Label86: TUniLabel
                Left = 418
                Top = 155
                Width = 60
                Height = 13
                Caption = 'Escolaridade'
                TabOrder = 21
              end
              object Label87: TUniLabel
                Left = 24
                Top = 197
                Width = 162
                Height = 13
                Caption = 'Previs'#227'o de Sa'#237'da e/ou Obs.Mapa'
                TabOrder = 22
              end
              object Label88: TUniLabel
                Left = 136
                Top = 113
                Width = 191
                Height = 13
                Caption = 'Condena'#231#227'o Descri'#231#227'o, ex: 10a 5m 12d'
                TabOrder = 23
              end
              object Label89: TUniLabel
                Left = 351
                Top = 112
                Width = 182
                Height = 13
                Caption = 'Quantidade de Ano(s) da condena'#231#227'o'
                TabOrder = 24
              end
              object DBLookupComboBox3: TUniDBLookupComboBox
                Left = 136
                Top = 32
                Width = 265
                Height = 21
                ListField = 'CIDADE'
                ListSource = Dm.DSCIDADE
                KeyField = 'ID_CIDADE'
                ListFieldIndex = 0
                DataField = 'IDNATURALIDADE'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEdit9: TUniDBEdit
                Left = 24
                Top = 32
                Width = 105
                Height = 21
                DataField = 'DATA_NASCIMENTO'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object DBLookupComboBox4: TUniDBLookupComboBox
                Left = 418
                Top = 30
                Width = 300
                Height = 21
                ListField = 'CIDADE'
                ListSource = Dm.DSCIDADE
                KeyField = 'ID_CIDADE'
                ListFieldIndex = 0
                DataField = 'IDCIDADE'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEdit14: TUniDBEdit
                Left = 24
                Top = 80
                Width = 105
                Height = 21
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
                TabOrder = 3
                Color = clWindow
              end
              object DBLookupComboBox5: TUniDBLookupComboBox
                Left = 136
                Top = 79
                Width = 264
                Height = 21
                ListField = 'CIDADE'
                ListSource = Dm.DSCIDADE
                KeyField = 'ID_CIDADE'
                ListFieldIndex = 0
                DataField = 'ID_SOLICITANTE_VAGA'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEdit15: TUniDBEdit
                Left = 418
                Top = 78
                Width = 299
                Height = 21
                DataField = 'ARTIGO'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBEdit16: TUniDBEdit
                Left = 24
                Top = 128
                Width = 105
                Height = 21
                DataField = 'NUMERO_PROCED'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object DBComboBox7: TUniDBComboBox
                Left = 24
                Top = 172
                Width = 377
                Height = 21
                DataField = 'TIPOPROCESSO'
                DataSource = DsCadastro
                Style = csDropDownList
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
                  'Reg. In. Sa'
                  'Regr.SA'
                  'Resp. Proc.'
                  'S.Aberto'
                  'Semiaberto'
                  '')
                ItemIndex = -1
                TabOrder = 8
              end
              object DBLookupComboBox6: TUniDBLookupComboBox
                Left = 418
                Top = 171
                Width = 297
                Height = 21
                ListField = 'ESCOLARIDADE'
                ListSource = Dm.DSESCOLARIDADE
                KeyField = 'ID_ESCOLARIDADE'
                ListFieldIndex = 0
                DataField = 'IDESCOLARIDADE'
                DataSource = DsCadastro
                TabOrder = 9
              end
              object DBEdit18: TUniDBEdit
                Tag = 1
                Left = 24
                Top = 214
                Width = 691
                Height = 21
                DataField = 'OBS_MAPA'
                DataSource = DsCadastro
                TabOrder = 10
                Color = clWindow
              end
              object DBEdit37: TUniDBEdit
                Left = 136
                Top = 128
                Width = 209
                Height = 21
                DataField = 'CONDENACAO'
                DataSource = DsCadastro
                TabOrder = 11
                Color = clWindow
              end
              object DBEdit38: TUniDBEdit
                Left = 351
                Top = 128
                Width = 186
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_ANO'
                DataSource = DsCadastro
                TabOrder = 12
                Color = clWindow
              end
              object Button4: TUniButton
                Left = 576
                Top = 240
                Width = 139
                Height = 25
                Caption = 'Visualizar Este Mapa'
                TabOrder = 13
              end
              object UniLabel3: TUniLabel
                Left = 544
                Top = 110
                Width = 104
                Height = 13
                Caption = 'Reincidente / Prim'#225'rio'
                TabOrder = 25
              end
              object UniDBComboBox2: TUniDBComboBox
                Left = 544
                Top = 128
                Width = 109
                DataField = 'SEXO'
                DataSource = DsCadastro
                Items.Strings = (
                  'R'
                  'P')
                ItemIndex = -1
                TabOrder = 26
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TUniTabSheet
        ExplicitWidth = 763
        ExplicitHeight = 503
        inherited PanelLocalizaConsulta: TUniPanel
          Width = 778
          ExplicitWidth = 763
        end
        inherited DBGridConsulta: TUniDBGrid
          Width = 778
          Height = 469
          Columns = <>
        end
      end
    end
  end
  inherited StatusBar1: TUniStatusBar
    Top = 584
    Width = 878
    ExplicitTop = 632
    ExplicitWidth = 767
  end
  object SqlFaccao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT  COALESCE(FACCAO,'#39#39') || '#39' - '#39' || COALESCE(SIGLA,'#39#39')  AS F' +
        'ACCAO, ID_FACCAO'
      'FROM FACCAO'
      'ORDER BY FACCAO')
    Left = 16
    Top = 64
  end
  object DspFaccao: TDataSetProvider
    DataSet = SqlFaccao
    Left = 44
    Top = 64
  end
  object CdsFaccao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaccao'
    Left = 72
    Top = 64
  end
  object DsFaccao: TDataSource
    DataSet = CdsFaccao
    Left = 100
    Top = 64
  end
  object SqlConsultaBackup: TSQLQuery
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
    Left = 8
    Top = 296
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
    Left = 41
    Top = 295
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 72
    Top = 295
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 113
    Top = 295
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 149
    Top = 295
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
    Left = 1
    Top = 353
  end
  object DspFilhos: TDataSetProvider
    DataSet = SqlFilhos
    Left = 29
    Top = 353
  end
  object CdsFilhos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspFilhos'
    Left = 57
    Top = 353
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
    Left = 85
    Top = 353
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
    Left = 353
    Top = 1
  end
  object DsFoto: TDataSource
    DataSet = CdsFoto
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
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM advogados_internos'
      'where id_interno = :id_interno')
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
end
