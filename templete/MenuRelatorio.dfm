object FrmMenuRelatorio: TFrmMenuRelatorio
  Left = 0
  Top = 0
  ClientHeight = 147
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
    Height = 41
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
  object SqlConsultaBackup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.id_interno Id,'
      '    interno.nome_interno NOME,'
      '    interno.rgi,'
      '    INTERNO.VULGO,'
      '    INTERNO.FACCAO,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    galeria.galeria,'
      '    solario.solario,'
      '    cela.cela,'
      '    iif(coalesce(interno.st,'#39'I'#39')='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito,'
      
        '    PROCEDENCIA.PROEDENCIA||'#39'/'#39'||coalesce(PROCEDENCIA.UF,'#39'UF'#39') A' +
        'S PROCEDENCIA'
      'from interno'
      '   left join cela on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join galeria on (interno.idgaleria = galeria.id_galeria)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      
        '   LEFT JOIN PROCEDENCIA ON (INTERNO.ID_PROCEDENCIA = PROCEDENCI' +
        'A.ID_PROCEDENCIA)'
      'where coalesce(interno.nome_interno,'#39#39')<>'#39#39)
    Left = 8
    Top = 8
  end
end
