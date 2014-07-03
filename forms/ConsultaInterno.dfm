object FrmConsultaInterno: TFrmConsultaInterno
  Left = 0
  Top = 0
  ClientHeight = 366
  ClientWidth = 1110
  Caption = 'Consulta de Interno'
  OnShow = UniFormShow
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFoto: TUniPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 366
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    ExplicitLeft = -2
    object DBImage1: TUniDBImage
      Left = 3
      Top = 101
      Width = 129
      Height = 137
      DataField = 'FOTO'
      DataSource = DsCadastro
      Stretch = True
    end
    object ToolBarSetores: TUniToolBar
      Left = 1
      Top = 344
      Width = 135
      Height = 22
      ButtonWidth = 119
      BorderWidth = 0
      ShowCaptions = True
      Anchors = [akLeft, akRight, akBottom]
      Align = alBottom
      TabOrder = 2
      object ToolButtonJuridico: TUniToolButton
        Left = 0
        Top = 0
        ImageIndex = 23
        Caption = 'Ficha do Interno.fr3'
      end
    end
    object DBGrid1: TUniDBGrid
      Left = 3
      Top = 256
      Width = 129
      Height = 78
      Visible = False
      TitleFont.Name = 'MS Sans Serif'
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      WebOptions.LoadMaskMsg = 'Please wait...'
      TabOrder = 1
    end
  end
  object PageControl1: TUniPageControl
    Left = 137
    Top = 0
    Width = 973
    Height = 366
    ActivePage = TabSheet1
    TabOrder = 1
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object TabSheet1: TUniTabSheet
      Caption = 'Nome'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object Label1: TUniLabel
        Left = 10
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Localizar:'
        TabOrder = 5
      end
      object RadioGroupStatus: TUniRadioGroup
        Left = 575
        Top = -1
        Width = 74
        Height = 61
        Items.Strings = (
          'Ativo'
          'Todos')
        ItemIndex = 0
        TabOrder = 2
      end
      object DBGridConsulta: TUniDBGrid
        Left = 10
        Top = 65
        Width = 1000
        Height = 200
        TitleFont.Color = clBlack
        TitleFont.Name = 'MS Sans Serif'
        DataSource = DsConsulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        WebOptions.LoadMaskMsg = 'Please wait...'
        Align = alCustom
        TabOrder = 3
        Columns = <
          item
            FieldName = 'NOME_INTERNO'
            Title.Caption = 'Nome do Interno'
            Width = 200
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
            FieldName = 'MAE'
            Title.Caption = 'M'#227'e'
            Width = 144
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'NUMERO_ROUPA'
            Title.Caption = 'Roupa'
            Width = 80
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
            FieldName = 'PAVILHAO'
            Title.Caption = 'Pavilh'#227'o'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'GALERIA'
            Title.Caption = 'Galeria'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'SOLARIO'
            Title.Caption = 'Solario'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'CELA'
            Title.Caption = 'Cela'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'ST'
            Title.Caption = 'Status'
            Width = 64
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'EM_TRANSITO'
            Title.Caption = 'Transito'
            Width = 76
            Visible = True
            Expanded = False
          end>
      end
      object BitBtn1: TUniBitBtn
        Left = 575
        Top = 285
        Width = 75
        Height = 25
        Caption = '&Sair'
        TabOrder = 4
      end
      object Editlocalizar: TUniEdit
        Left = 159
        Top = 18
        Width = 353
        Height = 32
        CharCase = ecUpperCase
        ParentFont = False
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        TabOrder = 1
        Color = clBlack
        CheckChangeDelay = 500
        OnChange = EditlocalizarChange
      end
      object RadioGroupTipoLocalizar: TUniRadioGroup
        Left = 56
        Top = 2
        Width = 97
        Height = 56
        Items.Strings = (
          'Prontu'#225'rio'
          'Nome')
        ItemIndex = 1
        TabOrder = 0
      end
    end
    object TabSheet2: TUniTabSheet
      Caption = 'Vulgo'
      object Label2: TUniLabel
        Left = 10
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Localizar:'
        TabOrder = 3
      end
      object Editlocalizarvulgo: TUniEdit
        Left = 60
        Top = 15
        Width = 500
        Height = 32
        CharCase = ecUpperCase
        ParentFont = False
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        TabOrder = 0
        Color = clNone
        CheckChangeDelay = 500
        OnChange = EditlocalizarvulgoChange
      end
      object DBGridVulgo: TUniDBGrid
        Left = 10
        Top = 65
        Width = 1000
        Height = 200
        TitleFont.Color = clBlack
        TitleFont.Name = 'MS Sans Serif'
        DataSource = dsvulgo
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        WebOptions.LoadMaskMsg = 'Please wait...'
        TabOrder = 1
        Columns = <
          item
            FieldName = 'VULGO'
            Title.Caption = 'Vulgo'
            Width = 158
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'NOME_INTERNO'
            Title.Caption = 'Nome do Interno'
            Width = 400
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
            Width = 64
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
            FieldName = 'PAVILHAO'
            Title.Caption = 'Pavilh'#227'o'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'GALERIA'
            Title.Caption = 'Galeria'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'SOLARIO'
            Title.Caption = 'Solario'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'CELA'
            Title.Caption = 'Cela'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Width = 64
            Visible = True
            Expanded = False
          end>
      end
      object BitBtn3: TUniBitBtn
        Left = 680
        Top = 275
        Width = 75
        Height = 25
        Caption = '&Sair'
        TabOrder = 2
      end
    end
    object TabSheet3: TUniTabSheet
      Caption = 'Outro Nome'
      DesignSize = (
        965
        338)
      object Label3: TUniLabel
        Left = 10
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Localizar:'
        TabOrder = 3
      end
      object Editlocalizaoutronome: TUniEdit
        Left = 61
        Top = 15
        Width = 689
        Height = 32
        CharCase = ecUpperCase
        ParentFont = False
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        Color = clBlack
        CheckChangeDelay = 500
      end
      object DBGridOutroNome: TUniDBGrid
        Left = 10
        Top = 65
        Width = 1000
        Height = 200
        TitleFont.Color = clBlack
        TitleFont.Name = 'MS Sans Serif'
        DataSource = DSOUTRONOEM
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        WebOptions.LoadMaskMsg = 'Please wait...'
        TabOrder = 1
        Columns = <
          item
            FieldName = 'OUTRO_NOME'
            Title.Caption = 'Outro Nome'
            Width = 297
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'NOME_INTERNO'
            Title.Caption = 'Nome do Interno'
            Width = 400
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
            FieldName = 'PAVILHAO'
            Title.Caption = 'Pavilh'#227'o'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'GALERIA'
            Title.Caption = 'Galeria'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'SOLARIO'
            Title.Caption = 'Solario'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'CELA'
            Title.Caption = 'Cela'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Width = 64
            Visible = True
            Expanded = False
          end>
      end
      object BitBtn2: TUniBitBtn
        Left = 680
        Top = 275
        Width = 75
        Height = 25
        Caption = '&Sair'
        TabOrder = 2
      end
    end
    object TabSheet4: TUniTabSheet
      Caption = 'Filia'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object Label4: TUniLabel
        Left = 10
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Localizar:'
        TabOrder = 4
      end
      object DBGridFiliacao: TUniDBGrid
        Left = 10
        Top = 66
        Width = 1000
        Height = 200
        TitleFont.Color = clBlack
        TitleFont.Name = 'MS Sans Serif'
        DataSource = Dsfiliacao
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        WebOptions.LoadMaskMsg = 'Please wait...'
        Align = alCustom
        TabOrder = 2
        Columns = <
          item
            FieldName = 'NOME_INTERNO'
            Title.Caption = 'Nome do Interno'
            Width = 400
            Visible = True
            Font.Height = -13
            Font.Name = 'Lucida Console'
            Font.Style = [fsBold]
            Expanded = False
          end
          item
            FieldName = 'MAE'
            Title.Caption = 'M'#227'e'
            Width = 218
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'PAI'
            Title.Caption = 'Pai'
            Width = 214
            Visible = True
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
            FieldName = 'PAVILHAO'
            Title.Caption = 'Pavilh'#227'o'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'GALERIA'
            Title.Caption = 'Galeria'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'SOLARIO'
            Title.Caption = 'Solario'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'CELA'
            Title.Caption = 'Cela'
            Width = 60
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Width = 64
            Visible = True
            Expanded = False
          end>
      end
      object BitBtn4: TUniBitBtn
        Left = 680
        Top = 275
        Width = 75
        Height = 25
        Caption = '&Sair'
        TabOrder = 3
      end
      object Editfiliacao: TUniEdit
        Left = 60
        Top = 15
        Width = 500
        Height = 32
        CharCase = ecUpperCase
        ParentFont = False
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        TabOrder = 0
        Color = clBlack
        CheckChangeDelay = 500
        OnChange = EditfiliacaoChange
      end
      object RadioGroupfiliacao: TUniRadioGroup
        Left = 595
        Top = -2
        Width = 160
        Height = 61
        Items.Strings = (
          'M'#227'e'
          'Pai')
        Caption = 'Filtro'
        TabOrder = 1
      end
    end
  end
  object DSOUTRONOEM: TDataSource
    DataSet = CDSOUTRONOME
    Left = 741
    Top = 190
  end
  object CDSOUTRONOME: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOUTRONOME'
    Left = 713
    Top = 190
  end
  object DSPOUTRONOME: TDataSetProvider
    DataSet = SQLoutronome
    Left = 685
    Top = 190
  end
  object SQLoutronome: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select   interno.nome_interno,'
      '    interno.outro_nome,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.st,'
      '    interno.vulgo'
      'from cela'
      '   inner join interno on (cela.id_cela = interno.idcela)'
      
        '   inner join pavilhao on (interno.idpavilhao = pavilhao.id_pavi' +
        'lhao)'
      
        '   inner join unidade_penal on (pavilhao.id_up = unidade_penal.i' +
        'd_up)'
      
        '   inner join solario on (interno.idsolario = solario.id_solario' +
        ')'
      'WHERE ID_INTERNO = -1'
      ' order by nome_interno ')
    Left = 657
    Top = 190
  end
  object dsvulgo: TDataSource
    DataSet = cdsvulgo
    Left = 741
    Top = 142
  end
  object cdsvulgo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvulgo'
    Left = 713
    Top = 142
  end
  object dspvulgo: TDataSetProvider
    DataSet = SQLvulgo
    Left = 685
    Top = 142
  end
  object SQLvulgo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select   interno.nome_interno,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.st,'
      '    interno.vulgo'
      'from cela'
      '   inner join interno on (cela.id_cela = interno.idcela)'
      
        '   inner join pavilhao on (interno.idpavilhao = pavilhao.id_pavi' +
        'lhao)'
      
        '   inner join unidade_penal on (pavilhao.id_up = unidade_penal.i' +
        'd_up)'
      
        '   inner join solario on (interno.idsolario = solario.id_solario' +
        ')'
      'WHERE ID_INTERNO = -1'
      ' order by nome_interno ')
    Left = 657
    Top = 142
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select   interno.nome_interno,'
      '  interno.outro_nome,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.st,'
      '    interno.vulgo, '
      '    interno.numero_roupa,'
      '    interno.em_transito'
      'from cela'
      '   left join interno on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      ' left join galeria on (interno.idgaleria = galeria.id_galeria)'
      'WHERE ID_INTERNO = -1'
      ' order by nome_interno ')
    Left = 641
    Top = 46
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 685
    Top = 46
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 713
    Top = 46
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 741
    Top = 46
  end
  object Dsfiliacao: TDataSource
    DataSet = Cdsfiliacao
    Left = 741
    Top = 6
  end
  object Cdsfiliacao: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'Dspfiliacao'
    Left = 713
    Top = 6
  end
  object Dspfiliacao: TDataSetProvider
    DataSet = Sqlfiliacao
    Left = 685
    Top = 6
  end
  object Sqlfiliacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select   interno.nome_interno,'
      'interno.mae,'
      'interno.pai,'
      '  interno.outro_nome,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.st,'
      '    interno.vulgo'
      'from cela'
      '   inner join interno on (cela.id_cela = interno.idcela)'
      
        '   inner join pavilhao on (interno.idpavilhao = pavilhao.id_pavi' +
        'lhao)'
      
        '   inner join unidade_penal on (pavilhao.id_up = unidade_penal.i' +
        'd_up)'
      
        '   inner join solario on (interno.idsolario = solario.id_solario' +
        ')'
      'WHERE ID_INTERNO = -1'
      'order by nome_interno ')
    Left = 657
    Top = 6
  end
  object SqlSelectInterno: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select first 50'
      '    interno.nome_interno,'
      '    interno.mae,'
      '    interno.pai,'
      '    unidade_penal.sigla,'
      '    interno.outro_nome,'
      '    interno.rgi,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    galeria.galeria,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.vulgo,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario,'
      'COALESCE (interno.numero_roupa, '#39'N'#195'O TEM'#39') as numero_roupa,'
      'COALESCE (interno.em_transito, '#39'N'#39') as em_transito'
      'from interno'
      '   left join cela on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      '   left join galeria on (interno.idgaleria = galeria.id_galeria)'
      '   ')
    Left = 513
    Top = 162
  end
  object DsCadastro: TDataSource
    DataSet = CdsCadastro
    Left = 308
    Top = 104
  end
  object CdsCadastro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsConsulta
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCadastro'
    Left = 280
    Top = 104
  end
  object DspCadastro: TDataSetProvider
    DataSet = SqlCadastro
    Left = 252
    Top = 104
  end
  object SqlCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select ID_INTERNO,FOTO'
      'from interno'
      'where id_interno=:id_interno')
    Left = 224
    Top = 104
  end
end
