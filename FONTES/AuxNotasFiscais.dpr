program AuxNotasFiscais;

uses
  Vcl.Forms,
  uEmails in 'uEmails.pas' {F_Emails},
  UDM in 'UDM.pas' {DM: TDataModule},
  uPrincipal in 'uPrincipal.pas' {F_Principal},
  UABOUT in 'UABOUT.pas' {F_Sobre},
  uBackup in 'uBackup.pas' {F_Backup},
  uGeral in 'uGeral.pas',
  ufrmCadPadrao in 'ufrmCadPadrao.pas' {frmCadastro},
  UCadClientes in 'UCadClientes.pas' {F_CadClientes},
  UCadCtEmail in 'UCadCtEmail.pas' {F_CadCtEmail};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.Run;
end.
