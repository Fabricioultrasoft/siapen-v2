unit AlterarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn,
  Vcl.Imaging.jpeg, uniImage, uniEdit, uniGUIBaseClasses, uniLabel, Data.DB,
  Datasnap.DBClient;

type
  TFrmAlterarSenha = class(TUniForm)
    UniLabel1: TUniLabel;
    Edit1: TUniEdit;
    UniLabel2: TUniLabel;
    Edit3: TUniEdit;
    UniLabel3: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    UniLabel4: TUniLabel;
    Edit2: TUniEdit;
    UniImageLogoMarca: TUniImage;
    ClientDataSet1: TClientDataSet;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmAlterarSenha: TFrmAlterarSenha;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, DmPrincipal, Lib, humanejs;

function FrmAlterarSenha: TFrmAlterarSenha;
begin
  Result := TFrmAlterarSenha(UniMainModule.GetFormInstance(TFrmAlterarSenha));
end;

procedure TFrmAlterarSenha.UniBitBtn1Click(Sender: TObject);
var
  senhaatual, senhanova: string;
begin

  senhanova := Edit2.Text;

  if Edit2.Text <> Edit3.Text then
  begin
    showmessage('Confirmação de Senha Não Confere!');
    Edit2.SetFocus;
  end
  else
  begin

    //if not DsVisitanteInterno.DataSet.Locate('PAVILHAO', QualPavilhao, []) then
    if dm.dsfuncionario.DataSet.locate('id_funcionario', dm.GLOBAL_ID_FUNCIONARIO, []) = true then
    begin

      if dm.dsfuncionario.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString <> '' then
        senhaatual := Senha(dm.dsfuncionario.DataSet.FieldByName('SENHA').AsString)
      else
        senhaatual := dm.dsfuncionario.DataSet.FieldByName('SENHA').AsString;

      if senhaatual <> Edit1.text then
      begin
        showmessage('Senha Atual Invalida!');
        Edit1.SetFocus;
      end
      else
      begin
        dm.dsfuncionario.DataSet.edit;
        dm.dsfuncionario.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString := 'S';
        dm.dsfuncionario.DataSet.FieldByName('SENHA').AsString := senha(UpperCase(senhanova));
        dm.dsfuncionario.DataSet.Post;
        TClientDataSet(DM.DSFUNCIONARIO.DataSet).ApplyUpdates(0);
        ShowMessage('Senha Alterada Com Sucesso!');
        CLOSE;
      end;

    end;
  end;
end;


procedure TFrmAlterarSenha.UniFormCreate(Sender: TObject);
begin
  DM.dsfuncionario.DataSet.Close;
  DM.dsfuncionario.DataSet.Open;
end;

procedure TFrmAlterarSenha.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    UniBitBtn1Click(nil);
end;

initialization

RegisterAppFormClass(TFrmAlterarSenha);

end.
