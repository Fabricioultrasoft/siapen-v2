object FrmMenuRelatorio: TFrmMenuRelatorio
  Left = 0
  Top = 0
  ClientHeight = 142
  ClientWidth = 682
  Caption = 'Menu de Relat'#243'rios'
  OnShow = UniFormShow
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniBitBtnVisualizar: TUniBitBtn
    Left = 208
    Top = 88
    Width = 233
    Height = 25
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Preparando os dados...'
    ScreenMask.Target = Owner
    Caption = 'Visualizar'
    TabOrder = 2
    OnClick = UniBitBtnVisualizarClick
  end
  object UniComboBoxRelatorios: TUniComboBox
    Left = 48
    Top = 40
    Width = 593
    Height = 33
    ParentFont = False
    Font.Color = clLime
    Font.Height = -21
    TabOrder = 1
    ParentColor = False
    Color = clBlack
  end
  object UniLabel1: TUniLabel
    Left = 48
    Top = 16
    Width = 256
    Height = 13
    Caption = '* Selecione o relat'#243'rio, digite as iniciais para localizar.'
    TabOrder = 0
  end
end
