inherited FrmCadastroFaltasDisciplinares: TFrmCadastroFaltasDisciplinares
  Caption = 'Cadastro de Faltas Disciplinares'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TUniPanel
    inherited Salvar: TUniBitBtn
      Top = 147
      ExplicitTop = 147
    end
  end
  inherited PanelModeloCadastro: TUniPanel
    inherited PageControlModeloCadastro: TUniPageControl
      inherited TabSheetCadastro: TUniTabSheet
        inherited PanelCadastro: TUniPanel
          object Label2: TUniLabel
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            TabOrder = 1
          end
          object Label3: TUniLabel
            Left = 72
            Top = 16
            Width = 74
            Height = 13
            Caption = 'Falta Disciplinar'
            TabOrder = 2
          end
          object Label4: TUniLabel
            Left = 16
            Top = 64
            Width = 124
            Height = 13
            Caption = 'Tempo Reabilita'#231#227'o (Dias)'
            TabOrder = 3
          end
          object Label5: TUniLabel
            Left = 192
            Top = 64
            Width = 47
            Height = 13
            Caption = 'Tipo Falta'
            TabOrder = 4
          end
          object DBEditcodigo: TUniDBEdit
            Left = 16
            Top = 32
            Width = 49
            Height = 21
            Enabled = False
            DataField = 'ID_FALTA_DISCIPLINAR'
            DataSource = DsCadastro
            TabOrder = 5
            Color = clWindow
          end
          object DBEdit2: TUniDBEdit
            Left = 72
            Top = 32
            Width = 545
            Height = 21
            DataField = 'FALTA_DISCIPLINAR'
            DataSource = DsCadastro
            CharCase = ecUpperCase
            TabOrder = 6
            Color = clWindow
          end
          object DBEdit3: TUniDBEdit
            Left = 16
            Top = 80
            Width = 169
            Height = 21
            DataField = 'TEMPOREABILITACAO'
            DataSource = DsCadastro
            TabOrder = 7
            Color = clWindow
          end
          object DBComboBox1: TUniDBComboBox
            Left = 192
            Top = 80
            Width = 265
            Height = 21
            DataField = 'TIPOFALTA'
            DataSource = DsCadastro
            Items.Strings = (
              'LEVE'
              'M'#201'DIA'
              'GRAVE')
            ItemIndex = -1
            TabOrder = 8
          end
        end
      end
      inherited TabSheetConsulta: TUniTabSheet
        inherited DBGridConsulta: TUniDBGrid
          Columns = <>
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM falta_disciplinar')
  end
end
