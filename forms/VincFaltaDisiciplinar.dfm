inherited FrmVincFaltaDisiciplinar: TFrmVincFaltaDisiciplinar
  ClientHeight = 549
  ClientWidth = 978
  Caption = 'Faltas do Interno(a)'
  ExplicitWidth = 994
  ExplicitHeight = 588
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelTituloModeloCadastro: TUniPanel
    Width = 978
    ExplicitWidth = 978
    inherited UniImage1: TUniImage
      Width = 976
      ExplicitWidth = 976
    end
  end
  inherited PanelBotoes: TUniPanel
    Height = 482
    ExplicitHeight = 482
  end
  inherited PanelModeloCadastro: TUniPanel
    Width = 872
    Height = 482
    ExplicitWidth = 872
    ExplicitHeight = 482
    inherited PageControlModeloCadastro: TUniPageControl
      Width = 870
      Height = 480
      ActivePage = TabSheetCadastro
      ExplicitWidth = 870
      ExplicitHeight = 480
      inherited TabSheetCadastro: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 733
        ExplicitHeight = 294
        inherited PanelCadastro: TUniPanel
          Width = 862
          Height = 452
          ExplicitWidth = 862
          ExplicitHeight = 452
          object Label15: TUniLabel
            Left = 24
            Top = 56
            Width = 74
            Height = 13
            Caption = 'Falta Disciplinar'
            TabOrder = 1
          end
          object Label2: TUniLabel
            Left = 24
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            TabOrder = 2
          end
          object Label8: TUniLabel
            Left = 193
            Top = 16
            Width = 62
            Height = 13
            Caption = 'N'#250'mero Doc.'
            TabOrder = 3
          end
          object Label4: TUniLabel
            Left = 431
            Top = 16
            Width = 36
            Height = 13
            Caption = 'Interno'
            TabOrder = 4
          end
          object Label20: TUniLabel
            Left = 108
            Top = 176
            Width = 86
            Height = 13
            Caption = 'Data Inst portaria'
            TabOrder = 5
          end
          object Label21: TUniLabel
            Left = 200
            Top = 176
            Width = 44
            Height = 13
            Caption = 'Natureza'
            TabOrder = 6
          end
          object Label3: TUniLabel
            Left = 25
            Top = 232
            Width = 41
            Height = 13
            Caption = 'Situa'#231#227'o'
            TabOrder = 7
          end
          object Label5: TUniLabel
            Left = 160
            Top = 232
            Width = 74
            Height = 13
            Caption = 'Data Resultado'
            TabOrder = 8
          end
          object Label6: TUniLabel
            Left = 248
            Top = 232
            Width = 48
            Height = 13
            Caption = 'Resultado'
            TabOrder = 9
          end
          object Label9: TUniLabel
            Left = 382
            Top = 232
            Width = 121
            Height = 13
            Caption = 'Tipo de san'#231#227'o disciplinar'
            TabOrder = 10
          end
          object Label10: TUniLabel
            Left = 547
            Top = 232
            Width = 81
            Height = 13
            Caption = 'Inicio Isolamento'
            TabOrder = 11
          end
          object Label16: TUniLabel
            Left = 774
            Top = 232
            Width = 85
            Height = 13
            Caption = 'Qtde Dias Isolado'
            TabOrder = 12
          end
          object Label17: TUniLabel
            Left = 442
            Top = 280
            Width = 120
            Height = 13
            Caption = 'Classifica'#231#227'o da Conduta'
            TabOrder = 13
          end
          object Label19: TUniLabel
            Left = 624
            Top = 280
            Width = 84
            Height = 13
            Caption = 'Data Reabilita'#231#227'o'
            TabOrder = 14
          end
          object Label22: TUniLabel
            Left = 442
            Top = 322
            Width = 88
            Height = 13
            Caption = 'Tipo procedimento'
            TabOrder = 15
          end
          object Label29: TUniLabel
            Left = 264
            Top = 340
            Width = 49
            Height = 13
            Caption = 'Conclus'#227'o'
            TabOrder = 16
          end
          object Label23: TUniLabel
            Left = 716
            Top = 322
            Width = 106
            Height = 13
            Hint = 'Data em que foi instaurado o procedimento'
            Caption = 'Data do Procedimento'
            TabOrder = 17
          end
          object Label18: TUniLabel
            Left = 612
            Top = 322
            Width = 65
            Height = 13
            Caption = 'N'#250'mero Proc.'
            TabOrder = 18
          end
          object Label30: TUniLabel
            Left = 734
            Top = 280
            Width = 101
            Height = 13
            Caption = 'Data da Condena'#231#227'o'
            TabOrder = 19
          end
          object Label7: TUniLabel
            Left = 24
            Top = 348
            Width = 20
            Height = 13
            Caption = 'OBS'
            TabOrder = 20
          end
          object Label25: TUniLabel
            Left = 24
            Top = 176
            Width = 74
            Height = 13
            Caption = 'Data Incid'#234'ncia'
            TabOrder = 21
          end
          object Label26: TUniLabel
            Left = 663
            Top = 232
            Width = 87
            Height = 13
            Caption = 'Fim do Isolamento'
            TabOrder = 22
          end
          object DBEditId: TUniDBEdit
            Left = 24
            Top = 32
            Width = 157
            Height = 21
            Enabled = False
            DataField = 'ID_VINC_FALTA_DISCIPLINAR'
            DataSource = DsCadastro
            TabOrder = 23
            Color = clWindow
          end
          object DBEditNumeroPdi: TUniDBEdit
            Left = 193
            Top = 32
            Width = 208
            Height = 21
            Enabled = False
            DataField = 'NUMERO_PDI'
            DataSource = DsCadastro
            TabOrder = 24
            Color = clWindow
          end
          object DBLookupComboBox1: TUniDBLookupComboBox
            Left = 428
            Top = 32
            Width = 425
            Height = 21
            Enabled = False
            ListField = 'NOME_INTERNO'
            ListSource = Dm.DsInterno
            KeyField = 'ID_INTERNO'
            ListFieldIndex = 0
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            TabOrder = 25
          end
          object DBLookupComboBoxFaltaDisciplinar: TUniDBLookupComboBox
            Left = 24
            Top = 72
            Width = 829
            Height = 21
            ListField = 'falta_disciplinar'
            ListSource = Dsfaltadisciplinar
            KeyField = 'id_falta_disciplinar'
            ListFieldIndex = 0
            DataField = 'id_falta_disciplinar'
            DataSource = DsCadastro
            TabOrder = 26
          end
          object Memo1: TUniMemo
            Left = 24
            Top = 97
            Width = 826
            Height = 72
            Enabled = False
            Lines.Strings = (
              '')
            Color = clWindow
            TabOrder = 27
          end
          object GroupBox1: TUniGroupBox
            Left = 525
            Top = 172
            Width = 337
            Height = 53
            TabOrder = 28
            object Label12: TUniLabel
              Left = 4
              Top = 8
              Width = 54
              Height = 13
              Caption = 'Data Inicio '
              TabOrder = 4
            end
            object Label14: TUniLabel
              Left = 118
              Top = 8
              Width = 47
              Height = 13
              Caption = 'Qtde Dias'
              TabOrder = 5
            end
            object Label13: TUniLabel
              Left = 207
              Top = 8
              Width = 42
              Height = 13
              Caption = 'Data Fim'
              TabOrder = 6
            end
            object DBEditQtddias: TUniDBEdit
              Left = 120
              Top = 27
              Width = 81
              Height = 21
              Hint = 'Quantidade de dias de isolamento preventivo'
              ShowHint = True
              ParentShowHint = False
              DataField = 'QTDE_DIAS_ISOLAMENTO'
              DataSource = DsCadastro
              TabOrder = 0
              Color = clWindow
              OnExit = DBEditQtddiasExit
            end
            object DBEditDataFimIsolPrev: TUniDBEdit
              Left = 208
              Top = 24
              Width = 101
              Height = 21
              Hint = 'Data final do isolamento preventivo do interno'
              ShowHint = True
              ParentShowHint = False
              DataField = 'dt_fim_isolamento'
              DataSource = DsCadastro
              TabOrder = 1
              Color = clWindow
            end
            object DBEditDataInicioIsolPrev: TUniDBEdit
              Left = 4
              Top = 24
              Width = 105
              Height = 21
              Hint = 'Data inicial do isolamento preventivo do interno'
              ShowHint = True
              ParentShowHint = False
              DataField = 'dt_inicio_isolamento'
              DataSource = DsCadastro
              TabOrder = 2
              Color = clWindow
            end
          end
          object DBComboBoxPreventivo: TUniDBComboBox
            Left = 419
            Top = 193
            Width = 96
            Hint = 'Selecionar se houve isolamento preventio ou n'#227'o'
            ShowHint = True
            ParentShowHint = False
            DataField = 'Preventivo'
            DataSource = DsCadastro
            Items.Strings = (
              'S'
              'N')
            ItemIndex = -1
            TabOrder = 29
            OnDropDown = DBComboBoxPreventivoDropDown
          end
          object DBComboBoxResultado: TUniDBComboBox
            Left = 247
            Top = 248
            Width = 130
            Height = 21
            Hint = 'Resultado do PDI'
            ShowHint = True
            ParentShowHint = False
            DataField = 'RESULTADO'
            DataSource = DsCadastro
            Items.Strings = (
              ''
              'ARQUIVADO'
              'ABSOLVIDO'
              'CONDENADO'
              'EXTINTO')
            ItemIndex = -1
            TabOrder = 30
          end
          object DBComboBoxTipoSancao: TUniDBComboBox
            Left = 383
            Top = 248
            Width = 158
            Height = 21
            Hint = 'Tipo de san'#231#227'o disciplinar a ser aplicada ao interno'
            ShowHint = True
            ParentShowHint = False
            DataField = 'TIPO_SANCAO'
            DataSource = DsCadastro
            Items.Strings = (
              ''
              'ADVERT'#202'NCIA VERBAL'
              'REPREENS'#195'O'
              'SUSPENS'#195'O OU RESTRI'#199#195'O DE DIREITOS'
              'ISOLAMENTO CELULAR')
            ItemIndex = -1
            TabOrder = 31
          end
          object DBComboBoxClassificacaoConduta: TUniDBComboBox
            Left = 442
            Top = 296
            Width = 174
            Height = 21
            DataField = 'classificacao_conduta'
            DataSource = DsCadastro
            Items.Strings = (
              ''
              #211'TIMA'
              'BOA'
              'REGULAR'
              'M'#193)
            ItemIndex = -1
            TabOrder = 32
          end
          object DBComboboxHomologado: TUniDBComboBox
            Left = 335
            Top = 299
            Width = 101
            Height = 21
            DataField = 'homologacao'
            DataSource = DsCadastro
            Items.Strings = (
              'S'
              'N')
            ItemIndex = -1
            TabOrder = 33
          end
          object GroupBoxRecurso: TUniGroupBox
            Left = 132
            Top = 280
            Width = 197
            Height = 53
            TabOrder = 34
            object Label24: TUniLabel
              Left = 12
              Top = 24
              Width = 91
              Height = 13
              Caption = 'Decis'#227'o do recurso'
              TabOrder = 2
            end
            object Label11: TUniLabel
              Left = 3
              Top = 8
              Width = 91
              Height = 13
              Caption = 'Decis'#227'o do recurso'
              TabOrder = 3
            end
            object DBComboBoxDecisaoRecurso: TUniDBComboBox
              Left = 3
              Top = 24
              Width = 179
              Height = 21
              DataField = 'DECISAO_RECURSO'
              DataSource = DsCadastro
              Items.Strings = (
                ''
                'IMPROCEDENTE'
                'PARCIALMENTE PROCEDENTE'
                'PRECEDENTE')
              ItemIndex = -1
              TabOrder = 0
            end
          end
          object DBRadioGroupRecurso: TUniDBComboBox
            Left = 24
            Top = 294
            Width = 101
            Height = 21
            DataField = 'recurso'
            DataSource = DsCadastro
            Items.Strings = (
              'S'
              'N')
            ItemIndex = -1
            TabOrder = 35
          end
          object DBComboBoxSituacao: TUniDBComboBox
            Left = 24
            Top = 248
            Width = 129
            Height = 21
            Hint = 'Situa'#231#227'o ao qual se encontra o PDI'
            DataField = 'CONCLUSAOCD'
            DataSource = DsCadastro
            Style = csDropDownList
            Items.Strings = (
              'ANDAMENTO'
              'CONCLUIDO/ARQUIVADO'
              'CONCLUIDO'
              'RECURSO')
            ItemIndex = -1
            TabOrder = 36
          end
          object DBEditDataReabilitacao: TUniDBEdit
            Left = 624
            Top = 296
            Width = 101
            Height = 21
            Hint = 'Dia em que come'#231'ou o isolamento'
            Enabled = False
            DataField = 'data_reabilitacao'
            DataSource = DsCadastro
            TabOrder = 37
            Color = clWindow
          end
          object DBMemo1: TUniDBMemo
            Left = 20
            Top = 363
            Width = 841
            Height = 89
            DataField = 'OBS'
            DataSource = DsCadastro
            TabOrder = 38
            Color = clWindow
          end
          object DBEditDataIncidencia: TUniDBEdit
            Left = 24
            Top = 192
            Width = 77
            Height = 21
            Hint = 'Dia em que ocorreu o fato'
            ShowHint = True
            ParentShowHint = False
            DataField = 'Data_Incidencia'
            DataSource = DsCadastro
            TabOrder = 39
            Color = clWindow
          end
          object DBEditDataInstPortaria: TUniDBEdit
            Left = 108
            Top = 192
            Width = 85
            Height = 21
            Hint = 'Data ao qual foi instaurada a portaria'
            ShowHint = True
            ParentShowHint = False
            DataField = 'data_Inst_Portaria'
            DataSource = DsCadastro
            TabOrder = 40
            Color = clWindow
          end
          object DBEditDataInicio: TUniDBEdit
            Left = 548
            Top = 248
            Width = 101
            Height = 21
            Hint = 'Data Inicial do isolamento do interno'
            ShowHint = True
            ParentShowHint = False
            DataField = 'Data_Inicio_Isolamento'
            DataSource = DsCadastro
            TabOrder = 41
            Color = clWindow
          end
          object DBEditDataResultado: TUniDBEdit
            Left = 160
            Top = 248
            Width = 85
            Height = 21
            Hint = 'Data do resultado do PDI'
            ShowHint = True
            ParentShowHint = False
            DataField = 'Data_resultado'
            DataSource = DsCadastro
            TabOrder = 42
            Color = clWindow
          end
          object DBEditDataFimIsol: TUniDBEdit
            Left = 660
            Top = 248
            Width = 101
            Height = 21
            Hint = 'Data final do isolamento do interno'
            ShowHint = True
            ParentShowHint = False
            DataField = 'Data_fim_Isolamento'
            DataSource = DsCadastro
            TabOrder = 43
            Color = clWindow
          end
          object DBEditQuantidadeDias: TUniDBEdit
            Left = 772
            Top = 248
            Width = 81
            Height = 21
            Hint = 'Quantidades de dias em que o interno ficar'#225' isolado'
            ShowHint = True
            ParentShowHint = False
            DataField = 'quantidade_dias_isolamento'
            DataSource = DsCadastro
            TabOrder = 44
            Color = clWindow
          end
          object DBEditDataCondenacao: TUniDBEdit
            Left = 734
            Top = 296
            Width = 101
            Height = 21
            Hint = 'Data da Condena'#231#227'o do interno'
            ShowHint = True
            ParentShowHint = False
            DataField = 'data_condenacao'
            DataSource = DsCadastro
            TabOrder = 45
            Color = clWindow
          end
          object DBEditNumProcesso: TUniDBEdit
            Left = 612
            Top = 338
            Width = 85
            Height = 21
            Hint = 'N'#250'mero do processo'
            ShowHint = True
            ParentShowHint = False
            DataField = 'numero'
            DataSource = DsCadastro
            TabOrder = 46
            Color = clWindow
          end
          object DBComboBoxTipo: TUniDBComboBox
            Left = 442
            Top = 338
            Width = 158
            Height = 21
            DataField = 'tipo'
            DataSource = DsCadastro
            Items.Strings = (
              ''
              #211'TIMA'
              'BOA'
              'REGULAR'
              'M'#193)
            ItemIndex = -1
            TabOrder = 47
          end
          object DBEditDataProcedimento: TUniDBEdit
            Left = 716
            Top = 338
            Width = 101
            Height = 21
            Hint = 'Data em que foi instaurado o procedimento'
            ShowHint = True
            ParentShowHint = False
            DataField = 'data_instauracao'
            DataSource = DsCadastro
            TabOrder = 48
            Color = clWindow
          end
          object DBEditConclusao: TUniDBEdit
            Left = 316
            Top = 337
            Width = 121
            Height = 21
            Enabled = False
            DataField = 'status'
            DataSource = DsCadastro
            TabOrder = 49
            Color = clWindow
          end
          object DBEditNatureza: TUniDBEdit
            Left = 200
            Top = 192
            Width = 213
            Height = 21
            Enabled = False
            DataField = 'tipoFalta'
            DataSource = Dsfaltadisciplinar
            TabOrder = 50
            Color = clWindow
          end
          object UniLabel1: TUniLabel
            Left = 419
            Top = 175
            Width = 52
            Height = 13
            Caption = 'Preventivo'
            TabOrder = 51
          end
          object UniLabel3: TUniLabel
            Left = 335
            Top = 280
            Width = 64
            Height = 13
            Caption = 'Homologa'#231#227'o'
            TabOrder = 52
          end
          object UniLabel4: TUniLabel
            Left = 24
            Top = 278
            Width = 39
            Height = 13
            Caption = 'Recurso'
            TabOrder = 53
          end
        end
      end
      inherited TabSheetConsulta: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 862
        ExplicitHeight = 452
        inherited PanelLocalizaConsulta: TUniPanel
          Width = 862
          ExplicitWidth = 862
        end
        inherited DBGridConsulta: TUniDBGrid
          Width = 862
          Height = 411
          Columns = <
            item
              FieldName = 'NUMERO_PDI'
              Title.Caption = 'N'#186' PDI'
              Width = 73
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'TIPOFALTA'
              Title.Caption = 'Natureza'
              Width = 63
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'DATA_INCIDENCIA'
              Title.Caption = 'Dt. Incid'#234'ncia'
              Width = 85
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'DT_INICIO_ISOLAMENTO'
              Title.Caption = 'Dt. Inicio Isolamento'
              Width = 101
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'STATUS'
              Title.Caption = 'Status'
              Width = 64
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'DT_FIM_ISOLAMENTO'
              Title.Caption = 'Dt. Fim Isolamento'
              Width = 103
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'RESULTADO'
              Title.Caption = 'Resultado'
              Width = 112
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'PREVENTIVO'
              Title.Caption = 'Preventivo'
              Width = 156
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'DATA_RESULTADO'
              Title.Caption = 'Dt. Resultado'
              Width = 91
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'OBS'
              Title.Caption = 'Observa'#231#227'o'
              Width = 276
              Visible = True
              Expanded = False
            end>
        end
      end
    end
  end
  inherited StatusBar1: TUniStatusBar
    Top = 526
    Width = 972
    ExplicitTop = 526
    ExplicitWidth = 972
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'falta'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM vinc_falta_disciplinar'
      'where id_vinc_falta_disciplinar = :falta')
  end
  object Dsfaltadisciplinar: TDataSource
    DataSet = Cdsfaltadisciplinar
    Left = 284
    Top = 8
  end
  object Cdsfaltadisciplinar: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'Dspfaltadisciplinar'
    Left = 256
    Top = 8
  end
  object Dspfaltadisciplinar: TDataSetProvider
    DataSet = Sqlfaltadisciplinar
    Left = 228
    Top = 8
  end
  object Sqlfaltadisciplinar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT  first 44 f.falta_disciplinar, f.id_falta_disciplinar, f.' +
        'tipofalta'
      'FROM falta_disciplinar f'
      'order by f.id_falta_disciplinar')
    Left = 200
    Top = 8
  end
end
