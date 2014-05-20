unit ModeloFrame;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIFrame,
  uniMultiItem,
  uniComboBox,
  Vcl.Imaging.jpeg,
  uniImage,
  uniEdit,
  uniButton,
  uniDateTimePicker,
  uniGUIBaseClasses,
  uniLabel,
  uniBitBtn,
  uniToolBar,
  uniBasicGrid,
  uniDBGrid,
  uniPanel,
  Data.FMTBcd,
  Data.DB,
  Data.SqlExpr,
  Datasnap.Provider,
  Datasnap.DBClient,
  uniCheckBox,
  Vcl.Menus,
  uniMainMenu,
  uniDBComboBox,
  uniDBLookupComboBox,
  uniDBEdit,
  uniDBDateTimePicker,
  uniScreenMask;

type
  TFrmModeloFrame = class(TUniFrame)
    UniPanelTopo: TUniPanel;
    UniLabel13: TUniLabel;
    UniDateTimePickerInicio: TUniDateTimePicker;
    UniDateTimePickerFim: TUniDateTimePicker;
    UniEditLocalizar: TUniEdit;
    UniLabel2: TUniLabel;
    UniComboBoxCampo: TUniComboBox;
    UniBitBtnFiltrar: TUniBitBtn;
    UniPanelMeio: TUniPanel;
    DsParcelas: TDataSource;
    CdsParcelas: TClientDataSet;
    DspParcelas: TDataSetProvider;
    SqlParcelas: TSQLQuery;
    CdsParcelasIDCTASRP: TIntegerField;
    CdsParcelasIDCLIFORNE: TIntegerField;
    CdsParcelasIDCXBCO: TIntegerField;
    CdsParcelasIDMOVFINAN: TIntegerField;
    CdsParcelasTIPOMOVFINAN: TStringField;
    CdsParcelasIDMOVFINAN2: TIntegerField;
    CdsParcelasLOCALCOB: TIntegerField;
    CdsParcelasDATAEMISSAO: TSQLTimeStampField;
    CdsParcelasNUMDOC_EMPRESA: TStringField;
    CdsParcelasNUMDOC_CLIFORNE: TStringField;
    CdsParcelasDATAVENCIMENTO: TSQLTimeStampField;
    CdsParcelasDATAPRORROGACAO: TSQLTimeStampField;
    CdsParcelasDATAPGTORECB: TSQLTimeStampField;
    CdsParcelasVALOR_ORIGINAL: TFloatField;
    CdsParcelasVALOR: TFloatField;
    CdsParcelasNUM_PARCELA: TIntegerField;
    CdsParcelasTOT_PARCELA: TIntegerField;
    CdsParcelasVALOR_PAGO_RECEBIDO: TFloatField;
    CdsParcelasIDMOEDAS: TIntegerField;
    CdsParcelasTAXA_ACRESCIMO: TFloatField;
    CdsParcelasMULTA_ATRASO: TFloatField;
    CdsParcelasTAXA_JURO_MES: TFloatField;
    CdsParcelasVALOR_JUROS_PAGOS: TFloatField;
    CdsParcelasVALOR_JUROS_RECEBIDOS: TFloatField;
    CdsParcelasVALOR_DESCONTO_CONCEDIDO: TFloatField;
    CdsParcelasVALOR_DESCONTO_OBTIDO: TFloatField;
    CdsParcelasST: TStringField;
    CdsParcelasHISTORICO: TStringField;
    CdsParcelasSEQUENCIA_QUITA_PARCIAL: TIntegerField;
    CdsParcelasIDEMPRESA: TIntegerField;
    CdsParcelasIDCONTA: TIntegerField;
    CdsParcelasIDCCUSTO: TIntegerField;
    CdsParcelasTPC: TStringField;
    CdsParcelasPRAZO: TIntegerField;
    CdsParcelasNOSSONUMERO: TStringField;
    CdsParcelasDESCONTADA_RESGATADA: TStringField;
    CdsParcelasIDMOVESTOQUE: TIntegerField;
    CdsParcelasAUTORIZADO_POR: TIntegerField;
    CdsParcelasDATA_AUTORIZACAO: TSQLTimeStampField;
    CdsParcelasIDVENDEDOR: TIntegerField;
    CdsParcelasIDGERENTE: TIntegerField;
    CdsParcelasIDPROMOTOR: TIntegerField;
    CdsParcelasIDSUPERVISOR: TIntegerField;
    CdsParcelasSACADOR_AVALISTA: TIntegerField;
    CdsParcelasIDDIRETOR: TIntegerField;
    CdsParcelasIDMOVPATRIM: TIntegerField;
    CdsParcelasREMESSA_ENVIADA_BANCO: TStringField;
    CdsParcelasEXECUTA_TRIGGER: TStringField;
    CdsParcelasPK_DEFINITIVA: TStringField;
    CdsParcelasCHEQUES_RECEBIDOS: TStringField;
    CdsParcelasVALOR_ADIANTAMENTO: TFloatField;
    CdsParcelasNR_REMESSA_BANCO: TIntegerField;
    CdsParcelasIDCLIFORNE_UTILIZACAO: TIntegerField;
    CdsParcelasLANC_FRENTE_LOJA: TStringField;
    CdsParcelasIDCONTA_DESC_DUPL: TIntegerField;
    CdsParcelasVALOR_TITULO: TFloatField;
    CdsParcelasLOCALCOB_ENT: TIntegerField;
    CdsParcelasVENDA_ENTREGUE: TStringField;
    CdsParcelasDESC_FINAN_BOLETO: TFloatField;
    CdsParcelasDATA_GERACAO_REMESSA: TSQLTimeStampField;
    CdsParcelasRETORNO_OCORRENCIA: TStringField;
    CdsParcelasRETORNO_MOTIVO: TStringField;
    CdsParcelasIDPRODUTOCODBARRAS: TIntegerField;
    CdsParcelasCODBARRAS: TStringField;
    CdsParcelasSTATUS: TStringField;
    UniCheckBoxTodos: TUniCheckBox;
    UniDBGridParcelas: TUniDBGrid;
    CdsParcelasNOME: TStringField;
    UniImage6: TUniImage;
    UniPanelParcela: TUniPanel;
    UniImage7: TUniImage;
    UniBitBtnConfirmaParcela: TUniBitBtn;
    UniDBNumberEdit7: TUniDBNumberEdit;
    UniDBDateTimePicker3: TUniDBDateTimePicker;
    UniDBNumberEdit8: TUniDBNumberEdit;
    UniDBEdit3: TUniDBEdit;
    UniBitBtnCancelarParcela: TUniBitBtn;
    UniDBEdit5: TUniDBEdit;
    UniLabel25: TUniLabel;
    UniLabel27: TUniLabel;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniLabel26: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    UniLabel3: TUniLabel;
    UniDBNumberEdit1: TUniDBNumberEdit;
    SqlParcelasIDCTASRP: TIntegerField;
    SqlParcelasIDCLIFORNE: TIntegerField;
    SqlParcelasIDCXBCO: TIntegerField;
    SqlParcelasIDMOVFINAN: TIntegerField;
    SqlParcelasTIPOMOVFINAN: TStringField;
    SqlParcelasIDMOVFINAN2: TIntegerField;
    SqlParcelasLOCALCOB: TIntegerField;
    SqlParcelasDATAEMISSAO: TSQLTimeStampField;
    SqlParcelasNUMDOC_EMPRESA: TStringField;
    SqlParcelasNUMDOC_CLIFORNE: TStringField;
    SqlParcelasDATAVENCIMENTO: TSQLTimeStampField;
    SqlParcelasDATAPRORROGACAO: TSQLTimeStampField;
    SqlParcelasDATAPGTORECB: TSQLTimeStampField;
    SqlParcelasVALOR_ORIGINAL: TFloatField;
    SqlParcelasVALOR: TFloatField;
    SqlParcelasNUM_PARCELA: TIntegerField;
    SqlParcelasTOT_PARCELA: TIntegerField;
    SqlParcelasVALOR_PAGO_RECEBIDO: TFloatField;
    SqlParcelasIDMOEDAS: TIntegerField;
    SqlParcelasTAXA_ACRESCIMO: TFloatField;
    SqlParcelasMULTA_ATRASO: TFloatField;
    SqlParcelasTAXA_JURO_MES: TFloatField;
    SqlParcelasVALOR_JUROS_PAGOS: TFloatField;
    SqlParcelasVALOR_JUROS_RECEBIDOS: TFloatField;
    SqlParcelasVALOR_DESCONTO_CONCEDIDO: TFloatField;
    SqlParcelasVALOR_DESCONTO_OBTIDO: TFloatField;
    SqlParcelasST: TStringField;
    SqlParcelasHISTORICO: TStringField;
    SqlParcelasSEQUENCIA_QUITA_PARCIAL: TIntegerField;
    SqlParcelasIDEMPRESA: TIntegerField;
    SqlParcelasIDCONTA: TIntegerField;
    SqlParcelasIDCCUSTO: TIntegerField;
    SqlParcelasTPC: TStringField;
    SqlParcelasPRAZO: TIntegerField;
    SqlParcelasNOSSONUMERO: TStringField;
    SqlParcelasDESCONTADA_RESGATADA: TStringField;
    SqlParcelasIDMOVESTOQUE: TIntegerField;
    SqlParcelasAUTORIZADO_POR: TIntegerField;
    SqlParcelasDATA_AUTORIZACAO: TSQLTimeStampField;
    SqlParcelasIDVENDEDOR: TIntegerField;
    SqlParcelasIDGERENTE: TIntegerField;
    SqlParcelasIDPROMOTOR: TIntegerField;
    SqlParcelasIDSUPERVISOR: TIntegerField;
    SqlParcelasSACADOR_AVALISTA: TIntegerField;
    SqlParcelasIDDIRETOR: TIntegerField;
    SqlParcelasIDMOVPATRIM: TIntegerField;
    SqlParcelasREMESSA_ENVIADA_BANCO: TStringField;
    SqlParcelasEXECUTA_TRIGGER: TStringField;
    SqlParcelasPK_DEFINITIVA: TStringField;
    SqlParcelasCHEQUES_RECEBIDOS: TStringField;
    SqlParcelasVALOR_ADIANTAMENTO: TFloatField;
    SqlParcelasNR_REMESSA_BANCO: TIntegerField;
    SqlParcelasIDCLIFORNE_UTILIZACAO: TIntegerField;
    SqlParcelasLANC_FRENTE_LOJA: TStringField;
    SqlParcelasIDCONTA_DESC_DUPL: TIntegerField;
    SqlParcelasVALOR_TITULO: TFloatField;
    SqlParcelasLOCALCOB_ENT: TIntegerField;
    SqlParcelasVENDA_ENTREGUE: TStringField;
    SqlParcelasDESC_FINAN_BOLETO: TFloatField;
    SqlParcelasDATA_GERACAO_REMESSA: TSQLTimeStampField;
    SqlParcelasRETORNO_OCORRENCIA: TStringField;
    SqlParcelasRETORNO_MOTIVO: TStringField;
    SqlParcelasIDPRODUTOCODBARRAS: TIntegerField;
    SqlParcelasCODBARRAS: TStringField;
    UniScreenMaskQuitaCR: TUniScreenMask;
    ToolBarModeloCadastro: TUniToolBar;
    Novo: TUniToolButton;
    Editar: TUniToolButton;
    UniToolButton8: TUniToolButton;
    UniToolButton7: TUniToolButton;
    Excluir: TUniToolButton;
    Fechar: TUniToolButton;
    procedure UniCheckBoxTodosClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure CdsParcelasSTATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsParcelasNOMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure UniBitBtnFiltrarClick(Sender: TObject);
    procedure UniToolButtonPagoAdiantadoClick(Sender: TObject);
    procedure UniToolButtonPagoClick(Sender: TObject);
    procedure UniToolButtonVencerClick(Sender: TObject);
    procedure UniToolButtonVenceHojeClick(Sender: TObject);
    procedure UniToolButtonVencido10diasClick(Sender: TObject);
    procedure UniToolButtonVencido30diasClick(Sender: TObject);
    procedure UniToolButtonPerdido180diasClick(Sender: TObject);
    procedure UniDBGridParcelasDblClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtnCancelarParcelaClick(Sender: TObject);
    procedure UniBitBtnConfirmaParcelaClick(Sender: TObject);
  private
    procedure QuitacaoUnica;
    procedure SalvarAlteracao;
    procedure ImprimirRecibo(sIdMovFinan: string);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses DmPrincipal,
  Lib,
  ModeloCadastro,
  VisualizarRelatorio;

