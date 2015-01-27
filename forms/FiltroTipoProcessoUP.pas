unit FiltroTipoProcessoUP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses,
  uniRadioGroup, Data.FMTBcd, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, Data.DB, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient;

type
  TFrmFiltroTipoProcessoUP = class(TUniForm)
    UniRadioGroup1: TUniRadioGroup;
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

function FrmFiltroTipoProcessoUP: TFrmFiltroTipoProcessoUP;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal;

function FrmFiltroTipoProcessoUP: TFrmFiltroTipoProcessoUP;
begin
  Result := TFrmFiltroTipoProcessoUP(UniMainModule.GetFormInstance(TFrmFiltroTipoProcessoUP));
end;

procedure TFrmFiltroTipoProcessoUP.UniBitBtnConfirmaClick(Sender: TObject);
begin

  case UniRadioGroup1.ItemIndex of
    0:
      dm.GLOBAL_TIPOPROCESSO := 'Condenado';
    1:
      dm.GLOBAL_TIPOPROCESSO := 'Processado';
    2:
      dm.GLOBAL_TIPOPROCESSO := 'Med. Segurança';
    3:
      dm.GLOBAL_TIPOPROCESSO := '(Em Branco)';
    4:
      dm.GLOBAL_TIPOPROCESSO := '';
  end;

  Self.ModalResult := mrOk;

end;

procedure TFrmFiltroTipoProcessoUP.UniDBLookupComboBoxUPCloseUp(Sender: TObject);
begin

  dm.GLOBAL_ID_UP_FILTRO := DsUP.DataSet.FieldByName('ID_UP').AsInteger;

end;

procedure TFrmFiltroTipoProcessoUP.UniFormShow(Sender: TObject);
begin
  DsUP.DataSet.Close;
  DsUP.DataSet.Open;
  DsUP.DataSet.First;

  UniDBLookupComboBoxUP.KeyValue := DsUP.DataSet.FieldByName('ID_UP').asinteger;
  dm.GLOBAL_ID_UP_FILTRO := DsUP.DataSet.FieldByName('ID_UP').AsInteger;

end;

end.
