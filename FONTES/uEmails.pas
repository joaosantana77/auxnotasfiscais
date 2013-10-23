unit uEmails;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdPOP3, IdMessage, IdSSLOpenSSL, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, IdAttachmentFile, Data.FMTBcd,
  Vcl.DBCtrls, Datasnap.Provider, Data.SqlExpr, Vcl.Buttons, Vcl.ExtCtrls;

type
  TF_Emails = class(TForm)
    POP3: TIdPOP3;
    Msg: TIdMessage;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdPOP31: TIdPOP3;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    DSMails: TDataSource;
    sdsCliEmail: TSQLQuery;
    dspCliEmail: TDataSetProvider;
    cdsCliEmail: TClientDataSet;
    cdsCliEmailIDOADM: TIntegerField;
    cdsCliEmailNOME: TStringField;
    cdsCliEmailPOP3: TStringField;
    cdsCliEmailUSUARIONOME: TStringField;
    cdsCliEmailUSUARIOSENHA: TStringField;
    cdsCliEmailPORTA: TSmallintField;
    dsCliEmail: TDataSource;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Label1: TLabel;
    edhost: TEdit;
    Label2: TLabel;
    edUsername: TEdit;
    Label3: TLabel;
    edPassword: TEdit;
    Label4: TLabel;
    edPort: TEdit;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    cdsCliEmailARQDIRETORIOPADRAO: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Emails: TF_Emails;

implementation

{$R *.dfm}

uses UDM;

procedure TF_Emails.Button1Click(Sender: TObject);
Var
  lMsg: TIdMessage;
  i, j: Integer;
  anexo, foldertmp : string;
  ctMsgs, FMailBoxSize: Integer;

begin
  //Configurações
  //TIdPOP3
  // COLOCAR UMA MENSAGEM PEDINDO PARA AGUARDAR

  with POP3 do begin
    IOHandler := IO_OpenSSL;
    AutoLogin := True;
    Host      := edhost.Text;
    Username  := edUsername.Text;
    UseTLS    := utUseImplicitTLS;
    Password  := edPassword.Text;
    Port      := StrToInt(edPort.Text);
    foldertmp := cdsCliEmailARQDIRETORIOPADRAO.AsString;
{
    Host := 'pop.gmail.com';
    Username := 'joaomlm77@gmail.com';
    UseTLS := utUseImplicitTLS;
    Password := 'Arau1951SAJ';
    Port := 995; }

  end;

  //TIdSSLIOHandlerSocketOpenSSL
  with IO_OpenSSL do begin
    Destination := 'pop.gmail.com:995';
    Host := 'pop.gmail.com';
    Port := 995;
    SSLOptions.Method := sslvSSLv23;
    SSLOptions.Mode := sslmClient;
  end;

  //Conectando
  if not POP3.Connected then
    POP3.Connect;

  //testa a conexão
  if not POP3.Connected then
  Begin
    ShowMessage('Conexão não realizada!');
    Exit;
  End;

  //Pega a qtd de msg que há na caixa de entrada
  ctMsgs := POP3.CheckMessages;
  FMailBoxSize := POP3.RetrieveMailBoxSize div 1024;

  Statusbar1.Panels[0].text := IntToStr(ctMsgs);
  Statusbar1.Panels[1].text := format('Mail ocupa %dK no servidor', [FMailBoxSize]);
  StatusBar1.Refresh;
  lMsg := TIdMessage.Create;
  DSMails.DataSet.Open;
  //Preenchendo o DataSet
  for i := 1 to ctMsgs do begin
    POP3.Retrieve(i,lMsg);
    DM.CDSMails.Insert;
    DM.CDSMails.FieldByName('IDMAIL').AsInteger         := i;
    DM.CDSMails.FieldByName('REMETENTE').AsString       := lMsg.From.Name;
    DM.CDSMails.FieldByName('ASSUNTO').AsString         := lMsg.Subject;
    DM.CDSMails.FieldByName('DATAHORA').AsDateTime      := now();
    DM.CDSMails.FieldByName('DATAHORAEMAIL').AsDateTime := lMsg.Date;
    for j := 0 to lMsg.MessageParts.Count - 1 do begin
       if (lMsg.MessageParts.Items[j] is TIdAttachmentFile) then
       begin
          anexo := TIdAttachmentFile(lMsg.MessageParts.Items[j]).FileName;
          TIdAttachmentFile(lMsg.MessageParts.Items[j]).SaveToFile(foldertmp+'\'+anexo);
       end;
    end;
    DM.CDSMails.Post;
  end;

  lMsg.Free;
  //POP3.Disconnect;
  // dar opcao de marcar as mensagens como lidas
end;


procedure TF_Emails.Button2Click(Sender: TObject);
begin
  edhost.Text      := cdsCliEmailPOP3.AsString;
  edUsername.Text  := cdsCliEmailUSUARIONOME.AsString;
  edPassword.Text  := cdsCliEmailUSUARIOSENHA.AsString;
  edPort.Text      := IntToStr(cdsCliEmailPORTA.AsInteger);
end;

procedure TF_Emails.FormShow(Sender: TObject);
begin
  cdsCliEmail.Open;
  {DM.TblPerfil.Open;
  edhost.Text      := DM.TblPerfilHOST.AsString;
  edUsername.Text  := DM.TblPerfilUSERNAME.AsString;
  edPassword.Text  := DM.TblPerfilPASSWORD.AsString;
  edPort.Text      := IntToStr(DM.TblPerfilPORT.AsInteger);
  DM.TblPerfil.Close;}
end; (*  *)

end.