procedure TFrmModeloFrame.CdsParcelasNOMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin

  dm.SqlExecute.SQL.Text := 'select nome from cliforne where idcliforne=' + CdsParcelasIDCLIFORNE.AsString;
  dm.SqlExecute.close;
  dm.SqlExecute.open;

  Text := dm.SqlExecute.FieldByName('nome').AsString;

  dm.SqlExecute.close;

end;

procedure TFrmModeloFrame.CdsParcelasSTATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if CdsParcelasST.AsString = 'Q' then
  begin
    if CdsParcelasDATAPRORROGACAO.AsDateTime > CdsParcelasDATAPGTORECB.AsDateTime then
    begin
      // CdsParcelasSTATUS.AsString := 'PAGO_ADIANTADO';
      Text := '<img width=16 height=16 src="/img/quitacao/adiantado.png"/>';
    end
    else
    begin
      // CdsParcelasSTATUS.AsString := 'PAGO';
      Text := '<img width=16 height=16 src="/img/quitacao/pago.png"/>';
    end;
  end
  else
  begin
    if CdsParcelasDATAPRORROGACAO.AsDateTime > Date then
    begin
      // CdsParcelasSTATUS.AsString := 'VENCER';
      Text := '<img width=16 height=16 src="/img/quitacao/vencer.png"/>';
    end;
    if CdsParcelasDATAPRORROGACAO.AsDateTime = Date then
    begin
      // CdsParcelasSTATUS.AsString := 'VENCE_HOJE';
      Text := '<img width=16 height=16 src="/img/quitacao/vencehoje.png"/>';
    end;
    if CdsParcelasDATAPRORROGACAO.AsDateTime < Date then
    begin
      // CdsParcelasSTATUS.AsString := 'VENCIDO';
      Text := '<img width=16 height=16 src="/img/quitacao/vencido.png"/>';
    end;
    if (Date - CdsParcelasDATAPRORROGACAO.AsDateTime) >= 30 then
    begin
      // CdsParcelasSTATUS.AsString := 'VENCIDO_30DIAS';
      Text := '<img width=16 height=16 src="/img/quitacao/vencido30.png"/>';
    end;
    if (Date - CdsParcelasDATAPRORROGACAO.AsDateTime) >= 180 then
    begin
      // CdsParcelasSTATUS.AsString := 'PERDIDO';
      Text := '<img width=16 height=16 src="/img/quitacao/perdido180.png"/>';
    end;
  end;

