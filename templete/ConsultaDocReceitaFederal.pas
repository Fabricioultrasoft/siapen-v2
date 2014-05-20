unit ConsultaDocReceitaFederal;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIForm,
  rpgraphicex,
  uniLabel,
  Vcl.Imaging.jpeg,
  uniImage,
  uniGUIBaseClasses,
  uniPanel,
  uniPageControl,
  uniEdit,
  uniButton,
  uniBitBtn,
  ACBrBase,
  ACBrSocket,
  ACBrConsultaCNPJ,
  uniCheckBox,
  uniTimer,
  ACBrConsultaCPF;

type
  TFrmConsultaDocReceitaFederal = class(TUniForm)
    PanelTituloModeloCadastro: TUniPanel;
    UniImage1: TUniImage;
    LabelTitulo: TUniLabel;
    UniImageLogoMarca: TUniImage;
    UniPageControl1: TUniPageControl;
    UniTabSheetCNPJ: TUniTabSheet;
    UniTabSheetCPF: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniEditCNPJ: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniEditCNPJCaptcha: TUniEdit;
    UniBtnConsultarCNPJ: TUniBitBtn;
    UniLabelAtualizaCaptcha: TUniLabel;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    UniImageCNPJCaptcha: TUniImage;
    ckRemoverEspacosDuplos: TUniCheckBox;
    UniPanel2: TUniPanel;
    UniEditTipoEmpresa: TUniEdit;
    UniLabel4: TUniLabel;
    UniEditRazaoSocial: TUniEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniEditAbertura: TUniEdit;
    UniLabel7: TUniLabel;
    UniEditFantasia: TUniEdit;
    UniEditEndereco: TUniEdit;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniEditNumero: TUniEdit;
    UniLabel10: TUniLabel;
    UniEditComplemento: TUniEdit;
    UniEditBairro: TUniEdit;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniEditCidade: TUniEdit;
    UniEditUF: TUniEdit;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniEditCEP: TUniEdit;
    UniLabel15: TUniLabel;
    UniEditSituacao: TUniEdit;
    UniTimer1: TUniTimer;
    UniBitBtnConfirmaCNPJ: TUniBitBtn;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    UniPanel3: TUniPanel;
    UniEditCPF: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel16: TUniLabel;
    UniEditCPFCaptcha: TUniEdit;
    UniBitBtnConsultaCPF: TUniBitBtn;
    UniLabelAtualizaCPFCaptcha: TUniLabel;
    UniImageCPFCaptcha: TUniImage;
    UniPanel4: TUniPanel;
    UniEditCPFNomePessoaFisica: TUniEdit;
    UniLabel19: TUniLabel;
    UniLabel21: TUniLabel;
    UniEditDigitoVerificador: TUniEdit;
    UniEditComprovante: TUniEdit;
    UniLabel22: TUniLabel;
    UniLabel24: TUniLabel;
    UniEditControleComprovante: TUniEdit;
    UniLabel29: TUniLabel;
    UniEditCPFSituacaoCadastral: TUniEdit;
    procedure UniFormShow(Sender: TObject);
    procedure UniLabelAtualizaCaptchaClick(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniBtnConsultarCNPJClick(Sender: TObject);
    procedure UniBitBtnConfirmaCNPJClick(Sender: TObject);
    procedure UniBitBtnFecharClick(Sender: TObject);
    procedure UniBitBtnConsultaCPFClick(Sender: TObject);
    procedure UniLabelAtualizaCPFCaptchaClick(Sender: TObject);
    procedure UniPageControl1Change(Sender: TObject);
    procedure UniFormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmConsultaDocReceitaFederal: TFrmConsultaDocReceitaFederal;

implementation

{$R *.dfm}

uses
  MainModule,
  uniGUIApplication,
  DmPrincipal,
  Lib,
  UniEditFormat;

function FrmConsultaDocReceitaFederal: TFrmConsultaDocReceitaFederal;
begin
  Result := TFrmConsultaDocReceitaFederal(UniMainModule.GetFormInstance(TFrmConsultaDocReceitaFederal));
end;

procedure TFrmConsultaDocReceitaFederal.UniBitBtnConfirmaCNPJClick(Sender: TObject);
begin

  ModalResult := mrOk;

end;

procedure TFrmConsultaDocReceitaFederal.UniBitBtnConsultaCPFClick(Sender: TObject);
begin
  if UniEditCPFCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(ApenasNumero(UniEditCPF.Text), UniEditCPFCaptcha.Text) then
    begin
      UniEditCPFNomePessoaFisica.Text := ACBrConsultaCPF1.Nome;
      UniEditCPFSituacaoCadastral.Text := ACBrConsultaCPF1.Situacao;
      UniEditDigitoVerificador.Text := ACBrConsultaCPF1.DigitoVerificador;
      UniEditComprovante.Text := ACBrConsultaCPF1.Emissao;
      UniEditControleComprovante.Text := ACBrConsultaCPF1.CodCtrlControle;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    UniEditCPF.SetFocus;
  end;

end;

procedure TFrmConsultaDocReceitaFederal.UniBitBtnFecharClick(Sender: TObject);
begin

  ModalResult := mrCancel;

end;

procedure TFrmConsultaDocReceitaFederal.UniBtnConsultarCNPJClick(Sender: TObject);
begin
  if UniEditCNPJCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ1.Consulta(ApenasNumero(UniEditCNPJ.Text), UniEditCNPJCaptcha.Text, ckRemoverEspacosDuplos.Checked) then
    begin
      UniEditTipoEmpresa.Text := ACBrConsultaCNPJ1.EmpresaTipo;
      UniEditRazaoSocial.Text := ACBrConsultaCNPJ1.RazaoSocial;
      UniEditAbertura.Text := DateToStr(ACBrConsultaCNPJ1.Abertura);
      UniEditFantasia.Text := ACBrConsultaCNPJ1.Fantasia;
      UniEditEndereco.Text := ACBrConsultaCNPJ1.Endereco;
      UniEditNumero.Text := ACBrConsultaCNPJ1.Numero;
      UniEditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      UniEditBairro.Text := ACBrConsultaCNPJ1.Bairro;
      UniEditCidade.Text := ACBrConsultaCNPJ1.Cidade;
      UniEditUF.Text := ACBrConsultaCNPJ1.UF;
      UniEditCEP.Text := ACBrConsultaCNPJ1.CEP;
      UniEditSituacao.Text := ACBrConsultaCNPJ1.Situacao;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    UniEditCNPJCaptcha.SetFocus;
  end;
end;

procedure TFrmConsultaDocReceitaFederal.UniFormActivate(Sender: TObject);
var
  mi: TMaskedInput;
begin
  mi := TMaskedInput.Create('99.999.999/9999-99');
  mi.Format(UniEditCNPJ);
//
  mi.mask := '99.999.999/9999-99';
  mi.Format(UniEditCNPJ);
//
  mi.mask := '999.999.999-99';
  mi.Format(UniEditCPF);

  mi.Free;
end;

procedure TFrmConsultaDocReceitaFederal.UniFormShow(Sender: TObject);
begin
//  UniImageLogoMarca.Url := dmsi.CdsEmpresaSTRING_CONEXAO.AsString;
  if UniTabSheetCPF.Visible then
    UniPageControl1.ActivePageIndex := 1;
  if UniTabSheetCNPJ.Visible then
    UniPageControl1.ActivePageIndex := 0;
  UniTimer1.Enabled := True;

end;

procedure TFrmConsultaDocReceitaFederal.UniLabelAtualizaCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  Jpg: TJPEGImage;
begin
  Stream := TMemoryStream.Create;
  Jpg := TJPEGImage.Create;
  try
    ACBrConsultaCNPJ1.Captcha(Stream);
    Jpg.LoadFromStream(Stream);
    UniImageCNPJCaptcha.Picture.Assign(Jpg);

    UniEditCNPJCaptcha.Clear;
    UniEditCNPJCaptcha.SetFocus;
  finally
    Stream.Free;
    Jpg.Free;
  end;
end;

procedure TFrmConsultaDocReceitaFederal.UniLabelAtualizaCPFCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  Jpg: TJPEGImage;
begin
  Stream := TMemoryStream.Create;
  Jpg := TJPEGImage.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    Jpg.LoadFromStream(Stream);
    UniImageCPFCaptcha.Picture.Assign(Jpg);

    UniEditCPFCaptcha.Clear;
    UniEditCPFCaptcha.SetFocus;
  finally
    Stream.Free;
    Jpg.Free;
  end;
end;

procedure TFrmConsultaDocReceitaFederal.UniPageControl1Change(Sender: TObject);
begin

  if UniPageControl1.ActivePageIndex = 1 then
    UniLabelAtualizaCPFCaptchaClick(UniLabelAtualizaCPFCaptcha);

end;

procedure TFrmConsultaDocReceitaFederal.UniTimer1Timer(Sender: TObject);
begin
  UniTimer1.Enabled := False;
  UniLabelAtualizaCaptchaClick(UniLabelAtualizaCaptcha);
  UniEditCNPJ.SetFocus;

end;

end.
