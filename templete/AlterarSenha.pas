unit AlterarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn,
  Vcl.Imaging.jpeg, uniImage, uniEdit, uniGUIBaseClasses, uniLabel;

type
  TFrmAlterarSenha = class(TUniForm)
    UniLabel1: TUniLabel;
    UniEditAntes: TUniEdit;
    UniLabel2: TUniLabel;
    UniEditRepetir: TUniEdit;
    UniImage1: TUniImage;
    UniLabel3: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    UniLabel4: TUniLabel;
    UniEditNova: TUniEdit;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniEditRepetirKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
begin

  if UniEditNova.Text = UniEditRepetir.Text then
  begin
    Dm.SqlConsultaUnica.SQL.Text := 'select * from login where login = ' + qs(DM.GLOBAL_NOME_FUNCIONARIO_LOGADO) + ' and senha=' + qs(Senha(UniEditAntes.Text));
    Dm.CDsConsultaUnica.Close;
    Dm.CDsConsultaUnica.Open;
    if not Dm.CDSConsultaUnica.IsEmpty then
    begin

      Dm.CdsConsultaUnica.edit;
      Dm.CdsConsultaUnica.FieldByName('SENHA').AsString := Senha(UniEditNova.Text);
      Dm.CdsConsultaUnica.post;
      Dm.CdsConsultaUnica.ApplyUpdates(-1);
      Dm.CdsConsultaUnica.close;

      humane.info('<b><font Color=blue>Sucesso! </font></b><br>' + 'Senha alterada...');
      ModalResult := mrOK; // Login is valid so proceed to MainForm
    end
    else
      humane.error('<b><font Color=red>Login: ' + Dm.GLOBAL_NOME_FUNCIONARIO_LOGADO + ' </font></b><br>' + 'Senha anterior não localizada!!!');
  end
  else
    humane.error('<b><font Color=red>Login: ' + Dm.GLOBAL_NOME_FUNCIONARIO_LOGADO + ' </font></b><br>' + 'Senha repetida é diferente da nova.');

end;


procedure TFrmAlterarSenha.UniEditRepetirKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if Key = VK_RETURN then
    UniBitBtn1Click(nil);
end;

initialization

RegisterAppFormClass(TFrmAlterarSenha);

end.