end;

procedure TFrmModeloFrame.SalvarAlteracao;
begin

  if CdsParcelas.State in [dsedit, dsinsert] then
    CdsParcelas.Post;

  dm.IniciaTransGeral;
  CdsParcelas.ApplyUpdates(-1);
  dm.FinalizaTransGeral;

  UniPanelParcela.Visible := false;
  UniDBGridParcelas.Visible := true;
  UniPanelTopo.Enabled := true;

end;

procedure TFrmModeloFrame.ImprimirRecibo(sIdMovFinan: string);
begin
  FrmVisualizarRelatorio.Nome := 'Financeiro-Recibo-Credito';
  FrmVisualizarRelatorio.Filtro := sIdMovFinan;
  FrmVisualizarRelatorio.ShowModal;
end;

procedure TFrmModeloFrame.UniBitBtn1Click(Sender: TObject);
begin

  MessageDlg('<b><font Color=navy>Quitação?</font></b><br>' + 'Quitar a parcela selecionada: ' + 'Código:' + CdsParcelasIDCLIFORNE.AsString + ', Doc:' +
    CdsParcelasNUMDOC_EMPRESA.AsString + ', Parcela:' + CdsParcelasNUM_PARCELA.AsString + '/' + CdsParcelasTOT_PARCELA.AsString + ', Valor:' +
    FormatFloat('#,##0.00', CdsParcelasVALOR.AsFloat), mtConfirmation, mbYesNo,
    procedure(result: integer)
    begin
      if result = mrYes then
      begin
        if CdsParcelas.State in [dsedit, dsinsert] then
          CdsParcelas.Post;

        dm.IniciaTransGeral;
        CdsParcelas.ApplyUpdates(-1);
        dm.FinalizaTransGeral;

        QuitacaoUnica;

        CdsParcelas.close;
        CdsParcelas.open;
        UniPanelParcela.Visible := false;
        UniDBGridParcelas.Visible := true;
        UniPanelTopo.Enabled := true;

//        ShowMessage('<b><font Color=navy>Quitado com sucesso!</font></b>');

      end;
    end);

