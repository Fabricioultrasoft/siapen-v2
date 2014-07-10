unit CentralDocumentosDigitalizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, DocumentosDigitalizados, Data.FMTBcd, Data.DB,
  MemDS, DBAccess, Uni, uniScreenMask, uniGUIBaseClasses, uniTimer,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, uniStatusBar,
  uniRadioGroup, uniURLFrame, uniCheckBox, uniEdit, uniDBNavigator, uniDBMemo,
  uniBasicGrid, uniDBGrid, uniMemo, uniButton, uniDateTimePicker,
  uniDBDateTimePicker, uniDBCheckBox, uniDBComboBox, uniMultiItem, uniComboBox,
  uniDBLookupComboBox, uniDBEdit, uniPageControl, uniDBImage, uniBitBtn,
  uniLabel, Vcl.Imaging.jpeg, uniImage, uniPanel;

type
  TFrmCentralDocumentosDigitalizados = class(TFrmDocumentosDigitalizados)
    procedure UniBtnFiltrarClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmCentralDocumentosDigitalizados: TFrmCentralDocumentosDigitalizados;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, Lib;

function FrmCentralDocumentosDigitalizados: TFrmCentralDocumentosDigitalizados;
begin
  Result := TFrmCentralDocumentosDigitalizados(UniMainModule.GetFormInstance(TFrmCentralDocumentosDigitalizados));
end;

procedure TFrmCentralDocumentosDigitalizados.UniBtnFiltrarClick(
  Sender: TObject);
var
  Status, Campo: string;
begin
  // inherited;

  case UniRadioGroupStatus.ItemIndex of
    0:
      Status := ' and interno.st = ''A'' ';
    1:
      Status := ' ';
  end;

  Campo := 'NOME_INTERNO';

    if UniRadioGroupStatus.ItemIndex = 1 then
    begin
      SqlConsulta.SQL.Text := SqlConsultaBackup.SQL.Text + ' and interno.' +
        Campo + ' like ' + qs(EditLocalizar.Text + '%') +
        ' order by 1, d.data, d.descricao, INTERNO.nome_interno ';
    end
    else
    begin
      SqlConsulta.SQL.Text := SqlConsultaBackup.SQL.Text + Status +
        ' and interno.id_up=' + inttostr(dm.GLOBAL_ID_UP) + ' and interno.' +
        Campo + ' like ' + qs(EditLocalizar.Text + '%') +
        ' order by 1, d.data, d.descricao, INTERNO.nome_interno';
    end;

  DsConsulta.DataSet.close;
  DsConsulta.DataSet.Open;


end;

procedure TFrmCentralDocumentosDigitalizados.UniFormShow(Sender: TObject);
begin
  inherited;
UniBtnFiltrarClick(NIL);
end;

end.
