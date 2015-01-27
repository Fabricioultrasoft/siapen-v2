unit FiltroUP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses,
  uniRadioGroup, Data.FMTBcd, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, Data.DB, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient;

type
  TFrmFiltroUP = class(TUniForm)
    UniBitBtnConfirma: TUniBitBtn;
    UniBitBtnCancelar: TUniBitBtn;
    DsUP: TDataSource;
    CdsUP: TClientDataSet;
    DspUP: TDataSetProvider;
    SqlUP: TSQLQuery;
    UniDBLookupComboBoxUP: TUniDBLookupComboBox;
    procedure UniBitBtnConfirmaClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniDBLookupComboBoxUPCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmFiltroUP: TFrmFiltroUP;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal;

function FrmFiltroUP: TFrmFiltroUP;
begin
  Result := TFrmFiltroUP(UniMainModule.GetFormInstance(TFrmFiltroUP));
end;

procedure TFrmFiltroUP.UniBitBtnConfirmaClick(Sender: TObject);
begin

  Self.ModalResult := mrOk;

end;

procedure TFrmFiltroUP.UniDBLookupComboBoxUPCloseUp(Sender: TObject);
begin

  dm.GLOBAL_ID_UP_FILTRO := DsUP.DataSet.FieldByName('ID_UP').AsInteger;

end;

procedure TFrmFiltroUP.UniFormShow(Sender: TObject);
begin
  DsUP.DataSet.Close;
  DsUP.DataSet.Open;
  DsUP.DataSet.First;

  UniDBLookupComboBoxUP.KeyValue := DsUP.DataSet.FieldByName('ID_UP').asinteger;
  dm.GLOBAL_ID_UP_FILTRO := DsUP.DataSet.FieldByName('ID_UP').AsInteger;

end;

end.
