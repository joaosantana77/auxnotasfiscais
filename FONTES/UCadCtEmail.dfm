inherited F_CadCtEmail: TF_CadCtEmail
  Caption = 'Cadastro de Contas de Email'
  ClientHeight = 454
  ClientWidth = 686
  ExplicitWidth = 702
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 15
  object Label9: TLabel [0]
    Left = 24
    Top = 61
    Width = 11
    Height = 15
    Caption = 'Id'
    FocusControl = dbID
  end
  object Label10: TLabel [1]
    Left = 131
    Top = 59
    Width = 89
    Height = 15
    Caption = 'Nome do Cliente'
  end
  object Label11: TLabel [2]
    Left = 24
    Top = 107
    Width = 30
    Height = 15
    Caption = 'POP3'
    FocusControl = dbPOP3
  end
  object Label12: TLabel [3]
    Left = 24
    Top = 133
    Width = 78
    Height = 15
    Caption = 'Nome Usuario'
    FocusControl = dbUSER
  end
  object Label13: TLabel [4]
    Left = 24
    Top = 163
    Width = 80
    Height = 15
    Caption = 'Senha Usu'#225'rio'
    FocusControl = dbPASS
  end
  object Label14: TLabel [5]
    Left = 24
    Top = 194
    Width = 81
    Height = 15
    Caption = 'Porta................:'
    FocusControl = dbPORT
  end
  object Label15: TLabel [6]
    Left = 194
    Top = 194
    Width = 72
    Height = 15
    Caption = 'Quant. Notas'
    FocusControl = dbQTDN
  end
  object Label16: TLabel [7]
    Left = 24
    Top = 224
    Width = 73
    Height = 15
    Caption = 'Diret. Padr'#227'o'
    FocusControl = dbPATH
  end
  inherited Panel1: TPanel
    Width = 686
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 11
      Height = 15
      Caption = 'Id'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 88
      Width = 49
      Height = 15
      Caption = 'IdCliente'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 24
      Top = 136
      Width = 30
      Height = 15
      Caption = 'POP3'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 24
      Top = 184
      Width = 78
      Height = 15
      Caption = 'Nome Usuario'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 24
      Top = 232
      Width = 80
      Height = 15
      Caption = 'Senha Usu'#225'rio'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 24
      Top = 280
      Width = 35
      Height = 15
      Caption = 'PORTA'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 24
      Top = 328
      Width = 72
      Height = 15
      Caption = 'Quant. Notas'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 24
      Top = 376
      Width = 93
      Height = 15
      Caption = 'Diretorio Padr'#227'o'
      FocusControl = DBEdit8
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 56
      Width = 154
      Height = 23
      DataField = 'IDADM1'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 104
      Width = 154
      Height = 23
      DataField = 'IDOADM'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 152
      Width = 754
      Height = 23
      DataField = 'POP3'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 24
      Top = 200
      Width = 1504
      Height = 23
      DataField = 'USUARIONOME'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 24
      Top = 248
      Width = 754
      Height = 23
      DataField = 'USUARIOSENHA'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 24
      Top = 296
      Width = 154
      Height = 23
      DataField = 'PORTA'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 24
      Top = 344
      Width = 154
      Height = 23
      DataField = 'NOTASQUANTIDADE'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 24
      Top = 392
      Width = 1504
      Height = 23
      DataField = 'ARQDIRETORIOPADRAO'
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 435
    Width = 686
    ExplicitTop = 435
  end
  inherited GroupBox1: TGroupBox
    Top = 380
    Width = 686
    ExplicitTop = 380
    inherited btnSair: TBitBtn
      Left = 541
      ExplicitLeft = 541
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 253
    Width = 686
    Height = 127
  end
  inherited DBNavigator1: TDBNavigator
    Left = 408
    Hints.Strings = ()
    ExplicitLeft = 408
  end
  object dbID: TDBEdit [13]
    Left = 60
    Top = 56
    Width = 49
    Height = 23
    DataField = 'IDADM1'
    DataSource = DataSource1
    TabOrder = 5
  end
  object dbPOP3: TDBEdit [14]
    Left = 120
    Top = 104
    Width = 220
    Height = 23
    DataField = 'POP3'
    DataSource = DataSource1
    TabOrder = 6
  end
  object dbUSER: TDBEdit [15]
    Left = 120
    Top = 133
    Width = 220
    Height = 23
    DataField = 'USUARIONOME'
    DataSource = DataSource1
    TabOrder = 7
  end
  object dbPASS: TDBEdit [16]
    Left = 120
    Top = 162
    Width = 220
    Height = 23
    DataField = 'USUARIOSENHA'
    DataSource = DataSource1
    PasswordChar = '*'
    TabOrder = 8
  end
  object dbPORT: TDBEdit [17]
    Left = 119
    Top = 191
    Width = 58
    Height = 23
    DataField = 'PORTA'
    DataSource = DataSource1
    TabOrder = 9
  end
  object dbQTDN: TDBEdit [18]
    Left = 279
    Top = 191
    Width = 61
    Height = 23
    DataField = 'NOTASQUANTIDADE'
    DataSource = DataSource1
    TabOrder = 10
  end
  object dbPATH: TDBEdit [19]
    Left = 120
    Top = 220
    Width = 457
    Height = 23
    DataField = 'ARQDIRETORIOPADRAO'
    DataSource = DataSource1
    TabOrder = 11
  end
  object dblkpCLIENT: TDBLookupComboBox [20]
    Left = 226
    Top = 56
    Width = 351
    Height = 23
    DataField = 'IDOADM'
    DataSource = DataSource1
    KeyField = 'IDOADM'
    ListField = 'NOME'
    ListSource = DataSource2
    TabOrder = 12
  end
  object btPath: TButton [21]
    Left = 576
    Top = 218
    Width = 33
    Height = 24
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = btPathClick
  end
  inherited DataSource1: TDataSource
    DataSet = DM.cdsCadCtEmail
    Left = 480
    Top = 144
  end
  object sdsOADM: TSQLDataSet
    CommandText = 'select *  from OADM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.CON_AUXNFE
    Left = 416
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = cdsOADM
    Left = 432
    Top = 144
  end
  object dspOADM: TDataSetProvider
    DataSet = sdsOADM
    Left = 448
    Top = 96
  end
  object cdsOADM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOADM'
    Left = 480
    Top = 96
    object cdsOADMIDOADM: TIntegerField
      FieldName = 'IDOADM'
      Required = True
    end
    object cdsOADMCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 14
    end
    object cdsOADMIE: TStringField
      FieldName = 'IE'
      Size = 30
    end
    object cdsOADMIM: TStringField
      FieldName = 'IM'
      Size = 30
    end
    object cdsOADMNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsOADMTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      FixedChar = True
      Size = 1
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 528
    Top = 160
  end
end
