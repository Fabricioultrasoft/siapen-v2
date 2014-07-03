unit CadastroFaltasDisciplinares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, ModeloCadastro, Data.FMTBcd, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBEdit, Data.DB, MemDS, DBAccess, Uni,
  uniScreenMask, uniGUIBaseClasses, uniTimer, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, Vcl.Imaging.jpeg,
  uniImage, uniPanel;

type
  TFrmCadastroFaltasDisciplinares = class(TFrmModeloCadastro)
    Label2: TUniLabel;
    Label3: TUniLabel;
    Label4: TUniLabel;
    Label5: TUniLabel;
    DBEditcodigo: TUniDBEdit;
    DBEdit2: TUniDBEdit;
    DBEdit3: TUniDBEdit;
    DBComboBox1: TUniDBComboBox;
    procedure SalvarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmCadastroFaltasDisciplinares: TFrmCadastroFaltasDisciplinares;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmCadastroFaltasDisciplinares: TFrmCadastroFaltasDisciplinares;
begin
  Result := TFrmCadastroFaltasDisciplinares
    (UniMainModule.GetFormInstance(TFrmCadastroFaltasDisciplinares));
end;

procedure TFrmCadastroFaltasDisciplinares.NovoClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SETFOCUS;

end;

procedure TFrmCadastroFaltasDisciplinares.SalvarClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
  begin
    ShowMessage('Digite Descrição da Falta Disciplinar!');
    DBEdit2.SETFOCUS;
  end
  else
  begin
    if DBEdit3.Text = '' then
    begin
      ShowMessage('Digite o Tempo de Reabilitação!');
      DBEdit3.SETFOCUS;
    end
    else
    begin
      if DBComboBox1.Text = '' then
      begin
        ShowMessage('Digite Tipo da Falta!');
        DBComboBox1.SETFOCUS;
      end
      else
        inherited;
    end;
  end;

end;

procedure TFrmCadastroFaltasDisciplinares.UniFormShow(Sender: TObject);
begin
  inherited;
  Coluna := 1;
  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

end;

end.
