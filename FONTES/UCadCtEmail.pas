unit UCadCtEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.ExtDlgs;

type
  TF_CadCtEmail = class(TfrmCadastro)
    sdsOADM: TSQLDataSet;
    DataSource2: TDataSource;
    dspOADM: TDataSetProvider;
    cdsOADM: TClientDataSet;
    cdsOADMIDOADM: TIntegerField;
    cdsOADMCNPJ: TStringField;
    cdsOADMIE: TStringField;
    cdsOADMIM: TStringField;
    cdsOADMNOME: TStringField;
    cdsOADMTIPOCLIENTE: TStringField;
    Label9: TLabel;
    dbID: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    dbPOP3: TDBEdit;
    Label12: TLabel;
    dbUSER: TDBEdit;
    Label13: TLabel;
    dbPASS: TDBEdit;
    Label14: TLabel;
    dbPORT: TDBEdit;
    Label15: TLabel;
    dbQTDN: TDBEdit;
    Label16: TLabel;
    dbPATH: TDBEdit;
    dblkpCLIENT: TDBLookupComboBox;
    btPath: TButton;
    OpenDialog1: TOpenDialog;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btPathClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadCtEmail: TF_CadCtEmail;
  caminho : string;

implementation

{$R *.dfm}

uses UDM;

procedure TF_CadCtEmail.btnNovoClick(Sender: TObject);
var Qry: TSQLQuery;
begin
  inherited;
  Qry := TSQLQuery.Create(nil);  //cria uma instancia do
  try
     Qry.SQLConnection := DM.CON_AUXNFE;  //o seu componente de conex�o com o banco
     Qry.SQL.Text := 'select max(IDADM1) from ADM1';
     Qry.Open;
     if not QRY.Fields[0].IsNull then   //se nao estiver vazia a tabela retornar� nulo
        dbID.Text := IntToStr(QRY.Fields[0].AsInteger + 1)
     else
        dbID.Text := '1';
  finally
     FreeAndNil(QRY);    //libera o objeto da mem�ria
  end;
  DataSource2.DataSet.Open;
  dbpath.Text := caminho;
  dblkpCLIENT.SetFocus;

end;


procedure TF_CadCtEmail.btPathClick(Sender: TObject);
var c : Integer;
begin
  inherited;

  if OpenDialog1.Execute then
  begin
      caminho := OpenDialog1.FileName;
      c := Length(caminho);
      while c > 1 do
      begin
         if copy(caminho,c,1) = '\' then
         begin
            caminho := copy(caminho,1,c-1);
            break
         end;
         c := c - 1;
      end;
      dbPath.Text := caminho;
  end;
//  caminho := OpenDialog1.FileName;
//  dbPath.Text := caminho;
end;

procedure TF_CadCtEmail.FormShow(Sender: TObject);
begin
  inherited;
  caminho := ExtractFilePath(Application.ExeName)+'\RECEBIDOS';
end;

end.
