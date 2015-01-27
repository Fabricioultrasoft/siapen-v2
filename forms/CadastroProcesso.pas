unit CadastroProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, ModeloCadastro, Data.FMTBcd, uniDBText,
  uniMemo, uniDBMemo, uniSpeedButton, uniButton, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBEdit, Data.DB, MemDS, DBAccess, Uni,
  uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniEdit, uniPageControl, uniBitBtn, uniLabel, Vcl.Imaging.jpeg, uniImage,
  uniPanel, Vcl.Mask, uniRadioGroup, uniDBRadioGroup, uniDateTimePicker, uniDBDateTimePicker, uniGroupBox, uniDBNavigator, uniDBLookupComboBox, UniHTMLMemo;

type
  TFrmCadastroProcesso = class(TFrmModeloCadastro)
    Label2: TUniLabel;
    dbeditcodigo: TUniDBEdit;
    DBComboBox7: TUniDBComboBox;
    Label155: TUniLabel;
    LabelComutacao: TUniLabel;
    Label7: TUniLabel;
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    DsConsulta: TDataSource;
    SqlLista: TSQLQuery;
    DspLista: TDataSetProvider;
    CdsLista: TClientDataSet;
    DsLista: TDataSource;
    UniDBEditInterno: TUniDBEdit;
    UniLabelInterno: TUniLabel;
    CdsConsulta: TClientDataSet;
    CdsConsultaNOME_INTERNO: TStringField;
    CdsConsultaNPROCESSO: TStringField;
    CdsConsultaIDPROCESSO: TIntegerField;
    CdsConsultaIDINTERNO: TIntegerField;
    CdsConsultaSITUACAOJURIDICA: TStringField;
    CdsConsultaNUMERO_INQUERITO: TStringField;
    CdsConsultaRGI: TStringField;
    CdsConsultaDATA_LIBERACAO: TSQLTimeStampField;
    PageControlProcesso: TUniPageControl;
    TabSheetInquerito: TUniTabSheet;
    Label16: TUniLabel;
    Label17: TUniLabel;
    Label18: TUniLabel;
    Label19: TUniLabel;
    Label20: TUniLabel;
    Label21: TUniLabel;
    Label22: TUniLabel;
    Label72: TUniLabel;
    Label6: TUniLabel;
    Label35: TUniLabel;
    Label36: TUniLabel;
    DBEdit14: TUniDBEdit;
    DBEdit4: TUniDBEdit;
    DBEdit18: TUniDBEdit;
    DBComboBox3: TUniDBComboBox;
    Button1: TUniButton;
    Button2: TUniButton;
    DBEditDATA_FATO_CONDENACAO: TUniDBDateTimePicker;
    DBEditDATA_PRISAO: TUniDBDateTimePicker;
    DBMemo1: TUniDBMemo;
    DBComboBox9: TUniDBComboBox;
    TabSheet1: TUniTabSheet;
    Label139: TUniLabel;
    Label150: TUniLabel;
    Label162: TUniLabel;
    Label153: TUniLabel;
    Label152: TUniLabel;
    Label151: TUniLabel;
    Label154: TUniLabel;
    Label4: TUniLabel;
    Label37: TUniLabel;
    PageControlGeralProcessos: TUniPageControl;
    TabSheet2: TUniTabSheet;
    Label3: TUniLabel;
    DBGridArtigos: TUniDBGrid;
    BitBtn1: TUniBitBtn;
    DBNavigator2: TUniDBNavigator;
    DBEdit1: TUniDBEdit;
    DBEdit2: TUniDBEdit;
    DBEdit3: TUniDBEdit;
    DBComboBox4: TUniDBComboBox;
    DBComboBox5: TUniDBComboBox;
    DBComboBox6: TUniDBComboBox;
    DBEditDATA_PROCESSO: TUniDBDateTimePicker;
    TabSheetCondenacao: TUniTabSheet;
    DBText1: TUniDBText;
    Label9: TUniLabel;
    PanelCondenado: TUniPanel;
    Label29: TUniLabel;
    Label75: TUniLabel;
    Label74: TUniLabel;
    Label73: TUniLabel;
    Label8: TUniLabel;
    Label38: TUniLabel;
    Label34: TUniLabel;
    Label27: TUniLabel;
    Label28: TUniLabel;
    Label5: TUniLabel;
    PageControlCondenacao: TUniPageControl;
    TabSheet8: TUniTabSheet;
    GroupBox1: TUniGroupBox;
    Label10: TUniLabel;
    Label11: TUniLabel;
    Label12: TUniLabel;
    Label30: TUniLabel;
    DBEdit8: TUniDBEdit;
    DBEdit9: TUniDBEdit;
    DBEdit10: TUniDBEdit;
    adpDBDateTimePicker4: TUniDBDateTimePicker;
    DBRadioGroup1: TUniDBRadioGroup;
    TabSheet7: TUniTabSheet;
    DBRadioGroup2: TUniDBRadioGroup;
    TabSheet9: TUniTabSheet;
    DBGrid7: TUniDBGrid;
    Panel2: TUniPanel;
    Label32: TUniLabel;
    BtnDetrcao: TUniBitBtn;
    TabSheet10: TUniTabSheet;
    DBGrid8: TUniDBGrid;
    Panel3: TUniPanel;
    Label33: TUniLabel;
    BtnInterrupcao: TUniBitBtn;
    TabSheet11: TUniTabSheet;
    DBGrid9: TUniDBGrid;
    Panel4: TUniPanel;
    BtnRemicao: TUniBitBtn;
    DBComboBox1: TUniDBComboBox;
    DBEdit7: TUniDBEdit;
    DBEdit6: TUniDBEdit;
    DBEdit5: TUniDBEdit;
    adpDBDateTimePickerDataCondenacao: TUniDBDateTimePicker;
    BtnCalcular: TUniBitBtn;
    DBComboBox2: TUniDBComboBox;
    BtnLinhaTempo: TUniButton;
    adpDBDateTimePickerFinalPena: TUniDBDateTimePicker;
    DBEdit19: TUniDBEdit;
    DBEditDATA_PROCESSO_VEC: TUniDBDateTimePicker;
    DBComboBox8: TUniDBComboBox;
    BtnLimpaPena: TUniButton;
    TabSheet4: TUniTabSheet;
    Label23: TUniLabel;
    Label24: TUniLabel;
    Label25: TUniLabel;
    Label26: TUniLabel;
    DBEdit15: TUniDBEdit;
    DBEdit16: TUniDBEdit;
    DBEdit21: TUniDBEdit;
    UniDBDateTimePickerDATA_INQUERITO: TUniDBDateTimePicker;
    UniDBEditCidadeInquerito: TUniDBEdit;
    UniBitBtnCidadeInquerito: TUniBitBtn;
    UniLabelCidade: TUniLabel;
    UniDBEditDelegacia: TUniDBEdit;
    UniBitBtnDelegacia: TUniBitBtn;
    UniLabelDelegacia: TUniLabel;
    UniBitBtnArtigo: TUniBitBtn;
    UniLabelArtigo: TUniLabel;
    UniEditArtigo: TUniEdit;
    dsvincartigo: TDataSource;
    cdsvincartigo: TClientDataSet;
    cdsvincartigoID_VINC_ARTIGO: TIntegerField;
    cdsvincartigoID_ARTIGO: TIntegerField;
    cdsvincartigoID_PROCESSO: TIntegerField;
    cdsvincartigoArtigos: TStringField;
    dspvincartigo: TDataSetProvider;
    SQLvincartigo: TSQLQuery;
    UniDBEditComarca: TUniDBEdit;
    UniBitBtnComarca: TUniBitBtn;
    UniLabelComarca: TUniLabel;
    UniDBEditVara: TUniDBEdit;
    UniBitBtnVara: TUniBitBtn;
    UniLabelVara: TUniLabel;
    SqlComutacao: TSQLQuery;
    DspComutacao: TDataSetProvider;
    CdsComutacao: TClientDataSet;
    DsComutacao: TDataSource;
    SqlDetracao: TSQLQuery;
    DspDetracao: TDataSetProvider;
    CdsDetracao: TClientDataSet;
    DsDetracao: TDataSource;
    SqlInterrupcao: TSQLQuery;
    DspInterrupcao: TDataSetProvider;
    CdsInterrupcao: TClientDataSet;
    DsInterrupcao: TDataSource;
    SqlRemicao: TSQLQuery;
    DspRemicao: TDataSetProvider;
    CdsRemicao: TClientDataSet;
    DsRemicao: TDataSource;
    SqlTipoEventos: TSQLQuery;
    DspTipoEventos: TDataSetProvider;
    CdsTipoEventos: TClientDataSet;
    CdsCadastroIDTIPO_EVENTO_PROCESSO: TIntegerField;
    CdsCadastroDESCRICAO: TStringField;
    DsTipoEventos: TDataSource;
    SqlEventos: TSQLQuery;
    DspEventos: TDataSetProvider;
    CdsEventos: TClientDataSet;
    DsEventos: TDataSource;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniGroupBox1: TUniGroupBox;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    MemoLinhaTempo: TUniMemo;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBDateTimePicker3: TUniDBDateTimePicker;
    procedure UniDBEditInternoExit(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure UniDBEditCidadeInqueritoExit(Sender: TObject);
    procedure UniBitBtnCidadeInqueritoClick(Sender: TObject);
    procedure UniDBEditDelegaciaExit(Sender: TObject);
    procedure UniBitBtnDelegaciaClick(Sender: TObject);
    procedure UniEditArtigoExit(Sender: TObject);
    procedure UniBitBtnArtigoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure UniDBEditComarcaExit(Sender: TObject);
    procedure UniBitBtnComarcaClick(Sender: TObject);
    procedure UniDBEditVaraExit(Sender: TObject);
    procedure UniBitBtnVaraClick(Sender: TObject);
    procedure BtnLimpaPenaClick(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
    procedure BtnLinhaTempoClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure cdsvincartigoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FID_INTERNO: Integer;
    { Private declarations }
  public
    property ID_INTERNO: Integer read FID_INTERNO write FID_INTERNO;
    { Public declarations }
  end;

function FrmCadastroProcesso: TFrmCadastroProcesso;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Lib, DmPrincipal;

function FrmCadastroProcesso: TFrmCadastroProcesso;
begin
  Result := TFrmCadastroProcesso(UniMainModule.GetFormInstance(TFrmCadastroProcesso));
end;

procedure TFrmCadastroProcesso.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if strtointdef(UniEditArtigo.text, 0) > 0 then
  begin

    if not dsvincartigo.DataSet.active then
    begin
      Dm.Cdsartigo.Close;
      Dm.Cdsartigo.Open;
      dsvincartigo.DataSet.Open;
    end;

    dsvincartigo.DataSet.Append;
    dsvincartigo.DataSet.fieldbyname('id_artigo').AsInteger := strtointdef(UniEditArtigo.text, 0);
    dsvincartigo.DataSet.Post;

    UniEditArtigo.text := '';
    UniEditArtigo.onexit(nil);

  end
  else
  begin
    showmessage('Informe o artigo!');
  end;

end;

procedure TFrmCadastroProcesso.BtnCalcularClick(Sender: TObject);
var
  vAno, vMes, vDia: Integer;
  DataProgressao, DataCondicional: TDate;
begin
  inherited;
  try
    if DsCadastro.DataSet.fieldbyname('PROGRESSAO_REGIME').Asstring = '' then
    begin
      showmessage('Informe a Progressão de Regime.');
      PageControlCondenacao.activepageindex := 0;
      exit;
    end;

    if DsCadastro.DataSet.fieldbyname('LIVRAMENTO_CONDICIONAL').Asstring = '' then
    begin
      showmessage('Informe o Livramento Condicional.');
      PageControlCondenacao.activepageindex := 1;
      exit;
    end;

    if (DsCadastro.DataSet.fieldbyname('TOTAL_PENA_ANO').AsInteger + DsCadastro.DataSet.fieldbyname('TOTAL_PENA_MES').AsInteger +
      DsCadastro.DataSet.fieldbyname('TOTAL_PENA_DIA').AsInteger) = 0 then
    begin
      showmessage('Informe o ano o(s) mês(es) e o(s) dia(s) de condenação.');
      exit;
    end;

    ExecucaoPenalProgressao(DsCadastro.DataSet.fieldbyname('DATA_INICIO_CONDENACAO').AsDateTime, DsCadastro.DataSet.fieldbyname('TOTAL_PENA_ANO').AsInteger,
      DsCadastro.DataSet.fieldbyname('TOTAL_PENA_MES').AsInteger, DsCadastro.DataSet.fieldbyname('TOTAL_PENA_DIA').AsInteger,
      DsCadastro.DataSet.fieldbyname('PROGRESSAO_REGIME').AsInteger, vAno, vMes, vDia);

    DsCadastro.DataSet.fieldbyname('ANO_PROGRESSAO').AsVariant := vAno;
    DsCadastro.DataSet.fieldbyname('MES_PROGRESSAO').AsVariant := vMes;
    DsCadastro.DataSet.fieldbyname('DIA_PROGRESSAO').AsVariant := vDia;

    DataMaisAnoMesDia(DsCadastro.DataSet.fieldbyname('DATA_INICIO_CONDENACAO').AsDateTime, DsCadastro.DataSet.fieldbyname('ANO_PROGRESSAO').AsInteger,
      DsCadastro.DataSet.fieldbyname('MES_PROGRESSAO').AsInteger, DsCadastro.DataSet.fieldbyname('DIA_PROGRESSAO').AsInteger, DataProgressao);

    DsCadastro.DataSet.fieldbyname('DATA_PROGRESSAO').AsDateTime := DataProgressao;

    ExecucaoPenalCondicional(DsCadastro.DataSet.fieldbyname('DATA_INICIO_CONDENACAO').AsDateTime, DsCadastro.DataSet.fieldbyname('TOTAL_PENA_ANO').AsInteger,
      DsCadastro.DataSet.fieldbyname('TOTAL_PENA_MES').AsInteger, DsCadastro.DataSet.fieldbyname('TOTAL_PENA_DIA').AsInteger,
      DsCadastro.DataSet.fieldbyname('LIVRAMENTO_CONDICIONAL').AsInteger, vAno, vMes, vDia);

    DsCadastro.DataSet.fieldbyname('ANO_CONDICIONAL').AsVariant := vAno;
    DsCadastro.DataSet.fieldbyname('MES_CONDICIONAL').AsVariant := vMes;
    DsCadastro.DataSet.fieldbyname('DIA_CONDICIONAL').AsVariant := vDia;

    DataMaisAnoMesDia(DsCadastro.DataSet.fieldbyname('DATA_INICIO_CONDENACAO').AsDateTime, DsCadastro.DataSet.fieldbyname('ANO_CONDICIONAL').AsInteger,
      DsCadastro.DataSet.fieldbyname('MES_CONDICIONAL').AsInteger, DsCadastro.DataSet.fieldbyname('DIA_CONDICIONAL').AsInteger, DataCondicional);

    DsCadastro.DataSet.fieldbyname('DATA_CONDICIONAL').AsDateTime := DataCondicional;

  except

  end;

end;

procedure TFrmCadastroProcesso.BtnLimpaPenaClick(Sender: TObject);
begin
  inherited;

  MessageDlg('Limpar os dados da condenação?', mtWarning, mbYesNo,
    procedure(Sender: TComponent; Result: Integer)
    begin
      if Result = mrYes then
      begin
        try
          DsCadastro.DataSet.fieldbyname('TOTAL_PENA_ANO').AsVariant := null;
          DsCadastro.DataSet.fieldbyname('TOTAL_PENA_MES').AsVariant := null;
          DsCadastro.DataSet.fieldbyname('TOTAL_PENA_DIA').AsVariant := null;
          DsCadastro.DataSet.fieldbyname('PROGRESSAO_REGIME').AsVariant := null;
          DsCadastro.DataSet.fieldbyname('LIVRAMENTO_CONDICIONAL').AsVariant := null;

          DsCadastro.DataSet.fieldbyname('ANO_PROGRESSAO').AsVariant := null;
          DsCadastro.DataSet.fieldbyname('MES_PROGRESSAO').AsVariant := null;
          DsCadastro.DataSet.fieldbyname('DIA_PROGRESSAO').AsVariant := null;
          DsCadastro.DataSet.fieldbyname('ANO_CONDICIONAL').AsVariant := null;
          DsCadastro.DataSet.fieldbyname('MES_CONDICIONAL').AsVariant := null;
          DsCadastro.DataSet.fieldbyname('DIA_CONDICIONAL').AsVariant := null;

          if DsCadastro.DataSet.fieldbyname('DATA_FATO_CONDENACAO').AsVariant = null then
          begin
            CdsCadastro.fieldbyname('DATA_FATO_CONDENACAO').AsDateTime := CdsCadastro.fieldbyname('DATA_PRISAO').AsDateTime;
          end;
        except
        end;
      end;

    end);

end;

procedure TFrmCadastroProcesso.BtnLinhaTempoClick(Sender: TObject);
var
  vDataInicial, vDataCalc, vDataDetracao: TDate;
  vDias: Integer;
  vAno, vMes, vDia: Integer;
  tAno, tMes, tDia: Integer;
begin
  inherited;

  BtnCalcularClick(nil);

  if DsCadastro.DataSet.fieldbyname('PROGRESSAO_REGIME').Asstring = '' then
  begin
    exit;
  end;

  if DsCadastro.DataSet.fieldbyname('LIVRAMENTO_CONDICIONAL').Asstring = '' then
  begin
    exit;
  end;

  if (DsCadastro.DataSet.fieldbyname('TOTAL_PENA_ANO').AsInteger + DsCadastro.DataSet.fieldbyname('TOTAL_PENA_MES').AsInteger +
    DsCadastro.DataSet.fieldbyname('TOTAL_PENA_DIA').AsInteger) = 0 then
  begin
    exit;
  end;

  if CdsCadastro.fieldbyname('DATA_PRISAO').AsVariant = null then
  begin
    showmessage('Por favor informar data da prisão.');
    exit;
  end;

  if DsCadastro.DataSet.fieldbyname('DATA_INICIO_CONDENACAO').AsVariant = null then
  begin
    showmessage('Informe a data de inicio da condenação.');
    exit;
  end;

  MessageDlg('Visualizar linha do tempo? isto pode demorar...', mtWarning, mbYesNo,
    procedure(Sender: TComponent; Result: Integer)
    begin
      if Result = mrYes then
      begin

        try
          MemoLinhaTempo.Lines.Clear;

          // if CdsCadastro.FieldByName('DATA_INICIO_CONDENACAO').AsVariant = null then
          // begin
          // CdsCadastro.FieldByName('DATA_INICIO_CONDENACAO').AsDateTime :=
          // CdsCadastro.FieldByName('DATA_PRISAO').AsDateTime;
          // end;

          tAno := CdsCadastro.fieldbyname('TOTAL_PENA_ANO').AsInteger;
          tMes := CdsCadastro.fieldbyname('TOTAL_PENA_MES').AsInteger;
          tDia := CdsCadastro.fieldbyname('TOTAL_PENA_DIA').AsInteger;

          // CONDENAÇÃO
          MemoLinhaTempo.Lines.Add('LINHA DE TEMPO');
          // MemoLinhaTempo.SelAttributes.Color := clMaroon;
          MemoLinhaTempo.Lines.Add('CONDENAÇÃO........: ' + formatfloat('00', tAno) + 'a, ' + formatfloat('00', tMes) + 'm, ' + formatfloat('00', tDia) + 'd ');

          // PROGRESSÃO DE REGIME
          // MemoLinhaTempo.SelAttributes.Color := clGreen;
          MemoLinhaTempo.Lines.Add('PROGRESSÃO........: ' + formatfloat('00', CdsCadastro.fieldbyname('ANO_PROGRESSAO').AsInteger) + 'a, ' + formatfloat('00',
            CdsCadastro.fieldbyname('MES_PROGRESSAO').AsInteger) + 'm, ' + formatfloat('00', CdsCadastro.fieldbyname('DIA_PROGRESSAO').AsInteger) + 'd ');

          // CONDICIONAL
          // MemoLinhaTempo.SelAttributes.Color := clBlue;
          MemoLinhaTempo.Lines.Add('CONDICIONAL.......: ' + formatfloat('00', CdsCadastro.fieldbyname('ANO_CONDICIONAL').AsInteger) + 'a, ' + formatfloat('00',
            CdsCadastro.fieldbyname('MES_CONDICIONAL').AsInteger) + 'm, ' + formatfloat('00', CdsCadastro.fieldbyname('DIA_CONDICIONAL').AsInteger) + 'd ');

          // detração
          // MemoLinhaTempo.SelAttributes.Color := clNavy;
          CdsDetracao.Close;
          CdsDetracao.Open;
          if not CdsDetracao.IsEmpty then
          begin
            CdsDetracao.First;
            while not CdsDetracao.eof do
            begin

              MemoLinhaTempo.Lines.Add('DETRAÇÃO .........: ' + formatfloat('00', CdsDetracao.fieldbyname('ANO').AsInteger) + 'a, ' + formatfloat('00',
                CdsDetracao.fieldbyname('MES').AsInteger) + 'm, ' + formatfloat('00', CdsDetracao.fieldbyname('DIA').AsInteger) + 'd ');

              SubtrairTempo(tAno, tMes, tDia, CdsDetracao.fieldbyname('ANO').AsInteger, CdsDetracao.fieldbyname('MES').AsInteger,
                CdsDetracao.fieldbyname('DIA').AsInteger, tAno, tMes, tDia);

              // MemoLinhaTempo.SelAttributes.Color := clMaroon;
              MemoLinhaTempo.Lines.Add('PENA A CUMPRIR....: ' + formatfloat('00', tAno) + 'a, ' + formatfloat('00', tMes) + 'm, ' + formatfloat('00',
                tDia) + 'd ');
              // MemoLinhaTempo.SelAttributes.Color := clNavy;

              CdsDetracao.next;
            end;
          end;

          // remição
          // MemoLinhaTempo.SelAttributes.Color := clNavy;
          CdsRemicao.Close;
          CdsRemicao.Open;
          if not CdsRemicao.IsEmpty then
          begin
            CdsRemicao.First;
            while not CdsRemicao.eof do
            begin

              MemoLinhaTempo.Lines.Add('REMIÇÃO...........: ' + formatfloat('00', CdsRemicao.fieldbyname('DIAS_REMIDOS').AsInteger) + ' dias. ');

              SubtrairTempo(tAno, tMes, tDia, 0, 0, CdsRemicao.fieldbyname('DIAS_REMIDOS').AsInteger, tAno, tMes, tDia);

              // MemoLinhaTempo.SelAttributes.Color := clMaroon;
              MemoLinhaTempo.Lines.Add('PENA A CUMPRIR....: ' + formatfloat('00', tAno) + 'a, ' + formatfloat('00', tMes) + 'm, ' + formatfloat('00',
                tDia) + 'd ');
              // MemoLinhaTempo.SelAttributes.Color := clNavy;

              CdsRemicao.next;
            end;
          end;

          // Interrupção
          CdsInterrupcao.Close;
          CdsInterrupcao.Open;
          if not CdsInterrupcao.IsEmpty then
          begin
            CdsInterrupcao.First;
            while not CdsInterrupcao.eof do
            begin

              // MemoLinhaTempo.SelAttributes.Color := clRed;
              MemoLinhaTempo.Lines.Add('INTERRUPÇÃO.......: ' + formatfloat('00', CdsInterrupcao.fieldbyname('ANO').AsInteger) + 'a, ' + formatfloat('00',
                CdsInterrupcao.fieldbyname('MES').AsInteger) + 'm, ' + formatfloat('00', CdsInterrupcao.fieldbyname('DIA').AsInteger) + 'd ');

              SomarTempo(tAno, tMes, tDia, CdsInterrupcao.fieldbyname('ANO').AsInteger, CdsInterrupcao.fieldbyname('MES').AsInteger,
                CdsInterrupcao.fieldbyname('DIA').AsInteger, tAno, tMes, tDia);

              // MemoLinhaTempo.SelAttributes.Color := clMaroon;
              MemoLinhaTempo.Lines.Add('PENA A CUMPRIR....: ' + formatfloat('00', tAno) + 'a, ' + formatfloat('00', tMes) + 'm, ' + formatfloat('00',
                tDia) + 'd ');
              // MemoLinhaTempo.SelAttributes.Color := clNavy;

              CdsInterrupcao.next;
            end;
          end;

          MemoLinhaTempo.Lines.Add('INICIO CONDENAÇÃO:' + CdsCadastro.fieldbyname('DATA_INICIO_CONDENACAO').Asstring);

          vDataInicial := CdsCadastro.fieldbyname('DATA_INICIO_CONDENACAO').AsDateTime;
          vDataCalc := vDataInicial;
          vDias := 1;
          while (vDataCalc <= date) do
          begin
            CalcEntreDatas(vDataInicial, vDataCalc, vAno, vMes, vDia);
            // MemoLinhaTempo.SelAttributes.Color := clNavy;
            MemoLinhaTempo.Lines.Add('' + formatdatetime('dd-mm-yy', vDataCalc) + ' = ' + formatfloat('00', vAno) + 'a, ' + formatfloat('00', vMes) + 'm, ' +
              formatfloat('00', vDia) + 'd preso.');
            vDias := vDias + 1;
            vDataCalc := vDataCalc + 1;
            if (date - vDataCalc) > 5 then
            begin
              MemoLinhaTempo.Lines.Add('[...]');
              vDataCalc := date - 5;
            end;

          end;

          // MemoLinhaTempo.SelAttributes.Color := clBlue;
          MemoLinhaTempo.Lines.Add('PENA PAGA.........: ' + formatfloat('00', vAno) + 'a, ' + formatfloat('00', vMes) + 'm, ' + formatfloat('00', vDia) + 'd ');

          SubtrairTempo(tAno, tMes, tDia, vAno, vMes, vDia, tAno, tMes, tDia);
          // MemoLinhaTempo.SelAttributes.Color := clMaroon;
          MemoLinhaTempo.Lines.Add('PENA A CUMPRIR....: ' + formatfloat('00', tAno) + 'a, ' + formatfloat('00', tMes) + 'm, ' + formatfloat('00', tDia) + 'd ');

          // PROGRESSÃO DE REGIME
          // MemoLinhaTempo.SelAttributes.Color := clBlack;
          DataMaisAnoMesDia(DsCadastro.DataSet.fieldbyname('DATA_INICIO_CONDENACAO').AsDateTime, CdsCadastro.fieldbyname('ANO_PROGRESSAO').AsInteger,
            CdsCadastro.fieldbyname('MES_PROGRESSAO').AsInteger, CdsCadastro.fieldbyname('DIA_PROGRESSAO').AsInteger, vDataCalc);
          MemoLinhaTempo.Lines.Add('PROGRESSÃO........: ' + formatdatetime('dd-mm-yyyy', vDataCalc));

          CdsCadastro.fieldbyname('DATA_PROGRESSAO').AsDateTime := vDataCalc;

          // CONDICIONAL
          // MemoLinhaTempo.SelAttributes.Color := clBlack;
          DataMaisAnoMesDia(DsCadastro.DataSet.fieldbyname('DATA_INICIO_CONDENACAO').AsDateTime, CdsCadastro.fieldbyname('ANO_CONDICIONAL').AsInteger,
            CdsCadastro.fieldbyname('MES_CONDICIONAL').AsInteger, CdsCadastro.fieldbyname('DIA_CONDICIONAL').AsInteger, vDataCalc);
          MemoLinhaTempo.Lines.Add('CONDICIONAL.......: ' + formatdatetime('dd-mm-yyyy', vDataCalc));

          CdsCadastro.fieldbyname('DATA_CONDICIONAL').AsDateTime := vDataCalc;

          // FINAL DA PENA
          // MemoLinhaTempo.SelAttributes.Color := clBlack;
          DataMaisAnoMesDia(DsCadastro.DataSet.fieldbyname('DATA_INICIO_CONDENACAO').AsDateTime, tAno, tMes, tDia, vDataCalc);
          MemoLinhaTempo.Lines.Add('FINAL DA PENA.....: ' + formatdatetime('dd-mm-yyyy', vDataCalc));

          CdsCadastro.fieldbyname('DATA_FINAL_PENA').AsDateTime := vDataCalc;

        except

        end;
      end;

    end);

end;

procedure TFrmCadastroProcesso.cdsvincartigoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dsvincartigo.DataSet.fieldbyname('ID_vinc_artigo').AsInteger := Generator('idvincartigo');
  dsvincartigo.DataSet.fieldbyname('id_processo').AsInteger := DsCadastro.DataSet.fieldbyname('idprocesso').AsInteger;

end;

procedure TFrmCadastroProcesso.EditarClick(Sender: TObject);
begin
  inherited;

  PageControlProcesso.activepageindex := 0;

  UniDBEditInternoExit(nil);
  UniDBEditCidadeInqueritoExit(nil);
  UniDBEditDelegaciaExit(nil);
  UniDBEditComarcaExit(nil);
  UniDBEditVaraExit(nil);

end;

procedure TFrmCadastroProcesso.NovoClick(Sender: TObject);
begin
  inherited;

  PageControlProcesso.activepageindex := 0;

  CdsCadastro.fieldbyname('IDPROCESSO').AsInteger := Generator('id_processo');
  CdsCadastro.fieldbyname('IDINTERNO').AsInteger := FID_INTERNO;

  UniDBEditInternoExit(nil);
  UniDBEditCidadeInqueritoExit(nil);
  UniDBEditDelegaciaExit(nil);
  UniDBEditComarcaExit(nil);
  UniDBEditVaraExit(nil);

end;

procedure TFrmCadastroProcesso.UniBitBtnArtigoClick(Sender: TObject);
begin
  inherited;
  //
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    ConsultaTabelaUniEdit(Self, 'SELECT id_artigo codigo, ARTIGO FROM ARTIGO order by artigo', 'ARTIGO', 'CODIGO', 'ARTIGO', UniEditArtigo, UniLabelArtigo);
  end;

end;

procedure TFrmCadastroProcesso.UniBitBtnCidadeInqueritoClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self, 'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' + ' order by cidade, uf', 'cidade||''/''||uf', 'CODIGO',
      'descricao', UniDBEditCidadeInquerito, UniLabelCidade);

  end;

end;

procedure TFrmCadastroProcesso.UniBitBtnComarcaClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    ConsultaTabela(Self, 'select id_cidade codigo, cidade||''/''||uf descricao from cidade ' + ' order by cidade, uf', 'cidade||''/''||uf', 'CODIGO',
      'descricao', UniDBEditComarca, UniLabelComarca);

  end;

end;

procedure TFrmCadastroProcesso.UniBitBtnDelegaciaClick(Sender: TObject);
begin
  inherited;
  //
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin

    if strtointdef(UniDBEditCidadeInquerito.text, 0) > 0 then
    begin
      ConsultaTabela(Self, 'SELECT id_DESTINO codigo, DESTINO DELEGACIA FROM DESTINO where TIPO_DESTINO=''DELEGACIA'' AND IDCIDADE=' +
        UniDBEditCidadeInquerito.text, 'DELEGACIA', 'CODIGO', 'DELEGACIA', UniDBEditDelegacia, UniLabelDelegacia);
    end
    else
    begin
      showmessage('Informe a cidade do inquérito!');
      UniDBEditCidadeInquerito.setfocus;
    end;
  end;

end;

procedure TFrmCadastroProcesso.UniBitBtnVaraClick(Sender: TObject);
begin
  inherited;
  //
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    if strtointdef(UniDBEditComarca.text, 0) > 0 then
    begin
      ConsultaTabela(Self, 'SELECT id_DESTINO codigo, DESTINO VARA FROM DESTINO where TIPO_DESTINO=''VARA'' AND IDCIDADE=' + UniDBEditComarca.text, 'VARA',
        'CODIGO', 'VARA', UniDBEditVara, UniLabelVara);
    end
    else
    begin
      showmessage('Informe a comarca!');
      UniDBEditComarca.setfocus;
    end;
  end;

end;

procedure TFrmCadastroProcesso.UniDBEditCidadeInqueritoExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select cidade||''/''||uf descricao from cidade ' + ' WHERE id_cidade=', UniDBEditCidadeInquerito, UniLabelCidade);

end;

procedure TFrmCadastroProcesso.UniDBEditComarcaExit(Sender: TObject);
begin
  inherited;
  RetornaRegistro('select cidade||''/''||uf descricao from cidade ' + ' WHERE id_cidade=', UniDBEditComarca, UniLabelComarca);

end;

procedure TFrmCadastroProcesso.UniDBEditDelegaciaExit(Sender: TObject);
begin
  inherited;
  //
  RetornaRegistro('SELECT DESTINO FROM DESTINO WHERE ID_DESTINO = ', UniDBEditDelegacia, UniLabelDelegacia);

end;

procedure TFrmCadastroProcesso.UniDBEditInternoExit(Sender: TObject);
begin
  inherited;
  //
  RetornaRegistro('SELECT NOME_INTERNO||'' RGI:''||RGI FROM INTERNO WHERE ID_INTERNO=', UniDBEditInterno, UniLabelInterno);

end;

procedure TFrmCadastroProcesso.UniDBEditVaraExit(Sender: TObject);
begin
  inherited;
  //
  RetornaRegistro('SELECT DESTINO FROM DESTINO WHERE ID_DESTINO = ', UniDBEditVara, UniLabelVara);

end;

procedure TFrmCadastroProcesso.UniEditArtigoExit(Sender: TObject);
begin
  inherited;
  //
  RetornaRegistro('SELECT artigo FROM artigo WHERE id_artigo=', UniEditArtigo, UniLabelArtigo);

end;

procedure TFrmCadastroProcesso.UniFormCreate(Sender: TObject);
begin
  inherited;
  Novo.Visible := True;
  Editar.Visible := True;
  Salvar.Visible := True;

  { Verifica as permissões que o usuário possui para esta tela
    e habilita ou não os respectivos botões.
    Estas verificações devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
    Ex. ContemValor('I', PERMISSAO_CONFERE). }

  if not ContemValor('I', Dm.PERMISSAO_JURIDICA) and not ContemValor('E', Dm.PERMISSAO_JURIDICA) and not ContemValor('D', Dm.PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_JURIDICA) and not ContemValor('E', Dm.PERMISSAO_JURIDICA) and not ContemValor('D', Dm.PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_JURIDICA) and ContemValor('E', Dm.PERMISSAO_JURIDICA) and not ContemValor('D', Dm.PERMISSAO_JURIDICA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_JURIDICA) and ContemValor('E', Dm.PERMISSAO_JURIDICA) and ContemValor('D', Dm.PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', Dm.PERMISSAO_JURIDICA) and not ContemValor('E', Dm.PERMISSAO_JURIDICA) and ContemValor('D', Dm.PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_JURIDICA) and not ContemValor('E', Dm.PERMISSAO_JURIDICA) and ContemValor('D', Dm.PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', Dm.PERMISSAO_JURIDICA) and ContemValor('E', Dm.PERMISSAO_JURIDICA) and not ContemValor('D', Dm.PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroProcesso.UniFormShow(Sender: TObject);
var
  sInterno, sSql: string;
begin
  inherited;

  PageControlProcesso.activepageindex := 0;

  sSql := 'select ' + 'i.nome_interno, ' + 'p.nprocesso, ' + 'p.idprocesso, ' + 'p.SITUACAOJURIDICA, ' + 'p.NUMERO_INQUERITO, ' + 'p.IDINTERNO, ' + 'i.rgi, ' +
    'p.data_liberacao ' + 'from processo p ' + 'join interno i on p.idinterno = i.id_interno ' + 'where i.id_interno = ' + inttostr(FID_INTERNO) +
    ' order by i.nome_interno ';

  SqlConsulta.SQL.text := sSql;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

end;

end.