end;

procedure TFrmModeloFrame.UniBitBtnCancelarParcelaClick(Sender: TObject);
begin

  UniPanelParcela.Visible := false;
  UniDBGridParcelas.Visible := true;
  UniPanelTopo.Enabled := true;

end;

procedure TFrmModeloFrame.UniBitBtnConfirmaParcelaClick(Sender: TObject);
begin
  SalvarAlteracao;
end;

procedure TFrmModeloFrame.UniBitBtnFiltrarClick(Sender: TObject);
var
  sWhereCampo: string;
begin
  sWhereCampo := '';

  if trim(UniEditLocalizar.Text) <> '' then
  begin
    // Código
    if UniComboBoxCampo.Text = 'Código' then
    begin
      UniEditLocalizar.Text := IntToStr(StrToIntDef(UniEditLocalizar.Text, -1));
      sWhereCampo := 'IDCLIFORNE = ' + UniEditLocalizar.Text;
    end;
    // Nome
    if UniComboBoxCampo.Text = 'Nome' then
    begin
      sWhereCampo := 'IDCLIFORNE IN (SELECT IDCLIFORNE FROM CLIFORNE WHERE  NOME LIKE ' + QS(BuscaTroca(UniEditLocalizar.Text, ' ', '%') + '%') + ') ';
    end;
    // Histórico
    if UniComboBoxCampo.Text = 'Histórico' then
    begin
      sWhereCampo := 'HISTORICO LIKE ' + QS(BuscaTroca(UniEditLocalizar.Text, ' ', '%') + '%');
    end;
    // Documento
    if UniComboBoxCampo.Text = 'Documento' then
    begin
      sWhereCampo := 'NUMDOC_EMPRESA LIKE ' + QS('%' + BuscaTroca(UniEditLocalizar.Text, ' ', '%') + '%');
    end;
    // Valor >
    if UniComboBoxCampo.Text = 'Valor >' then
    begin
      UniEditLocalizar.Text := FloatToStr(StrToFloatDef(UniEditLocalizar.Text, -1));
      sWhereCampo := 'VALOR >= ' + BuscaTroca(UniEditLocalizar.Text, ',', '.');
    end;
    // Valor <
    if UniComboBoxCampo.Text = 'Valor <' then
    begin
      UniEditLocalizar.Text := FloatToStr(StrToFloatDef(UniEditLocalizar.Text, -1));
      sWhereCampo := 'VALOR <= ' + BuscaTroca(UniEditLocalizar.Text, ',', '.');
    end;
  end;

  if sWhereCampo <> '' then
    sWhereCampo := sWhereCampo + ' AND ';

  sWhereCampo := sWhereCampo + ' DATAPRORROGACAO BETWEEN ' + QS(FormatDateTime('DD.MM.YYYY', UniDateTimePickerInicio.DateTime)) + ' AND ' +
    QS(FormatDateTime('DD.MM.YYYY', UniDateTimePickerFim.DateTime));

  SqlParcelas.SQL.Text := 'select * from ctasrecpag where tipomovfinan=''05'' AND ' + sWhereCampo + ' order by st, dataprorrogacao';

  CdsParcelas.close;
  CdsParcelas.open;

