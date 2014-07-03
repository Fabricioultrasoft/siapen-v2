unit FiltroPeriodoServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniDateTimePicker, uniGUIBaseClasses,
  uniButton, uniBitBtn, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient;

type
  TfrmFiltroPeriodoServidor = class(TUniForm)
    UniBitBtnCancelar: TUniBitBtn;
    UniBitBtnConfirma: TUniBitBtn;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    DBLookupComboBox9: TUniDBLookupComboBox;
    Label137: TUniLabel;
    DsFuncionario: TDataSource;
    cdsfuncionario: TClientDataSet;
    dspfuncionario: TDataSetProvider;
    SQLfuncionario: TSQLQuery;
    procedure UniBitBtnConfirmaClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmFiltroPeriodoServidor: TfrmFiltroPeriodoServidor;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal;

function frmFiltroPeriodoServidor: TfrmFiltroPeriodoServidor;
begin
  Result := TfrmFiltroPeriodoServidor
    (UniMainModule.GetFormInstance(TfrmFiltroPeriodoServidor));
end;

procedure TfrmFiltroPeriodoServidor.UniBitBtnConfirmaClick(Sender: TObject);
begin
  dm.GLOBAL_DATA_INICIAL := FormatDateTime('dd.mm.yyyy',
    UniDateTimePicker1.datetime);
  dm.GLOBAL_DATA_FINAL := FormatDateTime('dd.mm.yyyy',
    UniDateTimePicker2.datetime);
  dm.GLOBAL_IDFUNCIONARIO_FILTRO := DBLookupComboBox9.KeyValue;
  self.ModalResult := mrok;
end;

procedure TfrmFiltroPeriodoServidor.UniFormShow(Sender: TObject);
begin
  UniDateTimePicker1.datetime := date - 1;
  UniDateTimePicker2.datetime := date;
  SQLfuncionario.SQL.Text :=
    '  SELECT ID_FUNCIONARIO,NOME_FUNCIONARIO FROM FUNCIONARIO ' +
    'WHERE COALESCE(NOME_FUNCIONARIO,'''')<>'''' AND ID_UP = ' +
    IntToStr(dm.GLOBAL_ID_UP) + ' ORDER BY NOME_FUNCIONARIO';

   DsFuncionario.DataSet.Close;
   DsFuncionario.DataSet.Open;

end;

end.
