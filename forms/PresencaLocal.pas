unit PresencaLocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Interno, Data.FMTBcd, Data.DB, MemDS, DBAccess,
  Uni, uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniEdit, uniRadioGroup,
  uniDBDateTimePicker, uniDBNavigator, uniDateTimePicker, uniDBMemo,
  uniBasicGrid, uniDBGrid, uniMemo, uniButton, uniCheckBox, uniDBCheckBox,
  uniDBComboBox, uniMultiItem, uniComboBox, uniDBLookupComboBox, uniDBEdit,
  uniPageControl, uniDBImage, uniBitBtn, uniLabel, Vcl.Imaging.jpeg, uniImage,
  uniPanel;

type
  TFrmPresencaLocal = class(TFrmInterno)
    UniTabSheetPresencaLocal: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    BtnPresenca: TUniButton;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    DsPresencaLocal: TDataSource;
    CdsPresencaLocal: TClientDataSet;
    CdsPresencaLocalID_PRESENCA_LOCAL: TIntegerField;
    CdsPresencaLocalDATA_PRESENCA: TSQLTimeStampField;
    CdsPresencaLocalHORA_PRESENCA: TTimeField;
    CdsPresencaLocalID_INTERNO: TIntegerField;
    CdsPresencaLocalID_UP: TIntegerField;
    CdsPresencaLocalOBS: TStringField;
    CdsPresencaLocalID_FUNCIONARIO: TIntegerField;
    CdsPresencaLocalJUSTIFICA_FALTA: TStringField;
    CdsPresencaLocalIDSETOR_TRABALHO: TIntegerField;
    CdsPresencaLocalREGISTRO_JUDICIARIO: TStringField;
    CdsPresencaLocalSETOR: TStringField;
    CdsPresencaLocalENDERECO: TStringField;
    CdsPresencaLocalBAIRRO: TStringField;
    CdsPresencaLocalTIPO_TRABALHO: TStringField;
    DspPresencaLocal: TDataSetProvider;
    SqlPresencaLocal: TSQLQuery;
    procedure UniFormShow(Sender: TObject);
    procedure BtnPresencaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmPresencaLocal: TFrmPresencaLocal;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, PresencaLocalRegistro;

function FrmPresencaLocal: TFrmPresencaLocal;
begin
  Result := TFrmPresencaLocal(UniMainModule.GetFormInstance(TFrmPresencaLocal));
end;

procedure TFrmPresencaLocal.BtnPresencaClick(Sender: TObject);
var sEndereco, sBairro:string;
id_setor_trabalho: integer;
begin
  inherited;

  id_setor_trabalho := DsCadastro.DataSet.FieldByName('IDSETOR_TRABALHO').AsInteger;
  sEndereco := '';
  sBairro := '';

  DsPresencaLocal.DataSet.Last;
  if not DsPresencaLocal.DataSet.IsEmpty then
  begin
    sEndereco := DsPresencaLocal.DataSet.FieldByName('ENDERECO').AsString;
    sBairro := DsPresencaLocal.DataSet.FieldByName('BAIRRO').AsString;
    id_setor_trabalho := DsPresencaLocal.DataSet.FieldByName('IDSETOR_TRABALHO').AsInteger;
  end;

  DsPresencaLocal.DataSet.Append;
  DsPresencaLocal.DataSet.FieldByName('ID_PRESENCA_LOCAL').AsInteger := 0;
  DsPresencaLocal.DataSet.FieldByName('DATA_PRESENCA').AsDateTime := Date;
  DsPresencaLocal.DataSet.FieldByName('HORA_PRESENCA').AsDateTime := Time;
  DsPresencaLocal.DataSet.FieldByName('ID_INTERNO').AsInteger :=
    DsCadastro.DataSet.FieldByName('ID_INTERNO').AsInteger;
  DsPresencaLocal.DataSet.FieldByName('ID_UP').AsInteger :=
    Dm.GLOBAL_ID_UP;
  DsPresencaLocal.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger :=
    Dm.GLOBAL_ID_FUNCIONARIO;

  DsPresencaLocal.DataSet.FieldByName('IDSETOR_TRABALHO').AsInteger := id_setor_trabalho ;

  DsPresencaLocal.DataSet.FieldByName('REGISTRO_JUDICIARIO').AsString := 'S';
  DsPresencaLocal.DataSet.FieldByName('OBS').AsString := 'Confirmada presença no local: ' + dm.GLOBAL_NOME_UP + ', registrado por:' + dm.GLOBAL_NOME_FUNCIONARIO_LOGADO + '.';
  DsPresencaLocal.DataSet.FieldByName('JUSTIFICA_FALTA').AsString := 'Sem Ocorrência';
  DsPresencaLocal.DataSet.FieldByName('TIPO_TRABALHO').AsString := 'Convênios';
  DsPresencaLocal.DataSet.FieldByName('ENDERECO').AsString := sEndereco;
  DsPresencaLocal.DataSet.FieldByName('BAIRRO').AsString := sBairro;

  FrmPresencaLocalRegistro.ShowModal;

end;

procedure TFrmPresencaLocal.UniFormShow(Sender: TObject);
begin
  inherited;
  TabSheetAdvogados.TabVisible := False;
  TabSheetEndereco.TabVisible := False;
  TabSheetHistorico.TabVisible := False;
  TabSheetFotos.TabVisible := False;
  TabSheetMovAnterior.TabVisible := False;
  TabSheetMapa.TabVisible := False;

end;

end.