end;

procedure TFrmModeloFrame.UniCheckBoxTodosClick(Sender: TObject);
begin

  UniBitBtnFiltrar.Enabled := not UniCheckBoxTodos.Checked;
  UniComboBoxCampo.Enabled := not UniCheckBoxTodos.Checked;
  UniEditLocalizar.Enabled := not UniCheckBoxTodos.Checked;
  UniDateTimePickerInicio.Enabled := not UniCheckBoxTodos.Checked;
  UniDateTimePickerFim.Enabled := not UniCheckBoxTodos.Checked;

  if UniCheckBoxTodos.Checked then
  begin
    SqlParcelas.SQL.Text := 'select * from ctasrecpag where tipomovfinan=''05''  and st = ''A'' order by st, dataprorrogacao';

    CdsParcelas.close;
    CdsParcelas.open;
  end;

end;

procedure TFrmModeloFrame.UniDBGridParcelasDblClick(Sender: TObject);
begin

  if CdsParcelasST.AsString = 'A' then
  begin
    UniPanelParcela.Visible := true;
    UniDBGridParcelas.Visible := false;
    UniPanelTopo.Enabled := false;
  end
  else
  begin
    ShowMessage('<b><font Color=red>ATENÇÃO !!!</font></b><br>' + 'Parcela já quitada, não pode alterar.');
  end;

