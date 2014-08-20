object FrmHistoricoInterno: TFrmHistoricoInterno
  Left = 0
  Top = 0
  ClientHeight = 600
  ClientWidth = 800
  Caption = 'Hist'#243'ricos Interno'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = Editlocalizar
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 351
    Hint = ''
    ActivePage = TabSheet1
    TabOrder = 0
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Internos (as)'
      object Label1: TUniLabel
        Left = 0
        Top = 0
        Width = 45
        Height = 13
        Hint = ''
        Caption = 'Localizar:'
        TabOrder = 3
      end
      object RadioGroupStatus: TUniRadioGroup
        Left = 565
        Top = 0
        Width = 160
        Height = 62
        Hint = ''
        Items.Strings = (
          'Ativo'
          'Inativo')
        ItemIndex = 0
        OnClick = RadioGroupStatusClick
        Caption = 'Filtro'
        TabOrder = 1
      end
      object DBGridConsulta: TUniDBGrid
        Left = 1
        Top = 68
        Width = 788
        Height = 253
        Hint = ''
        TitleFont.Color = clBlack
        TitleFont.Name = 'MS Sans Serif'
        DataSource = DsConsulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        Columns = <
          item
            FieldName = 'NOME_INTERNO'
            Title.Caption = 'Nome'
            Width = 422
            Visible = True
            Expanded = False
            CheckBoxField.FieldValues = 'true;false'
          end
          item
            FieldName = 'SIGLA'
            Title.Caption = 'UP'
            Width = 77
            Visible = True
            Expanded = False
            CheckBoxField.FieldValues = 'true;false'
          end
          item
            FieldName = 'PAVILHAO'
            Title.Caption = 'PAVILHAO'
            Width = 78
            Visible = True
            Expanded = False
            CheckBoxField.FieldValues = 'true;false'
          end
          item
            FieldName = 'GALERIA'
            Title.Caption = 'GALERIA'
            Width = 70
            Visible = True
            Expanded = False
            CheckBoxField.FieldValues = 'true;false'
          end
          item
            FieldName = 'SOLARIO'
            Title.Caption = 'SOLARIO'
            Width = 61
            Visible = True
            Expanded = False
            CheckBoxField.FieldValues = 'true;false'
          end
          item
            FieldName = 'CELA'
            Title.Caption = 'CELA'
            Width = 59
            Visible = True
            Expanded = False
            CheckBoxField.FieldValues = 'true;false'
          end>
      end
      object Editlocalizar: TUniEdit
        Left = 50
        Top = 0
        Width = 500
        Height = 32
        Hint = ''
        CharCase = ecUpperCase
        Text = ''
        ParentFont = False
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        TabOrder = 0
        Color = clBlack
        CheckChangeDelay = 500
        OnChange = EditlocalizarChange
      end
    end
  end
  object PanelPrincipal: TUniPanel
    Left = 0
    Top = 351
    Width = 800
    Height = 106
    Hint = ''
    Enabled = False
    Caption = 'PanelPrincipal'
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
    DesignSize = (
      800
      106)
    object Label53: TUniLabel
      Left = 9
      Top = 1
      Width = 63
      Height = 13
      Hint = ''
      Caption = 'Data do Fato'
      TabOrder = 5
    end
    object Label54: TUniLabel
      Left = 114
      Top = 1
      Width = 208
      Height = 13
      Hint = ''
      Caption = 'Descri'#231#227'o do Hist'#243'rico para Ficha Disciplinar'
      TabOrder = 6
    end
    object DateTimePickerHistorico: TUniDateTimePicker
      Left = 9
      Top = 18
      Width = 100
      Height = 21
      Hint = ''
      DateTime = 41831.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 0
    end
    object MemoDescricao: TUniMemo
      Left = 113
      Top = 19
      Width = 690
      Height = 83
      Hint = ''
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clWindow
      TabOrder = 1
    end
    object Button1: TUniButton
      Left = 9
      Top = 79
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Incluir'
      ParentFont = False
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TabOrder = 2
      OnClick = Button1Click
    end
    object DBMemo1: TUniDBMemo
      Left = 10
      Top = 315
      Width = 744
      Height = 121
      Hint = ''
      Enabled = False
      DataField = 'DESCRICAO'
      DataSource = DSHISTORICO_interno
      TabOrder = 3
      Color = clWindow
    end
    object UniComboBox1: TUniComboBox
      Left = 9
      Top = 55
      Width = 100
      Hint = ''
      Text = ''
      Items.Strings = (
        'Disciplina'
        'Jurid'#237'co'
        'Sa'#250'de'
        'Psicologia'
        'Assist. Social'
        'Educa'#231#227'o'
        'Trabalho')
      TabOrder = 7
    end
    object UniLabel1: TUniLabel
      Left = 9
      Top = 41
      Width = 26
      Height = 13
      Hint = ''
      Caption = 'Setor'
      TabOrder = 8
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 457
    Width = 800
    Height = 143
    Hint = ''
    Caption = 'UniPanel1'
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 2
    object DBGrid1: TUniDBGrid
      Left = 1
      Top = 1
      Width = 798
      Height = 141
      Hint = ''
      DataSource = DSHISTORICO_interno
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      Columns = <
        item
          FieldName = 'DATA_HORA'
          Title.Caption = 'Data'
          Width = 60
          Visible = True
          Expanded = False
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'SETOR'
          Title.Caption = 'Setor'
          Width = 50
          Visible = True
          Expanded = False
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 64
          Visible = True
          Expanded = False
          CheckBoxField.FieldValues = 'true;false'
        end>
    end
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
    Left = 319
    Top = 203
  end
  object DSPHISTORICO_interno: TDataSetProvider
    DataSet = SQLHISTORICO_interno
    Left = 347
    Top = 203
  end
  object CDSHISTORICO_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsConsulta
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICO_interno'
    Left = 376
    Top = 203
  end
  object DSHISTORICO_interno: TDataSource
    DataSet = CDSHISTORICO_interno
    Left = 403
    Top = 203
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    interno.mae,'
      '    interno.pai,'
      '    unidade_penal.sigla,'
      '    interno.outro_nome,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.vulgo,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario'
      'from interno'
      
        '  inner join unidade_penal on (unidade_penal.id_up = interno.id_' +
        'up)'
      
        '  inner join pavilhao on (pavilhao.id_pavilhao = interno.idpavil' +
        'hao)'
      '  inner join galeria on (galeria.id_galeria = interno.idgaleria)'
      '  inner join solario on (solario.id_solario = interno.idsolario)'
      '  inner join cela on (cela.id_cela = interno.idcela)'
      'WHERE INTERNO.ID_INTERNO = -1'
      ' order by interno.nome_interno ')
    Left = 489
    Top = 199
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 517
    Top = 199
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 545
    Top = 199
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    OnDataChange = DsConsultaDataChange
    Left = 573
    Top = 199
  end
  object SqlSelectInterno: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select FIRST 50'
      '    interno.nome_interno,'
      '    interno.mae,'
      '    interno.pai,'
      '    unidade_penal.sigla,'
      '    interno.outro_nome,'
      '    pavilhao.pavilhao,'
      '    GALERIA.GALERIA,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.vulgo,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario'
      'from interno'
      
        '  inner join unidade_penal on (unidade_penal.id_up = interno.id_' +
        'up)'
      
        '  inner join pavilhao on (pavilhao.id_pavilhao = interno.idpavil' +
        'hao)'
      '  inner join galeria on (galeria.id_galeria = interno.idgaleria)'
      '  inner join solario on (solario.id_solario = interno.idsolario)'
      '  inner join cela on (cela.id_cela = interno.idcela)')
    Left = 152
    Top = 74
  end
end
