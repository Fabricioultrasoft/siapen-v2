unit uTraducao;

interface

uses
  Windows,
  consts,
  Vcl.VDBConsts;

Type
  TTraducao = Class
  private
    class procedure SetResourceString(xOldResourceString: PResStringRec; xValueChanged: PChar);
  public
    class procedure ChangeValues;
  End;

Implementation

class procedure TTraducao.SetResourceString(xOldResourceString: PResStringRec; xValueChanged: PChar);
var
  POldProtect: DWORD;
begin
  VirtualProtect(xOldResourceString, SizeOf(xOldResourceString^), PAGE_EXECUTE_READWRITE, @POldProtect);
  xOldResourceString^.Identifier := Integer(xValueChanged);
  VirtualProtect(xOldResourceString, SizeOf(xOldResourceString^), POldProtect, @POldProtect);
end;

class procedure TTraducao.ChangeValues;
begin
  SetResourceString(@SMsgDlgYes, 'Sim');
  SetResourceString(@SMsgDlgWarning, 'Atenção!');
  SetResourceString(@SMsgDlgError, 'Erro');
  SetResourceString(@SMsgDlgInformation, 'Informação');
  SetResourceString(@SMsgDlgConfirm, 'Confirme');
  SetResourceString(@SMsgDlgYes, '&Sim');
  SetResourceString(@SMsgDlgNo, '&Não');
  SetResourceString(@SMsgDlgOK, 'OK');
  SetResourceString(@SMsgDlgCancel, 'Cancelar');
  SetResourceString(@SMsgDlgHelp, '&Ajuda');
  SetResourceString(@SMsgDlgHelpHelp, 'Ajuda');
  SetResourceString(@SMsgDlgAbort, '&Abortar');
  SetResourceString(@SMsgDlgRetry, '&Repetir');
  SetResourceString(@SMsgDlgIgnore, '&Ignorar');
  SetResourceString(@SMsgDlgAll, '&Tudo');
  SetResourceString(@SMsgDlgNoToAll, 'N&ao para Tudo');
  SetResourceString(@SMsgDlgYesToAll, 'Sim para &Tudo');
  SetResourceString(@SMsgDlgClose, '&Fechar');
  SetResourceString(@SFirstRecord, 'Primeiro registro');
  SetResourceString(@SPriorRecord, 'Registro anterior');
  SetResourceString(@SNextRecord, 'Próximo registro');
  SetResourceString(@SLastRecord, 'Última registro');
  SetResourceString(@SInsertRecord, 'Inserir registro');
  SetResourceString(@SDeleteRecord, 'Apagar registro');
  SetResourceString(@SEditRecord, 'Editar registro');
  SetResourceString(@SPostEdit, 'Post editar');
  SetResourceString(@SCancelEdit, 'Cancelar editar ');
  SetResourceString(@SConfirmCaption, 'Confirmar');
  SetResourceString(@SRefreshRecord, 'Atualizar dados');
  SetResourceString(@SApplyUpdates, 'Aplicar atualizações');
  SetResourceString(@SCancelUpdates, 'Cancelar atualizações');
  SetResourceString(@SDeleteRecordQuestion, 'Excluir registro? ');
  SetResourceString(@SDeleteMultipleRecordsQuestion, 'Excluir todos os registros selecionados?');
  SetResourceString(@SNotReplicatable, 'Controle não pode ser usado em um DBCtrlGrid');
  SetResourceString(@SPropDefByLookup, 'Propriedade já definida pelo campo de pesquisa');
  SetResourceString(@STooManyColumns, 'Grid solicitado para exibir mais de 256 colunas');
end;

end.
