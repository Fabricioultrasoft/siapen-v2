object FrmPresencaLocalRegistro: TFrmPresencaLocalRegistro
  Left = 0
  Top = 0
  ClientHeight = 544
  ClientWidth = 734
  Caption = 'Registro da presen'#231'a Local'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TUniLabel
    Left = 32
    Top = 8
    Width = 23
    Height = 13
    Caption = 'Data'
    TabOrder = 0
  end
  object Label2: TUniLabel
    Left = 168
    Top = 8
    Width = 23
    Height = 13
    Caption = 'Hora'
    TabOrder = 1
  end
  object Label8: TUniLabel
    Left = 32
    Top = 56
    Width = 71
    Height = 13
    Caption = 'Setor Trabalho'
    TabOrder = 2
  end
  object BtnLocalTrabalho: TUniSpeedButton
    Left = 344
    Top = 72
    Width = 23
    Height = 22
    Hint = 'Cadastrar Local de Trabalho'
    ShowHint = True
    ParentShowHint = False
    Caption = '...'
    ParentColor = False
    Color = clWindow
  end
  object Label3: TUniLabel
    Left = 34
    Top = 363
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    TabOrder = 4
  end
  object Label4: TUniLabel
    Left = 34
    Top = 427
    Width = 141
    Height = 13
    Caption = 'Justificativa da Falta Anterior'
    TabOrder = 5
  end
  object BtnConfirma: TUniButton
    Left = 250
    Top = 516
    Width = 100
    Height = 25
    Caption = 'Confirma'
    TabOrder = 6
  end
  object BtnCancela: TUniButton
    Left = 378
    Top = 516
    Width = 100
    Height = 25
    Caption = 'Cancela'
    TabOrder = 7
  end
  object adpDBDateTimePicker1: TUniDBDateTimePicker
    Left = 32
    Top = 24
    Width = 121
    Height = 21
    DateTime = 41514.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 8
    DataField = 'DATA_PRESENCA'
  end
  object DBEdit1: TUniDBEdit
    Left = 168
    Top = 24
    Width = 80
    Height = 21
    DataField = 'HORA_PRESENCA'
    TabOrder = 9
    Color = clWindow
  end
  object DBLookupComboBoxsetortrabalho: TUniDBLookupComboBox
    Left = 32
    Top = 72
    Width = 313
    Height = 21
    ListField = 'SETOR_TRABALHO'
    ListSource = Dm.DsSetorTrabalho
    KeyField = 'ID_SETOR_TRABALHO'
    ListFieldIndex = 0
    DataField = 'IDSETOR_TRABALHO'
    TabOrder = 10
  end
  object DBMemo1: TUniDBMemo
    Left = 34
    Top = 379
    Width = 673
    Height = 44
    DataField = 'OBS'
    TabOrder = 11
    Color = clWindow
  end
  object DBMemo2: TUniDBMemo
    Left = 34
    Top = 443
    Width = 673
    Height = 60
    DataField = 'JUSTIFICA_FALTA'
    TabOrder = 12
    Color = clWindow
  end
  object DBRadioGroup1: TUniDBComboBox
    Left = 276
    Top = 24
    Width = 225
    Height = 25
    Hint = 'Aparecer ao Judici'#225'rio:'
    DataField = 'REGISTRO_JUDICIARIO'
    Items.Strings = (
      'S'
      'N')
    ItemIndex = -1
    TabOrder = 13
  end
  object PageControl1: TUniPageControl
    Left = 32
    Top = 127
    Width = 681
    Height = 227
    ActivePage = TabSheet1
    TabOrder = 14
    object TabSheet1: TUniTabSheet
      Caption = 'Endere'#231'o do Conv'#234'nio'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object PanelCadastro: TUniPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 199
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object Label7: TUniLabel
          Left = 16
          Top = 56
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          TabOrder = 10
        end
        object Label9: TUniLabel
          Left = 16
          Top = 144
          Width = 33
          Height = 13
          Caption = 'Cidade'
          TabOrder = 11
        end
        object Label10: TUniLabel
          Left = 520
          Top = 96
          Width = 19
          Height = 13
          Caption = 'CEP'
          TabOrder = 12
        end
        object Label11: TUniLabel
          Left = 416
          Top = 55
          Width = 28
          Height = 13
          Caption = 'Bairro'
          TabOrder = 13
        end
        object Label12: TUniLabel
          Left = 16
          Top = 97
          Width = 65
          Height = 13
          Caption = 'Complemento'
          TabOrder = 14
        end
        object Label13: TUniLabel
          Left = 342
          Top = 142
          Width = 61
          Height = 13
          Caption = 'Respons'#225'vel'
          TabOrder = 15
        end
        object Label14: TUniLabel
          Left = 440
          Top = 16
          Width = 25
          Height = 13
          Caption = 'CNPJ'
          TabOrder = 16
        end
        object Label6: TUniLabel
          Left = 96
          Top = 16
          Width = 71
          Height = 13
          Caption = 'Setor Trabalho'
          TabOrder = 17
        end
        object Label5: TUniLabel
          Left = 16
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
          TabOrder = 18
        end
        object DBEdit3: TUniDBEdit
          Left = 16
          Top = 72
          Width = 393
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DsSetorTrabalho
          TabOrder = 1
          Color = clWindow
          ReadOnly = True
        end
        object DBEdit4: TUniDBEdit
          Left = 520
          Top = 112
          Width = 121
          Height = 21
          DataField = 'CEP'
          DataSource = DsSetorTrabalho
          TabOrder = 4
          Color = clWindow
          ReadOnly = True
        end
        object DBEdit5: TUniDBEdit
          Left = 416
          Top = 71
          Width = 225
          Height = 21
          DataField = 'BAIRRO'
          DataSource = DsSetorTrabalho
          TabOrder = 2
          Color = clWindow
          ReadOnly = True
        end
        object DBEdit6: TUniDBEdit
          Left = 16
          Top = 113
          Width = 489
          Height = 21
          DataField = 'COMPLEMENTO'
          DataSource = DsSetorTrabalho
          TabOrder = 3
          Color = clWindow
          ReadOnly = True
        end
        object DBEdit7: TUniDBEdit
          Left = 342
          Top = 158
          Width = 300
          Height = 21
          DataField = 'RESPONSAVEL'
          DataSource = DsSetorTrabalho
          TabOrder = 6
          Color = clWindow
          ReadOnly = True
        end
        object DBEditCNPJ: TUniDBEdit
          Left = 440
          Top = 32
          Width = 201
          Height = 21
          DataField = 'CNPJ'
          DataSource = DsSetorTrabalho
          TabOrder = 0
          Color = clWindow
          ReadOnly = True
        end
        object DBLookupComboBox1: TUniDBLookupComboBox
          Left = 16
          Top = 158
          Width = 321
          Height = 21
          ListField = 'CIDADE'
          ListSource = Dm.DSCIDADE
          KeyField = 'ID_CIDADE'
          ListFieldIndex = 0
          DataField = 'ID_CIDADE'
          DataSource = DsSetorTrabalho
          TabOrder = 5
        end
        object DBEdit2: TUniDBEdit
          Left = 96
          Top = 32
          Width = 337
          Height = 21
          DataField = 'SETOR_TRABALHO'
          DataSource = DsSetorTrabalho
          TabOrder = 7
          Color = clWindow
          ReadOnly = True
        end
        object DBEditcodigo: TUniDBEdit
          Left = 16
          Top = 32
          Width = 73
          Height = 21
          Enabled = False
          DataField = 'ID_SETOR_TRABALHO'
          DataSource = DsSetorTrabalho
          TabOrder = 8
          Color = clWindow
          ReadOnly = True
        end
      end
    end
    object TabSheet2: TUniTabSheet
      Caption = 'Endere'#231'o do Aut'#244'nomo / CTPS'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object Label15: TUniLabel
        Left = 0
        Top = 11
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
        TabOrder = 2
      end
      object Label16: TUniLabel
        Left = 0
        Top = 107
        Width = 28
        Height = 13
        Caption = 'Bairro'
        TabOrder = 3
      end
      object DBMemo3: TUniDBMemo
        Left = 0
        Top = 27
        Width = 669
        Height = 70
        DataField = 'ENDERECO'
        TabOrder = 0
        Color = clWindow
      end
      object DBEdit8: TUniDBEdit
        Left = 0
        Top = 122
        Width = 350
        Height = 21
        DataField = 'BAIRRO'
        TabOrder = 1
        Color = clWindow
      end
    end
  end
  object DBRadioGroup2: TUniDBComboBox
    Left = 118
    Top = 96
    Width = 587
    Height = 25
    Hint = 'Tipo de Trabalho'
    DataField = 'TIPO_TRABALHO'
    Items.Strings = (
      'Conv'#234'nios'
      'Aut'#244'nomos'
      'CTPS'
      'Outros')
    ItemIndex = -1
    TabOrder = 15
  end
  object UniLabel1: TUniLabel
    Left = 276
    Top = 8
    Width = 110
    Height = 13
    Caption = 'Aparecer ao Judici'#225'rio:'
    TabOrder = 16
  end
  object UniLabel2: TUniLabel
    Left = 32
    Top = 99
    Width = 80
    Height = 13
    Caption = 'Tipo de Trabalho'
    TabOrder = 17
  end
  object DsSetorTrabalho: TUniDataSource
    DataSet = CdsSetorTrabalho
    Left = 628
    Top = 16
  end
  object CdsSetorTrabalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSetorTrabalho'
    Left = 600
    Top = 16
  end
  object DspSetorTrabalho: TDataSetProvider
    DataSet = SqlSetorTrabalho
    Left = 572
    Top = 16
  end
  object SqlSetorTrabalho: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_SETOR_TRABALHO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SETOR_TRABALHO WHERE ID_SETOR_TRABALHO = :ID_SETOR' +
        '_TRABALHO')
    Left = 544
    Top = 16
  end
end
