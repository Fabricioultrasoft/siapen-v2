inherited FrmCentralDocumentosDigitalizados: TFrmCentralDocumentosDigitalizados
  Caption = 'Central de Documentos Digitalizados'
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
            inherited UniTabSheet1: TUniTabSheet
              inherited UniPanel11: TUniPanel
                inherited UniDBGrid1: TUniDBGrid
                  Columns = <
                    item
                      FieldName = 'CENTRAL'
                      Title.Caption = 'Aviso p/ Central'
                      Width = 85
                      Visible = True
                      Expanded = False
                    end
                    item
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o (Clique para visualizar)'
                      Width = 180
                      Visible = True
                      Expanded = False
                    end
                    item
                      FieldName = 'DATA'
                      Title.Caption = 'Data'
                      Width = 80
                      Visible = True
                      Expanded = False
                    end
                    item
                      FieldName = 'IDDOCUMENTOS_PROCESSO'
                      Title.Caption = 'ID'
                      Width = 64
                      Visible = True
                      Expanded = False
                    end>
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
  inherited SqlConsultaBackup: TSQLQuery
    SQL.Strings = (
      'select FIRST 100 distinct'
      
        '    iif(d.comunicar_central='#39'S'#39',iif(d.data_inicio_central is nul' +
        'l,'#39'1-Prioridade'#39',iif(d.data_fim_central is null, '#39'2-Em Andamento' +
        #39', '#39'3-Finalizado'#39')),'#39'Normal'#39') as Central,'
      '    d.descricao,'
      '    interno.foto,'
      '    interno.nome_interno,'
      '    interno.rgi,'
      '    INTERNO.VULGO,'
      '    INTERNO.FACCAO,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.numero_roupa,'
      '    iif(coalesce(interno.st,'#39'I'#39')='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito'
      'from interno I'
      
        '   inner join DOCUMENTOS_PROCESSO d  on (d.id_interno = interno.' +
        'id_interno)'
      'where coalesce(interno.nome_interno,'#39#39')<>'#39#39)
  end
  inherited SqlConsulta: TSQLQuery
    SQL.Strings = (
      'select FIRST 100 distinct'
      
        '    iif(d.comunicar_central='#39'S'#39',iif(d.data_inicio_central is nul' +
        'l,'#39'1-Prioridade'#39',iif(d.data_fim_central is null, '#39'2-Em Andamento' +
        #39', '#39'3-Finalizado'#39')),'#39'Normal'#39') as Central,'
      '    d.descricao,'
      '    interno.foto,'
      '    interno.nome_interno,'
      '    interno.rgi,'
      '    INTERNO.VULGO,'
      '    INTERNO.FACCAO,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.numero_roupa,'
      '    iif(coalesce(interno.st,'#39'I'#39')='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito'
      'from interno'
      
        '   inner join DOCUMENTOS_PROCESSO d  on (d.id_interno = interno.' +
        'id_interno)'
      'where coalesce(interno.nome_interno,'#39#39')<>'#39#39
      'order by 1, d.data, d.descricao, i.nome')
  end
  inherited dsdataservidor: TDataSource
    Left = 98
    Top = 128
  end
  inherited dstdataservidor: TDataSetProvider
    Left = 44
    Top = 128
  end
  inherited SQLdataservidor: TSQLQuery
    Left = 16
    Top = 128
  end
  inherited cdsdataservidor: TClientDataSet
    Left = 72
    Top = 128
  end
end