end;

procedure TFrmModeloFrame.UniFrameCreate(Sender: TObject);
begin
  UniDateTimePickerInicio.DateTime := Date;
  UniDateTimePickerFim.DateTime := Date;
  UniCheckBoxTodosClick(nil);

end;

procedure TFrmModeloFrame.UniToolButtonPagoClick(Sender: TObject);
begin
  MessageDlg('<b><font Color=navy>' + TUniBitBtn(Sender).Caption + '</font></b><br>' + 'Filtrar os titulos com status de:' + TUniBitBtn(Sender).Caption,
    mtConfirmation, mbYesNo,
    procedure(result: integer)
    begin
      if result = mrYes then
      begin
        if UniCheckBoxTodos.Checked then
          UniCheckBoxTodos.Checked := false;
        SqlParcelas.SQL.Text := 'select * from ctasrecpag where tipomovfinan=''05'' and st = ''Q'' ' + ' order by st, dataprorrogacao';
        CdsParcelas.close;
        CdsParcelas.open;
      end;
    end);

end;

procedure TFrmModeloFrame.UniToolButtonVencerClick(Sender: TObject);
begin
  MessageDlg('<b><font Color=navy>' + TUniBitBtn(Sender).Caption + '</font></b><br>' + 'Filtrar os titulos com status de:' + TUniBitBtn(Sender).Caption,
    mtConfirmation, mbYesNo,
    procedure(result: integer)
    begin
      if result = mrYes then
      begin
        if UniCheckBoxTodos.Checked then
          UniCheckBoxTodos.Checked := false;
        SqlParcelas.SQL.Text := 'select * from ctasrecpag where tipomovfinan=''05'' and st = ''A'' and DATAPRORROGACAO > current_date ' +
          ' order by st, dataprorrogacao';

        CdsParcelas.close;
        CdsParcelas.open;

      end;
    end);

