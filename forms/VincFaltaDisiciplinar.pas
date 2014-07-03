unit VincFaltaDisiciplinar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, ModeloCadastro, Data.FMTBcd, uniDBMemo,
  uniDBComboBox, uniGroupBox, uniMemo, uniMultiItem, uniComboBox,
  uniDBLookupComboBox, uniDBEdit, Data.DB, MemDS, DBAccess, Uni, uniScreenMask,
  uniGUIBaseClasses, uniTimer, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid, uniEdit, uniPageControl,
  uniButton, uniBitBtn, uniLabel, Vcl.Imaging.jpeg, uniImage, uniPanel;

type
  TFrmVincFaltaDisiciplinar = class(TFrmModeloCadastro)
    Dsfaltadisciplinar: TDataSource;
    Cdsfaltadisciplinar: TClientDataSet;
    Dspfaltadisciplinar: TDataSetProvider;
    Sqlfaltadisciplinar: TSQLQuery;
    Label15: TUniLabel;
    Label2: TUniLabel;
    Label8: TUniLabel;
    Label4: TUniLabel;
    Label20: TUniLabel;
    Label21: TUniLabel;
    Label3: TUniLabel;
    Label5: TUniLabel;
    Label6: TUniLabel;
    Label9: TUniLabel;
    Label10: TUniLabel;
    Label16: TUniLabel;
    Label17: TUniLabel;
    Label19: TUniLabel;
    Label22: TUniLabel;
    Label29: TUniLabel;
    Label23: TUniLabel;
    Label18: TUniLabel;
    Label30: TUniLabel;
    Label7: TUniLabel;
    Label25: TUniLabel;
    Label26: TUniLabel;
    DBEditId: TUniDBEdit;
    DBEditNumeroPdi: TUniDBEdit;
    DBLookupComboBox1: TUniDBLookupComboBox;
    DBLookupComboBoxFaltaDisciplinar: TUniDBLookupComboBox;
    Memo1: TUniMemo;
    GroupBox1: TUniGroupBox;
    Label12: TUniLabel;
    Label14: TUniLabel;
    Label13: TUniLabel;
    DBEditQtddias: TUniDBEdit;
    DBEditDataFimIsolPrev: TUniDBEdit;
    DBEditDataInicioIsolPrev: TUniDBEdit;
    DBComboBoxPreventivo: TUniDBComboBox;
    DBComboBoxResultado: TUniDBComboBox;
    DBComboBoxTipoSancao: TUniDBComboBox;
    DBComboBoxClassificacaoConduta: TUniDBComboBox;
    DBComboboxHomologado: TUniDBComboBox;
    GroupBoxRecurso: TUniGroupBox;
    Label24: TUniLabel;
    Label11: TUniLabel;
    DBComboBoxDecisaoRecurso: TUniDBComboBox;
    DBRadioGroupRecurso: TUniDBComboBox;
    DBComboBoxSituacao: TUniDBComboBox;
    DBEditDataReabilitacao: TUniDBEdit;
    DBMemo1: TUniDBMemo;
    DBEditDataIncidencia: TUniDBEdit;
    DBEditDataInstPortaria: TUniDBEdit;
    DBEditDataInicio: TUniDBEdit;
    DBEditDataResultado: TUniDBEdit;
    DBEditDataFimIsol: TUniDBEdit;
    DBEditQuantidadeDias: TUniDBEdit;
    DBEditDataCondenacao: TUniDBEdit;
    DBEditNumProcesso: TUniDBEdit;
    DBComboBoxTipo: TUniDBComboBox;
    DBEditDataProcedimento: TUniDBEdit;
    DBEditConclusao: TUniDBEdit;
    DBEditNatureza: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    procedure EditarClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBComboBoxPreventivoDropDown(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure DBEditQtddiasExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmVincFaltaDisiciplinar: TFrmVincFaltaDisiciplinar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, ConselhoDisciplinar;

function FrmVincFaltaDisiciplinar: TFrmVincFaltaDisiciplinar;
begin
  Result := TFrmVincFaltaDisiciplinar(UniMainModule.GetFormInstance(TFrmVincFaltaDisiciplinar));
end;

procedure TFrmVincFaltaDisiciplinar.DBComboBoxPreventivoDropDown(
  Sender: TObject);
begin
  inherited;
  If DBComboBoxPreventivo.ItemIndex = 0 then begin
    GroupBox1.Enabled := true;
  end else
    if (DsCadastro.DataSet.State in [dsedit]) then begin
      DsCadastro.DataSet.FieldByName('dt_inicio_isolamento').AsString := '';
      DsCadastro.DataSet.FieldByName('dt_fim_isolamento').AsString := '';
      DsCadastro.DataSet.FieldByName('QTDE_DIAS_ISOLAMENTO').AsString := '';
    end;
    GroupBox1.Enabled := false;
end;

procedure TFrmVincFaltaDisiciplinar.DBEditQtddiasExit(Sender: TObject);
var
    DataInicial : TDateTime;
    Dias : Integer;
begin
  inherited;
end;

procedure TFrmVincFaltaDisiciplinar.EditarClick(Sender: TObject);
begin
  inherited;
  dm.DsInterno.DataSet.close;
  dm.DsInterno.DataSet.open;

  Dsfaltadisciplinar.DataSet.Close;
  Dsfaltadisciplinar.DataSet.Open;

    Memo1.Text := DBLookupComboBoxFaltaDisciplinar.Text;
end;

procedure TFrmVincFaltaDisiciplinar.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConselhoDisciplinar.Dsvincfaltadisciplinar.dataset.close;
  frmConselhoDisciplinar.Dsvincfaltadisciplinar.dataset.open;
end;

procedure TFrmVincFaltaDisiciplinar.UniFormShow(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;
end;

end.
