object FrmSituacaoDisciplinar: TFrmSituacaoDisciplinar
  Left = 0
  Top = 0
  ClientHeight = 167
  ClientWidth = 373
  Caption = 'Situa'#231#227'o Disciplinar'
  Color = clBtnFace
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniRadioGroup1: TUniRadioGroup
    Left = 8
    Top = 17
    Width = 225
    Height = 145
    Items.Strings = (
      '(1) SANCIONADO'
      '(2) SEGURO'
      '(3) OBSERVA'#199#195'O'
      '(4) ISOLAMENTO PREVENTIVO')
    Caption = 'Qual motivo do isolamento?'
    TabOrder = 0
  end
  object UniBitBtn1: TUniBitBtn
    Left = 239
    Top = 137
    Width = 113
    Height = 25
    Glyph.Data = {
      EA020000424DEA02000000000000EA0100002800000010000000100000000100
      08000000000000010000120B0000120B00006D0000006D0000009C98BC00B5AF
      C300C9C7CB00FF00FF00D4CBD300CAC7C7000A7F00000378000008750D000B81
      10000A88110020A02E0022A2310023A4340025A63700249937002DAD430034BE
      4D0037C05100026C17000A7920003AC256003AB9580040C8600042CB640045CE
      68003FBF61004AD270004CD5740050D97B0052DB7F00007126000A79310054DC
      820057DF860056DD8400028E9F0000C2FF00018DB9000092E800368EE4000062
      CA000077FF000058DB000051C6000050D9000045CF000139CC00003EFF006C89
      E5000038FF000039FF00003AFF001C48F800002CF400002BF300002AF200002A
      EF000026FB000024E2000021E1000023E1000023E0000023DF000022DD000020
      D900001FEC00001DD300001CD200001CCF000019CE00001ACE000019CD000019
      CC000018CD000017C6000014C2000618C5001021C400000FB900000FB700000E
      B6000211BB003844CE008C91CE00000CC000000CB600000CB200000AB0000009
      AE000511B8001B25B9000008B2000007AB000005A8000006A500050AAB000E12
      A7000003A7000405A1000E0E9F0011119F001212A0001315A3001313A2001314
      A2002F2FA400C7C7DF0000000000030303030303656565620303030303030303
      0368656505004E3C62030303030303656501025453555C45435F030303036504
      6B31353A42414B594C4962030303036A282A292D3238404A57564D6903032C27
      252626080832383F4851585A6703032F242608100E0833363E47505D60660303
      2F081619150D0834373D464F5E630303081A211C18120C0833363B4452640308
      1A22221E1B17110B083039616703080808080F221D0808080808670303030303
      0303202223082E2B5B030303030303030303081A220803030303030303030303
      0303031422220803030303030303030303030303090822080303030303030303
      0303030303030A06071F13030303}
    Caption = 'Confirma'
    ModalResult = 1
    TabOrder = 1
  end
  object UniDateTimePicker1: TUniDateTimePicker
    Left = 239
    Top = 23
    Width = 113
    Height = 22
    DateTime = 41800.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 2
  end
end
