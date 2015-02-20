inherited FrmCadastroFunciPorteArma: TFrmCadastroFunciPorteArma
  ClientHeight = 620
  ClientWidth = 995
  Caption = 'Porte de Arma'
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
    ExplicitWidth = 889
    ExplicitHeight = 553
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
        ExplicitHeight = 523
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
            ActivePage = UniTabSheet1
            TabOrder = 1
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            object TabSheet1: TUniTabSheet
              Caption = 'Principal'
              object Label2: TUniLabel
                Left = 12
                Top = 17
                Width = 11
                Height = 13
                Caption = 'ID'
                TabOrder = 0
              end
              object Label3: TUniLabel
                Left = 55
                Top = 17
                Width = 27
                Height = 13
                Caption = 'Nome'
                TabOrder = 13
              end
              object Label17: TUniLabel
                Left = 124
                Top = 60
                Width = 20
                Height = 13
                Caption = 'M'#227'e'
                TabOrder = 14
              end
              object Label4: TUniLabel
                Left = 13
                Top = 105
                Width = 43
                Height = 13
                Caption = 'Matricula'
                TabOrder = 15
              end
              object Label6: TUniLabel
                Left = 119
                Top = 105
                Width = 19
                Height = 13
                Caption = 'CPF'
                TabOrder = 16
              end
              object Label7: TUniLabel
                Left = 263
                Top = 105
                Width = 14
                Height = 13
                Caption = 'RG'
                TabOrder = 17
              end
              object Label13: TUniLabel
                Left = 371
                Top = 103
                Width = 69
                Height = 13
                Caption = 'Org'#227'o Emissor'
                TabOrder = 18
              end
              object Label16: TUniLabel
                Left = 480
                Top = 103
                Width = 31
                Height = 13
                Caption = 'Classe'
                TabOrder = 19
              end
              object Label19: TUniLabel
                Left = 554
                Top = 102
                Width = 81
                Height = 13
                Caption = 'G.Sangue /F. RH'
                TabOrder = 20
              end
              object Label14: TUniLabel
                Left = 548
                Top = 17
                Width = 86
                Height = 13
                Caption = 'Data de Admiss'#227'o'
                TabOrder = 21
              end
              object Label15: TUniLabel
                Left = 13
                Top = 60
                Width = 96
                Height = 13
                Caption = 'Data de Nascimento'
                TabOrder = 22
              end
              object Label18: TUniLabel
                Left = 412
                Top = 60
                Width = 14
                Height = 13
                Caption = 'Pai'
                TabOrder = 23
              end
              object DBEditcodigo: TUniDBEdit
                Left = 12
                Top = 33
                Width = 41
                Height = 21
                Enabled = False
                DataField = 'ID_FUNCIONARIO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEdit2: TUniDBEdit
                Left = 55
                Top = 33
                Width = 487
                Height = 21
                DataField = 'NOME_FUNCIONARIO'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEdit12: TUniDBEdit
                Left = 125
                Top = 76
                Width = 280
                Height = 21
                DataField = 'MAE'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object DBEdit3: TUniDBEdit
                Left = 13
                Top = 121
                Width = 97
                Height = 21
                DataField = 'MATRICULA'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBEditCPF: TUniDBEdit
                Left = 119
                Top = 121
                Width = 137
                Height = 21
                DataField = 'CPF'
                DataSource = DsCadastro
                TabOrder = 8
              end
              object DBEdit1: TUniDBEdit
                Left = 263
                Top = 121
                Width = 102
                Height = 21
                DataField = 'RG'
                DataSource = DsCadastro
                TabOrder = 9
              end
              object DBEdit6: TUniDBEdit
                Left = 375
                Top = 120
                Width = 102
                Height = 21
                DataField = 'ORGAOEMISSOR'
                DataSource = DsCadastro
                TabOrder = 10
              end
              object DBEdit11: TUniDBEdit
                Left = 480
                Top = 119
                Width = 76
                Height = 21
                DataField = 'CLASSE'
                DataSource = DsCadastro
                TabOrder = 11
              end
              object DBEdit14: TUniDBEdit
                Left = 557
                Top = 118
                Width = 89
                Height = 21
                DataField = 'FATORRH'
                DataSource = DsCadastro
                TabOrder = 12
              end
              object DBEditadmissao: TUniDBEdit
                Left = 548
                Top = 33
                Width = 100
                Height = 21
                DataField = 'ADMISSAO'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEditnascimento: TUniDBEdit
                Left = 13
                Top = 76
                Width = 105
                Height = 21
                DataField = 'DTNASCIMENTO'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEdit13: TUniDBEdit
                Left = 413
                Top = 76
                Width = 234
                Height = 21
                DataField = 'PAI'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBEdit21: TUniDBEdit
                Left = 13
                Top = 296
                Width = 657
                Height = 21
                DataField = 'EMAIL'
                DataSource = DsCadastro
                CharCase = ecLowerCase
                TabOrder = 24
              end
              object Label29: TUniLabel
                Left = 13
                Top = 280
                Width = 30
                Height = 13
                Caption = 'EMAIL'
                TabOrder = 25
              end
              object UniLabelCidade: TUniLabel
                Left = 205
                Top = 255
                Width = 234
                Height = 13
                AutoSize = False
                Caption = '(CIDADE)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 26
              end
              object UniBitBtnCidade: TUniBitBtn
                Left = 176
                Top = 251
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
                TabOrder = 27
                OnClick = UniBitBtnCidadeClick
              end
              object UniDBEditCidade: TUniDBEdit
                Left = 116
                Top = 251
                Width = 60
                Height = 22
                DataField = 'ID_CIDADE'
                DataSource = DsCadastro
                TabOrder = 28
                OnExit = UniDBEditCidadeExit
              end
              object Label25: TUniLabel
                Left = 117
                Top = 235
                Width = 33
                Height = 13
                Caption = 'Cidade'
                TabOrder = 29
              end
              object DBEditcep: TUniDBEdit
                Left = 13
                Top = 251
                Width = 97
                Height = 21
                DataField = 'CEP'
                DataSource = DsCadastro
                TabOrder = 30
              end
              object Label26: TUniLabel
                Left = 13
                Top = 235
                Width = 19
                Height = 13
                Caption = 'CEP'
                TabOrder = 31
              end
              object DBEditfone: TUniDBEdit
                Left = 445
                Top = 251
                Width = 105
                Height = 21
                DataField = 'FONE'
                DataSource = DsCadastro
                TabOrder = 32
              end
              object Label27: TUniLabel
                Left = 445
                Top = 235
                Width = 24
                Height = 13
                Caption = 'Fone'
                TabOrder = 33
              end
              object DBEditcelular: TUniDBEdit
                Left = 557
                Top = 251
                Width = 113
                Height = 21
                DataField = 'CELULAR'
                DataSource = DsCadastro
                TabOrder = 34
              end
              object Label28: TUniLabel
                Left = 557
                Top = 235
                Width = 33
                Height = 13
                Caption = 'Celular'
                TabOrder = 35
              end
              object DBEdit16: TUniDBEdit
                Left = 389
                Top = 207
                Width = 281
                Height = 21
                DataField = 'COMPLEMENTO'
                DataSource = DsCadastro
                TabOrder = 36
              end
              object Label24: TUniLabel
                Left = 389
                Top = 191
                Width = 65
                Height = 13
                Caption = 'Complemento'
                TabOrder = 37
              end
              object DBEdit15: TUniDBEdit
                Left = 13
                Top = 207
                Width = 361
                Height = 21
                DataField = 'BAIRRO'
                DataSource = DsCadastro
                TabOrder = 38
              end
              object Label23: TUniLabel
                Left = 13
                Top = 191
                Width = 28
                Height = 13
                Caption = 'Bairro'
                TabOrder = 39
              end
              object DBEdit8: TUniDBEdit
                Left = 13
                Top = 163
                Width = 601
                Height = 21
                DataField = 'ENDERECO'
                DataSource = DsCadastro
                TabOrder = 40
              end
              object Label9: TUniLabel
                Left = 13
                Top = 147
                Width = 45
                Height = 13
                Caption = 'Endere'#231'o'
                TabOrder = 41
              end
              object DBEdit22: TUniDBEdit
                Left = 621
                Top = 163
                Width = 49
                Height = 21
                DataField = 'NUMERO'
                DataSource = DsCadastro
                TabOrder = 42
              end
              object Label30: TUniLabel
                Left = 621
                Top = 147
                Width = 12
                Height = 13
                Caption = 'N'#186
                TabOrder = 43
              end
            end
            object UniTabSheet1: TUniTabSheet
              Caption = 'Arma(s)'
              object UniPanelSaveArma: TUniPanel
                Left = 137
                Top = 67
                Width = 240
                Height = 30
                Enabled = False
                ShowHint = True
                ParentShowHint = False
                TabOrder = 0
                object Button20: TUniButton
                  Left = 3
                  Top = 3
                  Width = 98
                  Height = 22
                  Hint = 'Cadastrar um Novo Contato'
                  ShowHint = True
                  ParentShowHint = False
                  Caption = 'Salvar'
                  TabOrder = 0
                  OnClick = Button20Click
                end
                object Button21: TUniButton
                  Left = 129
                  Top = 3
                  Width = 105
                  Height = 22
                  Hint = 'Editar um Contato'
                  ShowHint = True
                  ParentShowHint = False
                  Caption = 'Cancelar'
                  TabOrder = 1
                  OnClick = Button21Click
                end
              end
              object UniPanelEditArma: TUniPanel
                Left = 3
                Top = 5
                Width = 128
                Height = 92
                ShowHint = True
                ParentShowHint = False
                TabOrder = 1
                object UniButton7: TUniButton
                  Left = 15
                  Top = 6
                  Width = 98
                  Height = 22
                  Hint = 'Cadastrar um Novo Dependente'
                  ShowHint = True
                  ParentShowHint = False
                  Caption = 'Novo'
                  TabOrder = 0
                  OnClick = UniButton7Click
                end
                object UniButton8: TUniButton
                  Left = 15
                  Top = 34
                  Width = 98
                  Height = 22
                  Hint = 'Editar um Dependente'
                  ShowHint = True
                  ParentShowHint = False
                  Caption = 'Editar'
                  TabOrder = 1
                  OnClick = UniButton8Click
                end
                object UniDBNavigator3: TUniDBNavigator
                  Left = 7
                  Top = 62
                  Width = 119
                  Height = 25
                  ShowHint = True
                  VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                  TabOrder = 3
                end
              end
              object DBGrid4: TUniDBGrid
                Left = 0
                Top = 103
                Width = 869
                Height = 390
                ShowHint = True
                ParentShowHint = False
                TitleFont.Color = clBlack
                TitleFont.Height = 11
                TitleFont.Pitch = fpVariable
                DataSource = DsArma
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                WebOptions.Paged = False
                LoadMask.Message = 'Loading data...'
                Align = alBottom
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 2
              end
              object UniBitBtnFichaDisciplinarInterno: TUniBitBtn
                AlignWithMargins = True
                Left = 383
                Top = 57
                Width = 100
                Height = 40
                Hint = 'Ficha do Interno'
                ShowHint = True
                ParentShowHint = False
                Glyph.Data = {
                  360C0000424D360C000000000000360000002800000020000000200000000100
                  180000000000000C0000232E0000232E00000000000000000001000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000CDCBC9CBC9C7CBC9C7CBC9C7CBC9C7CBC9
                  C7CBC9C7CBC9C7CBC9C7CBC9C7CBC9C7CBC9C7CBC9C7CBC9C7CBC9C7CBC9C7CB
                  C9C7CDCBC9000000000000000000000000000000000000000000000000000000
                  000000000000000000C6C4C2CBC9C7E1DFDDE5E4E3E5E4E3E5E4E3E5E4E3E5E4
                  E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5
                  E4E3E1DFDDCBC9C7C6C4C2000000000000000000000000000000000000000000
                  000000000000D2D0CFD3D1D0EFEEEDF4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4
                  F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4
                  F4F3F4F4F3EFEEEDD3D1D0D3D1D0000000000000000000000000000000000000
                  000000000000BCB9B7E9E8E8F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4
                  F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4
                  F4F3F4F4F3F4F4F3E9E8E8BCB9B7000000000000000000000000000000000000
                  000000000000CBC9C7F3F2F2F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4
                  F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4
                  F4F3F4F4F3F4F4F3F3F2F2CBC9C7000000000000000000000000000000000000
                  000000000000D0CDCCF4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4
                  F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4F4F3F4
                  F4F3F4F4F3F4F4F3F4F4F3D0CDCC000000000000000000000000000000000000
                  000000000000D2D0CFF3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3
                  F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3
                  F3F2F3F3F2F3F3F2F3F3F2D2D0CF000000000000000000000000000000000000
                  000000000000D3D1D0F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2
                  F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3
                  F2F2F3F2F2F3F2F2F3F2F2D3D1D0000000000000000000000000000000000000
                  000000000000D5D3D2F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
                  F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
                  F0F0F0F0F0F0F0F0F0F0F0D5D3D2000000000000000000000000000000000000
                  000000000000D6D4D3F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
                  F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
                  F0F0F0F0F0F0F0F0F0F0F0D6D4D3000000000000000000000000000000000000
                  000000000000D7D5D5F0F0F0F0F0F0F0F0F0E2D9CEB38A50B18747975C019D64
                  04A67119AC7929B18038B78B48BD965BC4A16DC19F65BB9761A77939AA7E43E2
                  D9CEF0F0F0F0F0F0F0F0F0D7D5D5000000000000000000000000000000000000
                  000000000000DAD8D6EFEEEDEFEEEDEFEEEDC5AB8BB98C4EB685429B60099F65
                  04AC7723B4823CBB8E53C49D6CCEAC83D7BC9CD4BA93B8905C935300935300C5
                  AB8BEFEEEDEFEEEDEFEEEDDAD8D6000000000000000000000000000000000000
                  000000000000DCD9D8EFEEEDEFEEEDEFEEEDC5AB8BC0965EBB8E53A169209D61
                  03A36A17A87429AF7D3BB6884DBE955FC6A371CFB188A16920935300935300C5
                  AB8BEFEEEDEFEEEDEFEEEDDCD9D8000000000000000000000000000000000000
                  000000000000DCD9D8ECEBEBECEBEBECEBEBC3A989C7A172BD965BBE9558B98F
                  4DB78B48B58940B48639B28335B08032AC7C32AC7C32AB7A32A46F23935300C3
                  A989ECEBEBECEBEBECEBEBDCD9D8000000000000000000000000000000000000
                  000000000000DEDDDCEBEAEAEBEAEAEBEAEAC3A989C9A777C0965EBA8D4FB98A
                  4CB78746AE7F3DB18448805E4085623CB78746B98A4CBA8D4FC0965E9D6517C3
                  A989EBEAEAEBEAEAEBEAEADEDDDC000000000000000000000000000000000000
                  000000000000DEDDDCE9E8E8E9E8E8E9E8E8C2A788D1B58DDDC5A9DCC3A6BF9C
                  68BF9C68CAB47DD2C2901F58B03D5984BF9C68BF9C68DCC3A6DDC5A9A46F23C2
                  A788E9E8E8E9E8E8E9E8E8DEDDDC000000000000000000000000000000000000
                  000000000000E1DFDDE9E8E8E9E8E8E9E8E8C2A788D3B78FEEE4D7F0E7DBDAC7
                  ABD2BB9AC2A566C5A86F787C80847F6FD2BB9ADAC7ABF0E7DBEEE4D7A26C15C2
                  A788E9E8E8E9E8E8E9E8E8E1DFDD000000000000000000000000000000000000
                  000000000000E2E0E0E9E8E6E9E8E6E9E8E6C2A788E1CFB5CCAD82D1B58DCFB1
                  88CDAF86CCAD82CAAB7EC9A87BC8A677C7A574C6A371C4A16DBA9051A16703C2
                  A788E9E8E6E9E8E6E9E8E6E2E0E0000000000000000000000000000000000000
                  000000000000E4E3E1E7E6E5E7E6E5E7E6E5C1A786E2D3B9E9DCCBE3D1BBDCC7
                  ABD7BC9CD1B18BCBA77DC49D6CBE955FBA8D4FB68644B18038AC7929A46C0FC1
                  A786E7E6E5E7E6E5E7E6E5E4E3E1000000000000000000000000000000000000
                  000000000000E4E3E1E5E4E3E5E4E3E5E4E3CFBFAAB48D49C5A86FC2A167BE9B
                  5EBB9556B98F4DB48946B1843FAE7E38AA7930A87429A46F23A36D1C9A620ED0
                  C1ACE5E4E3E5E4E3E5E4E3E4E3E1000000000000000000000000000000000000
                  000000000000E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4
                  E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5
                  E4E3E5E4E3E5E4E3E5E4E3E5E4E3000000000000000000000000000000000000
                  000000000000E7E6E5E4E3E1E4E3E1E4E3E1E4E3E1E4E3E1E4E3E1E4E3E1E4E3
                  E1E4E3E1E4E3E1E4E3E1E4E3E1E4E3E1E4E3E1E4E3E1E4E3E1E4E3E1E4E3E1E4
                  E3E1E4E3E1E4E3E1E4E3E1E7E6E5000000000000000000000000000000000000
                  000000000000E9E8E6E2E0E0E2E0E0E2E0E0E2E0E0E2E0E0E2E0E0E2E0E0E2E0
                  E0E2E0E0E2E0E0E2E0E0E2E0E0E2E0E0E2E0E0E2E0E0E2E0E0E2E0E0E2E0E0E2
                  E0E0E2E0E0E2E0E0E2E0E0E9E8E6000000000000000000000000000000000000
                  000000000000E9E8E8E3E0DFE3E0DFE3E0DFE3E0DFE3E0DFE3E0DFE3E0DFE3E0
                  DFE3E0DFE3E0DFE3E0DFE3E0DFE3E0DFE3E0DFE3E0DFE3E0DFE3E0DFE3E0DFE3
                  E0DFE3E0DFE3E0DFE3E0DFE9E8E8000000000000000000000000000000000000
                  000000000000EBEAEAE1DFDDE1DFDDE1DFDDE1DFDDE1DFDDE1DFDDE1DFDDE1DF
                  DDE1DFDDE1DFDDE1DFDDE1DFDDE1DFDDE1DFDDE1DFDDE1DFDDE1DFDDE1DFDDE1
                  DFDDE1DFDDE1DFDDE1DFDDEBEAEA000000000000000000000000000000000000
                  000000000000E7E6E5E1DFDDDEDDDCDEDDDCDEDDDCDEDDDCDEDDDCDEDDDCDEDD
                  DCDEDDDCDEDDDCDEDDDCDEDDDCDEDDDCDEDDDCDEDDDCDEDDDCDEDDDCDEDDDCDE
                  DDDCDEDDDCDEDDDCE1DFDDE7E6E5000000000000000000000000000000000000
                  000000000000D0CDCCE7E6E5DFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDC
                  DCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDF
                  DCDCDFDCDCDFDCDCE7E6E5D0CDCC000000000000000000000000000000000000
                  000000000000D6D4D3F0F0F0E4E3E1DFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDC
                  DCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDFDCDCDF
                  DCDCDFDCDCE4E3E1F0F0F0D6D4D3000000000000000000000000000000000000
                  000000000000000000CBC9C7E7E6E5F0F0F0ECEBEBECEBEBECEBEBECEBEBECEB
                  EBECEBEBECEBEBECEBEBECEBEBECEBEBECEBEBECEBEBECEBEBECEBEBECEBEBEC
                  EBEBF0F0F0E7E6E5CBC9C7000000000000000000000000000000000000000000
                  000000000000000000000000000000D3D1D0D7D5D5D7D5D5D7D5D5D7D5D5D7D5
                  D5D7D5D5D7D5D5D7D5D5D7D5D5D7D5D5D7D5D5D7D5D5D7D5D5D7D5D5D7D5D5D7
                  D5D5D5D3D2000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Caption = 'Imprimir'
                ParentFont = False
                Font.Color = clNavy
                Font.Style = [fsBold]
                TabOrder = 3
                OnClick = UniBitBtnFichaDisciplinarInternoClick
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
        DataType = ftInteger
        Name = 'IDfunci_porte_arma'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM funci_porte_arma'
      'WHERE IDfunci_porte_arma = :IDFUNCI_PORTE_ARMA')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroIDFUNCI_PORTE_ARMA: TIntegerField
      FieldName = 'IDFUNCI_PORTE_ARMA'
      Required = True
    end
    object CdsCadastroID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CdsCadastroID_NATURALIDADE: TIntegerField
      FieldName = 'ID_NATURALIDADE'
    end
    object CdsCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsCadastroID_CURSO: TIntegerField
      FieldName = 'ID_CURSO'
    end
    object CdsCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object CdsCadastroID_FUNCAO: TIntegerField
      FieldName = 'ID_FUNCAO'
    end
    object CdsCadastroNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 100
    end
    object CdsCadastroMATRICULA: TStringField
      FieldName = 'MATRICULA'
      Size = 30
    end
    object CdsCadastroCPF: TStringField
      FieldName = 'CPF'
      Size = 30
    end
    object CdsCadastroFUNCAO_TEMP: TStringField
      FieldName = 'FUNCAO_TEMP'
      Size = 200
    end
    object CdsCadastroFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 30
    end
    object CdsCadastroADMISSAO: TSQLTimeStampField
      FieldName = 'ADMISSAO'
    end
    object CdsCadastroCLASSE: TStringField
      FieldName = 'CLASSE'
      Size = 1
    end
    object CdsCadastroMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object CdsCadastroPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object CdsCadastroRG: TStringField
      FieldName = 'RG'
      Size = 30
    end
    object CdsCadastroORGAOEMISSOR: TStringField
      FieldName = 'ORGAOEMISSOR'
      Size = 30
    end
    object CdsCadastroFATORRH: TStringField
      FieldName = 'FATORRH'
      Size = 30
    end
    object CdsCadastroDTNASCIMENTO: TSQLTimeStampField
      FieldName = 'DTNASCIMENTO'
    end
    object CdsCadastroCARGO: TStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object CdsCadastroAREA: TStringField
      FieldName = 'AREA'
      Size = 30
    end
    object CdsCadastroIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      Size = 1
    end
    object CdsCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object CdsCadastroCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object CdsCadastroCEP: TStringField
      FieldName = 'CEP'
      Size = 30
    end
    object CdsCadastroFONE: TStringField
      FieldName = 'FONE'
      Size = 30
    end
    object CdsCadastroCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 30
    end
    object CdsCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object CdsCadastroNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object CdsCadastroDATA_LOTACAO: TSQLTimeStampField
      FieldName = 'DATA_LOTACAO'
    end
    object CdsCadastroESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
      Size = 30
    end
    object CdsCadastroSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object CdsCadastroPLANTAO_EXPEDIENTE: TStringField
      FieldName = 'PLANTAO_EXPEDIENTE'
      Size = 30
    end
    object CdsCadastroNFUNCIONAL: TIntegerField
      FieldName = 'NFUNCIONAL'
    end
    object CdsCadastroDIRETORIO_RELATORIO: TStringField
      FieldName = 'DIRETORIO_RELATORIO'
      Size = 200
    end
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 292
    Top = 384
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 264
    Top = 384
    object CdsConsultaNOME_FUNCIONARIO: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 70
      FieldName = 'NOME_FUNCIONARIO'
      Size = 100
    end
    object CdsConsultaMATRICULA: TStringField
      DisplayLabel = 'Matricula'
      DisplayWidth = 50
      FieldName = 'MATRICULA'
      Size = 30
    end
    object CdsConsultaCPF: TStringField
      DisplayWidth = 20
      FieldName = 'CPF'
      Size = 30
    end
    object CdsConsultaIDFUNCI_PORTE_ARMA: TIntegerField
      DisplayLabel = 'C'#243'd.Portador'
      FieldName = 'IDFUNCI_PORTE_ARMA'
      Required = True
    end
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 236
    Top = 384
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  IDfunci_porte_arma, nome_funcionario, matricula, cpf'
      'from funci_porte_arma'
      'order by nome_funcionario')
    SQLConnection = Dm.Conexao
    Left = 208
    Top = 384
  end
  object SqlSelectFuncionario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from funci_porte_arma')
    Left = 40
    Top = 436
  end
  object CdsArma: TClientDataSet
    Tag = 1
    Aggregates = <>
    IndexFieldNames = 'IDFUNCI_PORTE_ARMA'
    MasterFields = 'IDFUNCI_PORTE_ARMA'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspArma'
    Left = 551
    Top = 95
    object CdsArmaIDARMA: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'IDARMA'
      Required = True
      Visible = False
    end
    object CdsArmaIDFUNCI_PORTE_ARMA: TIntegerField
      DisplayLabel = 'Cod.Funcion'#225'rio'
      FieldName = 'IDFUNCI_PORTE_ARMA'
      Required = True
      Visible = False
    end
    object CdsArmaNOME: TStringField
      DisplayLabel = 'Nome da arma'
      DisplayWidth = 30
      FieldName = 'NOME'
      Size = 100
    end
    object CdsArmaCADASTRO_SINARM: TStringField
      DisplayLabel = 'Cadastro Sinarm'
      DisplayWidth = 15
      FieldName = 'CADASTRO_SINARM'
      Size = 100
    end
    object CdsArmaESPECIE: TStringField
      DisplayLabel = 'Especie'
      DisplayWidth = 15
      FieldName = 'ESPECIE'
      Size = 100
    end
    object CdsArmaMODELO: TStringField
      DisplayLabel = 'Modelo'
      DisplayWidth = 30
      FieldName = 'MODELO'
      Size = 100
    end
    object CdsArmaNUMERO_ARMA: TStringField
      DisplayLabel = 'Numero Arma'
      DisplayWidth = 20
      FieldName = 'NUMERO_ARMA'
      Size = 100
    end
    object CdsArmaCALIBRE: TStringField
      DisplayLabel = 'Calibre'
      DisplayWidth = 15
      FieldName = 'CALIBRE'
      Size = 100
    end
    object CdsArmaACABAMENTO: TStringField
      DisplayLabel = 'Acabamento'
      DisplayWidth = 15
      FieldName = 'ACABAMENTO'
      Size = 100
    end
    object CdsArmaREGISTRO_DATA_EMISSAO: TSQLTimeStampField
      DisplayLabel = 'Data Emiss'#227'o Registro'
      DisplayWidth = 15
      FieldName = 'REGISTRO_DATA_EMISSAO'
    end
    object CdsArmaREGISTRO_ESTADUAL: TStringField
      DisplayLabel = 'Registro Estadual'
      DisplayWidth = 15
      FieldName = 'REGISTRO_ESTADUAL'
      Size = 100
    end
    object CdsArmaREGISTRO_ORGAO_EXPEDIDOR: TStringField
      DisplayLabel = 'Org'#227'o Expeditor Registro'
      DisplayWidth = 15
      FieldName = 'REGISTRO_ORGAO_EXPEDIDOR'
      Size = 100
    end
    object CdsArmaREGISTRO_UF: TStringField
      DisplayLabel = 'UF Registro'
      DisplayWidth = 15
      FieldName = 'REGISTRO_UF'
      Size = 2
    end
    object CdsArmaCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 30
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object CdsArmaMARCA: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 30
      FieldName = 'MARCA'
      Size = 100
    end
    object CdsArmaVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object CdsArmaESTADO: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 30
      FieldName = 'ESTADO'
      Size = 100
    end
    object CdsArmaUTILIZACAO: TStringField
      DisplayLabel = 'Utiliza'#231#227'o'
      DisplayWidth = 30
      FieldName = 'UTILIZACAO'
      Size = 100
    end
    object CdsArmaOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      DisplayWidth = 30
      FieldName = 'OBSERVACAO'
      Size = 100
    end
    object CdsArmaDATA_CADASTRO: TSQLTimeStampField
      DisplayLabel = 'Data do Cadastro'
      DisplayWidth = 15
      FieldName = 'DATA_CADASTRO'
    end
    object CdsArmaFOTO_PATRIMONIO: TBlobField
      DisplayLabel = 'Foto Patrim'#244'nio'
      FieldName = 'FOTO_PATRIMONIO'
      Visible = False
      Size = 1
    end
    object CdsArmaNOTA_FISCAL: TStringField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 12
      FieldName = 'NOTA_FISCAL'
      Size = 100
    end
    object CdsArmaDATA_NOTA_FISCAL: TSQLTimeStampField
      DisplayLabel = 'Data Nota Fiscal'
      DisplayWidth = 15
      FieldName = 'DATA_NOTA_FISCAL'
    end
    object CdsArmaCNPJ_NOTA_FISCAL: TStringField
      DisplayLabel = 'CNPJ Nota Fiscal'
      DisplayWidth = 20
      FieldName = 'CNPJ_NOTA_FISCAL'
      Size = 100
    end
    object CdsArmaCAPACIDADE: TIntegerField
      DisplayLabel = 'Capacidade'
      DisplayWidth = 20
      FieldName = 'CAPACIDADE'
    end
    object CdsArmaNUMEROS_CANOS: TIntegerField
      DisplayLabel = 'Numero de Canos'
      DisplayWidth = 20
      FieldName = 'NUMEROS_CANOS'
    end
    object CdsArmaNUMERO_RAIAS: TIntegerField
      DisplayLabel = 'Numero de Raias'
      DisplayWidth = 20
      FieldName = 'NUMERO_RAIAS'
    end
    object CdsArmaDATA_EXPEDICAO: TSQLTimeStampField
      DisplayLabel = 'Data Expedi'#231#227'o'
      DisplayWidth = 15
      FieldName = 'DATA_EXPEDICAO'
    end
    object CdsArmaPAIS_FABRICACAO: TStringField
      DisplayLabel = 'Pais de Fabrica'#231#227'o'
      DisplayWidth = 15
      FieldName = 'PAIS_FABRICACAO'
      Size = 100
    end
    object CdsArmaCOMPRIMENTO_CANO: TStringField
      DisplayLabel = 'Comprimento Cano'
      DisplayWidth = 15
      FieldName = 'COMPRIMENTO_CANO'
      Size = 100
    end
    object CdsArmaARMA_ALMA: TStringField
      DisplayLabel = 'Arma Alma'
      DisplayWidth = 15
      FieldName = 'ARMA_ALMA'
      Size = 100
    end
    object CdsArmaSENTIDO_RAIA: TStringField
      DisplayLabel = 'Sentido da Raia'
      DisplayWidth = 15
      FieldName = 'SENTIDO_RAIA'
      Size = 1
    end
    object CdsArmaFUNCAO_ARMA: TStringField
      DisplayLabel = 'Fun'#231#227'o da Arma'
      DisplayWidth = 15
      FieldName = 'FUNCAO_ARMA'
      Size = 100
    end
    object CdsArmaSITUACAO_GERAL: TStringField
      DisplayLabel = 'Situa'#231#227'o Geral'
      DisplayWidth = 15
      FieldName = 'SITUACAO_GERAL'
      Size = 100
    end
    object CdsArmaOBS_SITUACAO_GERAL: TStringField
      DisplayLabel = 'Obs.Situa'#231#227'o Geral'
      DisplayWidth = 15
      FieldName = 'OBS_SITUACAO_GERAL'
      Size = 100
    end
    object CdsArmaORIGEM: TStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 15
      FieldName = 'ORIGEM'
      Size = 100
    end
    object CdsArmaACESSORIOS: TStringField
      DisplayLabel = 'Acess'#243'rios'
      DisplayWidth = 15
      FieldName = 'ACESSORIOS'
      Size = 100
    end
    object CdsArmaDATA_ULTIMA_MANUTENCAO: TSQLTimeStampField
      DisplayLabel = 'Data Ultima Manuten'#231#227'o'
      DisplayWidth = 15
      FieldName = 'DATA_ULTIMA_MANUTENCAO'
    end
    object CdsArmaDATA_FABRICACAO: TSQLTimeStampField
      DisplayLabel = 'Data Fabrica'#231#227'o'
      DisplayWidth = 15
      FieldName = 'DATA_FABRICACAO'
    end
    object CdsArmaQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 15
      FieldName = 'QUANTIDADE'
    end
    object CdsArmaPESO: TFloatField
      DisplayLabel = 'Peso'
      DisplayWidth = 15
      FieldName = 'PESO'
    end
  end
  object SqlArma: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDFUNCI_PORTE_ARMA'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM ARMA'
      'WHERE( IDFUNCI_PORTE_ARMA = :IDFUNCI_PORTE_ARMA )')
    SQLConnection = Dm.Conexao
    Left = 495
    Top = 95
  end
  object DspArma: TDataSetProvider
    DataSet = SqlArma
    Left = 524
    Top = 95
  end
  object DsArma: TDataSource
    Tag = 1
    DataSet = CdsArma
    OnStateChange = DsArmaStateChange
    Left = 580
    Top = 94
  end
end
