inherited FrmCadastroFuncionario: TFrmCadastroFuncionario
  ClientHeight = 620
  ClientWidth = 995
  Caption = 'Cadastro de Funcion'#225'rios'
  ExplicitTop = -224
  ExplicitWidth = 1011
  ExplicitHeight = 659
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelTituloModeloCadastro: TUniPanel
    Width = 995
    ExplicitWidth = 995
    inherited UniImage1: TUniImage
      Width = 993
      ExplicitWidth = 993
    end
  end
  inherited PanelBotoes: TUniPanel
    Height = 553
    ExplicitHeight = 553
  end
  inherited PanelModeloCadastro: TUniPanel
    Width = 889
    Height = 553
    ExplicitWidth = 744
    ExplicitHeight = 483
    inherited PageControlModeloCadastro: TUniPageControl
      Width = 887
      Height = 551
      ActivePage = TabSheetCadastro
      ExplicitWidth = 887
      ExplicitHeight = 551
      inherited TabSheetCadastro: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 879
        ExplicitHeight = 503
        inherited PanelCadastro: TUniPanel
          Width = 879
          Height = 523
          ExplicitWidth = 879
          ExplicitHeight = 523
          object PageControlFuncionario: TUniPageControl
            Left = 1
            Top = 1
            Width = 877
            Height = 521
            ActivePage = TabSheet1
            TabOrder = 1
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            ExplicitWidth = 860
            ExplicitHeight = 511
            object TabSheet1: TUniTabSheet
              Caption = 'Principal'
              object Label2: TUniLabel
                Left = 151
                Top = 20
                Width = 11
                Height = 13
                Caption = 'ID'
                TabOrder = 0
              end
              object Label3: TUniLabel
                Left = 194
                Top = 20
                Width = 29
                Height = 13
                Caption = 'NOME'
                TabOrder = 14
              end
              object Label17: TUniLabel
                Left = 263
                Top = 63
                Width = 21
                Height = 13
                Caption = 'M'#195'E'
                TabOrder = 15
              end
              object Label4: TUniLabel
                Left = 151
                Top = 108
                Width = 58
                Height = 13
                Caption = 'MATRICULA'
                TabOrder = 16
              end
              object Label6: TUniLabel
                Left = 258
                Top = 108
                Width = 19
                Height = 13
                Caption = 'CPF'
                TabOrder = 17
              end
              object Label7: TUniLabel
                Left = 402
                Top = 108
                Width = 14
                Height = 13
                Caption = 'RG'
                TabOrder = 18
              end
              object Label13: TUniLabel
                Left = 514
                Top = 107
                Width = 85
                Height = 13
                Caption = 'ORG'#195'O EMISSOR'
                TabOrder = 19
              end
              object Label16: TUniLabel
                Left = 619
                Top = 106
                Width = 37
                Height = 13
                Caption = 'CLASSE'
                TabOrder = 20
              end
              object Label19: TUniLabel
                Left = 693
                Top = 105
                Width = 85
                Height = 13
                Caption = 'G.SANGUE /F. RH'
                TabOrder = 21
              end
              object Label14: TUniLabel
                Left = 687
                Top = 20
                Width = 83
                Height = 13
                Caption = 'DATA ADMISS'#195'O'
                TabOrder = 22
              end
              object Label15: TUniLabel
                Left = 152
                Top = 63
                Width = 96
                Height = 13
                Caption = 'DATA NASCIMENTO'
                TabOrder = 23
              end
              object Label18: TUniLabel
                Left = 551
                Top = 63
                Width = 17
                Height = 13
                Caption = 'PAI'
                TabOrder = 24
              end
              object FOTO: TUniLabel
                Left = 56
                Top = 3
                Width = 48
                Height = 20
                Caption = 'FOTO'
                ParentFont = False
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                TabOrder = 25
              end
              object Label37: TUniLabel
                Left = 567
                Top = 20
                Width = 78
                Height = 13
                Caption = 'Nome de Guerra'
                TabOrder = 26
              end
              object DBImageFOTOFUNCIONARIO: TUniDBImage
                Left = 16
                Top = 22
                Width = 127
                Height = 127
                DataField = 'FOTO'
                DataSource = DsCadastro
                Stretch = True
              end
              object DBEditcodigo: TUniDBEdit
                Left = 151
                Top = 36
                Width = 41
                Height = 21
                Enabled = False
                DataField = 'ID_FUNCIONARIO'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object DBEdit2: TUniDBEdit
                Left = 194
                Top = 36
                Width = 367
                Height = 21
                DataField = 'NOME_FUNCIONARIO'
                DataSource = DsCadastro
                TabOrder = 2
                Color = clWindow
              end
              object DBEdit12: TUniDBEdit
                Left = 264
                Top = 79
                Width = 280
                Height = 21
                DataField = 'MAE'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object DBEdit3: TUniDBEdit
                Left = 151
                Top = 124
                Width = 97
                Height = 21
                DataField = 'MATRICULA'
                DataSource = DsCadastro
                TabOrder = 8
                Color = clWindow
              end
              object DBEditCPF: TUniDBEdit
                Left = 258
                Top = 124
                Width = 137
                Height = 21
                DataField = 'CPF'
                DataSource = DsCadastro
                TabOrder = 9
                Color = clWindow
              end
              object DBEdit1: TUniDBEdit
                Left = 402
                Top = 124
                Width = 102
                Height = 21
                DataField = 'RG'
                DataSource = DsCadastro
                TabOrder = 10
                Color = clWindow
              end
              object DBEdit6: TUniDBEdit
                Left = 514
                Top = 123
                Width = 102
                Height = 21
                DataField = 'ORGAOEMISSOR'
                DataSource = DsCadastro
                TabOrder = 11
                Color = clWindow
              end
              object DBEdit11: TUniDBEdit
                Left = 619
                Top = 122
                Width = 76
                Height = 21
                DataField = 'CLASSE'
                DataSource = DsCadastro
                TabOrder = 12
                Color = clWindow
              end
              object DBEdit14: TUniDBEdit
                Left = 696
                Top = 121
                Width = 89
                Height = 21
                DataField = 'FATORRH'
                DataSource = DsCadastro
                TabOrder = 13
                Color = clWindow
              end
              object DBEditadmissao: TUniDBEdit
                Left = 687
                Top = 36
                Width = 100
                Height = 21
                DataField = 'ADMISSAO'
                DataSource = DsCadastro
                TabOrder = 4
                Color = clWindow
              end
              object DBEditnascimento: TUniDBEdit
                Left = 152
                Top = 79
                Width = 105
                Height = 21
                DataField = 'DTNASCIMENTO'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBEdit13: TUniDBEdit
                Left = 552
                Top = 79
                Width = 234
                Height = 21
                DataField = 'PAI'
                DataSource = DsCadastro
                TabOrder = 7
                Color = clWindow
              end
              object DBEdit5: TUniDBEdit
                Left = 568
                Top = 36
                Width = 115
                Height = 21
                DataField = 'NOME_GUERRA'
                DataSource = DsCadastro
                CharCase = ecUpperCase
                TabOrder = 3
                Color = clWindow
              end
            end
            object TabSheet2: TUniTabSheet
              Caption = 'Endere'#231'o'
              object Label9: TUniLabel
                Left = 16
                Top = 16
                Width = 45
                Height = 13
                Caption = 'Endere'#231'o'
                TabOrder = 9
              end
              object Label23: TUniLabel
                Left = 16
                Top = 60
                Width = 28
                Height = 13
                Caption = 'Bairro'
                TabOrder = 10
              end
              object Label24: TUniLabel
                Left = 392
                Top = 60
                Width = 65
                Height = 13
                Caption = 'Complemento'
                TabOrder = 11
              end
              object Label25: TUniLabel
                Left = 120
                Top = 104
                Width = 33
                Height = 13
                Caption = 'Cidade'
                TabOrder = 12
              end
              object Label26: TUniLabel
                Left = 16
                Top = 104
                Width = 19
                Height = 13
                Caption = 'CEP'
                TabOrder = 13
              end
              object Label27: TUniLabel
                Left = 448
                Top = 104
                Width = 24
                Height = 13
                Caption = 'Fone'
                TabOrder = 14
              end
              object Label28: TUniLabel
                Left = 560
                Top = 104
                Width = 33
                Height = 13
                Caption = 'Celular'
                TabOrder = 15
              end
              object Label29: TUniLabel
                Left = 16
                Top = 149
                Width = 30
                Height = 13
                Caption = 'EMAIL'
                TabOrder = 16
              end
              object Label30: TUniLabel
                Left = 624
                Top = 16
                Width = 12
                Height = 13
                Caption = 'N'#186
                TabOrder = 17
              end
              object DBEdit8: TUniDBEdit
                Left = 16
                Top = 32
                Width = 601
                Height = 21
                DataField = 'ENDERECO'
                DataSource = DsCadastro
                TabOrder = 0
                Color = clWindow
              end
              object DBEdit15: TUniDBEdit
                Left = 16
                Top = 76
                Width = 361
                Height = 21
                DataField = 'BAIRRO'
                DataSource = DsCadastro
                TabOrder = 2
                Color = clWindow
              end
              object DBEdit16: TUniDBEdit
                Left = 392
                Top = 76
                Width = 281
                Height = 21
                DataField = 'COMPLEMENTO'
                DataSource = DsCadastro
                TabOrder = 3
                Color = clWindow
              end
              object DBEditcep: TUniDBEdit
                Left = 16
                Top = 120
                Width = 97
                Height = 21
                DataField = 'CEP'
                DataSource = DsCadastro
                TabOrder = 4
                Color = clWindow
              end
              object DBEditfone: TUniDBEdit
                Left = 448
                Top = 120
                Width = 105
                Height = 21
                DataField = 'FONE'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object DBEditcelular: TUniDBEdit
                Left = 560
                Top = 120
                Width = 113
                Height = 21
                DataField = 'CELULAR'
                DataSource = DsCadastro
                TabOrder = 7
                Color = clWindow
              end
              object DBEdit21: TUniDBEdit
                Left = 16
                Top = 165
                Width = 657
                Height = 21
                DataField = 'EMAIL'
                DataSource = DsCadastro
                CharCase = ecLowerCase
                TabOrder = 8
                Color = clWindow
              end
              object DBEdit22: TUniDBEdit
                Left = 624
                Top = 32
                Width = 49
                Height = 21
                DataField = 'NUMERO'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object DBLookupComboBox3: TUniDBLookupComboBox
                Left = 120
                Top = 120
                Width = 313
                Height = 21
                ListField = 'CIDADE'
                ListSource = Dm.DSCIDADE
                KeyField = 'ID_CIDADE'
                ListFieldIndex = 0
                DataField = 'ID_CIDADE'
                DataSource = DsCadastro
                TabOrder = 5
              end
            end
            object TabSheetPermissao: TUniTabSheet
              Caption = 'Permiss'#227'o'
              object Label8: TUniLabel
                Left = 10
                Top = 6
                Width = 25
                Height = 13
                Caption = 'Login'
                TabOrder = 6
              end
              object Label5: TUniLabel
                Left = 122
                Top = 6
                Width = 30
                Height = 13
                Caption = 'Senha'
                TabOrder = 7
              end
              object Label12: TUniLabel
                Left = 234
                Top = 6
                Width = 84
                Height = 13
                Caption = 'Confirme a senha'
                TabOrder = 8
              end
              object DBRadioGroup2: TUniDBComboBox
                Left = 671
                Top = 24
                Width = 120
                Height = 21
                Hint = 'Configura'#231#245'es'
                DataField = 'CONFIGURACOES'
                DataSource = DsCadastro
                Items.Strings = (
                  'S'
                  'N')
                ItemIndex = -1
                TabOrder = 5
              end
              object DBEdit7: TUniDBEdit
                Left = 10
                Top = 22
                Width = 105
                Height = 21
                DataField = 'LOGIN'
                DataSource = DsCadastro
                TabOrder = 0
                Color = clWindow
              end
              object DBEdit4: TUniDBEdit
                Left = 122
                Top = 22
                Width = 105
                Height = 21
                DataField = 'SENHA'
                DataSource = DsCadastro
                PasswordChar = '@'
                TabOrder = 1
                Color = clWindow
              end
              object Edit1: TUniEdit
                Left = 234
                Top = 22
                Width = 121
                Height = 21
                PasswordChar = '@'
                TabOrder = 2
                Color = clWindow
              end
              object DBRadioGroupVISUALIZA_OUTRAS_UP: TUniDBComboBox
                Left = 371
                Top = 22
                Width = 174
                Height = 21
                Hint = 'Acessa outras Unidades Penais?'
                DataField = 'VISUALIZA_OUTRAS_UP'
                DataSource = DsCadastro
                Items.Strings = (
                  'S'
                  'N')
                ItemIndex = -1
                TabOrder = 3
              end
              object DBRadioGroupAutorizadoWeb: TUniDBComboBox
                Left = 552
                Top = 22
                Width = 113
                Height = 21
                Hint = 'Liberar SiapenWeb?'
                DataField = 'AUTORIZADO_WEB'
                DataSource = DsCadastro
                Items.Strings = (
                  'S'
                  'N')
                ItemIndex = -1
                TabOrder = 4
              end
              object PageControlpermissao: TUniPageControl
                Left = 0
                Top = 59
                Width = 869
                Height = 434
                ActivePage = TabSheet7
                TabOrder = 9
                Align = alBottom
                Anchors = [akLeft, akTop, akRight, akBottom]
                object TabSheet5: TUniTabSheet
                  Caption = 'Geral'
                  object GroupBox1: TUniGroupBox
                    Left = 99
                    Top = 47
                    Width = 90
                    Height = 170
                    Caption = 'Confere'
                    TabOrder = 2
                    object CHEditarConfere: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 0
                      OnClick = CHEditarConfereClick
                    end
                    object CHdeletarconfere: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 1
                      OnClick = CHdeletarconfereClick
                    end
                    object CHConsultarConfere: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 2
                      OnClick = CHConsultarConfereClick
                    end
                    object CHInserirConfere: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = CHInserirConfereClick
                    end
                    object CHTodasConfere: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = CHTodasConfereClick
                    end
                    object chrelatorioconfere: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioconfereClick
                    end
                  end
                  object GroupBox2: TUniGroupBox
                    Left = 191
                    Top = 47
                    Width = 90
                    Height = 170
                    Caption = 'Visitante'
                    TabOrder = 3
                    object chEditarVisitante: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 0
                      OnClick = chEditarVisitanteClick
                    end
                    object chdeletarVisitante: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 1
                      OnClick = chdeletarVisitanteClick
                    end
                    object chConsultarVisitante: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 2
                      OnClick = chConsultarVisitanteClick
                    end
                    object chInserirVisitante: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chInserirVisitanteClick
                    end
                    object chTodasVisitante: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chTodasVisitanteClick
                    end
                    object chrelatoriovisitante: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriovisitanteClick
                    end
                  end
                  object GroupBox5: TUniGroupBox
                    Left = 7
                    Top = 47
                    Width = 90
                    Height = 170
                    Caption = 'Cadastro'
                    TabOrder = 1
                    object chconsultarcadastro: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarcadastroClick
                    end
                    object cheditarcadastro: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarcadastroClick
                    end
                    object chdeletarcadastro: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarcadastroClick
                    end
                    object chinserircadastro: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserircadastroClick
                    end
                    object chtodascadastro: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodascadastroClick
                    end
                    object chrelatoriocadastro: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriocadastroClick
                    end
                  end
                  object GroupBox20: TUniGroupBox
                    Left = 283
                    Top = 47
                    Width = 90
                    Height = 194
                    Caption = 'Ocorr'#234'ncias'
                    TabOrder = 4
                    object chConsultaOcorrencia: TUniCheckBox
                      Left = 8
                      Top = 22
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultaOcorrenciaClick
                    end
                    object chEditaOcorrencia: TUniCheckBox
                      Left = 8
                      Top = 47
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = chEditaOcorrenciaClick
                    end
                    object chDeletaOcorrencia: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chDeletaOcorrenciaClick
                    end
                    object chInsereOcorrencia: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chInsereOcorrenciaClick
                    end
                    object chRelatorioOcorrencia: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chRelatorioOcorrenciaClick
                    end
                    object chTodasOcorrencia: TUniCheckBox
                      Left = 8
                      Top = 167
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chTodasOcorrenciaClick
                    end
                    object chDespachoOcorrencia: TUniCheckBox
                      Left = 8
                      Top = 143
                      Width = 73
                      Height = 17
                      Checked = False
                      Caption = 'Despacho'
                      TabOrder = 6
                      OnClick = chDespachoOcorrenciaClick
                    end
                  end
                  object DBrgEntradaVisitante: TUniDBComboBox
                    Left = 12
                    Top = 18
                    Width = 121
                    Height = 23
                    Hint = 'Entrada de Visitantes'
                    DataField = 'PERMISSAO_ENTRADAVISITANTE'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'S'
                      'N')
                    ItemIndex = -1
                    TabOrder = 0
                  end
                  object UniLabel1: TUniLabel
                    Left = 12
                    Top = 4
                    Width = 102
                    Height = 13
                    Caption = 'Entrada de visitante?'
                    TabOrder = 5
                  end
                end
                object TabSheet6: TUniTabSheet
                  Caption = 'Setores'
                  object GroupBox3: TUniGroupBox
                    Left = 7
                    Top = 3
                    Width = 90
                    Height = 187
                    Caption = 'Trabalho'
                    TabOrder = 0
                    object cheditartrabalho: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditartrabalhoClick
                    end
                    object chdeletartrabalho: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletartrabalhoClick
                    end
                    object chConsultartrabalho: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultartrabalhoClick
                    end
                    object chinserirtrabalho: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirtrabalhoClick
                    end
                    object chtodastrabalho: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodastrabalhoClick
                    end
                    object chrelatoriotrabalho: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriotrabalhoClick
                    end
                  end
                  object GroupBox4: TUniGroupBox
                    Left = 99
                    Top = 3
                    Width = 90
                    Height = 187
                    Caption = 'Educa'#231#227'o'
                    TabOrder = 1
                    object cheditareducacao: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                    end
                    object chdeletareducacao: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                    end
                    object chconsultareducacao: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultareducacaoClick
                    end
                    object chinserireducacao: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserireducacaoClick
                    end
                    object chtodaseducacao: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaseducacaoClick
                    end
                    object chrelatorioeducacao: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 70
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioeducacaoClick
                    end
                  end
                  object GroupBox7: TUniGroupBox
                    Left = 7
                    Top = 200
                    Width = 90
                    Height = 188
                    Caption = 'Jur'#237'dico'
                    TabOrder = 8
                    object chconsultarjuridica: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarjuridicaClick
                    end
                    object cheditarjuridica: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarjuridicaClick
                    end
                    object chdeletarjuridica: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarjuridicaClick
                    end
                    object chinserirjuridica: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirjuridicaClick
                    end
                    object chtodasjuridica: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasjuridicaClick
                    end
                    object chrelatoriojuridico: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriojuridicoClick
                    end
                  end
                  object GroupBox8: TUniGroupBox
                    Left = 99
                    Top = 200
                    Width = 90
                    Height = 188
                    Caption = 'Disciplina'
                    TabOrder = 9
                    object chconsultardisciplina: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultardisciplinaClick
                    end
                    object cheditardisciplina: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditardisciplinaClick
                    end
                    object chdeletardisciplina: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletardisciplinaClick
                    end
                    object chinserirdisciplina: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirdisciplinaClick
                    end
                    object chtodasdisciplina: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasdisciplinaClick
                    end
                    object chrelatoriodisciplina: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriodisciplinaClick
                    end
                  end
                  object GroupBox6: TUniGroupBox
                    Left = 191
                    Top = 3
                    Width = 90
                    Height = 187
                    Caption = 'Psicossocial'
                    TabOrder = 2
                    object chconsultarpsicossocial: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpsicossocialClick
                    end
                    object cheditarpsicossocial: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpsicossocialClick
                    end
                    object chdeletarpsicossocial: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpsicossocialClick
                    end
                    object chinserirpsicossocial: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpsicossocialClick
                    end
                    object chtodaspsicossocial: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspsicossocialClick
                    end
                    object chrelatoriopsicossocial: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopsicossocialClick
                    end
                  end
                  object GroupBox9: TUniGroupBox
                    Left = 191
                    Top = 200
                    Width = 90
                    Height = 188
                    Caption = 'Cl'#237'nica M'#233'dica'
                    TabOrder = 10
                    object chconsultarclinicamedica: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarclinicamedicaClick
                    end
                    object cheditarclinicamedica: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarclinicamedicaClick
                    end
                    object chdeletarclinicamedica: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarclinicamedicaClick
                    end
                    object chinserirclinicamedica: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirclinicamedicaClick
                    end
                    object chtodasclinicamedica: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasclinicamedicaClick
                    end
                    object chrelatorioclinicamedica: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioclinicamedicaClick
                    end
                  end
                  object GroupBox10: TUniGroupBox
                    Left = 283
                    Top = 3
                    Width = 90
                    Height = 187
                    Caption = 'Enfermagem'
                    TabOrder = 3
                    object chconsultarenfermagem: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarenfermagemClick
                    end
                    object cheditarenfermagem: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarenfermagemClick
                    end
                    object chdeletarenfermagem: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarenfermagemClick
                    end
                    object chinserirenfermagem: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirenfermagemClick
                    end
                    object chtodasenfermagem: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasenfermagemClick
                    end
                    object chrelatorioenfermagem: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioenfermagemClick
                    end
                  end
                  object GroupBox11: TUniGroupBox
                    Left = 283
                    Top = 200
                    Width = 90
                    Height = 188
                    Caption = 'Odontologia'
                    TabOrder = 11
                    object chconsultarodontologia: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarodontologiaClick
                    end
                    object cheditarodontologia: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarodontologiaClick
                    end
                    object chdeletarodontologia: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarodontologiaClick
                    end
                    object chinserirodontologia: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirodontologiaClick
                    end
                    object chtodasodontologia: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasodontologiaClick
                    end
                    object chrelatorioodontologia: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioodontologiaClick
                    end
                  end
                  object GroupBox12: TUniGroupBox
                    Left = 375
                    Top = 3
                    Width = 90
                    Height = 187
                    Caption = 'Farm'#225'cia'
                    TabOrder = 4
                    object chconsultarfarmacia: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarfarmaciaClick
                    end
                    object cheditarfarmacia: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarfarmaciaClick
                    end
                    object chdeletarfarmacia: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarfarmaciaClick
                    end
                    object chinserirfarmacia: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirfarmaciaClick
                    end
                    object chtodasfarmacia: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasfarmaciaClick
                    end
                    object chrelatoriofaramcia: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriofaramciaClick
                    end
                  end
                  object GroupBox13: TUniGroupBox
                    Left = 375
                    Top = 200
                    Width = 90
                    Height = 188
                    Caption = 'Pedagogia'
                    TabOrder = 12
                    object chconsultarpedagogia: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpedagogiaClick
                    end
                    object cheditarpedagogia: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpedagogiaClick
                    end
                    object chdeletarpedagogia: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpedagogiaClick
                    end
                    object chinserirpedagogia: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpedagogiaClick
                    end
                    object chtodaspedagogia: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspedagogiaClick
                    end
                    object chrelatoriopedagogia: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopedagogiaClick
                    end
                  end
                  object GroupBox14: TUniGroupBox
                    Left = 651
                    Top = 3
                    Width = 95
                    Height = 187
                    Caption = 'Ter. Ocupacional'
                    TabOrder = 7
                    object chconsultarterapiaocupacional: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarterapiaocupacionalClick
                    end
                    object cheditarterapiaocupacional: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarterapiaocupacionalClick
                    end
                    object chdeletarterapiaocupacional: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarterapiaocupacionalClick
                    end
                    object chinserirterapiaocupacional: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirterapiaocupacionalClick
                    end
                    object chtodasterapiaocupacional: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasterapiaocupacionalClick
                    end
                    object chrelatorioterapiaocupacional: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioterapiaocupacionalClick
                    end
                  end
                  object GroupBox15: TUniGroupBox
                    Left = 559
                    Top = 3
                    Width = 90
                    Height = 187
                    Caption = 'Servi'#231'o Social'
                    TabOrder = 6
                    object chconsultarservicosocial: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarservicosocialClick
                    end
                    object cheditarservicosocial: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarservicosocialClick
                    end
                    object chdeletarservicosocial: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarservicosocialClick
                    end
                    object chinserirservicosocial: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirservicosocialClick
                    end
                    object chtodasservicosocial: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasservicosocialClick
                    end
                    object chrelatorioservicosocial: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioservicosocialClick
                    end
                  end
                  object GroupBox16: TUniGroupBox
                    Left = 467
                    Top = 200
                    Width = 90
                    Height = 188
                    Caption = 'Psicologia'
                    TabOrder = 13
                    object chconsultarpsicologia: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpsicologiaClick
                    end
                    object cheditarpsicologia: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpsicologiaClick
                    end
                    object chdeletarpsicologia: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpsicologiaClick
                    end
                    object chinserirpsicologia: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpsicologiaClick
                    end
                    object chtodaspsicologia: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspsicologiaClick
                    end
                    object chrelatoriopsicologia: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopsicologiaClick
                    end
                  end
                  object GroupBox17: TUniGroupBox
                    Left = 467
                    Top = 3
                    Width = 90
                    Height = 187
                    Caption = 'Psiquiatria'
                    TabOrder = 5
                    object chconsultarpsiquiatria: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpsiquiatriaClick
                    end
                    object cheditarpsiquiatria: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpsiquiatriaClick
                    end
                    object chdeletarpsiquiatria: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpsiquiatriaClick
                    end
                    object chinserirpsiquiatria: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpsiquiatriaClick
                    end
                    object chtodaspsiquiatria: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspsiquiatriaClick
                    end
                    object chrelatoriopsiquiatria: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopsiquiatriaClick
                    end
                  end
                  object GroupBox18: TUniGroupBox
                    Left = 559
                    Top = 200
                    Width = 90
                    Height = 188
                    Caption = 'Sa'#250'de'
                    TabOrder = 14
                    object chconsultarsaude: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarsaudeClick
                    end
                    object cheditarsaude: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarsaudeClick
                    end
                    object chdeletarsaude: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarsaudeClick
                    end
                    object chinserirsaude: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirsaudeClick
                    end
                    object chtodassaude: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodassaudeClick
                    end
                    object chrelatoriosaude: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriosaudeClick
                    end
                  end
                  object GbConselhoDisciplinar: TUniGroupBox
                    Left = 651
                    Top = 200
                    Width = 90
                    Height = 188
                    Caption = 'Cons. Disciplinar'
                    TabOrder = 15
                    object chConsultarConsDisciplinar: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultarConsDisciplinarClick
                    end
                    object chEditarConsDisciplinar: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = chEditarConsDisciplinarClick
                    end
                    object chDeletarConsDisciplinar: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chDeletarConsDisciplinarClick
                    end
                    object chInserirConsDisciplinar: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chInserirConsDisciplinarClick
                    end
                    object chRelatorioConsDisciplinar: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rio'
                      TabOrder = 4
                      OnClick = chRelatorioConsDisciplinarClick
                    end
                    object chTodasConsDisciplinar: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chTodasConsDisciplinarClick
                    end
                  end
                end
                object TabSheet3: TUniTabSheet
                  Caption = 'Movimenta'#231#227'o'
                  object GbTransferenciaInterno: TUniGroupBox
                    Left = 7
                    Top = 15
                    Width = 130
                    Height = 191
                    Caption = 'Transfer'#234'ncia de Interno'
                    TabOrder = 0
                    ParentFont = False
                    Font.Name = 'MS Sans Serif'
                    object chConsultarTransferenciaInterno: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      ParentFont = False
                      Font.Name = 'MS Sans Serif'
                      TabOrder = 0
                      OnClick = chConsultarTransferenciaInternoClick
                    end
                    object chEditarTransferenciaInterno: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      ParentFont = False
                      Font.Name = 'MS Sans Serif'
                      TabOrder = 1
                      OnClick = chEditarTransferenciaInternoClick
                    end
                    object chDeletarTransferenciaInterno: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      ParentFont = False
                      Font.Name = 'MS Sans Serif'
                      TabOrder = 2
                      OnClick = chDeletarTransferenciaInternoClick
                    end
                    object chInserirTransferenciaInterno: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      ParentFont = False
                      Font.Name = 'MS Sans Serif'
                      TabOrder = 3
                      OnClick = chInserirTransferenciaInternoClick
                    end
                    object chRelatorioTransferenciaInterno: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      ParentFont = False
                      Font.Name = 'MS Sans Serif'
                      TabOrder = 4
                      OnClick = chRelatorioTransferenciaInternoClick
                    end
                    object chTodasTransferenciaInterno: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      ParentFont = False
                      Font.Name = 'MS Sans Serif'
                      TabOrder = 5
                      OnClick = chTodasTransferenciaInternoClick
                    end
                  end
                  object GbMudancaCela: TUniGroupBox
                    Left = 139
                    Top = 15
                    Width = 97
                    Height = 191
                    Caption = 'Mudan'#231'a de Cela'
                    TabOrder = 1
                    object ChConsultarMudancaCela: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarMudancaCelaClick
                    end
                    object ChEditarMudancaCela: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarMudancaCelaClick
                    end
                    object ChDeletarMudancaCela: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarMudancaCelaClick
                    end
                    object ChInserirMudancaCela: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirMudancaCelaClick
                    end
                    object ChRelatorioMudancaCela: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioMudancaCelaClick
                    end
                    object ChTodasMudancaCela: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasMudancaCelaClick
                    end
                  end
                  object GbSaidao: TUniGroupBox
                    Left = 238
                    Top = 15
                    Width = 99
                    Height = 191
                    Caption = 'Said'#227'o Internos'
                    TabOrder = 2
                    object ChConsultarSaidao: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSaidaoClick
                    end
                    object ChEditarSaidao: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSaidaoClick
                    end
                    object ChDeletarSaidao: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSaidaoClick
                    end
                    object ChInserirSaidao: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSaidaoClick
                    end
                    object ChRelatorioSaidao: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSaidaoClick
                    end
                    object ChTodasSaidao: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSaidaoClick
                    end
                  end
                  object GbCirculacaoInterno: TUniGroupBox
                    Left = 337
                    Top = 15
                    Width = 120
                    Height = 191
                    Caption = 'Circula'#231#227'o de Interno'
                    TabOrder = 3
                    object ChConsultarCirculacaoInterno: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCirculacaoInternoClick
                    end
                    object ChEditarCirculacaoInterno: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCirculacaoInternoClick
                    end
                    object ChDeletarCirculacaoInterno: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCirculacaoInternoClick
                    end
                    object ChInserirCirculacaoInterno: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCirculacaoInternoClick
                    end
                    object ChRelatorioCirculacaoInterno: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCirculacaoInternoClick
                    end
                    object ChTodasCirculacaoInterno: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCirculacaoInternoClick
                    end
                  end
                  object GbMovimentoSemiAberto: TUniGroupBox
                    Left = 458
                    Top = 15
                    Width = 170
                    Height = 191
                    Caption = 'Movimento Semi-Aberto / Aberto'
                    TabOrder = 4
                    object ChConsultarMovimentoSemiAberto: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarMovimentoSemiAbertoClick
                    end
                    object ChEditarMovimentoSemiAberto: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarMovimentoSemiAbertoClick
                    end
                    object ChDeletarMovimentoSemiAberto: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarMovimentoSemiAbertoClick
                    end
                    object ChInserirMovimentoSemiAberto: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirMovimentoSemiAbertoClick
                    end
                    object ChRelatorioMovimentoSemiAberto: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioMovimentoSemiAbertoClick
                    end
                    object ChTodasMovimentoSemiAberto: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasMovimentoSemiAbertoClick
                    end
                  end
                  object GBPortariaSaidao: TUniGroupBox
                    Left = 629
                    Top = 14
                    Width = 112
                    Height = 191
                    Caption = 'Portaria Said'#227'o'
                    TabOrder = 5
                    object ChConsultarSaidaoCadastro: TUniCheckBox
                      Left = 8
                      Top = 25
                      Width = 97
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSaidaoCadastroClick
                    end
                    object ChEditarSaidaoCadastro: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 97
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSaidaoCadastroClick
                    end
                    object ChDeletarSaidaoCadastro: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 97
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSaidaoCadastroClick
                    end
                    object ChInserirSaidaoCadastro: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 97
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSaidaoCadastroClick
                    end
                    object chRelatorioSaidaoCadastro: TUniCheckBox
                      Left = 9
                      Top = 120
                      Width = 97
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chRelatorioSaidaoCadastroClick
                    end
                    object ChTodasSaidaoCadastro: TUniCheckBox
                      Left = 9
                      Top = 144
                      Width = 97
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSaidaoCadastroClick
                    end
                  end
                end
                object TabSheet4: TUniTabSheet
                  Caption = 'M'#243'dulos'
                  object GroupBoxinteligencia: TUniGroupBox
                    Left = 191
                    Top = 15
                    Width = 90
                    Height = 182
                    Caption = 'Intelig'#234'ncia'
                    TabOrder = 0
                    object chconsultarinteligencia: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarinteligenciaClick
                    end
                    object cheditarinteligencia: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarinteligenciaClick
                    end
                    object chdeletarinteligencia: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarinteligenciaClick
                    end
                    object chinseririnteligencia: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinseririnteligenciaClick
                    end
                    object chrelatoriointeligencia: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriointeligenciaClick
                    end
                    object chtodasinteligencia: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasinteligenciaClick
                    end
                  end
                  object GroupBox19: TUniGroupBox
                    Left = 7
                    Top = 15
                    Width = 90
                    Height = 182
                    Caption = 'Armas'
                    TabOrder = 1
                    object chconsultararmas: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultararmasClick
                    end
                    object cheditararmas: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditararmasClick
                    end
                    object chdeletararmas: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletararmasClick
                    end
                    object chinserirarmas: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirarmasClick
                    end
                    object chrelatorioarmas: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioarmasClick
                    end
                    object chtodasarmas: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasarmasClick
                    end
                  end
                  object Monitoramento: TUniGroupBox
                    Left = 99
                    Top = 15
                    Width = 90
                    Height = 182
                    Caption = 'Monitoramento'
                    TabOrder = 2
                    object chconsultarmonitoramento: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 73
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarmonitoramentoClick
                    end
                    object cheditarmonitoramento: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarmonitoramentoClick
                    end
                    object chdeletarmonitoramento: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 73
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarmonitoramentoClick
                    end
                    object chinserirmonitoramento: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 73
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirmonitoramentoClick
                    end
                    object chrelatoriomonitoramento: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 73
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriomonitoramentoClick
                    end
                    object chtodasmonitoramento: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 73
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasmonitoramentoClick
                    end
                  end
                end
                object TabSheet7: TUniTabSheet
                  Caption = 'Configura'#231#245'es / Cadastro'
                  object GbFuncionario: TUniGroupBox
                    Left = 7
                    Top = 7
                    Width = 90
                    Height = 188
                    Caption = 'Funcion'#225'rio'
                    TabOrder = 0
                    object ChConsultarFuncionario: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFuncionarioClick
                    end
                    object ChEditarFuncionario: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFuncionarioClick
                    end
                    object ChDeletarFuncionario: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFuncionarioClick
                    end
                    object ChInserirFuncionario: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFuncionarioClick
                    end
                    object ChRelatorioFuncionario: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFuncionarioClick
                    end
                    object ChTodasFuncionario: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFuncionarioClick
                    end
                  end
                  object GbFuncaoFuncionario: TUniGroupBox
                    Left = 99
                    Top = 7
                    Width = 110
                    Height = 188
                    Caption = 'Fun'#231#227'o Funcion'#225'rio'
                    TabOrder = 1
                    object ChConsultarFuncaoFuncionario: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFuncaoFuncionarioClick
                    end
                    object ChEditarFuncaoFuncionario: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFuncaoFuncionarioClick
                    end
                    object ChDeletarFuncaoFuncionario: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFuncaoFuncionarioClick
                    end
                    object ChInserirFuncaoFuncionario: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFuncaoFuncionarioClick
                    end
                    object ChRelatorioFuncaoFuncionario: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFuncaoFuncionarioClick
                    end
                    object ChTodasFuncaoFuncionario: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFuncaoFuncionarioClick
                    end
                  end
                  object GbUnidadePenal: TUniGroupBox
                    Left = 211
                    Top = 7
                    Width = 90
                    Height = 188
                    Caption = 'Unidade Penal'
                    TabOrder = 2
                    object ChConsultarUnidadePenal: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarUnidadePenalClick
                    end
                    object ChEditarUnidadePenal: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarUnidadePenalClick
                    end
                    object ChDeletarUnidadePenal: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarUnidadePenalClick
                    end
                    object ChInserirUnidadePenal: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirUnidadePenalClick
                    end
                    object ChRelatorioUnidadePenal: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioUnidadePenalClick
                    end
                    object ChTodasUnidadePenal: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasUnidadePenalClick
                    end
                  end
                  object GbHorarioFuncionario: TUniGroupBox
                    Left = 303
                    Top = 7
                    Width = 106
                    Height = 188
                    Caption = 'Hor'#225'rio Funcion'#225'rio'
                    TabOrder = 3
                    object ChConsultarHorarioFuncionario: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarHorarioFuncionarioClick
                    end
                    object ChEditarHorarioFuncionario: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarHorarioFuncionarioClick
                    end
                    object ChDeletarHorarioFuncionario: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarHorarioFuncionarioClick
                    end
                    object ChInserirHorarioFuncionario: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirHorarioFuncionarioClick
                    end
                    object ChRelatorioHorarioFuncionario: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioHorarioFuncionarioClick
                    end
                    object ChTodasHorarioFuncionario: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasHorarioFuncionarioClick
                    end
                  end
                  object GbPadraoSistema: TUniGroupBox
                    Left = 411
                    Top = 7
                    Width = 103
                    Height = 188
                    Caption = 'Padr'#227'o do Sistema'
                    TabOrder = 4
                    object ChConsultarPadraoSistema: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPadraoSistemaClick
                    end
                    object ChEditarPadraoSistema: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPadraoSistemaClick
                    end
                    object ChDeletarPadraoSistema: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPadraoSistemaClick
                    end
                    object ChInserirPadraoSistema: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPadraoSistemaClick
                    end
                    object ChRelatorioPadraoSistema: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPadraoSistemaClick
                    end
                    object ChTodasPadraoSistema: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPadraoSistemaClick
                    end
                  end
                  object GbEquipe: TUniGroupBox
                    Left = 516
                    Top = 7
                    Width = 90
                    Height = 188
                    Caption = 'Equipe'
                    TabOrder = 5
                    object ChConsultarEquipe: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarEquipeClick
                    end
                    object ChEditarEquipe: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarEquipeClick
                    end
                    object ChDeletarEquipe: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarEquipeClick
                    end
                    object ChInserirEquipe: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirEquipeClick
                    end
                    object ChRelatorioEquipe: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioEquipeClick
                    end
                    object ChTodasEquipe: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasEquipeClick
                    end
                  end
                  object GbPostoLocalTrabalho: TUniGroupBox
                    Left = 608
                    Top = 7
                    Width = 129
                    Height = 188
                    Caption = 'Posto / Local Trabalho'
                    TabOrder = 6
                    object ChConsultarPostoLocalTrabalho: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPostoLocalTrabalhoClick
                    end
                    object ChEditarPostoLocalTrabalho: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPostoLocalTrabalhoClick
                    end
                    object ChDeletarPostoLocalTrabalho: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPostoLocalTrabalhoClick
                    end
                    object ChInserirPostoLocalTrabalho: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPostoLocalTrabalhoClick
                    end
                    object ChRelatorioPostoLocalTrabalho: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPostoLocalTrabalhoClick
                    end
                    object ChTodasPostoLocalTrabalho: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPostoLocalTrabalhoClick
                    end
                  end
                  object GbAgenteEquipe: TUniGroupBox
                    Left = 3
                    Top = 199
                    Width = 102
                    Height = 189
                    Caption = 'Agente por Equipe'
                    TabOrder = 7
                    object ChConsultarAgenteEquipe: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarAgenteEquipeClick
                    end
                    object ChEditarAgenteEquipe: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarAgenteEquipeClick
                    end
                    object ChDeletarAgenteEquipe: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarAgenteEquipeClick
                    end
                    object ChInserirAgenteEquipe: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirAgenteEquipeClick
                    end
                    object ChRelatorioAgenteEquipe: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioAgenteEquipeClick
                    end
                    object ChTodasAgenteEquipe: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasAgenteEquipeClick
                    end
                  end
                  object GbRegraVisitacao: TUniGroupBox
                    Left = 107
                    Top = 200
                    Width = 110
                    Height = 189
                    Caption = 'Regras de Visita'#231#227'o'
                    TabOrder = 8
                    object ChConsultarRegraVisitacao: TUniCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRegraVisitacaoClick
                    end
                    object ChEditarRegraVisitacao: TUniCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRegraVisitacaoClick
                    end
                    object ChDeletarRegraVisitacao: TUniCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRegraVisitacaoClick
                    end
                    object ChInserirRegraVisitacao: TUniCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRegraVisitacaoClick
                    end
                    object ChRelatorioRegraVisitacao: TUniCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRegraVisitacaoClick
                    end
                    object ChTodasRegraVisitacao: TUniCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Checked = False
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRegraVisitacaoClick
                    end
                  end
                end
              end
              object UniLabel3: TUniLabel
                Left = 372
                Top = 7
                Width = 154
                Height = 13
                Caption = 'Acessa outras Unidades Penais?'
                TabOrder = 10
              end
              object UniLabel4: TUniLabel
                Left = 552
                Top = 7
                Width = 95
                Height = 13
                Caption = 'Liberar SiapenWeb?'
                TabOrder = 11
              end
              object UniLabel5: TUniLabel
                Left = 671
                Top = 7
                Width = 74
                Height = 13
                Caption = 'Configura'#231#245'es?'
                TabOrder = 12
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 879
        ExplicitHeight = 523
        inherited PanelLocalizaConsulta: TUniPanel
          Width = 879
          ExplicitWidth = 879
        end
        inherited DBGridConsulta: TUniDBGrid
          Width = 879
          Height = 482
          DataSource = DsConsulta
          Columns = <>
        end
      end
    end
  end
  inherited StatusBar1: TUniStatusBar
    Top = 597
    Width = 989
    ExplicitTop = 597
    ExplicitWidth = 989
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_FUNCIONARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FUNCIONARIO'
      'WHERE ID_FUNCIONARIO = :ID_FUNCIONARIO')
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 84
    Top = 376
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 56
    Top = 376
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 28
    Top = 376
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select  ID_FUNCIONARIO, nome_funcionario, matricula, login, cpf ' +
        'from funcionario'
      'order by nome_funcionario collate win_ptbr')
    Top = 376
  end
  object SqlSelectFuncionario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from funcionario')
    Left = 40
    Top = 436
  end
end
