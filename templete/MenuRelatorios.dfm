object FrmMenuRelatorios: TFrmMenuRelatorios
  Left = 0
  Top = 0
  ClientHeight = 437
  ClientWidth = 682
  Caption = 'Menu de Relat'#243'rios'
  OnShow = UniFormShow
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniBitBtnVisualizar: TUniBitBtn
    Left = 224
    Top = 376
    Width = 233
    Height = 41
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Preparando os dados...'
    ScreenMask.Target = Owner
    Caption = 'Visualizar'
    TabOrder = 0
    OnClick = UniBitBtnVisualizarClick
  end
  object UniTreeView1: TUniTreeView
    Left = 8
    Top = 24
    Width = 249
    Height = 337
    Items.NodeData = {
      03010000003A0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      0000000000010E5B002000520065006C0061007400F300720069006F00730020
      005D00}
    Items.FontData = {0101000000FFFFFFFF00000000}
    TabOrder = 1
    OnClick = UniTreeView1Click
  end
  object UniListBox1: TUniListBox
    Left = 263
    Top = 24
    Width = 411
    Height = 337
    TabOrder = 2
    OnDblClick = UniListBox1DblClick
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
