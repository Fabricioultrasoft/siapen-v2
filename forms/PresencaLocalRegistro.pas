unit PresencaLocalRegistro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, DBAccess, Uni, uniPanel, uniPageControl,
  uniDBComboBox, uniMemo, uniDBMemo, uniMultiItem, uniComboBox,
  uniDBLookupComboBox, uniEdit, uniDBEdit, uniDateTimePicker,
  uniDBDateTimePicker, uniButton, uniBitBtn, uniSpeedButton, uniGUIBaseClasses,
  uniLabel;

type
  TFrmPresencaLocalRegistro = class(TUniForm)
    Label1: TUniLabel;
    Label2: TUniLabel;
    Label8: TUniLabel;
    BtnLocalTrabalho: TUniSpeedButton;
    Label3: TUniLabel;
    Label4: TUniLabel;
    BtnConfirma: TUniButton;
    BtnCancela: TUniButton;
    adpDBDateTimePicker1: TUniDBDateTimePicker;
    DBEdit1: TUniDBEdit;
    DBLookupComboBoxsetortrabalho: TUniDBLookupComboBox;
    DBMemo1: TUniDBMemo;
    DBMemo2: TUniDBMemo;
    DBRadioGroup1: TUniDBComboBox;
    PageControl1: TUniPageControl;
    TabSheet1: TUniTabSheet;
    PanelCadastro: TUniPanel;
    Label7: TUniLabel;
    Label9: TUniLabel;
    Label10: TUniLabel;
    Label11: TUniLabel;
    Label12: TUniLabel;
    Label13: TUniLabel;
    Label14: TUniLabel;
    Label6: TUniLabel;
    Label5: TUniLabel;
    DBEdit3: TUniDBEdit;
    DBEdit4: TUniDBEdit;
    DBEdit5: TUniDBEdit;
    DBEdit6: TUniDBEdit;
    DBEdit7: TUniDBEdit;
    DBEditCNPJ: TUniDBEdit;
    DBLookupComboBox1: TUniDBLookupComboBox;
    DBEdit2: TUniDBEdit;
    DBEditcodigo: TUniDBEdit;
    TabSheet2: TUniTabSheet;
    Label15: TUniLabel;
    Label16: TUniLabel;
    DBMemo3: TUniDBMemo;
    DBEdit8: TUniDBEdit;
    DBRadioGroup2: TUniDBComboBox;
    DsSetorTrabalho: TUniDataSource;
    CdsSetorTrabalho: TClientDataSet;
    DspSetorTrabalho: TDataSetProvider;
    SqlSetorTrabalho: TSQLQuery;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnLocalTrabalhoClick(Sender: TObject);
    procedure DBLookupComboBoxsetortrabalhoClick(Sender: TObject);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmPresencaLocalRegistro: TFrmPresencaLocalRegistro;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DmPrincipal, PresencaLocal;

function FrmPresencaLocalRegistro: TFrmPresencaLocalRegistro;
begin
  Result := TFrmPresencaLocalRegistro(UniMainModule.GetFormInstance(TFrmPresencaLocalRegistro));
end;

procedure TFrmPresencaLocalRegistro.BtnLocalTrabalhoClick(Sender: TObject);
begin
{
  Frmcadastrosetortrabalho := TFrmcadastrosetortrabalho.Create(Application);

  if FrmPresencaLocal.DsPresencaLocal.DataSet.FieldByName('IDSETOR_TRABALHO').AsInteger > 0 then
  begin

    Frmcadastrosetortrabalho.SqlCadastro.sql.Text :=
      'SELECT * FROM SETOR_TRABALHO WHERE ID_SETOR_TRABALHO =' +
      FrmPresencaLocal.DsPresencaLocal.DataSet.FieldByName('IDSETOR_TRABALHO').AsString;

    Frmcadastrosetortrabalho.CdsCadastro.Close;
    Frmcadastrosetortrabalho.CdsCadastro.Open;

  end;

  Frmcadastrosetortrabalho.ShowModal;
  FreeAndNil(Frmcadastrosetortrabalho);

  DM.DsSetorTrabalho.DataSet.Close;
  DM.DsSetorTrabalho.DataSet.OPEN;

  DsSetorTrabalho.DataSet.Close;
  DsSetorTrabalho.DataSet.Open;
 }
end;

procedure TFrmPresencaLocalRegistro.BtnConfirmaClick(Sender: TObject);
begin

  FrmPresencaLocal.DsPresencaLocal.DataSet.Post;
//  FrmPresencaLocal.CdsCadastro.FieldByName('IDSETOR_TRABALHO').AsInteger :=
//    FrmPresencaLocal.DsPresencaLocal.DataSet.FieldByName('IDSETOR_TRABALHO').AsInteger;

  close;

  FrmPresencaLocal.Salvar.OnClick(nil);
  FrmPresencaLocal.Editar.OnClick(nil);
  FrmPresencaLocal.PageControlInterno.ActivePage := FrmPresencaLocal.UniTabSheetPresencaLocal;
  FrmPresencaLocal.DsPresencaLocal.DataSet.Last;

end;

procedure TFrmPresencaLocalRegistro.BtnCancelaClick(Sender: TObject);
begin
  FrmPresencaLocal.DsPresencaLocal.DataSet.Cancel;
  close;
end;

procedure TFrmPresencaLocalRegistro.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;

  DM.DsSetorTrabalho.DataSet.Close;
  DM.DsSetorTrabalho.DataSet.Open;

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.Open;

  SqlSetorTrabalho.ParamByName('id_setor_trabalho').AsInteger :=
    FrmPresencaLocal.DsPresencaLocal.DataSet.FieldByName('IDSETOR_TRABALHO').AsInteger;

  DsSetorTrabalho.DataSet.Close;
  DsSetorTrabalho.DataSet.Open;

end;

procedure TFrmPresencaLocalRegistro.DBLookupComboBoxsetortrabalhoClick(
  Sender: TObject);
begin

  SqlSetorTrabalho.ParamByName('id_setor_trabalho').AsInteger :=
    FrmPresencaLocal.DsPresencaLocal.DataSet.FieldByName('IDSETOR_TRABALHO').AsInteger;

  DsSetorTrabalho.DataSet.Close;
  DsSetorTrabalho.DataSet.Open;

end;

procedure TFrmPresencaLocalRegistro.DBRadioGroup2Change(Sender: TObject);
begin

  if DBRadioGroup2.ItemIndex = 1 then
  begin
    if TRIM(FrmPresencaLocal.DsPresencaLocal.DataSet.FieldByName('ENDERECO').AsString) = '' then
    begin
      FrmPresencaLocal.DsPresencaLocal.DataSet.FieldByName('ENDERECO').AsString :=
        FrmPresencaLocal.DsCadastro.DataSet.FieldByName('ENDERECO').AsString;
      FrmPresencaLocal.DsPresencaLocal.DataSet.FieldByName('BAIRRO').AsString :=
        FrmPresencaLocal.DsCadastro.DataSet.FieldByName('BAIRRO').AsString;
    end;
  end;

end;


end.