end;

procedure TFrmModeloFrame.UniToolButtonPagoAdiantadoClick(Sender: TObject);
begin
  MessageDlg('<b><font Color=navy>' + TUniBitBtn(Sender).Caption + '</font></b><br>' + 'Filtrar os titulos com status de:' + TUniBitBtn(Sender).Caption,
    mtConfirmation, mbYesNo,
    procedure(result: integer)
    begin
      if result = mrYes then
      begin
        if UniCheckBoxTodos.Checked then
          UniCheckBoxTodos.Checked := false;
        SqlParcelas.SQL.Text := 'select * from ctasrecpag where tipomovfinan=''05'' and st = ''Q'' and DATAPRORROGACAO > DATAPGTORECB ' +
          ' order by st, dataprorrogacao';

        CdsParcelas.close;
        CdsParcelas.open;

      end;
    end);
end;

procedure TFrmModeloFrame.UniToolButtonPerdido180diasClick(Sender: TObject);
begin
  MessageDlg('<b><font Color=navy>' + TUniBitBtn(Sender).Caption + '</font></b><br>' + 'Filtrar os titulos com status de:' + TUniBitBtn(Sender).Caption,
    mtConfirmation, mbYesNo,
    procedure(result: integer)
    begin
      if result = mrYes then
      begin
        if UniCheckBoxTodos.Checked then
          UniCheckBoxTodos.Checked := false;
        SqlParcelas.SQL.Text := 'select * from ctasrecpag where tipomovfinan=''05'' and st = ''A'' and (current_date-cast(DATAPRORROGACAO as date) )>=180 ' +
          ' order by st, dataprorrogacao';

        CdsParcelas.close;
        CdsParcelas.open;

      end;
    end);

end;

procedure TFrmModeloFrame.UniToolButtonVenceHojeClick(Sender: TObject);
begin
  MessageDlg('<b><font Color=navy>' + TUniBitBtn(Sender).Caption + '</font></b><br>' + 'Filtrar os titulos com status de:' + TUniBitBtn(Sender).Caption,
    mtConfirmation, mbYesNo,
    procedure(result: integer)
    begin
      if result = mrYes then
      begin
        if UniCheckBoxTodos.Checked then
          UniCheckBoxTodos.Checked := false;
        SqlParcelas.SQL.Text := 'select * from ctasrecpag where tipomovfinan=''05'' and st = ''A'' and DATAPRORROGACAO <= current_date ' +
          ' order by st, dataprorrogacao';

        CdsParcelas.close;
        CdsParcelas.open;

      end;
    end);

end;

procedure TFrmModeloFrame.UniToolButtonVencido10diasClick(Sender: TObject);
begin
  MessageDlg('<b><font Color=navy>' + TUniBitBtn(Sender).Caption + '</font></b><br>' + 'Filtrar os titulos com status de:' + TUniBitBtn(Sender).Caption,
    mtConfirmation, mbYesNo,
    procedure(result: integer)
    begin
      if result = mrYes then
      begin
        if UniCheckBoxTodos.Checked then
          UniCheckBoxTodos.Checked := false;
        SqlParcelas.SQL.Text := 'select * from ctasrecpag where tipomovfinan=''05'' and st = ''A'' and DATAPRORROGACAO < current_date ' +
          ' order by st, dataprorrogacao';

        CdsParcelas.close;
        CdsParcelas.open;

      end;
    end);

end;

