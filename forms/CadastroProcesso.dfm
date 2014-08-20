inherited FrmCadastroProcesso: TFrmCadastroProcesso
  ClientHeight = 671
  ClientWidth = 976
  Caption = 'FrmCadastroProcesso'
  ExplicitWidth = 992
  ExplicitHeight = 710
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelTituloModeloCadastro: TUniPanel
    Width = 976
    ExplicitWidth = 976
    inherited UniImage1: TUniImage
      Width = 974
      ExplicitWidth = 974
    end
  end
  inherited PanelBotoes: TUniPanel
    Height = 604
    ExplicitHeight = 604
  end
  inherited PanelModeloCadastro: TUniPanel
    Width = 870
    Height = 604
    ExplicitWidth = 870
    ExplicitHeight = 604
    inherited PageControlModeloCadastro: TUniPageControl
      Width = 868
      Height = 602
      ActivePage = TabSheetCadastro
      ExplicitWidth = 868
      ExplicitHeight = 602
      inherited TabSheetCadastro: TUniTabSheet
        ExplicitWidth = 860
        ExplicitHeight = 574
        inherited PanelCadastro: TUniPanel
          Width = 860
          Height = 574
          ExplicitWidth = 860
          ExplicitHeight = 574
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
            TabOrder = 4
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
            TabOrder = 5
          end
          object Label7: TUniLabel
            Left = 72
            Top = 8
            Width = 36
            Height = 13
            Caption = 'Interno'
            TabOrder = 6
          end
          object UniPageControl1: TUniPageControl
            Left = 1
            Top = 91
            Width = 858
            Height = 483
            ActivePage = TabSheet1
            TabOrder = 7
            Align = alBottom
            Anchors = [akLeft, akRight, akBottom]
            object TabSheetInquerito: TUniTabSheet
              Caption = 'Inqu'#233'rito Policia'
              object BtnBuscarIP: TUniButton
                Left = 18
                Top = 6
                Width = 161
                Height = 25
                Caption = 'Buscar Dados de Outro IP'
                TabOrder = 0
              end
              object Label16: TUniLabel
                Left = 17
                Top = 35
                Width = 74
                Height = 13
                Caption = 'N'#186' do Inqu'#233'rito'
                TabOrder = 1
              end
              object Label18: TUniLabel
                Left = 176
                Top = 35
                Width = 85
                Height = 13
                Caption = 'Data do Inqu'#233'rito'
                TabOrder = 2
              end
              object Label6: TUniLabel
                Left = 292
                Top = 35
                Width = 63
                Height = 13
                Caption = 'Data do Fato'
                TabOrder = 3
              end
              object Label21: TUniLabel
                Left = 406
                Top = 35
                Width = 70
                Height = 13
                Caption = 'Data da Pris'#227'o'
                TabOrder = 4
              end
              object DBEdit14: TUniDBEdit
                Left = 18
                Top = 51
                Width = 149
                Height = 21
                DataField = 'NUMERO_INQUERITO'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object DBEditDATA_INQUERITO: TUniDBEdit
                Left = 176
                Top = 51
                Width = 101
                Height = 21
                DataField = 'DATA_INQUERITO'
                DataSource = DsCadastro
                TabOrder = 6
                Color = clWindow
              end
              object DBEditDATA_FATO_CONDENACAO: TUniDBEdit
                Left = 293
                Top = 51
                Width = 101
                Height = 21
                DataField = 'DATA_FATO_CONDENACAO'
                DataSource = DsCadastro
                TabOrder = 7
                Color = clWindow
              end
              object DBEditDATA_PRISAO: TUniDBEdit
                Left = 405
                Top = 51
                Width = 101
                Height = 21
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
                TabOrder = 8
                Color = clWindow
              end
              object Label36: TUniLabel
                Left = 18
                Top = 73
                Width = 95
                Height = 13
                Caption = 'Cidade do Inqu'#233'rito'
                TabOrder = 9
              end
              object SpeedButton3: TUniSpeedButton
                Left = 493
                Top = 86
                Width = 23
                Height = 22
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object Label17: TUniLabel
                Left = 18
                Top = 111
                Width = 46
                Height = 13
                Caption = 'Delegacia'
                TabOrder = 11
              end
              object Label19: TUniLabel
                Left = 18
                Top = 154
                Width = 79
                Height = 13
                Caption = 'Motivo da Pris'#227'o'
                TabOrder = 12
              end
              object DBComboBox3: TUniDBComboBox
                Left = 18
                Top = 170
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
                TabOrder = 13
              end
              object SpeedButton2: TUniSpeedButton
                Left = 493
                Top = 127
                Width = 23
                Height = 22
                Enabled = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object Label35: TUniLabel
                Left = 522
                Top = 108
                Width = 109
                Height = 13
                Caption = 'Descri'#231#227'o da delegacia'
                TabOrder = 15
              end
              object DBEdit18: TUniDBEdit
                Left = 522
                Top = 127
                Width = 215
                Height = 21
                DataField = 'DELEGACIA'
                DataSource = DsCadastro
                TabOrder = 16
                Color = clWindow
              end
              object Label20: TUniLabel
                Left = 18
                Top = 197
                Width = 79
                Height = 13
                Caption = 'Dispositivo Legal'
                TabOrder = 17
              end
              object DBMemo1: TUniDBMemo
                Left = 19
                Top = 213
                Width = 462
                Height = 57
                DataField = 'DISPOSITIVO_LEGAL'
                DataSource = DsCadastro
                TabOrder = 18
                Color = clWindow
              end
              object Button1: TUniButton
                Left = 484
                Top = 227
                Width = 45
                Height = 20
                Caption = 'Busca'
                TabOrder = 19
              end
              object Label22: TUniLabel
                Left = 18
                Top = 280
                Width = 95
                Height = 13
                Caption = 'Tipifica'#231#227'o do Crime'
                TabOrder = 20
              end
              object DBComboBox9: TUniDBComboBox
                Left = 20
                Top = 279
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
                TabOrder = 21
              end
              object UniTabSheet1: TUniTabSheet
                Caption = 'Inqu'#233'rito Policia'
                object UniButton1: TUniButton
                  Left = 18
                  Top = 6
                  Width = 161
                  Height = 25
                  Caption = 'Buscar Dados de Outro IP'
                  TabOrder = 0
                end
                object UniLabel1: TUniLabel
                  Left = 17
                  Top = 35
                  Width = 74
                  Height = 13
                  Caption = 'N'#186' do Inqu'#233'rito'
                  TabOrder = 1
                end
                object UniLabel3: TUniLabel
                  Left = 176
                  Top = 35
                  Width = 85
                  Height = 13
                  Caption = 'Data do Inqu'#233'rito'
                  TabOrder = 2
                end
                object UniLabel4: TUniLabel
                  Left = 292
                  Top = 35
                  Width = 63
                  Height = 13
                  Caption = 'Data do Fato'
                  TabOrder = 3
                end
                object UniLabel5: TUniLabel
                  Left = 406
                  Top = 35
                  Width = 70
                  Height = 13
                  Caption = 'Data da Pris'#227'o'
                  TabOrder = 4
                end
                object UniDBEdit1: TUniDBEdit
                  Left = 18
                  Top = 51
                  Width = 149
                  Height = 21
                  DataField = 'NUMERO_INQUERITO'
                  DataSource = DsCadastro
                  TabOrder = 5
                  Color = clWindow
                end
                object UniDBEdit2: TUniDBEdit
                  Left = 176
                  Top = 51
                  Width = 101
                  Height = 21
                  DataField = 'DATA_INQUERITO'
                  DataSource = DsCadastro
                  TabOrder = 6
                  Color = clWindow
                end
                object UniDBEdit3: TUniDBEdit
                  Left = 293
                  Top = 51
                  Width = 101
                  Height = 21
                  DataField = 'DATA_FATO_CONDENACAO'
                  DataSource = DsCadastro
                  TabOrder = 7
                  Color = clWindow
                end
                object UniDBEdit4: TUniDBEdit
                  Left = 405
                  Top = 51
                  Width = 101
                  Height = 21
                  DataField = 'DATA_PRISAO'
                  DataSource = DsCadastro
                  TabOrder = 8
                  Color = clWindow
                end
                object UniLabel6: TUniLabel
                  Left = 18
                  Top = 73
                  Width = 95
                  Height = 13
                  Caption = 'Cidade do Inqu'#233'rito'
                  TabOrder = 9
                end
                object UniSpeedButton1: TUniSpeedButton
                  Left = 493
                  Top = 86
                  Width = 23
                  Height = 22
                  Caption = '...'
                  ParentColor = False
                  Color = clWindow
                end
                object UniLabel7: TUniLabel
                  Left = 18
                  Top = 111
                  Width = 46
                  Height = 13
                  Caption = 'Delegacia'
                  TabOrder = 11
                end
                object UniLabel8: TUniLabel
                  Left = 18
                  Top = 154
                  Width = 79
                  Height = 13
                  Caption = 'Motivo da Pris'#227'o'
                  TabOrder = 12
                end
                object UniDBComboBox1: TUniDBComboBox
                  Left = 18
                  Top = 170
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
                  TabOrder = 13
                end
                object UniSpeedButton2: TUniSpeedButton
                  Left = 493
                  Top = 127
                  Width = 23
                  Height = 22
                  Enabled = False
                  Caption = '...'
                  ParentColor = False
                  Color = clWindow
                end
                object UniLabel9: TUniLabel
                  Left = 522
                  Top = 108
                  Width = 109
                  Height = 13
                  Caption = 'Descri'#231#227'o da delegacia'
                  TabOrder = 15
                end
                object UniDBEdit5: TUniDBEdit
                  Left = 522
                  Top = 127
                  Width = 215
                  Height = 21
                  DataField = 'DELEGACIA'
                  DataSource = DsCadastro
                  TabOrder = 16
                  Color = clWindow
                end
                object UniLabel10: TUniLabel
                  Left = 18
                  Top = 197
                  Width = 79
                  Height = 13
                  Caption = 'Dispositivo Legal'
                  TabOrder = 17
                end
                object UniDBMemo1: TUniDBMemo
                  Left = 19
                  Top = 213
                  Width = 462
                  Height = 57
                  DataField = 'DISPOSITIVO_LEGAL'
                  DataSource = DsCadastro
                  TabOrder = 18
                  Color = clWindow
                end
                object UniButton2: TUniButton
                  Left = 484
                  Top = 227
                  Width = 45
                  Height = 20
                  Caption = 'Busca'
                  TabOrder = 19
                end
                object UniLabel11: TUniLabel
                  Left = 18
                  Top = 280
                  Width = 95
                  Height = 13
                  Caption = 'Tipifica'#231#227'o do Crime'
                  TabOrder = 20
                end
                object UniDBComboBox2: TUniDBComboBox
                  Left = 20
                  Top = 279
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
                  TabOrder = 21
                end
                object Button2: TUniButton
                  Left = 484
                  Top = 280
                  Width = 45
                  Height = 20
                  Visible = False
                  Caption = 'Busca'
                  TabOrder = 22
                end
                object Label72: TUniLabel
                  Left = 18
                  Top = 287
                  Width = 58
                  Height = 13
                  Caption = 'Observa'#231#227'o'
                  TabOrder = 23
                end
                object DBEdit4: TUniDBEdit
                  Left = 18
                  Top = 279
                  Width = 505
                  Height = 21
                  DataField = 'OBSERVACAO'
                  DataSource = DsCadastro
                  TabOrder = 24
                  Color = clWindow
                end
              end
            end
            object TabSheet1: TUniTabSheet
              Caption = 'Processo'
              object Label4: TLabel
                Left = 164
                Top = 1
                Width = 71
                Height = 13
                Caption = 'Data Cumprida'
              end
              object Label37: TLabel
                Left = 327
                Top = 81
                Width = 22
                Height = 13
                Caption = 'Vara'
              end
              object Label153: TUniLabel
                Left = 12
                Top = 2
                Width = 58
                Height = 13
                Caption = 'N'#186' Processo'
                TabOrder = 0
              end
              object Label151: TUniLabel
                Left = 267
                Top = 1
                Width = 52
                Height = 13
                Caption = 'Tipo Pris'#227'o'
                TabOrder = 1
              end
              object DBEdit2: TUniDBEdit
                Left = 12
                Top = 18
                Width = 149
                Height = 21
                DataField = 'NPROCESSO'
                DataSource = DsCadastro
                TabOrder = 2
                Color = clWindow
              end
              object DBEditDATA_PROCESSO: TUniDBEdit
                Left = 165
                Top = 18
                Width = 101
                Height = 21
                DataField = 'DATA_PROCESSO'
                DataSource = DsCadastro
                TabOrder = 3
                Color = clWindow
              end
              object DBComboBox4: TUniDBComboBox
                Left = 269
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
                TabOrder = 4
              end
              object Label154: TUniLabel
                Left = 12
                Top = 41
                Width = 88
                Height = 13
                Caption = 'Guia Recolhimento'
                TabOrder = 5
              end
              object Label162: TUniLabel
                Left = 153
                Top = 42
                Width = 33
                Height = 13
                Caption = 'Justi'#231'a'
                TabOrder = 6
              end
              object Label152: TUniLabel
                Left = 351
                Top = 42
                Width = 19
                Height = 13
                Caption = 'R'#233'u'
                TabOrder = 7
              end
              object DBEdit3: TUniDBEdit
                Left = 12
                Top = 57
                Width = 136
                Height = 21
                DataField = 'GR'
                DataSource = DsCadastro
                TabOrder = 8
                Color = clWindow
              end
              object DBComboBox5: TUniDBComboBox
                Left = 152
                Top = 56
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
                TabOrder = 9
              end
              object DBComboBox6: TUniDBComboBox
                Left = 352
                Top = 56
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
                TabOrder = 10
              end
              object Label139: TUniLabel
                Left = 11
                Top = 81
                Width = 42
                Height = 13
                Caption = 'Comarca'
                TabOrder = 11
              end
              object SpeedButton1: TUniSpeedButton
                Left = 594
                Top = 95
                Width = 23
                Height = 22
                Enabled = False
                Caption = '...'
                ParentColor = False
                Color = clWindow
              end
              object Label150: TUniLabel
                Left = 618
                Top = 82
                Width = 86
                Height = 13
                Caption = 'Descri'#231#227'o da Vara'
                TabOrder = 13
              end
              object DBEdit1: TUniDBEdit
                Left = 618
                Top = 97
                Width = 154
                Height = 21
                DataField = 'VARA'
                DataSource = DsCadastro
                TabOrder = 14
                Color = clWindow
              end
            end
            object TabSheetCondenacao: TUniTabSheet
              Caption = 'Condena'#231#227'o'
              object BtnLimpaPena: TUniButton
                Left = 376
                Top = 4
                Width = 153
                Height = 25
                Caption = 'Limpar dados da pena'
                TabOrder = 0
              end
              object Label9: TUniLabel
                Left = 10
                Top = 16
                Width = 151
                Height = 13
                Caption = 'O Interno neste processo est'#225':'
                TabOrder = 1
              end
              object DBText1: TUniDBText
                Left = 162
                Top = 16
                Width = 42
                Height = 13
                DataField = 'SITUACAOJURIDICA'
                DataSource = DsCadastro
                ParentFont = False
                Font.Name = 'MS Sans Serif'
              end
              object PanelCondenado: TUniPanel
                Left = 12
                Top = 35
                Width = 727
                Height = 390
                TabOrder = 3
                object Label27: TUniLabel
                  Left = 12
                  Top = 10
                  Width = 75
                  Height = 13
                  Caption = 'N.Processo VEP'
                  TabOrder = 1
                end
                object Label28: TUniLabel
                  Left = 118
                  Top = 10
                  Width = 59
                  Height = 13
                  Caption = 'Data na VEP'
                  TabOrder = 2
                end
                object Label8: TUniLabel
                  Left = 225
                  Top = 10
                  Width = 103
                  Height = 13
                  Caption = 'Inicio da Condena'#231#227'o'
                  TabOrder = 3
                end
                object Label5: TUniLabel
                  Left = 364
                  Top = 8
                  Width = 95
                  Height = 13
                  Caption = 'Situa'#231#227'o Processual'
                  TabOrder = 4
                end
                object DBEdit19: TUniDBEdit
                  Left = 12
                  Top = 26
                  Width = 100
                  Height = 21
                  DataField = 'PROCESSO_VEC'
                  DataSource = DsCadastro
                  TabOrder = 5
                  Color = clWindow
                end
                object DBEditDATA_PROCESSO_VEC: TUniDBEdit
                  Left = 119
                  Top = 26
                  Width = 101
                  Height = 21
                  DataField = 'DATA_PROCESSO_VEC'
                  DataSource = DsCadastro
                  TabOrder = 6
                  Color = clWindow
                end
                object DBComboBox8: TDBComboBox
                  Left = 364
                  Top = 24
                  Width = 293
                  Height = 21
                  Style = csDropDownList
                  DataField = 'SITUACAO_CONDENACAO'
                  DataSource = DsCadastro
                  Items.Strings = (
                    ''
                    'GUIA DE RECOLHIMENTO'
                    'MANDADO DE PRIS'#195'O CONDENAT'#211'RIA'
                    'PRONUNCIADO'
                    'RECOMENDA'#199#195'O DE PRIS'#195'O'
                    'SENTEN'#199'A')
                  Sorted = True
                  TabOrder = 7
                end
                object Label73: TUniLabel
                  Left = 12
                  Top = 50
                  Width = 32
                  Height = 13
                  Caption = 'Ano(s)'
                  TabOrder = 8
                end
                object Label74: TUniLabel
                  Left = 79
                  Top = 50
                  Width = 38
                  Height = 13
                  Caption = 'M'#234's(es)'
                  TabOrder = 9
                end
                object Label75: TUniLabel
                  Left = 146
                  Top = 50
                  Width = 28
                  Height = 13
                  Caption = 'Dia(s)'
                  TabOrder = 10
                end
                object Label38: TUniLabel
                  Left = 220
                  Top = 50
                  Width = 65
                  Height = 13
                  Caption = 'Regime Inicial'
                  TabOrder = 11
                end
                object Label29: TUniLabel
                  Left = 364
                  Top = 50
                  Width = 98
                  Height = 13
                  Caption = 'Tipo de Condena'#231#227'o'
                  TabOrder = 12
                end
                object DBEdit5: TUniDBEdit
                  Left = 12
                  Top = 66
                  Width = 65
                  Height = 21
                  DataField = 'TOTAL_PENA_ANO'
                  DataSource = DsCadastro
                  TabOrder = 13
                  Color = clWindow
                end
                object DBEdit6: TUniDBEdit
                  Left = 79
                  Top = 66
                  Width = 65
                  Height = 21
                  DataField = 'TOTAL_PENA_MES'
                  DataSource = DsCadastro
                  TabOrder = 14
                  Color = clWindow
                end
                object DBComboBox1: TDBComboBox
                  Left = 364
                  Top = 66
                  Width = 289
                  Height = 21
                  Style = csDropDownList
                  DataField = 'TIPOCONDENACAO'
                  DataSource = DsCadastro
                  Items.Strings = (
                    'DETEN'#199#195'O'
                    'PRIS'#195'O CIVIL'
                    'PRIS'#195'O SIMPLES'
                    'RECLUS'#195'O')
                  Sorted = True
                  TabOrder = 15
                end
                object DBEdit7: TDBEdit
                  Left = 146
                  Top = 66
                  Width = 65
                  Height = 21
                  DataField = 'TOTAL_PENA_DIA'
                  DataSource = DsCadastro
                  TabOrder = 16
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
                  TabOrder = 17
                end
                object BtnCalcular: TUniBitBtn
                  Left = 10
                  Top = 98
                  Width = 199
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
                  TabOrder = 18
                end
                object UniPageControl2: TUniPageControl
                  Left = 12
                  Top = 129
                  Width = 521
                  Height = 228
                  ActivePage = UniTabSheet2
                  TabOrder = 19
                  object UniTabSheet2: TUniTabSheet
                    Caption = 'Requisito para Progress'#227'o'
                    object GroupBox2: TGroupBox
                      Left = 9
                      Top = 97
                      Width = 405
                      Height = 65
                      Caption = 'Progress'#227'o de regime ap'#243's:'
                      TabOrder = 0
                      object Label1: TLabel
                        Left = 10
                        Top = 20
                        Width = 32
                        Height = 13
                        Caption = 'Ano(s)'
                      end
                      object Label13: TLabel
                        Left = 88
                        Top = 20
                        Width = 38
                        Height = 13
                        Caption = 'M'#234's(es)'
                      end
                      object Label14: TLabel
                        Left = 168
                        Top = 20
                        Width = 28
                        Height = 13
                        Caption = 'Dia(s)'
                      end
                      object Label15: TLabel
                        Left = 249
                        Top = 20
                        Width = 80
                        Height = 13
                        Caption = 'Data Progress'#227'o'
                        Visible = False
                      end
                      object DBEdit11: TDBEdit
                        Left = 10
                        Top = 36
                        Width = 65
                        Height = 21
                        DataField = 'ANO_PROGRESSAO'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 0
                      end
                      object DBEdit12: TDBEdit
                        Left = 88
                        Top = 36
                        Width = 73
                        Height = 21
                        DataField = 'MES_PROGRESSAO'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 1
                      end
                      object DBEdit13: TDBEdit
                        Left = 168
                        Top = 36
                        Width = 65
                        Height = 21
                        DataField = 'DIA_PROGRESSAO'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 2
                      end
                    end
                    object DBRadioGroup1: TDBRadioGroup
                      Left = 9
                      Top = 18
                      Width = 405
                      Height = 73
                      Caption = 'Progress'#227'o de Regime'
                      DataField = 'PROGRESSAO_REGIME'
                      DataSource = DsCadastro
                      Items.Strings = (
                        
                          '1/6 - Comum Prim'#225'rio, Comum Reincidente, Hediondo (antes de 29/0' +
                          '3/2007)'
                        '2/5 - Hediondo Prim'#225'rio (a partir de 29/03/2007)'
                        '3/5 - Hediondo Reincidente (a partir de 29/03/2007)')
                      ParentBackground = True
                      TabOrder = 1
                      Values.Strings = (
                        '0'
                        '1'
                        '2')
                    end
                  end
                  object UniTabSheet3: TUniTabSheet
                    Caption = 'Requisito para Condicional'
                    object DBRadioGroup2: TDBRadioGroup
                      Left = 9
                      Top = 18
                      Width = 405
                      Height = 68
                      Caption = 'Livramento Condicional'
                      Columns = 2
                      DataField = 'LIVRAMENTO_CONDICIONAL'
                      DataSource = DsCadastro
                      Items.Strings = (
                        '1/3 - Comum Prim'#225'rio'
                        '1/2 - Comum Reincidente'
                        '2/3 - Hediondo'
                        '1/1 - Hediondo Reincidente'
                        '1/1 - Revoga'#231#227'o LC')
                      ParentBackground = True
                      TabOrder = 0
                      Values.Strings = (
                        '0'
                        '1'
                        '2'
                        '3'
                        '4')
                    end
                    object GroupBox3: TGroupBox
                      Left = 9
                      Top = 97
                      Width = 405
                      Height = 65
                      Caption = 'Livramento condicional ap'#243's:'
                      TabOrder = 1
                      object Label31: TLabel
                        Left = 10
                        Top = 20
                        Width = 32
                        Height = 13
                        Caption = 'Ano(s)'
                      end
                      object Label32: TLabel
                        Left = 88
                        Top = 20
                        Width = 38
                        Height = 13
                        Caption = 'M'#234's(es)'
                      end
                      object Label33: TLabel
                        Left = 168
                        Top = 20
                        Width = 28
                        Height = 13
                        Caption = 'Dia(s)'
                      end
                      object Label34: TLabel
                        Left = 248
                        Top = 20
                        Width = 80
                        Height = 13
                        Caption = 'Data Condicional'
                        Visible = False
                      end
                      object DBEdit20: TDBEdit
                        Left = 10
                        Top = 36
                        Width = 65
                        Height = 21
                        DataField = 'ANO_CONDICIONAL'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 0
                      end
                      object DBEdit22: TDBEdit
                        Left = 88
                        Top = 36
                        Width = 73
                        Height = 21
                        DataField = 'MES_CONDICIONAL'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 1
                      end
                      object DBEdit23: TDBEdit
                        Left = 168
                        Top = 36
                        Width = 65
                        Height = 21
                        DataField = 'DIA_CONDICIONAL'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 2
                      end
                    end
                  end
                end
                object MemoLinhaTempo: TRichEdit
                  Left = 544
                  Top = 363
                  Width = 166
                  Height = 13
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Lucida Console'
                  Font.Style = []
                  Lines.Strings = (
                    'MemoLinhaTempo')
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 20
                  Visible = False
                end
                object UniLabel12: TUniLabel
                  Left = 441
                  Top = 363
                  Width = 64
                  Height = 13
                  Visible = False
                  Caption = 'Final da Pena'
                  TabOrder = 21
                end
                object UniButton3: TUniButton
                  Left = 233
                  Top = 363
                  Width = 161
                  Height = 25
                  Visible = False
                  Caption = 'Linha de Tempo'
                  TabOrder = 22
                end
              end
            end
            object TabSheet4: TUniTabSheet
              Caption = 'Libera'#231#227'o'
              object Label24: TUniLabel
                Left = 18
                Top = 18
                Width = 133
                Height = 13
                Caption = 'N'#186' do Documento Libera'#231#227'o'
                TabOrder = 0
              end
              object DBEdit15: TUniDBEdit
                Left = 18
                Top = 34
                Width = 207
                Height = 21
                DataField = 'DOCUMENTO_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 1
                Color = clWindow
              end
              object Label23: TUniLabel
                Left = 430
                Top = 17
                Width = 87
                Height = 13
                Caption = 'Data da Libera'#231#227'o'
                TabOrder = 2
              end
              object DBEdit17: TUniDBEdit
                Left = 429
                Top = 34
                Width = 101
                Height = 21
                DataField = 'DATA_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 3
                Color = clWindow
              end
              object Label25: TUniLabel
                Left = 18
                Top = 58
                Width = 96
                Height = 13
                Caption = 'Motivo da Libera'#231#227'o'
                TabOrder = 4
              end
              object DBEdit21: TUniDBEdit
                Left = 18
                Top = 73
                Width = 463
                Height = 21
                DataField = 'MOTIVO_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 5
                Color = clWindow
              end
              object Button3: TUniButton
                Left = 484
                Top = 73
                Width = 45
                Height = 20
                Caption = 'Busca'
                TabOrder = 6
              end
              object Label26: TUniLabel
                Left = 17
                Top = 100
                Width = 122
                Height = 13
                Caption = 'Observa'#231#227'o da Libera'#231#227'o'
                TabOrder = 7
              end
              object DBEdit16: TUniDBEdit
                Left = 17
                Top = 116
                Width = 508
                Height = 21
                DataField = 'OBSERVACAO_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 8
                Color = clWindow
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TUniTabSheet
        ExplicitWidth = 860
        ExplicitHeight = 574
        inherited PanelLocalizaConsulta: TUniPanel
          Width = 860
          ExplicitWidth = 860
        end
        inherited DBGridConsulta: TUniDBGrid
          Width = 860
          Height = 533
          Columns = <>
        end
      end
    end
  end
  inherited StatusBar1: TUniStatusBar
    Top = 648
    Width = 970
    ExplicitTop = 648
    ExplicitWidth = 970
  end
  object UniLabel13: TUniLabel [4]
    Left = 88
    Top = 20
    Width = 38
    Height = 13
    Caption = 'M'#234's(es)'
    TabOrder = 4
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
    Left = 152
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 180
  end
  object DsConsulta: TDataSource
    Left = 236
  end
  object SqlLista: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MARCAS '
      'FROM PATRIMONIO')
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
end
