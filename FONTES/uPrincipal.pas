unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, Menus, PlatformDefaultStyleActnCtrls,
  ActnList, ActnMan, jpeg, ExtCtrls, StdCtrls, System.Actions;

type
  TF_Principal = class(TForm)
    MainMenu1: TMainMenu;
    ActionManager1: TActionManager;
    Cadastros1: TMenuItem;
    FichaClnica1: TMenuItem;
    Backup1: TMenuItem;
    MnCadPaciente: TMenuItem;
    MnCadMedicos: TMenuItem;
    N1: TMenuItem;
    MnSair: TMenuItem;
    MnFCAtend: TMenuItem;
    MnFcRelat: TMenuItem;
    BackupBancodedados1: TMenuItem;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    actSair: TAction;
    actUsuarios: TAction;
    actBackup: TAction;
    Sobre1: TMenuItem;
    actAbout: TAction;
    Provedores1: TMenuItem;
    actCadClientes: TAction;
    actEmail: TAction;
    actCadCtEmail: TAction;
    procedure actSairExecute(Sender: TObject);
    procedure actBackupExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure actEmailExecute(Sender: TObject);
    procedure actCadClientesExecute(Sender: TObject);
    procedure actCadCtEmailExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;
//  vTipoPessoa: string;
implementation

uses uEmails, UABOUT, uBackup, uCadClientes,UCadCtEmail;

{$R *.dfm}

procedure TF_Principal.actAboutExecute(Sender: TObject);
begin
  with TF_Sobre.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_Sobre);
    end;

end;


procedure TF_Principal.actBackupExecute(Sender: TObject);
begin
  with TF_Backup.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_Backup);
    end;

end;


procedure TF_Principal.actCadClientesExecute(Sender: TObject);
begin
 with TF_CadClientes.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_CadClientes);
    end;
end;

procedure TF_Principal.actCadCtEmailExecute(Sender: TObject);
begin
 with TF_CadCtEmail.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_CadCtEmail);
    end;

end;

procedure TF_Principal.actEmailExecute(Sender: TObject);
begin
 with TF_Emails.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_Emails);
    end;


end;

procedure TF_Principal.actSairExecute(Sender: TObject);
begin
  Application.Terminate;
end;


end.