procedure TFrmModeloFrame.UniToolButtonVencido30diasClick(Sender: TObject);
begin
  MessageDlg('<b><font Color=navy>' + TUniBitBtn(Sender).Caption + '</font></b><br>' + 'Filtrar os titulos com status de:' + TUniBitBtn(Sender).Caption,
    mtConfirmation, mbYesNo,
    procedure(result: integer)
    begin
      if result = mrYes then
      begin
        if UniCheckBoxTodos.Checked then
          UniCheckBoxTodos.Checked := false;
        SqlParcelas.SQL.Text := 'select * from ctasrecpag where tipomovfinan=''05'' and st = ''A'' and (current_date-cast(DATAPRORROGACAO as date) )>=30 ' +
          ' order by st, dataprorrogacao';

        CdsParcelas.close;
        CdsParcelas.open;

      end;
    end);

end;

procedure TFrmModeloFrame.QuitacaoUnica;
var
  sSql, PRM_IDCTA, PRM_VALOR, PRM_JURO, PRM_DESC, PRM_TOTPAR, PRM_DATA, PRM_IDCXBCO, PRM_IDCONTA, PRM_MORA, PRM_HISTOR, PRM_TPC, PRM_NUMCHEQUE, PRM_USUARIO,
    PRM_VALOR_COTACAO, PRM_DATAPRORROGACAO, PRM_IDCCUSTO: String;
  sIdMovFinan: string;
begin

  if round(CdsParcelas.FieldByName('VALOR').AsFloat) > 0 then
  begin
    sSql := '';

    PRM_TOTPAR := 'T';
    PRM_DATAPRORROGACAO := 'NULL';
    // PRM_TOTPAR := 'P';
    // PRM_DATAPRORROGACAO := QS(FormatDateTime('MM/DD/YYYY', DsFechamento.DataSet.FieldByName('NOVO_DATAPRORROGACAO').AsDateTime));
    PRM_DATA := QS(FormatDateTime('MM/DD/YYYY', Date));
    PRM_IDCTA := CdsParcelas.FieldByName('IDCTASRP').AsString;
    PRM_VALOR := FmtValorSql(round(CdsParcelas.FieldByName('VALOR').AsFloat));
    PRM_IDCCUSTO := CdsParcelas.FieldByName('IDCCUSTO').AsString;
    PRM_IDCXBCO := CdsParcelas.FieldByName('LOCALCOB').AsString;
    PRM_HISTOR := 'QUITACAO: ' + CdsParcelas.FieldByName('HISTORICO').AsString;
    PRM_TPC := SENHA_TIPO_SENHA;
    PRM_USUARIO := SENHA_USUARIO;
    PRM_NUMCHEQUE := 'NULL';
    PRM_VALOR_COTACAO := 'NULL';
    PRM_JURO := '0';
    PRM_DESC := '0';
    PRM_IDCONTA := 'NULL';
    PRM_MORA := 'NULL';

    sSql := 'SELECT RETCOD FROM SP_QUITACAO (' + PRM_IDCTA + ',' + PRM_VALOR + ',' + PRM_JURO + ',' + PRM_DESC + ',' + QS(PRM_TOTPAR) + ',' + PRM_DATA
      + ',' + PRM_IDCXBCO + ',' + PRM_IDCONTA + ',' + PRM_MORA + ',' + QS(PRM_HISTOR) + ',' + PRM_TPC + ',' + PRM_NUMCHEQUE + ',' + PRM_USUARIO + ',' +
      PRM_VALOR_COTACAO + ',' + PRM_DATAPRORROGACAO + ',' + PRM_IDCCUSTO + ',' + ''''')';

    dm.SqlExecute.SQL.Text := sSql ;
    if not dm.UniTransactionConexao.Active then
      dm.UniTransactionConexao.StartTransaction;
    dm.SqlExecute.open ;
    sIdMovFinan := dm.SqlExecute.FieldByName('RETCOD').AsString ;
    dm.SqlExecute.close ;
    dm.UniTransactionConexao.Commit;
    ImprimirRecibo(sIdMovFinan);

  end; // if fieldbyname('VALOR').AsFloat = 0 then

end;

end.
