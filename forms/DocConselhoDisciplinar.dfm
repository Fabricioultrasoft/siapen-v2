inherited FrmDocConselhoDisciplinar: TFrmDocConselhoDisciplinar
  Caption = 'FrmDocConselhoDisciplinar'
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
            inherited UniTabSheet1: TUniTabSheet
              inherited UniPanel10: TUniPanel
                Visible = False
              end
              inherited UniPanel11: TUniPanel
                inherited UniDBGrid1: TUniDBGrid
                  Columns = <
                    item
                      FieldName = 'CENTRAL'
                      Title.Caption = 'Aviso p/ Central'
                      Width = 85
                      Visible = True
                      Expanded = False
                      CheckBoxField.FieldValues = 'true;false'
                    end
                    item
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o (Clique para visualizar)'
                      Width = 180
                      Visible = True
                      Expanded = False
                      CheckBoxField.FieldValues = 'true;false'
                    end
                    item
                      FieldName = 'DATA'
                      Title.Caption = 'Data'
                      Width = 80
                      Visible = True
                      Expanded = False
                      CheckBoxField.FieldValues = 'true;false'
                    end
                    item
                      FieldName = 'IDDOCUMENTOS_PROCESSO'
                      Title.Caption = 'ID'
                      Width = 64
                      Visible = True
                      Expanded = False
                      CheckBoxField.FieldValues = 'true;false'
                    end>
                end
                inherited UniBitBtnComunicarCentral: TUniBitBtn
                  Visible = False
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
              ReadOnly = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'RGI'
              Title.Caption = 'Prontu'#225'rio'
              Width = 60
              Visible = True
              ReadOnly = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'NUMERO_ROUPA'
              Title.Caption = 'Roupa'
              Width = 40
              Visible = True
              ReadOnly = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'SIGLA'
              Title.Caption = 'Sigla'
              Width = 60
              Visible = True
              ReadOnly = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end
            item
              FieldName = 'STATUS'
              Title.Caption = 'Status'
              Width = 56
              Visible = True
              ReadOnly = True
              Expanded = False
              CheckBoxField.FieldValues = 'true;false'
            end>
        end
      end
    end
  end
end
