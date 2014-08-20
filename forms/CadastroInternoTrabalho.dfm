inherited FrmCadastroInternoTrabalho: TFrmCadastroInternoTrabalho
  Caption = 'Cadastro de Trabalho'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelModeloCadastro: TUniPanel
    inherited PageControlModeloCadastro: TUniPageControl
      inherited TabSheetCadastro: TUniTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 256
        ExplicitHeight = 128
        inherited PanelCadastro: TUniPanel
          inherited PageControlInterno: TUniPageControl
            ActivePage = UniTabSheetTrabalho
            inherited TabSheetAdvogados: TUniTabSheet
              inherited DBGrid3: TUniDBGrid
                Columns = <
                  item
                    FieldName = 'ADVOGADO/ESCRIT'#211'RIO'
                    Title.Caption = 'Advogado/Escrit'#243'rio'
                    Width = 370
                    Visible = True
                    Expanded = False
                    CheckBoxField.FieldValues = 'true;false'
                  end
                  item
                    FieldName = 'OBSADVOGADO_INTERNO'
                    Title.Caption = 'Observa'#231#245'es'
                    Width = 279
                    Visible = True
                    Expanded = False
                    CheckBoxField.FieldValues = 'true;false'
                  end>
              end
            end
            inherited TabSheetHistorico: TUniTabSheet
              inherited DBGrid1: TUniDBGrid
                Columns = <
                  item
                    FieldName = 'DATA_HORA'
                    Title.Caption = 'Data'
                    Width = 80
                    Visible = True
                    Expanded = False
                    CheckBoxField.FieldValues = 'true;false'
                  end
                  item
                    FieldName = 'SETOR'
                    Title.Caption = 'Setor'
                    Width = 80
                    Visible = True
                    Expanded = False
                    CheckBoxField.FieldValues = 'true;false'
                  end
                  item
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 400
                    Visible = True
                    Expanded = False
                    CheckBoxField.FieldValues = 'true;false'
                  end>
              end
            end
            inherited TabSheetFotos: TUniTabSheet
              inherited UniPanelFoto: TUniPanel
                inherited DBGrid4: TUniDBGrid
                  Columns = <
                    item
                      FieldName = 'DATA'
                      Title.Caption = 'Data'
                      Width = 70
                      Visible = True
                      Expanded = False
                      CheckBoxField.FieldValues = 'true;false'
                    end
                    item
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o'
                      Width = 200
                      Visible = True
                      Expanded = False
                      CheckBoxField.FieldValues = 'true;false'
                    end>
                end
              end
            end
            object UniTabSheetTrabalho: TUniTabSheet
              Hint = ''
              Caption = 'Trabalho'
              object PageControlTrabalho: TUniPageControl
                Left = 0
                Top = 0
                Width = 767
                Height = 480
                Hint = ''
                ActivePage = TabSheet5
                TabOrder = 0
                Align = alClient
                Anchors = [akLeft, akTop, akRight, akBottom]
                ExplicitWidth = 724
                ExplicitHeight = 464
                object TabSheet5: TUniTabSheet
                  Hint = ''
                  Caption = 'Lan'#231'amento'
                  object UniLabel5: TUniLabel
                    Left = 152
                    Top = 16
                    Width = 23
                    Height = 13
                    Hint = ''
                    Caption = 'Data'
                    TabOrder = 5
                  end
                  object UniLabel6: TUniLabel
                    Left = 278
                    Top = 16
                    Width = 74
                    Height = 13
                    Hint = ''
                    Caption = 'Fun'#231#227'o Interno'
                    TabOrder = 6
                  end
                  object UniLabel7: TUniLabel
                    Left = 216
                    Top = 112
                    Width = 20
                    Height = 13
                    Hint = ''
                    Caption = 'OBS'
                    TabOrder = 7
                  end
                  object UniLabel9: TUniLabel
                    Left = 336
                    Top = 64
                    Width = 71
                    Height = 13
                    Hint = ''
                    Caption = 'Setor Trabalho'
                    TabOrder = 8
                  end
                  object UniLabel10: TUniLabel
                    Left = 16
                    Top = 16
                    Width = 94
                    Height = 13
                    Hint = ''
                    Caption = 'N'#250'mero Documento'
                    TabOrder = 9
                  end
                  object UniLabel11: TUniLabel
                    Left = 16
                    Top = 64
                    Width = 69
                    Height = 13
                    Hint = ''
                    Caption = 'Local Trabalho'
                    TabOrder = 10
                  end
                  object Label74: TUniLabel
                    Left = 16
                    Top = 112
                    Width = 83
                    Height = 13
                    Hint = ''
                    Caption = 'Tipo de Atividade'
                    TabOrder = 11
                  end
                  object UniDBGrid1: TUniDBGrid
                    Left = 16
                    Top = 192
                    Width = 625
                    Height = 169
                    Hint = ''
                    TitleFont.Name = 'MS Sans Serif'
                    DataSource = dshistorico_trabalho
                    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    LoadMask.Message = 'Loading data...'
                    TabOrder = 4
                    Columns = <
                      item
                        FieldName = 'DOCUMENTO'
                        Title.Caption = 'Documento'
                        Width = 71
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'DATA'
                        Title.Caption = 'Data Trabalho'
                        Width = 87
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'local_trabalho'
                        Title.Caption = 'Local Trabalho'
                        Width = 139
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'setor_trabalho'
                        Title.Caption = 'Setor Trabalho'
                        Width = 118
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'funcao_interno'
                        Title.Caption = 'Fun'#231#227'o'
                        Width = 101
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'OBS'
                        Title.Caption = 'OBS'
                        Width = 257
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'DATA_SAIDA'
                        Title.Caption = 'Data Saida'
                        Width = 92
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'MOTIVO_SAIDA'
                        Title.Caption = 'Motivo Saida'
                        Width = 141
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end>
                  end
                  object DBEditdtsetor: TUniDBEdit
                    Left = 152
                    Top = 32
                    Width = 121
                    Height = 21
                    Hint = ''
                    DataField = 'DATA_SETOR'
                    DataSource = DsCadastro
                    TabOrder = 1
                    Color = clWindow
                  end
                  object DBEditobstrabalho: TUniDBEdit
                    Left = 216
                    Top = 128
                    Width = 401
                    Height = 21
                    Hint = ''
                    DataField = 'OBSTRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 3
                    Color = clWindow
                  end
                  object DBEditdoctrabalho: TUniDBEdit
                    Left = 16
                    Top = 32
                    Width = 129
                    Height = 21
                    Hint = ''
                    DataField = 'DOC_TRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 0
                    Color = clWindow
                  end
                  object DBComboBoxtipoatividade: TUniDBComboBox
                    Left = 19
                    Top = 128
                    Width = 182
                    Height = 21
                    Hint = ''
                    DataField = 'TIPO_ATIVIDADE'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'INTERNA'
                      'EXTERNA')
                    ItemIndex = -1
                    TabOrder = 2
                  end
                  object UniDBEditFuncaoInterno: TUniDBEdit
                    Left = 278
                    Top = 32
                    Width = 60
                    Height = 22
                    Hint = ''
                    DataField = 'ID_FUNCAOINTERNO'
                    DataSource = DsCadastro
                    TabOrder = 12
                    Color = clWindow
                    OnExit = UniDBEditFuncaoInternoExit
                  end
                  object UniBitBtnFuncaoInterno: TUniBitBtn
                    Left = 338
                    Top = 32
                    Width = 26
                    Height = 22
                    Hint = ''
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
                    Caption = ''
                    TabOrder = 13
                    OnClick = UniBitBtnFuncaoInternoClick
                  end
                  object UniLabelFuncaoInterno: TUniLabel
                    Left = 366
                    Top = 36
                    Width = 275
                    Height = 13
                    Hint = ''
                    AutoSize = False
                    Caption = '(Fun'#231#227'o do Interno)'
                    ParentColor = False
                    Color = clWhite
                    Transparent = False
                    TabOrder = 14
                  end
                  object UniLabelLocalTrabalho: TUniLabel
                    Left = 105
                    Top = 83
                    Width = 225
                    Height = 13
                    Hint = ''
                    AutoSize = False
                    Caption = '(Local de Trabalho)'
                    ParentColor = False
                    Color = clWhite
                    Transparent = False
                    TabOrder = 15
                  end
                  object UniBitBtnLocalTrabalho: TUniBitBtn
                    Left = 76
                    Top = 79
                    Width = 26
                    Height = 22
                    Hint = ''
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
                    Caption = ''
                    TabOrder = 16
                    OnClick = UniBitBtnLocalTrabalhoClick
                  end
                  object UniDBEditLocalTrabalho: TUniDBEdit
                    Left = 16
                    Top = 79
                    Width = 60
                    Height = 22
                    Hint = ''
                    DataField = 'ID_LOCAL_TRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 17
                    Color = clWindow
                    OnExit = UniDBEditLocalTrabalhoExit
                  end
                  object UniLabelSetorTrabalho: TUniLabel
                    Left = 425
                    Top = 83
                    Width = 222
                    Height = 13
                    Hint = ''
                    AutoSize = False
                    Caption = '(Setor de Trabalho)'
                    ParentColor = False
                    Color = clWhite
                    Transparent = False
                    TabOrder = 18
                  end
                  object UniBitBtnSetorTrabalho: TUniBitBtn
                    Left = 396
                    Top = 79
                    Width = 26
                    Height = 22
                    Hint = ''
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
                    Caption = ''
                    TabOrder = 19
                    OnClick = UniBitBtnSetorTrabalhoClick
                  end
                  object UniDBEditSetorTrabalho: TUniDBEdit
                    Left = 336
                    Top = 79
                    Width = 60
                    Height = 22
                    Hint = ''
                    DataField = 'IDSETOR_TRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 20
                    Color = clWindow
                    OnExit = UniDBEditSetorTrabalhoExit
                  end
                  object UniMenuButtonOpcoesTrabalho: TUniMenuButton
                    Left = 537
                    Top = 164
                    Width = 104
                    Height = 25
                    Hint = ''
                    DropdownMenu = PopupMenuTrabalho
                    Caption = 'Op'#231#245'es'
                    TabOrder = 21
                  end
                end
                object TabSheet8: TUniTabSheet
                  Hint = ''
                  Caption = 'Hor'#225'rios'
                  object UniLabel12: TUniLabel
                    Left = 152
                    Top = 72
                    Width = 119
                    Height = 13
                    Hint = ''
                    Caption = 'Hor'#225'rio Entrada Semanal'
                    TabOrder = 13
                  end
                  object UniLabel13: TUniLabel
                    Left = 8
                    Top = 72
                    Width = 107
                    Height = 13
                    Hint = ''
                    Caption = 'Hor'#225'rio Sa'#237'da Semanal'
                    TabOrder = 14
                  end
                  object UniLabel14: TUniLabel
                    Left = 296
                    Top = 24
                    Width = 65
                    Height = 13
                    Hint = ''
                    Caption = 'Turma Said'#227'o'
                    TabOrder = 15
                  end
                  object UniLabel15: TUniLabel
                    Left = 152
                    Top = 24
                    Width = 111
                    Height = 13
                    Hint = ''
                    Caption = 'Hor'#225'rio Entrada Said'#227'o'
                    TabOrder = 16
                  end
                  object Label68: TUniLabel
                    Left = 8
                    Top = 24
                    Width = 99
                    Height = 13
                    Hint = ''
                    Caption = 'Hor'#225'rio Saida Said'#227'o'
                    TabOrder = 17
                  end
                  object UniLabel16: TUniLabel
                    Left = 440
                    Top = 121
                    Width = 115
                    Height = 13
                    Hint = ''
                    Caption = 'Hor'#225'rio Entrada Sabado'
                    TabOrder = 18
                  end
                  object UniLabel17: TUniLabel
                    Left = 296
                    Top = 121
                    Width = 103
                    Height = 13
                    Hint = ''
                    Caption = 'Hor'#225'rio Sa'#237'da Sabado'
                    TabOrder = 19
                  end
                  object UniLabel18: TUniLabel
                    Left = 440
                    Top = 169
                    Width = 120
                    Height = 13
                    Hint = ''
                    Caption = 'Hor'#225'rio Entrada Domingo'
                    TabOrder = 20
                  end
                  object Label73: TUniLabel
                    Left = 296
                    Top = 169
                    Width = 108
                    Height = 13
                    Hint = ''
                    Caption = 'Hor'#225'rio Sa'#237'da Domingo'
                    TabOrder = 21
                  end
                  object UniLabel19: TUniLabel
                    Left = 376
                    Top = 24
                    Width = 27
                    Height = 13
                    Hint = ''
                    Caption = 'Corte'
                    TabOrder = 22
                  end
                  object Label91: TUniLabel
                    Left = 296
                    Top = 216
                    Width = 341
                    Height = 13
                    Hint = ''
                    Caption = 
                      'Bloqueio, digite qualquer motivo que automaticamente ser'#225' bloque' +
                      'ado!'
                    TabOrder = 23
                  end
                  object DBEditentradasemanal: TUniDBEdit
                    Left = 152
                    Top = 88
                    Width = 137
                    Height = 21
                    Hint = ''
                    DataField = 'HORARIO_ENTRADA_SEMANAL'
                    DataSource = DsCadastro
                    TabOrder = 5
                    Color = clWindow
                  end
                  object DBEditsaidasemanal: TUniDBEdit
                    Left = 8
                    Top = 88
                    Width = 134
                    Height = 21
                    Hint = ''
                    DataField = 'HORARIO_SAIDA_SEMANAL'
                    DataSource = DsCadastro
                    TabOrder = 4
                    Color = clWindow
                  end
                  object UniDBEdit1: TUniDBEdit
                    Left = 296
                    Top = 40
                    Width = 73
                    Height = 21
                    Hint = ''
                    DataField = 'TURMA_SAIDAO'
                    DataSource = DsCadastro
                    TabOrder = 2
                    Color = clWindow
                  end
                  object DBEditentradasaidao: TUniDBEdit
                    Left = 152
                    Top = 40
                    Width = 134
                    Height = 21
                    Hint = ''
                    DataField = 'HORARIO_ENTRADA_SAIDAO'
                    DataSource = DsCadastro
                    TabOrder = 1
                    Color = clWindow
                  end
                  object DBEditsaidasaidao: TUniDBEdit
                    Left = 8
                    Top = 40
                    Width = 134
                    Height = 21
                    Hint = ''
                    DataField = 'HORARIO_SAIDA_SAIDAO'
                    DataSource = DsCadastro
                    TabOrder = 0
                    Color = clWindow
                  end
                  object DBEditentradasabado: TUniDBEdit
                    Left = 440
                    Top = 137
                    Width = 134
                    Height = 21
                    Hint = ''
                    DataField = 'HORARIO_ENTRADA_SABADO'
                    DataSource = DsCadastro
                    TabOrder = 7
                    Color = clWindow
                  end
                  object DBEditsaidasabado: TUniDBEdit
                    Left = 296
                    Top = 137
                    Width = 134
                    Height = 21
                    Hint = ''
                    DataField = 'HORARIO_SAIDA_SABADO'
                    DataSource = DsCadastro
                    TabOrder = 6
                    Color = clWindow
                  end
                  object DBEditentradadomingo: TUniDBEdit
                    Left = 440
                    Top = 185
                    Width = 134
                    Height = 21
                    Hint = ''
                    DataField = 'HORARIO_ENTRADA_DOMINGO'
                    DataSource = DsCadastro
                    TabOrder = 9
                    Color = clWindow
                  end
                  object DBEditsaidadomingo: TUniDBEdit
                    Left = 296
                    Top = 185
                    Width = 134
                    Height = 21
                    Hint = ''
                    DataField = 'HORARIO_SAIDA_DOMINGO'
                    DataSource = DsCadastro
                    TabOrder = 8
                    Color = clWindow
                  end
                  object DBEdit41: TUniDBEdit
                    Left = 376
                    Top = 40
                    Width = 134
                    Height = 21
                    Hint = ''
                    DataField = 'CORTE'
                    DataSource = DsCadastro
                    TabOrder = 3
                    Color = clWindow
                  end
                  object GroupBox2: TUniGroupBox
                    Left = 7
                    Top = 114
                    Width = 285
                    Height = 241
                    Hint = ''
                    Caption = 'Para dias de folga deixe em branco:'
                    TabOrder = 10
                    object Label76: TUniLabel
                      Left = 2
                      Top = 24
                      Width = 109
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Sa'#237'da Segunda'
                      TabOrder = 11
                    end
                    object UniLabel20: TUniLabel
                      Left = 146
                      Top = 24
                      Width = 121
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Entrada Segunda'
                      TabOrder = 12
                    end
                    object UniLabel21: TUniLabel
                      Left = 2
                      Top = 66
                      Width = 94
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Sa'#237'da Ter'#231'a'
                      TabOrder = 13
                    end
                    object UniLabel22: TUniLabel
                      Left = 146
                      Top = 66
                      Width = 106
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Entrada Ter'#231'a'
                      TabOrder = 14
                    end
                    object UniLabel23: TUniLabel
                      Left = 2
                      Top = 108
                      Width = 101
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Sa'#237'da Quarta'
                      TabOrder = 15
                    end
                    object UniLabel24: TUniLabel
                      Left = 146
                      Top = 108
                      Width = 113
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Entrada Quarta'
                      TabOrder = 16
                    end
                    object UniLabel25: TUniLabel
                      Left = 2
                      Top = 150
                      Width = 99
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Sa'#237'da Quinta'
                      TabOrder = 17
                    end
                    object UniLabel26: TUniLabel
                      Left = 146
                      Top = 150
                      Width = 111
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Entrada Quinta'
                      TabOrder = 18
                    end
                    object UniLabel27: TUniLabel
                      Left = 2
                      Top = 192
                      Width = 95
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Sa'#237'da Sexta'
                      TabOrder = 19
                    end
                    object Label90: TUniLabel
                      Left = 146
                      Top = 192
                      Width = 107
                      Height = 13
                      Hint = ''
                      Caption = 'Hor'#225'rio Entrada Sexta'
                      TabOrder = 20
                    end
                    object UniDBEdit2: TUniDBEdit
                      Left = 2
                      Top = 40
                      Width = 134
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_SAIDA_SEG'
                      DataSource = DsCadastro
                      TabOrder = 0
                      Color = clWindow
                    end
                    object UniDBEdit3: TUniDBEdit
                      Left = 146
                      Top = 40
                      Width = 137
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_ENTRADA_SEG'
                      DataSource = DsCadastro
                      TabOrder = 1
                      Color = clWindow
                    end
                    object UniDBEdit4: TUniDBEdit
                      Left = 2
                      Top = 82
                      Width = 134
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_SAIDA_TER'
                      DataSource = DsCadastro
                      TabOrder = 2
                      Color = clWindow
                    end
                    object UniDBEdit5: TUniDBEdit
                      Left = 146
                      Top = 82
                      Width = 137
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_ENTRADA_TER'
                      DataSource = DsCadastro
                      TabOrder = 3
                      Color = clWindow
                    end
                    object UniDBEdit6: TUniDBEdit
                      Left = 2
                      Top = 124
                      Width = 134
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_SAIDA_QUA'
                      DataSource = DsCadastro
                      TabOrder = 4
                      Color = clWindow
                    end
                    object UniDBEdit7: TUniDBEdit
                      Left = 146
                      Top = 124
                      Width = 137
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_ENTRADA_QUA'
                      DataSource = DsCadastro
                      TabOrder = 5
                      Color = clWindow
                    end
                    object UniDBEdit8: TUniDBEdit
                      Left = 2
                      Top = 166
                      Width = 134
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_SAIDA_QUI'
                      DataSource = DsCadastro
                      TabOrder = 6
                      Color = clWindow
                    end
                    object DBEdit39: TUniDBEdit
                      Left = 146
                      Top = 166
                      Width = 137
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_ENTRADA_QUI'
                      DataSource = DsCadastro
                      TabOrder = 7
                      Color = clWindow
                    end
                    object DBEdit40: TUniDBEdit
                      Left = 2
                      Top = 208
                      Width = 134
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_SAIDA_SEX'
                      DataSource = DsCadastro
                      TabOrder = 8
                      Color = clWindow
                    end
                    object DBEdit42: TUniDBEdit
                      Left = 146
                      Top = 208
                      Width = 137
                      Height = 21
                      Hint = ''
                      DataField = 'HORARIO_ENTRADA_SEX'
                      DataSource = DsCadastro
                      TabOrder = 9
                      Color = clWindow
                    end
                  end
                  object BtnCopiar: TUniButton
                    Left = 296
                    Top = 82
                    Width = 125
                    Height = 25
                    Hint = ''
                    Caption = 'Copiar para todos'
                    TabOrder = 11
                    OnClick = BtnCopiarClick
                  end
                  object UniDBMemo1: TUniDBMemo
                    Left = 296
                    Top = 232
                    Width = 345
                    Height = 121
                    Hint = ''
                    DataField = 'BLOQUEIO_TRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 12
                    Color = clWindow
                  end
                end
              end
            end
            object UniTabSheet1: TUniTabSheet
              Hint = ''
              Caption = 'Remi'#231#227'o'
              object PageControlRemicao: TUniPageControl
                Left = 0
                Top = 0
                Width = 767
                Height = 480
                Hint = ''
                ActivePage = TabSheet7
                TabOrder = 0
                Align = alClient
                Anchors = [akLeft, akTop, akRight, akBottom]
                ExplicitWidth = 724
                ExplicitHeight = 464
                object TabSheet4: TUniTabSheet
                  Hint = ''
                  Caption = 'Dados'
                  object UniLabel28: TUniLabel
                    Left = 8
                    Top = 15
                    Width = 53
                    Height = 13
                    Hint = ''
                    Caption = 'Data Inicial'
                    TabOrder = 7
                  end
                  object UniLabel29: TUniLabel
                    Left = 112
                    Top = 15
                    Width = 48
                    Height = 13
                    Hint = ''
                    Caption = 'Data Final'
                    TabOrder = 8
                  end
                  object UniLabel31: TUniLabel
                    Left = 8
                    Top = 62
                    Width = 65
                    Height = 13
                    Hint = ''
                    Caption = 'Dias Trabalho'
                    TabOrder = 9
                  end
                  object GroupBox1: TUniGroupBox
                    Left = 226
                    Top = 17
                    Width = 156
                    Height = 49
                    Hint = ''
                    Caption = 'N'#227'o Remir'
                    TabOrder = 2
                    object CHDomingo: TUniCheckBox
                      Left = 82
                      Top = 17
                      Width = 63
                      Height = 17
                      Hint = ''
                      Caption = 'Domingo'
                      TabOrder = 1
                    end
                    object CHsabado: TUniCheckBox
                      Left = 13
                      Top = 18
                      Width = 60
                      Height = 17
                      Hint = ''
                      Caption = 'S'#225'bado'
                      TabOrder = 0
                    end
                  end
                  object UniButton1: TUniButton
                    Left = 152
                    Top = 80
                    Width = 105
                    Height = 25
                    Hint = ''
                    Caption = 'Inserir'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    TabOrder = 5
                    OnClick = Button3Click
                  end
                  object PageControl3: TUniPageControl
                    Left = 8
                    Top = 112
                    Width = 625
                    Height = 196
                    Hint = ''
                    ActivePage = TabSheet6
                    TabOrder = 6
                    object TabSheet6: TUniTabSheet
                      Hint = ''
                      Caption = 'Remi'#231#245'es'
                      object DBGrid2: TUniDBGrid
                        Left = 16
                        Top = 24
                        Width = 585
                        Height = 120
                        Hint = ''
                        TitleFont.Name = 'MS Sans Serif'
                        DataSource = dscalc_trabalho
                        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                        LoadMask.Message = 'Loading data...'
                        TabOrder = 0
                        Columns = <
                          item
                            FieldName = 'DATA_INICIAL'
                            Title.Caption = 'Data Inicial'
                            Width = 80
                            Visible = True
                            Expanded = False
                            CheckBoxField.FieldValues = 'true;false'
                          end
                          item
                            FieldName = 'DATA_FINAL'
                            Title.Caption = 'Data Final'
                            Width = 102
                            Visible = True
                            Expanded = False
                            CheckBoxField.FieldValues = 'true;false'
                          end
                          item
                            FieldName = 'QTDEDIASTRABALHADO'
                            Title.Caption = 'Dias Trabalhado'
                            Width = 111
                            Visible = True
                            Expanded = False
                            CheckBoxField.FieldValues = 'true;false'
                          end>
                      end
                      object UniBitBtnExcluirRemicao: TUniBitBtn
                        Left = 495
                        Top = 145
                        Width = 106
                        Height = 23
                        Hint = ''
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
                        Caption = 'Excluir'
                        TabOrder = 1
                        OnClick = UniBitBtnExcluirRemicaoClick
                      end
                    end
                  end
                  object DateTimePickerdatainicial: TUniDateTimePicker
                    Left = 9
                    Top = 32
                    Width = 97
                    Height = 21
                    Hint = ''
                    DateTime = 41058.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    TabOrder = 0
                  end
                  object DateTimePickerdatafinal: TUniDateTimePicker
                    Left = 112
                    Top = 32
                    Width = 97
                    Height = 21
                    Hint = ''
                    DateTime = 41058.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    TabOrder = 1
                  end
                  object Editdiastrabalhado: TUniEdit
                    Left = 9
                    Top = 80
                    Width = 102
                    Height = 21
                    Hint = ''
                    Text = ''
                    TabOrder = 4
                    Color = clWindow
                  end
                  object UniButton2: TUniButton
                    Left = 400
                    Top = 27
                    Width = 75
                    Height = 25
                    Hint = ''
                    Caption = 'Calcular'
                    TabOrder = 3
                    OnClick = Button2Click
                  end
                end
                object TabSheet7: TUniTabSheet
                  Hint = ''
                  Caption = 'Certid'#227'o'
                  object UniLabel32: TUniLabel
                    Left = 32
                    Top = 15
                    Width = 53
                    Height = 13
                    Hint = ''
                    Caption = 'Data Inicial'
                    TabOrder = 9
                  end
                  object UniLabel33: TUniLabel
                    Left = 160
                    Top = 15
                    Width = 48
                    Height = 13
                    Hint = ''
                    Caption = 'Data Final'
                    TabOrder = 10
                  end
                  object UniLabel34: TUniLabel
                    Left = 128
                    Top = 64
                    Width = 82
                    Height = 13
                    Hint = ''
                    Caption = 'Dias Trabalhados'
                    TabOrder = 11
                  end
                  object UniLabel35: TUniLabel
                    Left = 312
                    Top = 64
                    Width = 58
                    Height = 13
                    Hint = ''
                    Caption = 'Dias Remido'
                    TabOrder = 12
                  end
                  object UniLabel36: TUniLabel
                    Left = 32
                    Top = 64
                    Width = 68
                    Height = 13
                    Hint = ''
                    Caption = 'Saldo Anterior'
                    TabOrder = 13
                  end
                  object Label59: TUniLabel
                    Left = 384
                    Top = 64
                    Width = 67
                    Height = 13
                    Hint = ''
                    Caption = 'Saldo Pr'#243'xima'
                    TabOrder = 14
                  end
                  object UniLabel37: TUniLabel
                    Left = 224
                    Top = 64
                    Width = 81
                    Height = 13
                    Hint = ''
                    Caption = 'Total Trabalhado'
                    TabOrder = 15
                  end
                  object DateTimePickerdtinicialcertidao: TUniDateTimePicker
                    Left = 32
                    Top = 32
                    Width = 121
                    Height = 21
                    Hint = ''
                    DateTime = 41058.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    TabOrder = 0
                  end
                  object BitBtn1: TUniBitBtn
                    Left = 303
                    Top = 32
                    Width = 106
                    Height = 26
                    Hint = ''
                    Glyph.Data = {
                      DE010000424DDE01000000000000760000002800000024000000120000000100
                      0400000000006801000000000000000000001000000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
                      33333333333F8888883F33330000324334222222443333388F3833333388F333
                      000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
                      F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
                      223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
                      3338888300003AAAAAAA33333333333888888833333333330000333333333333
                      333333333333333333FFFFFF000033333333333344444433FFFF333333888888
                      00003A444333333A22222438888F333338F3333800003A2243333333A2222438
                      F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
                      22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
                      33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
                      3333333333338888883333330000333333333333333333333333333333333333
                      0000}
                    Caption = 'Calcular'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    TabOrder = 1
                    OnClick = BitBtn1Click
                  end
                  object Editdiastrabalhadocertidao: TUniEdit
                    Left = 128
                    Top = 80
                    Width = 89
                    Height = 21
                    Hint = ''
                    Text = ''
                    TabOrder = 3
                    Color = clWindow
                  end
                  object Editdiasremidocertidao: TUniEdit
                    Left = 312
                    Top = 80
                    Width = 65
                    Height = 21
                    Hint = ''
                    Text = ''
                    TabOrder = 5
                    Color = clWindow
                  end
                  object Editsaldoanterior: TUniEdit
                    Left = 32
                    Top = 80
                    Width = 89
                    Height = 21
                    Hint = ''
                    Text = ''
                    TabOrder = 2
                    Color = clWindow
                  end
                  object Editsaldoproximo: TUniEdit
                    Left = 384
                    Top = 80
                    Width = 81
                    Height = 21
                    Hint = ''
                    Text = ''
                    TabOrder = 6
                    Color = clWindow
                  end
                  object UniDBGrid2: TUniDBGrid
                    Left = 32
                    Top = 168
                    Width = 561
                    Height = 120
                    Hint = ''
                    TitleFont.Name = 'MS Sans Serif'
                    DataSource = dscertidao_trabalho
                    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    LoadMask.Message = 'Loading data...'
                    TabOrder = 8
                    Columns = <
                      item
                        FieldName = 'DATA_INICIAL'
                        Title.Caption = 'Data Inicial'
                        Width = 68
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'DATA_FINAL'
                        Title.Caption = 'Data Final'
                        Width = 74
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'SALDO_ANTERIOR'
                        Title.Caption = 'Saldo Anterior'
                        Width = 71
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'DIAS_TRABALHADO'
                        Title.Caption = 'Dias Trabalhado'
                        Width = 89
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'total_dias'
                        Title.Caption = 'Total Trabalho'
                        Width = 77
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'DIAS_REMIDO'
                        Title.Caption = 'Dias Remido'
                        Width = 69
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end
                      item
                        FieldName = 'SALDO_PROXIMA'
                        Title.Caption = 'Saldo Pr'#243'xima'
                        Width = 77
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end>
                  end
                  object BitBtn2: TUniBitBtn
                    Left = 212
                    Top = 126
                    Width = 97
                    Height = 25
                    Hint = ''
                    Glyph.Data = {
                      DE010000424DDE01000000000000760000002800000024000000120000000100
                      0400000000006801000000000000000000001000000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      3333333333333333333333330000333333333333333333333333F33333333333
                      00003333344333333333333333388F3333333333000033334224333333333333
                      338338F3333333330000333422224333333333333833338F3333333300003342
                      222224333333333383333338F3333333000034222A22224333333338F338F333
                      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                      0000333333333A222433333333333338F338F33300003333333333A222433333
                      333333338F338F33000033333333333A222433333333333338F338F300003333
                      33333333A222433333333333338F338F00003333333333333A22433333333333
                      3338F38F000033333333333333A223333333333333338F830000333333333333
                      333A333333333333333338330000333333333333333333333333333333333333
                      0000}
                    Caption = 'Inserir'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    TabOrder = 7
                    Default = True
                    OnClick = BitBtn2Click
                  end
                  object Edittotaltrabalhado: TUniEdit
                    Left = 224
                    Top = 80
                    Width = 81
                    Height = 21
                    Hint = ''
                    Text = ''
                    TabOrder = 4
                    Color = clWindow
                  end
                  object UniBitBtnExcluirCertidao: TUniBitBtn
                    Left = 486
                    Top = 294
                    Width = 106
                    Height = 23
                    Hint = ''
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
                    Caption = 'Excluir'
                    TabOrder = 16
                    OnClick = UniBitBtnExcluirCertidaoClick
                  end
                  object DateTimePickerdtfinalcertidao: TUniDateTimePicker
                    Left = 159
                    Top = 32
                    Width = 121
                    Height = 21
                    Hint = ''
                    DateTime = 41058.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    TabOrder = 17
                  end
                end
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TUniTabSheet
        inherited DBGridConsulta: TUniDBGrid
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
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'RGI'
              Title.Caption = 'Prontu'#225'rio'
              Width = 60
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'NUMERO_ROUPA'
              Title.Caption = 'Roupa'
              Width = 40
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'SIGLA'
              Title.Caption = 'Sigla'
              Width = 60
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'STATUS'
              Title.Caption = 'Status'
              Width = 56
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end>
        end
      end
    end
  end
  inherited dsdataservidor: TDataSource
    Left = 760
    Top = 48
  end
  inherited dstdataservidor: TDataSetProvider
    Left = 712
    Top = 48
  end
  inherited SQLdataservidor: TSQLQuery
    Left = 688
    Top = 48
  end
  inherited cdsdataservidor: TClientDataSet
    Left = 734
    Top = 48
  end
  object dscertidao_trabalho: TDataSource
    DataSet = cdscertidao_trabalho
    Left = 360
    Top = 72
  end
  object cdscertidao_trabalho: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id_interno'
    MasterFields = 'id_interno'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspcertidao_trabalho'
    Left = 328
    Top = 72
  end
  object dspcertidao_trabalho: TDataSetProvider
    DataSet = SQLcertidao_trabalho
    Left = 296
    Top = 72
  end
  object SQLcertidao_trabalho: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idinterno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from atestado_trabalho'
      'where id_interno = :idinterno')
    Left = 264
    Top = 72
  end
  object SQLhistorico_trabalho: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select h.*,'
      'l.local_trabalho,'
      's.setor_trabalho,'
      'f.funcao_interno'
      'from historico_trabalho h'
      
        'left join local_trabalho l on (h.id_local_trabalho=l.id_local_tr' +
        'abalho)'
      
        'left join setor_trabalho s on (h.id_setor_trabalho=s.id_setor_tr' +
        'abalho)'
      
        'left join funcao_interno f on (h.id_funcao_interno=f.id_funcao_i' +
        'nterno)'
      'where id_interno=:id_interno '
      'order by data desc')
    Left = 679
    Top = 208
  end
  object dsphistorico_trabalho: TDataSetProvider
    DataSet = SQLhistorico_trabalho
    Left = 711
    Top = 208
  end
  object cdshistorico_trabalho: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsphistorico_trabalho'
    Left = 751
    Top = 208
  end
  object dshistorico_trabalho: TDataSource
    DataSet = cdshistorico_trabalho
    Left = 784
    Top = 208
  end
  object dscalc_trabalho: TDataSource
    DataSet = cdscalc_trabalho
    Left = 764
    Top = 113
  end
  object cdscalc_trabalho: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspcalc_trabalho'
    Left = 740
    Top = 113
  end
  object dspcalc_trabalho: TDataSetProvider
    DataSet = SQLcalc_trabalho
    Left = 708
    Top = 113
  end
  object SQLcalc_trabalho: TSQLQuery
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
      'FROM calc_setor_trabalho'
      'where id_interno = :id_interno'
      'order by data_inicial desc')
    Left = 684
    Top = 113
  end
  object PopupMenuTrabalho: TUniPopupMenu
    Left = 788
    Top = 265
    object Liberar1: TUniMenuItem
      Caption = 'Liberar Setor de Trabalho'
      OnClick = Liberar1Click
    end
    object EditarTrabalho1: TUniMenuItem
      Caption = 'Editar Trabalho'
      OnClick = EditarTrabalho1Click
    end
  end
end
