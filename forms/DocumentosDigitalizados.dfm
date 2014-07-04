inherited FrmDocumentosDigitalizados: TFrmDocumentosDigitalizados
  Caption = 'Documentos Digitalizados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelModeloCadastro: TUniPanel
    inherited PageControlModeloCadastro: TUniPageControl
      inherited TabSheetCadastro: TUniTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        inherited PanelCadastro: TUniPanel
          inherited PageControlInterno: TUniPageControl
            ActivePage = UniTabSheet1
            inherited TabSheetAdvogados: TUniTabSheet
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
            inherited TabSheetHistorico: TUniTabSheet
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
            object UniTabSheet1: TUniTabSheet
              Caption = 'Digitalizados'
              object UniDBGrid1: TUniDBGrid
                Left = 0
                Top = 78
                Width = 261
                Height = 402
                DataSource = DsDocumentoProcessos
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                WebOptions.LoadMaskMsg = 'Please wait...'
                OnCellClick = UniDBGrid1CellClick
                Align = alLeft
                Anchors = [akLeft, akTop, akBottom]
                TabOrder = 0
                Columns = <
                  item
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 64
                    Visible = True
                    Expanded = False
                  end>
              end
              object UniPanel10: TUniPanel
                Left = 0
                Top = 0
                Width = 767
                Height = 78
                Align = alTop
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 1
                ExplicitLeft = 3
                object UniBitBtnTodosDigitalizados: TUniBitBtn
                  Left = 3
                  Top = 47
                  Width = 258
                  Height = 25
                  Caption = 'Visualizar Todos os Documentos Digitalizados'
                  TabOrder = 1
                  OnClick = UniBitBtnTodosDigitalizadosClick
                end
                object UniEditDescricaoPDF: TUniEdit
                  Left = 354
                  Top = 49
                  Width = 260
                  CharCase = ecUpperCase
                  TabOrder = 2
                  Color = clWindow
                end
                object UniLabel5: TUniLabel
                  Left = 290
                  Top = 15
                  Width = 20
                  Height = 13
                  Caption = 'Tipo'
                  TabOrder = 3
                end
                object UniLabel6: TUniLabel
                  Left = 290
                  Top = 51
                  Width = 46
                  Height = 13
                  Caption = 'Descri'#231#227'o'
                  TabOrder = 4
                end
                object UniBitBtn3: TUniBitBtn
                  Left = 629
                  Top = 13
                  Width = 124
                  Height = 61
                  Glyph.Data = {
                    76060000424D7606000000000000360400002800000018000000180000000100
                    0800000000004002000000000000000000000001000000010000FF00FF009933
                    00009E380000A13B0000A13C0000A43E0000A6410000A9430000AB450000AD47
                    0000AF490000A3410B00B24D0000B5500000B8530000BB560000BF590000C25C
                    0000C5600000C8620000CB650000CC670000DB760000DD780000E9830000EA84
                    0000EB8A1000F7991700FEA11B00000000000000000000000000000000000000
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
                    0000000004080C0C0A0400000000000000000000000000000000081215121010
                    11151004000000000000000000000000000819150400000000020D1506000000
                    00000000000000000B1B1500000000000000000C150100000000000000000000
                    011C04000000000000000001150800000000000000000000011C010000040F10
                    0F040000110C00000000000000000000011C01000415100C0F150200100C0000
                    0000000000000000011C01000C12010001110A00100C00000000000000000000
                    011C0100110D000000100C00100C00000000000000000000011C0100100C0000
                    00100C00100C00000000000000000000011C0100100C000000100C00100C0000
                    0000000000000000011C0100100C000000100C00100C00000000000000000000
                    011C0100100C000000100C000C0800000000000000000000011C0100100C0000
                    00100C00000000000000000000000000011C0100100C000000100C0000000000
                    0000000000000000011C0100100C000000100C00000000000000000000000000
                    011C01000F0C000000100C00000000000000000000000000011C010001010000
                    00100C00000000000000000000000000011C01000000000000100C0000000000
                    0000000000000000011C01000000000000100C00000000000000000000000000
                    011C0C000000000004150800000000000000000000000000001A190800000006
                    1111010000000000000000000000000000011716121015151001000000000000
                    0000000000000000000000010101010101000000000000000000}
                  Caption = 'Anexar Novo'
                  TabOrder = 5
                  OnClick = UniBitBtn3Click
                end
                object UniDBLookupComboBoxTipoDocumento: TUniDBLookupComboBox
                  Left = 354
                  Top = 13
                  Width = 260
                  ListField = 'TIPODOCUMENTO'
                  ListSource = DsTipoDocumento
                  KeyField = 'ID_TIPO_DOCUMENTO'
                  ListFieldIndex = 0
                  TabOrder = 6
                end
              end
              object UniURLFramePdf: TUniURLFrame
                Left = 261
                Top = 78
                Width = 506
                Height = 402
                Align = alClient
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 2
                ParentColor = False
                Color = clBtnFace
                ExplicitLeft = 424
                ExplicitTop = 220
                ExplicitWidth = 320
                ExplicitHeight = 240
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TUniTabSheet
        ExplicitWidth = 9
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
  object SqlDocumentoProcessos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from DOCUMENTOS_PROCESSO'
      '')
    SQLConnection = Dm.Conexao
    Left = 169
    Top = 121
  end
  object DspDocumentoProcessos: TDataSetProvider
    DataSet = SqlDocumentoProcessos
    Left = 197
    Top = 121
  end
  object CdsDocumentoProcessos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDocumentoProcessos'
    Left = 225
    Top = 121
  end
  object DsDocumentoProcessos: TDataSource
    DataSet = CdsDocumentoProcessos
    Left = 253
    Top = 121
  end
  object DsTipoDocumento: TDataSource
    DataSet = CdsTipoDocumento
    Left = 253
    Top = 169
  end
  object CdsTipoDocumento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspTipoDocumento'
    Left = 225
    Top = 169
  end
  object DspTipoDocumento: TDataSetProvider
    DataSet = SqlTipoDocumento
    Left = 197
    Top = 169
  end
  object SqlTipoDocumento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TIPO_DOCUMENTO'
      '')
    SQLConnection = Dm.Conexao
    Left = 169
    Top = 169
  end
end
