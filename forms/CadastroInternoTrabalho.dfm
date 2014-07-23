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
            inherited TabSheetPrincipal: TUniTabSheet
              ExplicitLeft = 4
              ExplicitTop = 24
              ExplicitWidth = 767
              ExplicitHeight = 480
            end
            inherited TabSheetDadosGerais: TUniTabSheet
              ExplicitLeft = 4
              ExplicitTop = 24
              ExplicitWidth = 767
              ExplicitHeight = 480
            end
            inherited TabSheetAdvogados: TUniTabSheet
              ExplicitLeft = 4
              ExplicitTop = 24
              ExplicitWidth = 767
              ExplicitHeight = 480
              inherited DBGrid3: TUniDBGrid
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
            end
            inherited TabSheetEndereco: TUniTabSheet
              ExplicitLeft = 4
              ExplicitTop = 24
              ExplicitWidth = 767
              ExplicitHeight = 480
            end
            inherited TabSheetHistorico: TUniTabSheet
              ExplicitLeft = 4
              ExplicitTop = 24
              ExplicitWidth = 767
              ExplicitHeight = 480
              inherited DBGrid1: TUniDBGrid
                Columns = <
                  item
                    FieldName = 'DATA_HORA'
                    Title.Caption = 'Data'
                    Width = 80
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'SETOR'
                    Title.Caption = 'Setor'
                    Width = 80
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 400
                    Visible = True
                    Expanded = False
                  end>
              end
            end
            inherited TabSheetFotos: TUniTabSheet
              ExplicitLeft = 4
              ExplicitTop = 24
              ExplicitWidth = 767
              ExplicitHeight = 480
              inherited UniPanelFoto: TUniPanel
                inherited DBGrid4: TUniDBGrid
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
              end
            end
            inherited TabSheetMovAnterior: TUniTabSheet
              ExplicitLeft = 4
              ExplicitTop = 24
              ExplicitWidth = 767
              ExplicitHeight = 480
            end
            inherited TabSheetMapa: TUniTabSheet
              ExplicitLeft = 4
              ExplicitTop = 24
              ExplicitWidth = 767
              ExplicitHeight = 480
            end
            object UniTabSheetTrabalho: TUniTabSheet
              Caption = 'Trabalho'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 775
              ExplicitHeight = 508
              object PageControl2: TUniPageControl
                Left = 0
                Top = 0
                Width = 767
                Height = 480
                ActivePage = TabSheet5
                TabOrder = 0
                Align = alClient
                Anchors = [akLeft, akTop, akRight, akBottom]
                ExplicitWidth = 724
                ExplicitHeight = 464
                object TabSheet5: TUniTabSheet
                  Caption = 'Lan'#231'amento'
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 256
                  ExplicitHeight = 128
                  object UniLabel5: TUniLabel
                    Left = 152
                    Top = 16
                    Width = 23
                    Height = 13
                    Caption = 'Data'
                    TabOrder = 5
                  end
                  object UniLabel6: TUniLabel
                    Left = 278
                    Top = 16
                    Width = 74
                    Height = 13
                    Caption = 'Fun'#231#227'o Interno'
                    TabOrder = 6
                  end
                  object UniLabel7: TUniLabel
                    Left = 216
                    Top = 112
                    Width = 20
                    Height = 13
                    Caption = 'OBS'
                    TabOrder = 7
                  end
                  object UniLabel9: TUniLabel
                    Left = 336
                    Top = 64
                    Width = 71
                    Height = 13
                    Caption = 'Setor Trabalho'
                    TabOrder = 8
                  end
                  object UniLabel10: TUniLabel
                    Left = 16
                    Top = 16
                    Width = 94
                    Height = 13
                    Caption = 'N'#250'mero Documento'
                    TabOrder = 9
                  end
                  object UniLabel11: TUniLabel
                    Left = 16
                    Top = 64
                    Width = 69
                    Height = 13
                    Caption = 'Local Trabalho'
                    TabOrder = 10
                  end
                  object Label74: TUniLabel
                    Left = 16
                    Top = 112
                    Width = 83
                    Height = 13
                    Caption = 'Tipo de Atividade'
                    TabOrder = 11
                  end
                  object UniDBGrid1: TUniDBGrid
                    Left = 16
                    Top = 192
                    Width = 625
                    Height = 169
                    TitleFont.Name = 'MS Sans Serif'
                    DataSource = dshistorico_trabalho
                    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    WebOptions.LoadMaskMsg = 'Please wait...'
                    TabOrder = 4
                    Columns = <
                      item
                        FieldName = 'DOCUMENTO'
                        Title.Caption = 'Documento'
                        Width = 71
                        Visible = True
                        Expanded = False
                      end
                      item
                        FieldName = 'DATA'
                        Title.Caption = 'Data Trabalho'
                        Width = 87
                        Visible = True
                        Expanded = False
                      end
                      item
                        FieldName = 'Local Trabalho'
                        Title.Caption = 'Local Trabalho'
                        Width = 139
                        Visible = True
                        Expanded = False
                      end
                      item
                        FieldName = 'Setor Trabalho'
                        Title.Caption = 'Setor Trabalho'
                        Width = 118
                        Visible = True
                        Expanded = False
                      end
                      item
                        FieldName = 'Fun'#231#227'o'
                        Title.Caption = 'Fun'#231#227'o'
                        Width = 101
                        Visible = True
                        Expanded = False
                      end
                      item
                        FieldName = 'OBS'
                        Title.Caption = 'OBS'
                        Width = 257
                        Visible = True
                        Expanded = False
                      end
                      item
                        FieldName = 'DATA_SAIDA'
                        Title.Caption = 'Data Saida'
                        Width = 92
                        Visible = True
                        Expanded = False
                      end
                      item
                        FieldName = 'MOTIVO_SAIDA'
                        Title.Caption = 'Motivo Saida'
                        Width = 141
                        Visible = True
                        Expanded = False
                      end>
                  end
                  object DBEditdtsetor: TUniDBEdit
                    Left = 152
                    Top = 32
                    Width = 121
                    Height = 21
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
                    DataField = 'TIPO_ATIVIDADE'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'INTERNA'
                      'EXTERNA')
                    ItemIndex = -1
                    TabOrder = 2
                  end
                end
                object TabSheet8: TUniTabSheet
                  Caption = 'Hor'#225'rios'
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 256
                  ExplicitHeight = 128
                  object UniLabel12: TUniLabel
                    Left = 152
                    Top = 72
                    Width = 119
                    Height = 13
                    Caption = 'Hor'#225'rio Entrada Semanal'
                    TabOrder = 13
                  end
                  object UniLabel13: TUniLabel
                    Left = 8
                    Top = 72
                    Width = 107
                    Height = 13
                    Caption = 'Hor'#225'rio Sa'#237'da Semanal'
                    TabOrder = 14
                  end
                  object UniLabel14: TUniLabel
                    Left = 296
                    Top = 24
                    Width = 65
                    Height = 13
                    Caption = 'Turma Said'#227'o'
                    TabOrder = 15
                  end
                  object UniLabel15: TUniLabel
                    Left = 152
                    Top = 24
                    Width = 111
                    Height = 13
                    Caption = 'Hor'#225'rio Entrada Said'#227'o'
                    TabOrder = 16
                  end
                  object Label68: TUniLabel
                    Left = 8
                    Top = 24
                    Width = 99
                    Height = 13
                    Caption = 'Hor'#225'rio Saida Said'#227'o'
                    TabOrder = 17
                  end
                  object UniLabel16: TUniLabel
                    Left = 440
                    Top = 121
                    Width = 115
                    Height = 13
                    Caption = 'Hor'#225'rio Entrada Sabado'
                    TabOrder = 18
                  end
                  object UniLabel17: TUniLabel
                    Left = 296
                    Top = 121
                    Width = 103
                    Height = 13
                    Caption = 'Hor'#225'rio Sa'#237'da Sabado'
                    TabOrder = 19
                  end
                  object UniLabel18: TUniLabel
                    Left = 440
                    Top = 169
                    Width = 120
                    Height = 13
                    Caption = 'Hor'#225'rio Entrada Domingo'
                    TabOrder = 20
                  end
                  object Label73: TUniLabel
                    Left = 296
                    Top = 169
                    Width = 108
                    Height = 13
                    Caption = 'Hor'#225'rio Sa'#237'da Domingo'
                    TabOrder = 21
                  end
                  object UniLabel19: TUniLabel
                    Left = 376
                    Top = 24
                    Width = 27
                    Height = 13
                    Caption = 'Corte'
                    TabOrder = 22
                  end
                  object Label91: TUniLabel
                    Left = 296
                    Top = 216
                    Width = 341
                    Height = 13
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
                    Caption = 'Para dias de folga deixe em branco:'
                    TabOrder = 10
                    object Label76: TUniLabel
                      Left = 2
                      Top = 24
                      Width = 109
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Segunda'
                      TabOrder = 11
                    end
                    object UniLabel20: TUniLabel
                      Left = 146
                      Top = 24
                      Width = 121
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Segunda'
                      TabOrder = 12
                    end
                    object UniLabel21: TUniLabel
                      Left = 2
                      Top = 66
                      Width = 94
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Ter'#231'a'
                      TabOrder = 13
                    end
                    object UniLabel22: TUniLabel
                      Left = 146
                      Top = 66
                      Width = 106
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Ter'#231'a'
                      TabOrder = 14
                    end
                    object UniLabel23: TUniLabel
                      Left = 2
                      Top = 108
                      Width = 101
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Quarta'
                      TabOrder = 15
                    end
                    object UniLabel24: TUniLabel
                      Left = 146
                      Top = 108
                      Width = 113
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Quarta'
                      TabOrder = 16
                    end
                    object UniLabel25: TUniLabel
                      Left = 2
                      Top = 150
                      Width = 99
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Quinta'
                      TabOrder = 17
                    end
                    object UniLabel26: TUniLabel
                      Left = 146
                      Top = 150
                      Width = 111
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Quinta'
                      TabOrder = 18
                    end
                    object UniLabel27: TUniLabel
                      Left = 2
                      Top = 192
                      Width = 95
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Sexta'
                      TabOrder = 19
                    end
                    object Label90: TUniLabel
                      Left = 146
                      Top = 192
                      Width = 107
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Sexta'
                      TabOrder = 20
                    end
                    object UniDBEdit2: TUniDBEdit
                      Left = 2
                      Top = 40
                      Width = 134
                      Height = 21
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
                    Caption = 'Copiar para todos'
                    TabOrder = 11
                  end
                  object UniDBMemo1: TUniDBMemo
                    Left = 296
                    Top = 232
                    Width = 345
                    Height = 121
                    DataField = 'BLOQUEIO_TRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 12
                    Color = clWindow
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
              FieldName = 'STATUS'
              Title.Caption = 'Status'
              Width = 56
              Visible = True
              Expanded = False
            end>
        end
      end
    end
  end
  inherited dsdataservidor: TDataSource
    Left = 552
    Top = 72
  end
  inherited dstdataservidor: TDataSetProvider
    Left = 504
    Top = 72
  end
  inherited SQLdataservidor: TSQLQuery
    Left = 480
    Top = 72
  end
  inherited cdsdataservidor: TClientDataSet
    Left = 526
    Top = 72
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
      'select *'
      'from historico_trabalho'
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
    object cdshistorico_trabalhoID_HISTORICO_TRABALHO: TIntegerField
      FieldName = 'ID_HISTORICO_TRABALHO'
      Required = True
    end
    object cdshistorico_trabalhoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object cdshistorico_trabalhoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdshistorico_trabalhoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdshistorico_trabalhoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdshistorico_trabalhoID_SETOR_TRABALHO: TIntegerField
      FieldName = 'ID_SETOR_TRABALHO'
    end
    object cdshistorico_trabalhoID_FUNCAO_INTERNO: TIntegerField
      FieldName = 'ID_FUNCAO_INTERNO'
    end
    object cdshistorico_trabalhoOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdshistorico_trabalhoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object cdshistorico_trabalhoID_LOCAL_TRABALHO: TIntegerField
      FieldName = 'ID_LOCAL_TRABALHO'
    end
    object cdshistorico_trabalhoDATA_SAIDA: TSQLTimeStampField
      FieldName = 'DATA_SAIDA'
    end
    object cdshistorico_trabalhoMOTIVO_SAIDA: TStringField
      FieldName = 'MOTIVO_SAIDA'
      Size = 100
    end
    object cdshistorico_trabalhoSetorTrabalho: TStringField
      FieldKind = fkLookup
      FieldName = 'Setor Trabalho'
      LookupDataSet = Dm.CdsSetorTrabalho
      LookupKeyFields = 'ID_SETOR_TRABALHO'
      LookupResultField = 'SETOR_TRABALHO'
      KeyFields = 'ID_SETOR_TRABALHO'
      Size = 50
      Lookup = True
    end
    object cdshistorico_trabalhoLocalTrabalho: TStringField
      FieldKind = fkLookup
      FieldName = 'Local Trabalho'
      LookupDataSet = Dm.cdslocaltrabalho
      LookupKeyFields = 'ID_LOCAL_TRABALHO'
      LookupResultField = 'LOCAL_TRABALHO'
      KeyFields = 'ID_LOCAL_TRABALHO'
      Size = 50
      Lookup = True
    end
    object cdshistorico_trabalhoFuno: TStringField
      FieldKind = fkLookup
      FieldName = 'Fun'#231#227'o'
      LookupDataSet = Dm.CDSFUNCAOINTERNO
      LookupKeyFields = 'ID_FUNCAO_INTERNO'
      LookupResultField = 'FUNCAO_INTERNO'
      KeyFields = 'ID_FUNCAO_INTERNO'
      Size = 50
      Lookup = True
    end
    object cdshistorico_trabalhoDOCUMENTO_DESCLASSIFICACAO: TStringField
      FieldName = 'DOCUMENTO_DESCLASSIFICACAO'
      Size = 50
    end
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
end
