object FrmMotivoDispensaTrabalho: TFrmMotivoDispensaTrabalho
  Left = 0
  Top = 0
  ClientHeight = 262
  ClientWidth = 332
  Caption = 'Motivo Dispensa Trabalho'
  Color = clBtnFace
  OldCreateOrder = False
  FreeOnClose = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TUniLabel
    Left = 16
    Top = 83
    Width = 53
    Height = 20
    Caption = 'Motivo'
    ParentFont = False
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    TabOrder = 0
  end
  object Label2: TUniLabel
    Left = 16
    Top = 27
    Width = 93
    Height = 20
    Caption = 'Documento'
    ParentFont = False
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    TabOrder = 1
  end
  object Label3: TUniLabel
    Left = 184
    Top = 27
    Width = 40
    Height = 20
    Caption = 'Data'
    ParentFont = False
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    TabOrder = 2
  end
  object Memo1: TUniMemo
    Left = 16
    Top = 104
    Width = 297
    Height = 89
    Color = clWindow
    TabOrder = 3
  end
  object BitBtn1: TUniBitBtn
    Left = 206
    Top = 216
    Width = 105
    Height = 33
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    Caption = 'Confirmar'
    ModalResult = 1
    ParentFont = False
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    TabOrder = 4
    Default = True
  end
  object Editdocumento: TUniEdit
    Left = 16
    Top = 48
    Width = 153
    Height = 21
    TabOrder = 5
    Color = clWindow
  end
  object adpDBDateTimePickerdtsaida: TUniDBDateTimePicker
    Left = 184
    Top = 48
    Width = 129
    Height = 21
    DateTime = 41845.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 6
  end
  object UniBitBtnCancelar: TUniBitBtn
    Left = 16
    Top = 216
    Width = 106
    Height = 33
    ShowHint = True
    ParentShowHint = False
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CB6601FFCB66
      01FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB66
      01FFCB6601FFCB6601FFCB6601FF000000000000000000000000CB6601FFFDF4
      EBFFFFF6E9FFFFF1DFFFFFEED9FFFFEAD1FFFFE6CAFFFFE3C2FFFFE0BAFFFFDC
      B3FFFFD8ADFFFFE2B5FFCB6601FF000000000000000000000000CB6601FFFDF7
      F0FFFFF9EFFFFFF3E4FFFFF0DDFFFFECD6FFFFE9CEFFFFE5C7FFFFE2C0FFFFDE
      B8FFFFDAB0FFFFE1B5FFCB6601FF000000000000000000000000CB6601FFFDF8
      F4FFFFFAF3FFFFF4E8FFFFF1E2FFFFEEDAFFFFEAD3FFFEE6CBFFFEE3C4FFFEE0
      BDFFFEDCB5FFFFE1B6FFCB6601FF000000000000000000000000CB6601FFFDFA
      F9FFFFFDF8FFFFF7EEFFFFF4E7FFFFF0E0FFFFECD8FFFEE9D0FFFEE6C9FFFFE6
      C3FFFFE3BBFFFFE4BCFFCB6601FF000000000000000000000000CB6601FFFDFB
      FBFFFFFFFEFFFFFAF3FFFFF6ECFFFFF3E5FFFFEFDDFFFEEBD6FFFFEED0FFE6D0
      C2FFE6CCB9FFFFEEC3FFCB6601FF00000000160B890E0000A00BCB6601FFFDFB
      FBFFFFFFFFFFFFFFFDFFFFFBF6FFFFF8EFFFFFF4E7FFFFF5E0FFE2D0CFFF3238
      B8FF3235B3FFDFCABEFFCB6601FF53204EA1000BB9E40106A5ABCB6601FFF9F1
      E8FFFCF6EFFFFBF3EBFFFBF0E5FFFBEDDEFFFBE9D7FFFFEDD1FFCFB8BAFF1F27
      B6FF2246EFFF4144B9FF7F5C80FF141CAFFE0F38F0FF0108A8CCCB6601FFCB66
      01FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFF3A651FFAC6F
      57FF333ABCFF2D4CE9FF192ECDFF2345EBFF070FACC90000961F00000000CB66
      01FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB6601FFCB66
      01FF603D73FE2C46D9FF5680FFFF1E2DC1FF0000905200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003840BEFF4F67E7FF202EC0FB4461EDFF1620B5DE00009630000000000000
      000000000000000000000000000000000000000000000000000005008E2A2833
      C1F06A7FEDFF1014A6B8000090451923B6DB4966EEFF0E13AAD5000000000000
      000000000000000000000000000000000000000000000000000000009D0F1416
      A7BC1416A6C20000961400000000000096311016AADE0609A190000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 7
  end
end
