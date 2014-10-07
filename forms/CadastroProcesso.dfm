inherited FrmCadastroProcesso: TFrmCadastroProcesso
  ClientHeight = 590
  ClientWidth = 984
  Caption = 'Inqu'#233'ritos / Processos / Condena'#231#245'es'
  ExplicitTop = -84
  ExplicitWidth = 1000
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelTituloModeloCadastro: TUniPanel
    Width = 984
    ExplicitWidth = 984
    inherited UniImage1: TUniImage
      Width = 982
      ExplicitWidth = 982
    end
  end
  inherited PanelBotoes: TUniPanel
    Height = 523
    ExplicitHeight = 523
    inherited Novo: TUniBitBtn
      Left = 1
      ExplicitLeft = 1
    end
  end
  inherited PanelModeloCadastro: TUniPanel
    Width = 878
    Height = 523
    ExplicitWidth = 878
    ExplicitHeight = 523
    inherited PageControlModeloCadastro: TUniPageControl
      Width = 876
      Height = 521
      ActivePage = TabSheetCadastro
      ExplicitWidth = 876
      ExplicitHeight = 521
      inherited TabSheetCadastro: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 868
        ExplicitHeight = 493
        inherited PanelCadastro: TUniPanel
          Width = 868
          Height = 493
          ExplicitWidth = 868
          ExplicitHeight = 493
          object Label2: TUniLabel
            Left = 10
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            TabOrder = 1
          end
          object dbeditcodigo: TUniDBEdit
            Left = 10
            Top = 24
            Width = 49
            Height = 21
            Enabled = False
            DataField = 'IDPROCESSO'
            DataSource = DsCadastro
            TabOrder = 2
            Color = clWindow
          end
          object DBComboBox7: TUniDBComboBox
            Left = 72
            Top = 64
            Width = 457
            Height = 21
            DataField = 'SITUACAOJURIDICA'
            DataSource = DsCadastro
            Style = csDropDownList
            Items.Strings = (
              ''
              'ABSOLVIDO'
              'ALVAR'#193
              'CONDENADO'
              'EXTIN'#199#195'O'
              'INQU'#201'RITO POLICIAL'
              'PROCESSADO'
              'PROVIS'#211'RIO'
              '')
            ItemIndex = -1
            TabOrder = 3
          end
          object Label155: TUniLabel
            Left = 72
            Top = 50
            Width = 80
            Height = 13
            Caption = 'Situa'#231#227'o Jur'#237'dica'
            TabOrder = 8
          end
          object LabelComutacao: TUniLabel
            Left = 177
            Top = 50
            Width = 147
            Height = 13
            Visible = False
            Caption = 'Processo com Comuta'#231#227'o'
            ParentFont = False
            Font.Color = clRed
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 4
          end
          object Label7: TUniLabel
            Left = 72
            Top = 8
            Width = 50
            Height = 13
            Caption = 'Interno(a)'
            TabOrder = 5
          end
          object UniDBEditInterno: TUniDBEdit
            Left = 72
            Top = 22
            Width = 60
            Height = 22
            DataField = 'IDINTERNO'
            DataSource = DsCadastro
            TabOrder = 6
            Color = clWindow
            ReadOnly = True
            OnExit = UniDBEditInternoExit
          end
          object UniLabelInterno: TUniLabel
            Left = 138
            Top = 24
            Width = 391
            Height = 13
            AutoSize = False
            Caption = '(INTERNO)'
            ParentColor = False
            Color = clWhite
            Transparent = False
            TabOrder = 7
          end
          object PageControlProcesso: TUniPageControl
            Left = 1
            Top = 98
            Width = 866
            Height = 395
            ActivePage = TabSheet1
            TabOrder = 9
            Align = alBottom
            Anchors = [akLeft, akRight, akBottom]
            object TabSheetInquerito: TUniTabSheet
              Caption = 'Inqu'#233'rito Policial'
              object Label16: TUniLabel
                Left = 17
                Top = 19
                Width = 44
                Height = 26
                Caption = 'N'#186' do Inqu'#233'rito'
                TabOrder = 10
              end
              object Label17: TUniLabel
                Left = 17
                Top = 95
                Width = 46
                Height = 13
                Caption = 'Delegacia'
                TabOrder = 11
              end
              object Label18: TUniLabel
                Left = 176
                Top = 19
                Width = 44
                Height = 26
                Caption = 'Data do Inqu'#233'rito'
                TabOrder = 12
              end
              object Label19: TUniLabel
                Left = 17
                Top = 138
                Width = 79
                Height = 13
                Caption = 'Motivo da Pris'#227'o'
                TabOrder = 13
              end
              object Label20: TUniLabel
                Left = 17
                Top = 181
                Width = 79
                Height = 13
                Caption = 'Dispositivo Legal'
                TabOrder = 14
              end
              object Label21: TUniLabel
                Left = 406
                Top = 19
                Width = 70
                Height = 13
                Caption = 'Data da Pris'#227'o'
                TabOrder = 15
              end
              object Label22: TUniLabel
                Left = 17
                Top = 264
                Width = 95
                Height = 13
                Caption = 'Tipifica'#231#227'o do Crime'
                TabOrder = 16
              end
              object Label72: TUniLabel
                Left = 17
                Top = 305
                Width = 58
                Height = 13
                Caption = 'Observa'#231#227'o'
                TabOrder = 17
              end
              object Label6: TUniLabel
                Left = 292
                Top = 19
                Width = 41
                Height = 26
                Caption = 'Data do Fato'
                TabOrder = 18
              end
              object Label35: TUniLabel
                Left = 293
                Top = 89
                Width = 109
                Height = 13
                Caption = 'Descri'#231#227'o da delegacia'
                TabOrder = 19
              end
              object Label36: TUniLabel
                Left = 17
                Top = 57
                Width = 51
                Height = 26
                Caption = 'Cidade do Inqu'#233'rito'
                TabOrder = 20
              end
              object DBEdit14: TUniDBEdit
                Left = 17
                Top = 35
                Width = 149
                Height = 21
                DataField = 'NUMERO_INQUERITO'
                DataSource = DsCadastro
                TabOrder = 0
                Color = clWindow
              end
              object DBEdit4: TUniDBEdit
                Left = 17
                Top = 321
                Width = 505
                Height = 21
                DataField = 'OBSERVACAO'
                DataSource = DsCadastro
                TabOrder = 8
                Color = clWindow
              end
              object DBEdit18: TUniDBEdit
                Left = 293
                Top = 105
                Width = 215
                Height = 21
                DataField = 'DELEGACIA'
                DataSource = DsCadastro
                TabOrder = 3
                Color = clWindow
              end
              object DBComboBox3: TUniDBComboBox
                Left = 17
                Top = 154
                Width = 510
                Height = 21
                DataField = 'MOTIVO_PRISAO'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  'CUMPRIMENTO DE SENTEN'#199'A'
                  'DECORRENTE DE SENTEN'#199'A DE PRON'#218'NCIA'
                  'FLAGRANTE'
                  'MANDADO DE PRIS'#195'O PREVENTIVA'
                  'MANDADO DE PRIS'#195'O PROVIS'#211'RIO'
                  'MANDADO DE PRIS'#195'O TEMPOR'#193'RIA'
                  'MANDADO DE PRIS'#195'O CONDENAT'#211'RIO'
                  'SENTE'#199'A PENAL RECORR'#205'VEL')
                ItemIndex = -1
                TabOrder = 4
              end
              object Button1: TUniButton
                Left = 484
                Top = 211
                Width = 45
                Height = 20
                Caption = 'Busca'
                TabOrder = 6
              end
              object Button2: TUniButton
                Left = 484
                Top = 280
                Width = 45
                Height = 20
                Visible = False
                Caption = 'Busca'
                TabOrder = 7
              end
              object DBEditDATA_FATO_CONDENACAO: TUniDBDateTimePicker
                Left = 293
                Top = 35
                Width = 101
                Height = 21
                DateTime = 41919.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 1
                DataField = 'DATA_FATO_CONDENACAO'
                DataSource = DsCadastro
              end
              object DBEditDATA_PRISAO: TUniDBDateTimePicker
                Left = 405
                Top = 35
                Width = 101
                Height = 21
                DateTime = 41919.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 2
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
              end
              object DBMemo1: TUniDBMemo
                Left = 17
                Top = 197
                Width = 462
                Height = 57
                DataField = 'DISPOSITIVO_LEGAL'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBComboBox9: TUniDBComboBox
                Left = 17
                Top = 278
                Width = 460
                Height = 21
                DataField = 'TIPO_CRIME'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  ''
                  'AMEA'#199'A (ART.147 CP)'
                  'APROPRIA'#199#195'O IND'#201'BITA (ART.168 CP)'
                  'ASSOCIA'#199#195'O PARA O TR'#193'FICO (ART.35 LEI 11.343/06)'
                  'ATENTADO VIOLENTO AO PUDOR (ART.214 CP)'
                  'CONTRABANDO OU DESCAMINHO (ART.334 CP)'
                  'CORRUP'#199#195'O ATIVA (ART.333 CP)'
                  'CORRUP'#199#195'O DE MENORES (ART.218 CP)'
                  'CORRUP'#199#195'O PASSIVA (ART.317 CP)'
                  'CRIME DE TORTURA (LEI 9.455/97)'
                  'CRIME PREVISTO NA LEI DE ARMAS (LEI 10.826/03)'
                  'CRIME PREVISTO NA LEI DE DROGAS (LEI 11.343/06)'
                  'CRIMES CONTRA A ADMINISTRA'#199#195'O P'#218'BLICA'
                  'CRIMES CONTRA O MEIO AMBIENTE (LEI 9.605/98)'
                  'DANO (ART. 163 CP)'
                  'DANO QUALIFICADO (ART. 163, PAR'#193'GRAFO '#218'NICO CP )'
                  'DISPARO DE ARMA DE FOGO (ART. 15 LEI 10.826/03)'
                  'ESTATUTO DA CRIAN'#199'A E DO ADOLESCENTE (LEI 8.069/90)'
                  'ESTELIONATO (ART.171 CP)'
                  'ESTUPRO (ART.213 CP)'
                  'EXTORS'#195'O (ART.158 CP)'
                  'EXTORS'#195'O MEDIANTE SEQUESTRO (ART.159 CP)'
                  'EXTORS'#195'O QUALIFICADA POR MORTE (ART.158, '#167'3'#186' CP)'
                  
                    'FALSIDADE DE T'#205'TULOS E OUTROS PAP'#201'IS P'#218'BLICOS (ART. 293 A 299 CP' +
                    ')'
                  'FALSIDADE IDEOL'#211'GICA (ART.299 CP)'
                  'FURTO (ART.155 CP)'
                  'FURTO QUALIFICADO (ART.155, '#167'4'#186' e '#167'5'#186')'
                  'HOMIC'#205'DIO QUALIFICADO (ART.121, '#167'2'#186' CP)'
                  'HOMIC'#205'DIO SIMPLES (ART.121, '#167'2'#186' CP)'
                  'LATROC'#205'NIO (ART.157, '#167'3'#186' CP)'
                  'LEI DOS CRIMES HEDIONDOS (LEI N'#186' 8.072/90.)'
                  'LEI MARIA DA PENHA (LEI 11.340/06)'
                  'LES'#195'O CORPORAL (ART.129 CP)'
                  'MOEDA FALSA (ART. 289 CP)'
                  'N'#195'O INFORMADO'
                  'OUTROS CRIMES'
                  'PECULATO (ART.312 CP)'
                  'PORTE ILEGAL DE ARMA DE FOGO (ART. 14 LEI 10.826/03)'
                  
                    'POSSE OU PORTE ILEGAL DE ARMA DE FOGO RESTRITO (ART. 16 LEI 10.8' +
                    '26/03)'
                  'QUADRILHA OU BANDO (ART.288 CP)'
                  'RECEPTA'#199#195'O (ART.180 CP)'
                  'RECEPTA'#199#195'O QUALIFICADA (ART.180, '#167'1'#186' CP)'
                  'ROUBO (ART.157 CP)'
                  'ROUBO QUALIFICADO (ART.157, '#167'2'#186' CP)'
                  'SEQUESTRO E C'#193'RCERE PRIVADO (ART.148 CP)'
                  'TENTATIVA DE FURTO SIMPLES (ART.155 C/ ART.14, II CP)'
                  
                    'TENTATIVA DE FURTO QUALIFICADO  (ART.155, '#167'4'#186' e '#167'5'#186' C/ ART.14, I' +
                    'I CP)'
                  'TENTATIVA DE HOMIC'#205'DIO (ART.121 C/ ART.14, II CP)'
                  
                    'TENTATIVA DE HOMIC'#205'DIO QUALIFICADO (ART.121, '#167'2'#186' C/ ART.14, II C' +
                    'P)'
                  'TENTATIVA DE LATROC'#205'NIO (ART.157, '#167'3'#186' C/ ART.14, II CP)'
                  'TENTATIVA DE ROUBO (ART.157 C/ ART.14, II CP)'
                  'TR'#193'FICO IL'#205'CITO DE ENTORPECENTES E DROGAS AFINS'
                  'USO DE DOCUMENTO FALSO (ART. 304 CP)'
                  'USU'#193'RIO DE ENTORPECENTES E DROGAS AFINS')
                ItemIndex = -1
                TabOrder = 9
              end
              object UniDBDateTimePickerDATA_INQUERITO: TUniDBDateTimePicker
                Left = 173
                Top = 35
                Width = 101
                Height = 21
                DateTime = 41919.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 21
                DataField = 'DATA_INQUERITO'
                DataSource = DsCadastro
              end
              object UniDBEditCidadeInquerito: TUniDBEdit
                Left = 17
                Top = 72
                Width = 60
                Height = 22
                DataField = 'ID_CIDADE_INQUERITO'
                DataSource = DsCadastro
                TabOrder = 22
                Color = clWindow
                OnExit = UniDBEditCidadeInqueritoExit
              end
              object UniBitBtnCidadeInquerito: TUniBitBtn
                Left = 75
                Top = 72
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
                TabOrder = 23
                OnClick = UniBitBtnCidadeInqueritoClick
              end
              object UniLabelCidade: TUniLabel
                Left = 107
                Top = 76
                Width = 385
                Height = 13
                AutoSize = False
                Caption = '(Cidade)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 24
              end
              object UniDBEditDelegacia: TUniDBEdit
                Left = 17
                Top = 110
                Width = 60
                Height = 22
                DataField = 'ID_DESTINO_DELEGACIA'
                DataSource = DsCadastro
                TabOrder = 25
                Color = clWindow
                OnExit = UniDBEditDelegaciaExit
              end
              object UniBitBtnDelegacia: TUniBitBtn
                Left = 78
                Top = 110
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
                OnClick = UniBitBtnDelegaciaClick
              end
              object UniLabelDelegacia: TUniLabel
                Left = 107
                Top = 113
                Width = 182
                Height = 13
                AutoSize = False
                Caption = '(Delegacia)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 27
              end
            end
            object TabSheet1: TUniTabSheet
              Caption = 'Processo'
              object Label139: TUniLabel
                Left = 11
                Top = 81
                Width = 42
                Height = 13
                Caption = 'Comarca'
                TabOrder = 8
              end
              object Label150: TUniLabel
                Left = 618
                Top = 80
                Width = 86
                Height = 13
                Caption = 'Descri'#231#227'o da Vara'
                TabOrder = 9
              end
              object Label162: TUniLabel
                Left = 325
                Top = 42
                Width = 33
                Height = 13
                Caption = 'Justi'#231'a'
                TabOrder = 10
              end
              object Label153: TUniLabel
                Left = 11
                Top = 2
                Width = 58
                Height = 13
                Caption = 'N'#186' Processo'
                TabOrder = 11
              end
              object Label152: TUniLabel
                Left = 523
                Top = 42
                Width = 19
                Height = 13
                Caption = 'R'#233'u'
                TabOrder = 12
              end
              object Label151: TUniLabel
                Left = 439
                Top = 1
                Width = 52
                Height = 13
                Caption = 'Tipo Pris'#227'o'
                TabOrder = 13
              end
              object Label154: TUniLabel
                Left = 11
                Top = 41
                Width = 88
                Height = 13
                Caption = 'Guia Recolhimento'
                TabOrder = 14
              end
              object Label4: TUniLabel
                Left = 336
                Top = 1
                Width = 45
                Height = 26
                Caption = 'Data Cumprida'
                TabOrder = 15
              end
              object Label37: TUniLabel
                Left = 327
                Top = 81
                Width = 22
                Height = 13
                Caption = 'Vara'
                TabOrder = 16
              end
              object PageControlGeralProcessos: TUniPageControl
                Left = 11
                Top = 120
                Width = 601
                Height = 231
                ActivePage = TabSheet2
                TabOrder = 7
                object TabSheet2: TUniTabSheet
                  Caption = 'Artigos'
                  object Label3: TUniLabel
                    Left = 8
                    Top = 4
                    Width = 29
                    Height = 26
                    Caption = 'ID do Artigo'
                    TabOrder = 3
                  end
                  object DBGridArtigos: TUniDBGrid
                    Left = 0
                    Top = 48
                    Width = 593
                    Height = 130
                    TitleFont.Name = 'MS Sans Serif'
                    DataSource = dsvincartigo
                    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    ReadOnly = True
                    WebOptions.Paged = False
                    LoadMask.Message = 'Loading data...'
                    TabOrder = 1
                    Columns = <
                      item
                        FieldName = 'Artigo(s)'
                        Title.Caption = 'Artigo(s)'
                        Width = 450
                        Visible = True
                        Expanded = False
                        CheckBoxField.FieldValues = 'true;false'
                      end>
                  end
                  object BitBtn1: TUniBitBtn
                    Left = 480
                    Top = 17
                    Width = 75
                    Height = 25
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000010000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                      333333333337F33333333333333033333333333333373F333333333333090333
                      33333333337F7F33333333333309033333333333337373F33333333330999033
                      3333333337F337F33333333330999033333333333733373F3333333309999903
                      333333337F33337F33333333099999033333333373333373F333333099999990
                      33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
                      33333333337F7F33333333333309033333333333337F7F333333333333090333
                      33333333337F7F33333333333309033333333333337F7F333333333333090333
                      33333333337F7F33333333333300033333333333337773333333}
                    Caption = 'Inserir'
                    TabOrder = 0
                    OnClick = BitBtn1Click
                  end
                  object DBNavigator2: TUniDBNavigator
                    Left = 0
                    Top = 178
                    Width = 209
                    Height = 25
                    DataSource = dsvincartigo
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbRefresh]
                    TabOrder = 2
                  end
                  object UniBitBtnArtigo: TUniBitBtn
                    Left = 84
                    Top = 20
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
                    TabOrder = 4
                    OnClick = UniBitBtnArtigoClick
                  end
                  object UniLabelArtigo: TUniLabel
                    Left = 113
                    Top = 23
                    Width = 361
                    Height = 13
                    AutoSize = False
                    Caption = '(Artigo)'
                    ParentColor = False
                    Color = clWhite
                    Transparent = False
                    TabOrder = 5
                  end
                  object UniEditArtigo: TUniEdit
                    Left = 5
                    Top = 20
                    Width = 73
                    TabOrder = 6
                    Color = clWindow
                    OnExit = UniEditArtigoExit
                  end
                end
              end
              object DBEdit1: TUniDBEdit
                Left = 618
                Top = 95
                Width = 154
                Height = 21
                DataField = 'VARA'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object DBEdit2: TUniDBEdit
                Left = 11
                Top = 18
                Width = 325
                Height = 21
                DataField = 'NPROCESSO'
                DataSource = DsCadastro
                TabOrder = 0
                Color = clWindow
              end
              object DBEdit3: TUniDBEdit
                Left = 11
                Top = 57
                Width = 312
                Height = 21
                DataField = 'GR'
                DataSource = DsCadastro
                TabOrder = 3
                Color = clWindow
              end
              object DBComboBox4: TUniDBComboBox
                Left = 441
                Top = 18
                Width = 331
                Height = 21
                DataField = 'PRISAO'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  ''
                  'CUMPRIMENTO DE SENTEN'#199'A'
                  'DECORRENTE DE SENTEN'#199'A DE PRON'#218'NCIA'
                  'FLAGRANTE'
                  'MANDADO DE PRIS'#195'O PREVENTIVA'
                  'MANDADO DE PRIS'#195'O PROVIS'#211'RIO'
                  'MANDADO DE PRIS'#195'O TEMPOR'#193'RIA'
                  'MANDADO DE PRIS'#195'O CONDENAT'#211'RIO'
                  'SENTE'#199'A PENAL RECORR'#205'VEL')
                ItemIndex = -1
                TabOrder = 2
              end
              object DBComboBox5: TUniDBComboBox
                Left = 324
                Top = 57
                Width = 193
                Height = 21
                DataField = 'TIPOJUSTICA'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  ''
                  'JUSTI'#199'A COMUM'
                  'JUSTI'#199'A FEDERAL'
                  'JUSTI'#199'A MILITAR')
                ItemIndex = -1
                TabOrder = 4
              end
              object DBComboBox6: TUniDBComboBox
                Left = 524
                Top = 57
                Width = 248
                Height = 21
                DataField = 'REU'
                DataSource = DsCadastro
                Style = csDropDownList
                Items.Strings = (
                  ''
                  'PRIM'#193'RIO'
                  'REINCIDENTE'
                  'TECNICAMENTE PRIM'#193'RIO')
                ItemIndex = -1
                TabOrder = 5
              end
              object DBEditDATA_PROCESSO: TUniDBDateTimePicker
                Left = 337
                Top = 18
                Width = 101
                Height = 21
                DateTime = 41919.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 1
                DataField = 'DATA_PROCESSO'
                DataSource = DsCadastro
              end
              object UniDBEditComarca: TUniDBEdit
                Left = 11
                Top = 95
                Width = 60
                Height = 22
                DataField = 'IDCOMARCA'
                DataSource = DsCadastro
                TabOrder = 17
                Color = clWindow
                OnExit = UniDBEditComarcaExit
              end
              object UniBitBtnComarca: TUniBitBtn
                Left = 75
                Top = 95
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
                TabOrder = 18
                OnClick = UniBitBtnComarcaClick
              end
              object UniLabelComarca: TUniLabel
                Left = 107
                Top = 99
                Width = 214
                Height = 13
                AutoSize = False
                Caption = '(Comarca)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 19
              end
              object UniDBEditVara: TUniDBEdit
                Left = 327
                Top = 95
                Width = 60
                Height = 22
                DataField = 'ID_DESTINO_VARA'
                DataSource = DsCadastro
                TabOrder = 20
                Color = clWindow
                OnExit = UniDBEditVaraExit
              end
              object UniBitBtnVara: TUniBitBtn
                Left = 388
                Top = 95
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
                TabOrder = 21
                OnClick = UniBitBtnVaraClick
              end
              object UniLabelVara: TUniLabel
                Left = 417
                Top = 98
                Width = 182
                Height = 13
                AutoSize = False
                Caption = '(Vara)'
                ParentColor = False
                Color = clWhite
                Transparent = False
                TabOrder = 22
              end
            end
            object TabSheetCondenacao: TUniTabSheet
              Caption = 'Condena'#231#227'o'
              DesignSize = (
                858
                367)
              object DBText1: TUniDBText
                Left = 176
                Top = 5
                Width = 42
                Height = 13
                DataField = 'SITUACAOJURIDICA'
                DataSource = DsCadastro
                ParentFont = False
                Font.Name = 'MS Sans Serif'
              end
              object Label9: TUniLabel
                Left = 10
                Top = 5
                Width = 160
                Height = 26
                AutoSize = False
                Caption = 'O Interno neste processo est'#225':'
                TabOrder = 3
              end
              object PanelCondenado: TUniPanel
                Left = 3
                Top = 35
                Width = 854
                Height = 416
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 1
                DesignSize = (
                  854
                  416)
                object Label29: TUniLabel
                  Left = 364
                  Top = 50
                  Width = 98
                  Height = 13
                  Caption = 'Tipo de Condena'#231#227'o'
                  TabOrder = 14
                end
                object Label75: TUniLabel
                  Left = 146
                  Top = 50
                  Width = 34
                  Height = 13
                  Caption = 'Dia(s)'
                  ParentFont = False
                  Font.Style = [fsBold]
                  TabOrder = 15
                end
                object Label74: TUniLabel
                  Left = 79
                  Top = 50
                  Width = 46
                  Height = 13
                  Caption = 'M'#234's(es)'
                  ParentFont = False
                  Font.Style = [fsBold]
                  TabOrder = 16
                end
                object Label73: TUniLabel
                  Left = 12
                  Top = 50
                  Width = 38
                  Height = 13
                  Caption = 'Ano(s)'
                  ParentFont = False
                  Font.Style = [fsBold]
                  TabOrder = 17
                end
                object Label8: TUniLabel
                  Left = 225
                  Top = 10
                  Width = 69
                  Height = 26
                  Caption = 'Inicio da Condena'#231#227'o'
                  ParentFont = False
                  Font.Style = [fsBold]
                  TabOrder = 18
                end
                object Label38: TUniLabel
                  Left = 220
                  Top = 50
                  Width = 65
                  Height = 13
                  Caption = 'Regime Inicial'
                  TabOrder = 19
                end
                object Label34: TUniLabel
                  Left = 479
                  Top = 304
                  Width = 64
                  Height = 13
                  Caption = 'Final da Pena'
                  TabOrder = 20
                end
                object Label27: TUniLabel
                  Left = 12
                  Top = 10
                  Width = 75
                  Height = 13
                  Caption = 'N.Processo VEP'
                  TabOrder = 21
                end
                object Label28: TUniLabel
                  Left = 118
                  Top = 10
                  Width = 59
                  Height = 13
                  Caption = 'Data na VEP'
                  TabOrder = 22
                end
                object Label5: TUniLabel
                  Left = 364
                  Top = 8
                  Width = 95
                  Height = 13
                  Caption = 'Situa'#231#227'o Processual'
                  TabOrder = 23
                end
                object PageControlCondenacao: TUniPageControl
                  Left = 1
                  Top = 98
                  Width = 656
                  Height = 200
                  ActivePage = TabSheet7
                  TabOrder = 10
                  object TabSheet8: TUniTabSheet
                    Caption = 'Requisito para Progress'#227'o'
                    ExplicitLeft = 0
                    ExplicitTop = 0
                    ExplicitWidth = 0
                    ExplicitHeight = 0
                    object DBRadioGroup1: TUniDBRadioGroup
                      Left = 9
                      Top = 5
                      Width = 395
                      Height = 159
                      DataField = 'PROGRESSAO_REGIME'
                      DataSource = DsCadastro
                      Caption = 'Progress'#227'o de Regime'
                      ParentFont = False
                      Font.Style = [fsBold]
                      TabOrder = 0
                      Items.Strings = (
                        '0'
                        '1'
                        '2')
                    end
                    object GroupBox1: TUniGroupBox
                      Left = 410
                      Top = 6
                      Width = 223
                      Height = 159
                      Caption = 'Progress'#227'o de regime ap'#243's:'
                      TabOrder = 1
                      object Label10: TUniLabel
                        Left = 10
                        Top = 15
                        Width = 80
                        Height = 13
                        Alignment = taRightJustify
                        AutoSize = False
                        Caption = 'Ano(s)'
                        TabOrder = 5
                      end
                      object Label11: TUniLabel
                        Left = 10
                        Top = 43
                        Width = 80
                        Height = 13
                        Alignment = taRightJustify
                        AutoSize = False
                        Caption = 'M'#234's(es)'
                        TabOrder = 6
                      end
                      object Label12: TUniLabel
                        Left = 10
                        Top = 72
                        Width = 80
                        Height = 13
                        Alignment = taRightJustify
                        AutoSize = False
                        Caption = 'Dia(s)'
                        TabOrder = 7
                      end
                      object Label30: TUniLabel
                        Left = 10
                        Top = 103
                        Width = 80
                        Height = 13
                        Alignment = taRightJustify
                        AutoSize = False
                        Caption = 'Data Progress'#227'o'
                        TabOrder = 8
                      end
                      object DBEdit8: TUniDBEdit
                        Left = 104
                        Top = 15
                        Width = 65
                        Height = 21
                        DataField = 'ANO_PROGRESSAO'
                        DataSource = DsCadastro
                        TabOrder = 0
                        Color = clWindow
                        ReadOnly = True
                      end
                      object DBEdit9: TUniDBEdit
                        Left = 104
                        Top = 43
                        Width = 65
                        Height = 21
                        DataField = 'MES_PROGRESSAO'
                        DataSource = DsCadastro
                        TabOrder = 1
                        Color = clWindow
                        ReadOnly = True
                      end
                      object DBEdit10: TUniDBEdit
                        Left = 104
                        Top = 72
                        Width = 65
                        Height = 21
                        DataField = 'DIA_PROGRESSAO'
                        DataSource = DsCadastro
                        TabOrder = 2
                        Color = clWindow
                        ReadOnly = True
                      end
                      object adpDBDateTimePicker4: TUniDBDateTimePicker
                        Left = 104
                        Top = 99
                        Width = 101
                        Height = 21
                        DateTime = 41919.000000000000000000
                        DateFormat = 'dd/MM/yyyy'
                        TimeFormat = 'HH:mm:ss'
                        ReadOnly = True
                        TabOrder = 3
                        DataField = 'DATA_PROGRESSAO'
                        DataSource = DsCadastro
                      end
                    end
                    object UniLabel7: TUniLabel
                      Left = 123
                      Top = 24
                      Width = 271
                      Height = 134
                      TextConversion = txtHTML
                      AutoSize = False
                      Caption = 
                        '<b>0</b> = 1/6 - Comum Prim'#225'rio, Comum Reincidente, Hediondo (an' +
                        'tes de 29/03/2007)<br><b>1</b> = 2/5 - Hediondo Prim'#225'rio (a part' +
                        'ir de 29/03/2007)<br><b>2</b> = 3/5 - Hediondo Reincidente (a pa' +
                        'rtir de 29/03/2007)'
                      TabOrder = 2
                    end
                  end
                  object TabSheet7: TUniTabSheet
                    Caption = 'Requisito para Condicional'
                    ExplicitLeft = 0
                    ExplicitTop = 0
                    ExplicitWidth = 0
                    ExplicitHeight = 0
                    object DBRadioGroup2: TUniDBRadioGroup
                      Left = 9
                      Top = 4
                      Width = 395
                      Height = 164
                      DataField = 'LIVRAMENTO_CONDICIONAL'
                      DataSource = DsCadastro
                      Caption = 'Livramento Condicional'
                      ParentFont = False
                      Font.Style = [fsBold]
                      TabOrder = 0
                      Items.Strings = (
                        '0'
                        '1'
                        '2'
                        '3'
                        '4')
                    end
                    object UniGroupBox1: TUniGroupBox
                      Left = 410
                      Top = 4
                      Width = 223
                      Height = 164
                      Caption = 'Livramento condicional ap'#243's:'
                      TabOrder = 1
                      object UniLabel1: TUniLabel
                        Left = 10
                        Top = 15
                        Width = 80
                        Height = 13
                        Alignment = taRightJustify
                        AutoSize = False
                        Caption = 'Ano(s)'
                        TabOrder = 5
                      end
                      object UniLabel3: TUniLabel
                        Left = 10
                        Top = 43
                        Width = 80
                        Height = 13
                        Alignment = taRightJustify
                        AutoSize = False
                        Caption = 'M'#234's(es)'
                        TabOrder = 6
                      end
                      object UniLabel4: TUniLabel
                        Left = 10
                        Top = 72
                        Width = 80
                        Height = 13
                        Alignment = taRightJustify
                        AutoSize = False
                        Caption = 'Dia(s)'
                        TabOrder = 7
                      end
                      object UniLabel5: TUniLabel
                        Left = 10
                        Top = 103
                        Width = 80
                        Height = 13
                        Alignment = taRightJustify
                        AutoSize = False
                        Caption = 'Data Condicional'
                        TabOrder = 8
                      end
                      object UniDBEdit1: TUniDBEdit
                        Left = 104
                        Top = 15
                        Width = 65
                        Height = 21
                        DataField = 'ANO_CONDICIONAL'
                        DataSource = DsCadastro
                        TabOrder = 0
                        Color = clWindow
                        ReadOnly = True
                      end
                      object UniDBEdit2: TUniDBEdit
                        Left = 104
                        Top = 43
                        Width = 65
                        Height = 21
                        DataField = 'MES_CONDICIONAL'
                        DataSource = DsCadastro
                        TabOrder = 1
                        Color = clWindow
                        ReadOnly = True
                      end
                      object UniDBEdit3: TUniDBEdit
                        Left = 104
                        Top = 72
                        Width = 65
                        Height = 21
                        DataField = 'DIA_CONDICIONAL'
                        DataSource = DsCadastro
                        TabOrder = 2
                        Color = clWindow
                        ReadOnly = True
                      end
                      object UniDBDateTimePicker2: TUniDBDateTimePicker
                        Left = 104
                        Top = 104
                        Width = 101
                        Height = 21
                        DateTime = 41919.000000000000000000
                        DateFormat = 'dd/MM/yyyy'
                        TimeFormat = 'HH:mm:ss'
                        ReadOnly = True
                        TabOrder = 3
                        DataField = 'DATA_CONDICIONAL'
                        DataSource = DsCadastro
                      end
                    end
                    object UniLabel6: TUniLabel
                      Left = 110
                      Top = 24
                      Width = 284
                      Height = 134
                      TextConversion = txtHTML
                      AutoSize = False
                      Caption = 
                        '<b>0</b> = 1/3 - Comum Prim'#225'rio<br><b>1</b> = 1/2 - Comum Reinci' +
                        'dente<br><b>2</b> = 2/3 - Hediondo<br><b>3</b> = 1/1 - Hediondo ' +
                        'Reincidente<br><b>4</b> = 1/1 - Revoga'#231#227'o LC'
                      TabOrder = 2
                    end
                  end
                  object TabSheet9: TUniTabSheet
                    TabVisible = False
                    Caption = 'Detra'#231#227'o'
                    object DBGrid7: TUniDBGrid
                      Left = 0
                      Top = 41
                      Width = 648
                      Height = 131
                      TitleFont.Name = 'MS Sans Serif'
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                      ReadOnly = True
                      LoadMask.Message = 'Loading data...'
                      OnTitleClick = DBGridConsultaTitleClick
                      OnDblClick = DBGridConsultaDblClick
                      OnKeyDown = DBGridConsultaKeyDown
                      Align = alClient
                      Anchors = [akLeft, akTop, akRight, akBottom]
                      TabOrder = 1
                      Columns = <
                        item
                          FieldName = 'NUMERO_DOCUMENTO'
                          Title.Caption = 'Documento'
                          Width = 80
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'DATA_INICIAL'
                          Title.Caption = 'Data Pris'#227'o'
                          Width = 80
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'DATA_FINAL'
                          Title.Caption = 'Data Sa'#237'da'
                          Width = 80
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'ANO'
                          Title.Caption = 'Ano'
                          Width = 40
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'MES'
                          Title.Caption = 'M'#234's'
                          Width = 40
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'DIA'
                          Title.Caption = 'Dia'
                          Width = 40
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'MOTIVO'
                          Title.Caption = 'Motivo'
                          Width = 130
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end>
                    end
                    object Panel2: TUniPanel
                      Left = 0
                      Top = 0
                      Width = 648
                      Height = 41
                      Align = alTop
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                      object Label32: TUniLabel
                        Left = 117
                        Top = 6
                        Width = 287
                        Height = 32
                        AutoSize = False
                        Caption = 
                          'Detra'#231#227'o '#233' o tempo de pris'#227'o preventiva ou provis'#243'ria, e o de in' +
                          'terna'#231#227'o em hospital ou manic'#244'mio.'
                        TabOrder = 2
                      end
                      object BtnDetrcao: TUniBitBtn
                        Left = 10
                        Top = 3
                        Width = 99
                        Height = 31
                        Glyph.Data = {
                          76060000424D7606000000000000360400002800000018000000180000000100
                          0800000000004002000000000000000000000001000000010000FF00FF002F1E
                          1F00373834003B3C3B005654470056574C0068484100704648007A564B00905A
                          5C008C62570095655B0092635D0093655E009D665B00966A5D00986859008067
                          620084696400896A6300946560009F646600976863009A6D6200887F6500A366
                          6800A4676900A5686B00EA892300E2903A00F6A03600A3937300A1927F00DD98
                          4F00EFA75100EFA95200CF8E6800D9A26C00E7A97000EBB37300EDB57A00EEB8
                          7B00F6B675003D3DAA003C3CAD003C3AB4003E3EBB004B4CA600484AAC004E4F
                          B1004141BA005050B2007E6CA1002C2CD5003736D1001717FF001A1AFB001919
                          FF001C1CFE003939E5003E3EE5002F2FF7002020FF002626FF002C2CFA002828
                          FE002F2EFF003232F4003131FD003535FF003839FF004C4DCE004142D4005858
                          D9007A7AC6004242E0004444E9004B49E9005C5CED004343FD004848FF004C4D
                          FE00615EE1006362E6006C6BE1006B6AEB006565F7006A6AFB008072AC008A78
                          B0000C8CC70032A5D4003DBDE30053CEEF0051D4EF0057D3F2005BD4F2005ED8
                          F30072CBE6006ED5ED007ED5ED007BD8F0006CE3F60066E2F9006BE3F9006CEC
                          FB0076E6F80072EDFE007DEBFB0075F1FF0079F4FE007CF9FF008F8F8F009C95
                          8C00A4978600A79C8B00BDB08A00ACA19300AFAF9300B0A69A00B8AB9A00B5B5
                          99008B87AB008280B000908BBB009391B200ACA9A700BCB1A200B8B2AC00ADAC
                          B400AAA9BF00B4B3B100C4B09600CCB29000E0BA8700F6BC8300C2B5A600CCB4
                          AB00C2BCB300D1BAB200F4C78C00E6C49600EDC99600E3C49A00E7C69900E1C4
                          9D00F4CF9600F7CE9A00F0CE9E00FFD09200F8D09800D5C6B600D8C6B200DAC5
                          BC00D7CBBD00D8CBBC00D7D7B000DED4BD00E2C6A400EECEA100EECFA600E5CC
                          AE00EFD0A900EFD3AD00F2D1A500FFDCA100F0D1AA00F0D3AF00F3D5AD00EFD3
                          B400E3D2BA00E9D4BB00EDD6B800EDD8BF00F2D4B100F0D7B500F2D8B700F6DA
                          B600F2D9B900F4DABB00F2DABD00F3DCBD00FAE3AD00FBEFBA00968ACF008F89
                          D300958BD2009797D800AAA5C000ACABCA00BAAFCF00C6BCC50088DAF000BBD0
                          E3008BE6F8008EEDFA0091E2F20091E7F80093EBF8009AEEFA0084F1FC0089F4
                          FD0084FCFF008EFFFF0099F3FD0096FEFF00C1C1C100CEC2C100CCCBC600C9CA
                          CA00CCCCCC00C7C5D300D3C9DC00DED8D300E1CFCC00E4D5C200EED7C000E6DA
                          C700EEDBC500ECDECD00F3DCC300F1DECA00E3DDDE00E7E7C700EAE2CE00F6E0
                          C100F6E1C600F4E1CC00F8E6CF00FFF7C200FFF8C400FFFAC900FEFDCF00E7E0
                          D400EAE3DC00F5E4D200FAEAD700F2E6DC00F7E9DA00FAEEDE00FFFFD100FFFF
                          D500FFFBDA00FFFFD800FFFFDD00CEDAE500CBE3EF00E4E4E400E3EEEB00EAE9
                          EE00FAF0E500FFFFEB00FFFFEF00F0F0F000FFFFF400FDFEFE00000000000000
                          00000000000000000037383A3A00000000000000000609090909090908070638
                          352C31312C353701000000000008A1AFA09F908E86344F477B9DCFBDD97A2B35
                          000000000008ACB3AEA89F9059514982E69229269FFBCE2C380000000008D8E1
                          AFAE9F9058564AF0E6B7B68C298EF47B350000000008DAE1DCAFAE904253D3F2
                          F0E7F0E6A52A87D72B3800000008E3E4E1B3AC9E5154F5FFF0F27603030303CE
                          2F4100000008EDEEE4DCB3A15154C1FFFEF27903021825BC303F00000008EDEE
                          EEE3DCD84255D4FFFFFEF29C051F95AB324200000008FAFAEEE4E3DCB857B9FE
                          FFFFFFFBDF04747C3C0000000008D5EAE9DAE9E3AC5155BEFEFFFFFFFFE78148
                          3E005A5A5A067E83808A9AD7D7B84F4EB8DEF8F6F8BB4B4200005AC4665A5A5A
                          5A5A71778898B844514D52524C41420600005AC46F6F6E6E6E675A5A5A7598AC
                          B93A3A373A58590A00005A62CD6E6E6E6E6E6E6C605A7FACD8ACA19E9090900B
                          00005A5AC66F6E6E6B6E6B6E605C7198DADCB3A9A39F851100005A5A64CA6E6E
                          6E6B6B6B5D605A7FD7E3DCB3A184201100005A6E5AC4C4C46E6E676E5D685C71
                          9AE3EC9D7873721100005ACA6B5A5A5A5AC76E6B5D67675A8A9A0E0E0B0B0A0A
                          00005ACA6F6F6F6E5E5AC0C265C2CC5A8A890E25211D1C1500005ACA6F6F6E6E
                          6E6B5A5A5A5A5B5AD08B0E27231E1B0000005ACB6F6E6F6E6A6A6CC85A7083D1
                          F7990E27231B000000005A63C8C8665A5A5A5A5A5ACEDEFDFFD60E271B000000
                          0000005A5A5A5A24242424242424242424240E1B000000000000}
                        Caption = 'Detra'#231#227'o'
                        ParentFont = False
                        Font.Color = clNavy
                        Font.Name = 'Times New Roman'
                        TabStop = False
                        TabOrder = 0
                      end
                    end
                  end
                  object TabSheet10: TUniTabSheet
                    TabVisible = False
                    Caption = 'Interrup'#231#227'o'
                    object DBGrid8: TUniDBGrid
                      Left = 0
                      Top = 41
                      Width = 648
                      Height = 131
                      TitleFont.Name = 'MS Sans Serif'
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                      ReadOnly = True
                      LoadMask.Message = 'Loading data...'
                      OnTitleClick = DBGridConsultaTitleClick
                      OnDblClick = DBGridConsultaDblClick
                      OnKeyDown = DBGridConsultaKeyDown
                      Align = alClient
                      Anchors = [akLeft, akTop, akRight, akBottom]
                      TabOrder = 1
                      Columns = <
                        item
                          FieldName = 'NUMERO_DOCUMENTO'
                          Title.Caption = 'Documento'
                          Width = 80
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'DATA_INICIAL'
                          Title.Caption = 'Data Sa'#237'da'
                          Width = 80
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'DATA_FINAL'
                          Title.Caption = 'Data Pris'#227'o'
                          Width = 80
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'ANO'
                          Title.Caption = 'Ano'
                          Width = 40
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'MES'
                          Title.Caption = 'M'#234's'
                          Width = 40
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'DIA'
                          Title.Caption = 'Dia'
                          Width = 40
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'MOTIVO'
                          Title.Caption = 'Motivo'
                          Width = 130
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end>
                    end
                    object Panel3: TUniPanel
                      Left = 0
                      Top = 0
                      Width = 648
                      Height = 41
                      Align = alTop
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                      object Label33: TUniLabel
                        Left = 117
                        Top = 3
                        Width = 287
                        Height = 34
                        AutoSize = False
                        Caption = 
                          'Interrup'#231#227'o de lapso de tempo de cumprimento de pena privativa d' +
                          'e liberdade, com '
                        TabOrder = 2
                      end
                      object BtnInterrupcao: TUniBitBtn
                        Left = 9
                        Top = 4
                        Width = 96
                        Height = 30
                        Glyph.Data = {
                          76060000424D7606000000000000360400002800000018000000180000000100
                          0800000000004002000000000000000000000001000000010000FF00FF002222
                          220023242400262626002D2C2B002D2D2C0035342E0036363300363535003D3B
                          3300403F3800424036004542380046453C0049463B00534E4200575149005E5C
                          5600675E5B005D547900635A6E0074696C0078756A007A6F7A0075727D000000
                          890000008D0005058C000B0A8F0012118A000000910007079000000095000001
                          9A0000019D00131295001E1B9000363189002828920026289C000001A0000003
                          A5000003A9000004AE000005B1000005B5000007BA000008BC0051498700514A
                          88005D54870057528E004B49970060578300685E8800706D8F006A6696006F6B
                          98000008C1000009C5000009C900000CCE00000DD300000DD500000EDA00000F
                          DC000010E2000011E5000012EA000013EE000014EF000015F1000016F5000017
                          F900011BFA00001CFA000019FE00001DFF000022FE000421FE000124FF000328
                          FF000728FF00062DFE00092AFF000930FF000A34FF000C36FF000E38FF00113A
                          FF00123DFF001641FF001942FE001D48FF00204BFF002853FF002955FE002D57
                          FE002D59FE002F5CFF00345AFE00385FFE003763FE003D64FE004168FE004974
                          FE004C78FE00507AFE005781FE005982FE005F85FE006E93FE007B9DFE008783
                          820086828B008C88990083A4FE0087AAFE008BABFE0097B5FE00000000000000
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
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000003030303030303
                          0303030300000000000000000000000303030303030303030303030303030000
                          0000000000000303030303030303030303030303030303000000000000000303
                          0303030303030303030303030303030000000000000003030406090C0C0C0F0C
                          0B09090404030300000000000000061116183739383331303235131412100600
                          00000000000071733426231F1F1A1A1A1A1A1C24253615000000000000007227
                          1A1A1A1A1A1A1A1A1A1A1A1A1A1D1700000000000000002D28281F1A1A191A19
                          1A191A1A1A1F0000000000000000003C3A3A3C3A3A3A2B2B28281F1F1F280000
                          000000000000003F4143444443433F3C3A2D281F1F2B00000000000000000043
                          48494949494948433F3A2D281F28000000000000000000484951505050494948
                          433F3A2D282800000000000000000049575959575151504949433C2E282B0000
                          0000000000000050595B5B5B5B5951514948413A2D2D00000000000000000051
                          616162615E5B59515049443C2D2D000000000000000000526D6F696A665E5951
                          5049483F3A2D000000000000000000006D776D6C696159575049483F3A000000
                          00000000000000006574756C696259515049483C3A0000000000000000000000
                          006870756E6259515049443F00000000000000000000000000006467685C5150
                          50483F0000000000000000000000000000000000504950444300000000000000
                          0000000000000000000000000000000000000000000000000000}
                        Caption = 'Interrup'#231#227'o'
                        ParentFont = False
                        Font.Color = clNavy
                        Font.Name = 'Times New Roman'
                        TabStop = False
                        TabOrder = 0
                      end
                    end
                  end
                  object TabSheet11: TUniTabSheet
                    TabVisible = False
                    Caption = 'Remi'#231#227'o'
                    object DBGrid9: TUniDBGrid
                      Left = 0
                      Top = 41
                      Width = 648
                      Height = 131
                      TitleFont.Name = 'MS Sans Serif'
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                      ReadOnly = True
                      LoadMask.Message = 'Loading data...'
                      OnTitleClick = DBGridConsultaTitleClick
                      OnDblClick = DBGridConsultaDblClick
                      OnKeyDown = DBGridConsultaKeyDown
                      Align = alClient
                      Anchors = [akLeft, akTop, akRight, akBottom]
                      TabOrder = 1
                      Columns = <
                        item
                          FieldName = 'NUMERO_DOCUMENTO'
                          Title.Caption = 'Documento'
                          Width = 80
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'DIAS_REMIDOS'
                          Title.Caption = 'Dias Remidos'
                          Width = 80
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end
                        item
                          FieldName = 'MOTIVO'
                          Title.Caption = 'Motivo'
                          Width = 300
                          Visible = True
                          Expanded = False
                          CheckBoxField.FieldValues = 'true;false'
                        end>
                    end
                    object Panel4: TUniPanel
                      Left = 0
                      Top = 0
                      Width = 648
                      Height = 41
                      Align = alTop
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                      object BtnRemicao: TUniBitBtn
                        Left = 25
                        Top = 5
                        Width = 150
                        Height = 32
                        Glyph.Data = {
                          76050000424D7605000000000000360300002800000018000000180000000100
                          08000000000040020000120B0000120B0000C0000000C0000000FF00FF000A74
                          00000872000007700500008F0000007E0000005B000007800600046C0700086D
                          0B00138F190015AB250014A82800128824001B9A340027B549000279200027AF
                          4B002CB853002BC85E0002692C000982410021955A00007A4900066B4A001191
                          6B001A99780000937D00006A600000887E00046B65000F8C8600016B6900056C
                          690062E0E000005D5F0071FBFF0077FCFF007CF4F8006EF9FF005EF2FF0065F3
                          FF0064EDF8004AEFFF004FE8F90052EDFF003DE6FF003EE9FF004BEAFF004CDB
                          ED0053D9ED005AD5E70067E0EF0066DDEC0025DBFB0027DFFF002CDFFF0033DE
                          FD003AE1FB0043E4FE0000D4FF0000CBF70000CDF70001CFF90002D2FF0005CF
                          FB0006D6FF000CD4FF000FD4FA0014D7FF0015D9FF0016D2F8001AD9FF0024D5
                          F70029C9EB0030D0F0003DC6E4004ACCE5004FC3DA0050C3DB0057CAE00000D1
                          FF0000CCFC0000CDFB0000C8F70000C3F20008CDF9000ECFFC001DC3E80031C4
                          E50033C4E50037C1E1003ABBD90048C3DE0043B4CE004EC0DD004BB8D20000B8
                          E80000B3E60000B2E50000ADDF0004B2E400036983000ABBEE000AAEDE000CB0
                          DF000EB3E10014B0DD0019BAE50018B6E10018B1DD001BB3DD001CB4DF0027BF
                          E60026B7DE0027B7DD0028B3DA0031BADD0034C0E6003BBBE00000ACE00000AC
                          DF0000A9DD0000AADD0000A3D60000A0D500009BCE0001AADD0009ADDE000AA9
                          D8000F9AC7001BADD800199CC6001D9CC60025A1C700269DC40029A2C9002B9F
                          C3002C9EC20032A8CB0036A4C600008FC4000091C400008FC300008FC2000395
                          C7000390C300038CBE000493C5001390BE001ABCF500148CB9001592BF001993
                          BF001C92BD001E94BC00229AC2002192BA002294BC002996BD002A95BC002C98
                          BE000089C2000088C000008AC0000084B8000083B700007DB1000189C100037E
                          B000037CAF000480B3000C81B1000F86B6001088B800228BB400248DB5000079
                          AE000189C3000578AC0000669A0000659900076EA0000066A000006499000062
                          970000609600005E94000A689B00146A9A000560950000000000000000000000
                          00000000B4B4B4B40000000000000000000000000000000000B4B4B4B3A9A7B1
                          B4B4B400000000000000000000000000B4885A4B4947565455617DB400000000
                          00000000000000B4352428302E38484340513C3DB400000000000000000000B6
                          602625292D3B393746425364B40000000000000000000000B4B44E333274834A
                          5881B4B40000000000000000000000000000B4B4A17E7C95B4B4000000000000
                          000000000000000000000000BD7B62BD00000000000000000000000000B4B4B4
                          B4000000BD7B63BD000000B4B4B4B400000000B4B470697979B4B400BD7F63BD
                          00B4B496671B17B4B400B48B5B726E687A7878B4BD8065BDB477761F14080210
                          1DB4B4342A2C3A36443F3EB4BD6B6ABD5F2216060312110115B400B4A0868482
                          9192AE00BD6F6CBD00180907040C0F0D20B70000B40000000000BD00BD7371BD
                          002319130B050A210000000000BC000000BD0000BD7559BD00001C1A0E001E00
                          000000000000BB00BE000000B95C4CB500000000660000000000000000AF9F9D
                          9E9B9A99AC5D4DAA93A8B2A3A2A4A6000000000000B08C8A89879C85AD4F50AB
                          94908F8D8F8EA500000000000000000000000000BA9798B80000000000000000
                          000000000000000000000000B45752B400000000000000000000000000000000
                          000000B4312F4541B4000000000000000000000000000000000000B45E272B6D
                          B400000000000000000000000000000000000000B4B4B4B40000000000000000
                          0000000000000000000000000000000000000000000000000000}
                        Caption = 'Remi'#231#227'o'
                        ParentFont = False
                        Font.Color = clNavy
                        Font.Name = 'Times New Roman'
                        TabStop = False
                        TabOrder = 0
                      end
                    end
                  end
                end
                object DBComboBox1: TUniDBComboBox
                  Left = 364
                  Top = 66
                  Width = 183
                  Height = 21
                  DataField = 'TIPOCONDENACAO'
                  DataSource = DsCadastro
                  Style = csDropDownList
                  Items.Strings = (
                    'DETEN'#199#195'O'
                    'PRIS'#195'O CIVIL'
                    'PRIS'#195'O SIMPLES'
                    'RECLUS'#195'O')
                  ItemIndex = -1
                  Sorted = True
                  TabOrder = 8
                end
                object DBEdit7: TUniDBEdit
                  Left = 146
                  Top = 66
                  Width = 65
                  Height = 21
                  DataField = 'TOTAL_PENA_DIA'
                  DataSource = DsCadastro
                  TabOrder = 6
                  Color = clWindow
                end
                object DBEdit6: TUniDBEdit
                  Left = 80
                  Top = 66
                  Width = 65
                  Height = 21
                  DataField = 'TOTAL_PENA_MES'
                  DataSource = DsCadastro
                  TabOrder = 5
                  Color = clWindow
                end
                object DBEdit5: TUniDBEdit
                  Left = 12
                  Top = 66
                  Width = 65
                  Height = 21
                  DataField = 'TOTAL_PENA_ANO'
                  DataSource = DsCadastro
                  TabOrder = 4
                  Color = clWindow
                end
                object adpDBDateTimePickerDataCondenacao: TUniDBDateTimePicker
                  Left = 226
                  Top = 26
                  Width = 101
                  Height = 21
                  DateTime = 41919.000000000000000000
                  DateFormat = 'dd/MM/yyyy'
                  TimeFormat = 'HH:mm:ss'
                  TabOrder = 2
                  DataField = 'DATA_INICIO_CONDENACAO'
                  DataSource = DsCadastro
                end
                object BtnCalcular: TUniBitBtn
                  Left = 549
                  Top = 64
                  Width = 108
                  Height = 25
                  Glyph.Data = {
                    A6030000424DA603000000000000A60200002800000010000000100000000100
                    08000000000000010000120B0000120B00009C0000009C00000000000000FFFF
                    FF005A58F4006867F7006564EE007674CF00A2A1F500B3B2E000B9B8E4009692
                    EA008785CC009A97E700746DFF00A9A5C500ACA6C600BAB5CF00B4AEC4008062
                    B100E5E1EB00785F8600FF00FF00FFFDFF00B3818700E2A9AE00EBAAAF00B482
                    8300B6ABAB00C27E7C00E6B1AF00A45A4900A8615100958A87007B635200C164
                    1600CF640000FFF5EC00D3690000CB670400C9670400C9680400CC680600CB68
                    0600CB680700CB690800FFDAB400D9730300D4710700DEBE9B00DFD1C200C494
                    5B00F7CD99008C827600FFF3E500FFFAF400F2CA9500FCD49F0075655000EDD7
                    BB00FFEFDA00FFF0DD00FEF0DE00FEE8C9006F665800FFEED200FBECD400C3AC
                    8500F7DCAB00FFEBC800FAF7F00085764C00F1E7CA00FFF3BE00F1ECD500E8E1
                    B900FFFDF200BAB59200FCF7D100FFFBDC008B843300FEFDD6009C9B6A00FFFF
                    DE00FFFFE200E1E1C700F5F5E600DEDED200FFFFF600FFFFF800FFFFFA009D9E
                    8E007A7B6E00F4F7E800C0D09500E3EBD100F1F6EB00B3D191006D904B007595
                    5900B9DE9F00ABD2940081C0630081BE620081C0660092CF7600B2DD9E00B4D9
                    A3007DC0660069BA530087C9740068BA56008AC77B0069AE5B0081C6740057B3
                    46007CC5700082C9760081C67600F1F9F0007DC47B00EFF7F40088BFBA0088B1
                    AF004A4D4D0013ACD5001D637A00567D8900F2F6F8008E98A0000E74E700BAC9
                    D900002CB400C0C9EA002F43CA00C4C8EE000C1AB8003843D4004E58EB005B60
                    DE006F75F4004040FB004549FF004F50FE004B4BEA005253EE005656F1005B5B
                    FB005354D9006162FC006060FA005F60F2006162D8007D7DF900C3C3E700F9F9
                    FF00F1F1F500FDFDFF0014141414141414141414141414141414142B2B2B2B2B
                    2B2B2B2B2B2B2B2B2B141429010101733A3A3A314E2C2C2C2514142B01010173
                    3A3B3F1F7C332F2C281414266E7074716A66646F7D1638602714142A5E757572
                    5D484649611819202214142A589B99765B4A2340651C171B4514142406958E87
                    978162636B5F507F7B821411960E100F058479686D695C788086918A55473237
                    4D0A0C9A6C15344313149107514F4C423630928567353C3D211403835752597A
                    3E1A891E2D2E2E2E141494980156535A4139881D141414141414940944010154
                    4B0D8C1414141414141414930B12777E088F141414141414141414148D020490
                    8B141414141414141414}
                  Caption = 'Calcular'
                  TabOrder = 9
                  ScreenMask.Enabled = True
                  ScreenMask.Message = 'Aguarde... calculando... pode demorar!'
                  OnClick = BtnCalcularClick
                end
                object DBComboBox2: TUniDBComboBox
                  Left = 220
                  Top = 66
                  Width = 140
                  Height = 21
                  DataField = 'TIPOREGIME'
                  DataSource = DsCadastro
                  Style = csDropDownList
                  Items.Strings = (
                    'Aberto'
                    'Fechado'
                    'Mandado de Pris'#227'o C'#237'vel'
                    'Medida de Seguran'#231'a'
                    'Medida de Tratamento'
                    'Provis'#243'rio'
                    'Semi-Aberto'
                    'Semi-Aberto Sem Sa'#237'da'
                    'Semi-Aberto Com Trabalho Externo'
                    'Semi-Aberto Com Sa'#237'da'
                    'Semi-Aberto Com Trabalho Concedido'
                    'Semi-Aberto Com Trabalho Concedido e Sa'#237'da'
                    'Semi-Aberto Com Trabalho e Sa'#237'da'
                    'Tempor'#225'rio'
                    'N'#227'o Informado')
                  ItemIndex = -1
                  TabOrder = 7
                end
                object BtnLinhaTempo: TUniButton
                  Left = 312
                  Top = 300
                  Width = 161
                  Height = 25
                  Caption = 'Visualizar Linha de Tempo'
                  TabOrder = 11
                  ScreenMask.Enabled = True
                  ScreenMask.Message = 'Aguarde... montando... pode demorar!'
                  OnClick = BtnLinhaTempoClick
                end
                object adpDBDateTimePickerFinalPena: TUniDBDateTimePicker
                  Left = 556
                  Top = 304
                  Width = 101
                  Height = 21
                  DateTime = 41919.000000000000000000
                  DateFormat = 'dd/MM/yyyy'
                  TimeFormat = 'HH:mm:ss'
                  ReadOnly = True
                  TabOrder = 12
                  DataField = 'DATA_FINAL_PENA'
                  DataSource = DsCadastro
                end
                object DBEdit19: TUniDBEdit
                  Left = 12
                  Top = 26
                  Width = 100
                  Height = 21
                  DataField = 'PROCESSO_VEC'
                  DataSource = DsCadastro
                  TabOrder = 0
                  Color = clWindow
                end
                object DBEditDATA_PROCESSO_VEC: TUniDBDateTimePicker
                  Left = 119
                  Top = 26
                  Width = 101
                  Height = 21
                  DateTime = 41919.000000000000000000
                  DateFormat = 'dd/MM/yyyy'
                  TimeFormat = 'HH:mm:ss'
                  TabOrder = 1
                  DataField = 'DATA_PROCESSO_VEC'
                  DataSource = DsCadastro
                end
                object DBComboBox8: TUniDBComboBox
                  Left = 364
                  Top = 24
                  Width = 293
                  Height = 21
                  DataField = 'SITUACAO_CONDENACAO'
                  DataSource = DsCadastro
                  Style = csDropDownList
                  Items.Strings = (
                    ''
                    'GUIA DE RECOLHIMENTO'
                    'MANDADO DE PRIS'#195'O CONDENAT'#211'RIA'
                    'PRONUNCIADO'
                    'RECOMENDA'#199#195'O DE PRIS'#195'O'
                    'SENTEN'#199'A')
                  ItemIndex = -1
                  Sorted = True
                  TabOrder = 3
                end
                object MemoLinhaTempo: TUniMemo
                  Left = 663
                  Top = 10
                  Width = 185
                  Height = 311
                  Lines.Strings = (
                    'Linha do Tempo')
                  ParentFont = False
                  Font.Height = -8
                  Font.Name = 'Lucida Console'
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  Color = clWindow
                  TabOrder = 24
                end
              end
              object BtnLimpaPena: TUniButton
                Left = 559
                Top = 5
                Width = 178
                Height = 25
                Caption = 'Limpar dados da pena'
                TabOrder = 0
                OnClick = BtnLimpaPenaClick
              end
              object UniLabel8: TUniLabel
                Left = 342
                Top = 3
                Width = 47
                Height = 26
                Caption = 'Data da Pris'#227'o'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 4
              end
              object UniDBDateTimePicker3: TUniDBDateTimePicker
                Left = 447
                Top = 5
                Width = 101
                Height = 21
                DateTime = 41919.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 5
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
              end
            end
            object TabSheet4: TUniTabSheet
              Caption = 'Libera'#231#227'o'
              object Label23: TUniLabel
                Left = 430
                Top = 17
                Width = 87
                Height = 13
                Caption = 'Data da Libera'#231#227'o'
                TabOrder = 3
              end
              object Label24: TUniLabel
                Left = 18
                Top = 18
                Width = 133
                Height = 13
                Caption = 'N'#186' do Documento Libera'#231#227'o'
                TabOrder = 4
              end
              object Label25: TUniLabel
                Left = 18
                Top = 58
                Width = 96
                Height = 13
                Caption = 'Motivo da Libera'#231#227'o'
                TabOrder = 5
              end
              object Label26: TUniLabel
                Left = 18
                Top = 100
                Width = 122
                Height = 13
                Caption = 'Observa'#231#227'o da Libera'#231#227'o'
                TabOrder = 6
              end
              object DBEdit15: TUniDBEdit
                Left = 18
                Top = 34
                Width = 207
                Height = 21
                DataField = 'DOCUMENTO_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 0
                Color = clWindow
              end
              object DBEdit16: TUniDBEdit
                Left = 18
                Top = 117
                Width = 512
                Height = 21
                DataField = 'OBSERVACAO_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 2
                Color = clWindow
              end
              object DBEdit21: TUniDBEdit
                Left = 18
                Top = 73
                Width = 512
                Height = 21
                DataField = 'MOTIVO_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object UniDBDateTimePicker1: TUniDBDateTimePicker
                Left = 429
                Top = 34
                Width = 101
                Height = 21
                DateTime = 41919.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 7
                DataField = 'DATA_LIBERACAO'
                DataSource = DsCadastro
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 868
        ExplicitHeight = 493
        inherited PanelLocalizaConsulta: TUniPanel
          Width = 868
          ExplicitWidth = 868
        end
        inherited DBGridConsulta: TUniDBGrid
          Width = 868
          Height = 452
          DataSource = DsConsulta
          Columns = <
            item
              FieldName = 'NPROCESSO'
              Title.Caption = 'Processo'
              Width = 200
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'RGI'
              Title.Caption = 'RGI/Prontu'#225'rio'
              Width = 80
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'NOME_INTERNO'
              Title.Caption = 'Interno(a)'
              Width = 235
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'DATA_LIBERACAO'
              Title.Caption = 'Data Libera'#231#227'o'
              Width = 87
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'SITUACAOJURIDICA'
              Title.Caption = 'Situa'#231#227'o'
              Width = 150
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'NUMERO_INQUERITO'
              Title.Caption = 'Inqu'#233'rito'
              Width = 100
              Visible = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'IDPROCESSO'
              Title.Caption = 'IDPROCESSO'
              Width = 0
              Visible = False
              Alignment = taRightJustify
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'IDINTERNO'
              Title.Caption = 'IDINTERNO'
              Width = 0
              Visible = False
              Alignment = taRightJustify
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end>
        end
      end
    end
  end
  inherited StatusBar1: TUniStatusBar
    Top = 567
    Width = 978
    ExplicitTop = 567
    ExplicitWidth = 978
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCESSO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM processo'
      'where IDPROCESSO=:IDPROCESSO')
    Left = 656
    Top = 40
  end
  inherited DspCadastro: TDataSetProvider
    Left = 684
    Top = 40
  end
  inherited CdsCadastro: TClientDataSet
    Tag = 1
    IndexFieldNames = 'IDPROCESSO'
    MasterFields = 'IDPROCESSO'
    MasterSource = DsConsulta
    PacketRecords = 0
    Left = 712
    Top = 40
  end
  inherited DsCadastro: TDataSource
    Tag = 1
    Left = 740
    Top = 40
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select'
      'i.nome_interno,'
      'p.nprocesso,'
      'p.idprocesso,'
      'p.SITUACAOJURIDICA,'
      'p.NUMERO_INQUERITO,'
      'p.IDINTERNO,'
      'i.rgi,'
      'p.data_liberacao'
      'from processo p'
      'join interno i on p.idinterno = i.id_interno'
      'where i.id_up = :ID_UP'
      'order by i.nome_interno')
    SQLConnection = Dm.Conexao
    Left = 656
    Top = 8
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 684
    Top = 8
  end
  object DsConsulta: TDataSource
    Tag = 1
    DataSet = CdsConsulta
    Left = 740
    Top = 8
  end
  object SqlLista: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MARCAS '
      'FROM PATRIMONIO')
    SQLConnection = Dm.Conexao
    Left = 304
  end
  object DspLista: TDataSetProvider
    DataSet = SqlLista
    Left = 332
  end
  object CdsLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspLista'
    Left = 360
  end
  object DsLista: TDataSource
    DataSet = CdsLista
    Left = 388
  end
  object CdsConsulta: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 712
    Top = 8
    object CdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object CdsConsultaNPROCESSO: TStringField
      FieldName = 'NPROCESSO'
      Size = 100
    end
    object CdsConsultaIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Required = True
    end
    object CdsConsultaIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
      Required = True
    end
    object CdsConsultaSITUACAOJURIDICA: TStringField
      FieldName = 'SITUACAOJURIDICA'
      Size = 100
    end
    object CdsConsultaNUMERO_INQUERITO: TStringField
      FieldName = 'NUMERO_INQUERITO'
      Size = 30
    end
    object CdsConsultaRGI: TStringField
      FieldName = 'RGI'
      Size = 30
    end
    object CdsConsultaDATA_LIBERACAO: TSQLTimeStampField
      FieldName = 'DATA_LIBERACAO'
    end
  end
  object dsvincartigo: TDataSource
    Tag = 1
    DataSet = cdsvincartigo
    Left = 736
    Top = 80
  end
  object cdsvincartigo: TClientDataSet
    Tag = 1
    Aggregates = <>
    IndexFieldNames = 'ID_PROCESSO'
    MasterFields = 'IDPROCESSO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspvincartigo'
    AfterInsert = cdsvincartigoAfterInsert
    Left = 712
    Top = 80
    object cdsvincartigoID_VINC_ARTIGO: TIntegerField
      FieldName = 'ID_VINC_ARTIGO'
      Required = True
    end
    object cdsvincartigoID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object cdsvincartigoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsvincartigoArtigos: TStringField
      FieldKind = fkLookup
      FieldName = 'Artigo(s)'
      LookupDataSet = Dm.Cdsartigo
      LookupKeyFields = 'ID_ARTIGO'
      LookupResultField = 'ARTIGO'
      KeyFields = 'ID_ARTIGO'
      Size = 100
      Lookup = True
    end
  end
  object dspvincartigo: TDataSetProvider
    DataSet = SQLvincartigo
    Left = 688
    Top = 80
  end
  object SQLvincartigo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idprocesso'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM vinc_artigo'
      'where id_processo = :idprocesso')
    Left = 664
    Top = 80
  end
  object SqlComutacao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCESSO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT '
      'V.IDPROCESSO,'
      'C.DATA_LIBERACAO,C.TIPO_COMUTACAO,C.VARA'
      'FROM COMUTACAO C'
      'JOIN VINC_COMUTACAO V ON (V.ID_COMUTACAO=C.ID_COMUTACAO)'
      'WHERE V.IDPROCESSO=:IDPROCESSO')
    Left = 784
    Top = 344
  end
  object DspComutacao: TDataSetProvider
    DataSet = SqlComutacao
    Left = 812
    Top = 344
  end
  object CdsComutacao: TClientDataSet
    Tag = 1
    Aggregates = <>
    IndexFieldNames = 'IDPROCESSO'
    MasterFields = 'IDPROCESSO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspComutacao'
    Left = 840
    Top = 344
  end
  object DsComutacao: TDataSource
    Tag = 1
    DataSet = CdsComutacao
    Left = 869
    Top = 344
  end
  object SqlDetracao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from detracao'
      'where id_interno=:id_interno'
      '')
    Left = 793
    Top = 382
  end
  object DspDetracao: TDataSetProvider
    DataSet = SqlDetracao
    Left = 821
    Top = 382
  end
  object CdsDetracao: TClientDataSet
    Tag = 1
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'IDINTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPDetracao'
    Left = 849
    Top = 382
  end
  object DsDetracao: TDataSource
    Tag = 1
    DataSet = CdsDetracao
    Left = 877
    Top = 382
  end
  object SqlInterrupcao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from interrupcao'
      'where id_interno=:id_interno'
      '')
    Left = 793
    Top = 426
  end
  object DspInterrupcao: TDataSetProvider
    DataSet = SqlInterrupcao
    Left = 821
    Top = 426
  end
  object CdsInterrupcao: TClientDataSet
    Tag = 1
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'IDINTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPInterrupcao'
    Left = 849
    Top = 426
  end
  object DsInterrupcao: TDataSource
    Tag = 1
    DataSet = CdsInterrupcao
    Left = 877
    Top = 426
  end
  object SqlRemicao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from remicao'
      'where id_interno=:id_interno'
      '')
    Left = 793
    Top = 469
  end
  object DspRemicao: TDataSetProvider
    DataSet = SqlRemicao
    Left = 821
    Top = 469
  end
  object CdsRemicao: TClientDataSet
    Tag = 1
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'IDINTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPRemicao'
    Left = 849
    Top = 469
  end
  object DsRemicao: TDataSource
    Tag = 1
    DataSet = CdsRemicao
    Left = 877
    Top = 469
  end
  object SqlTipoEventos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_EVENTO_PROCESSO')
    Left = 784
    Top = 296
  end
  object DspTipoEventos: TDataSetProvider
    DataSet = SqlTipoEventos
    Left = 812
    Top = 296
  end
  object CdsTipoEventos: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    ProviderName = 'DspTipoEventos'
    Left = 840
    Top = 296
    object CdsCadastroIDTIPO_EVENTO_PROCESSO: TIntegerField
      FieldName = 'IDTIPO_EVENTO_PROCESSO'
      Required = True
    end
    object CdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object DsTipoEventos: TDataSource
    Tag = 1
    DataSet = CdsTipoEventos
    Left = 869
    Top = 296
  end
  object SqlEventos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCESSO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select * from EVENTO_PROCESSO'
      'where IDPROCESSO = :IDPROCESSO'
      '')
    Left = 776
    Top = 216
  end
  object DspEventos: TDataSetProvider
    DataSet = SqlEventos
    Left = 808
    Top = 216
  end
  object CdsEventos: TClientDataSet
    Tag = 1
    Aggregates = <>
    IndexFieldNames = 'IDPROCESSO'
    MasterFields = 'IDPROCESSO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspEventos'
    Left = 840
    Top = 216
  end
  object DsEventos: TDataSource
    Tag = 1
    DataSet = CdsEventos
    Left = 872
    Top = 216
  end
end
