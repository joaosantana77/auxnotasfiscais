object F_Emails: TF_Emails
  Left = 0
  Top = 0
  Caption = 'Recep'#231#227'o de Emails'
  ClientHeight = 523
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 21
    Top = 56
    Width = 61
    Height = 16
    Caption = 'Selecione'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 303
    Width = 708
    Height = 162
    DataSource = DSMails
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDMAIL'
        Title.Caption = 'Id'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REMETENTE'
        Title.Caption = 'Remetente'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASSUNTO'
        Title.Caption = 'Assunto'
        Width = 300
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 504
    Width = 738
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 150
      end>
  end
  object Button2: TButton
    Left = 544
    Top = 151
    Width = 97
    Height = 25
    Caption = 'Confirma Cliente'
    TabOrder = 2
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 88
    Top = 176
    Width = 553
    Height = 93
    Caption = 'Dados do Email'
    TabOrder = 3
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Host'
    end
    object Label2: TLabel
      Left = 248
      Top = 32
      Width = 81
      Height = 13
      Caption = 'Nome do Usu'#225'rio'
    end
    object Label3: TLabel
      Left = 24
      Top = 64
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object Label4: TLabel
      Left = 304
      Top = 59
      Width = 26
      Height = 13
      Caption = 'Porta'
    end
    object edhost: TEdit
      Left = 80
      Top = 32
      Width = 97
      Height = 21
      TabOrder = 0
    end
    object edUsername: TEdit
      Left = 335
      Top = 29
      Width = 178
      Height = 21
      TabOrder = 1
    end
    object edPassword: TEdit
      Left = 80
      Top = 59
      Width = 137
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
    object edPort: TEdit
      Left = 336
      Top = 56
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 3
    end
  end
  object Button1: TButton
    Left = 544
    Top = 275
    Width = 97
    Height = 22
    Caption = 'Ler email'
    TabOrder = 4
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 88
    Top = 8
    Width = 553
    Height = 137
    DataSource = dsCliEmail
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDOADM'
        Title.Caption = 'Id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Raz'#227'o Social'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'POP3'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIONOME'
        Title.Caption = 'Nome Usu'#225'rio'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIOSENHA'
        Title.Caption = 'Senha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PORTA'
        Width = 40
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 463
    Width = 738
    Height = 41
    Align = alBottom
    TabOrder = 6
    object BitBtn1: TBitBtn
      Left = 616
      Top = 10
      Width = 91
      Height = 25
      Caption = '&Sair'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 512
      Top = 10
      Width = 81
      Height = 25
      Caption = '&Gravar Emails'
      TabOrder = 1
    end
  end
  object POP3: TIdPOP3
    AutoLogin = True
    SASLMechanisms = <>
    Left = 680
    Top = 160
  end
  object Msg: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 672
    Top = 8
  end
  object IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 680
    Top = 88
  end
  object IdPOP31: TIdPOP3
    AutoLogin = True
    SASLMechanisms = <>
    Left = 672
    Top = 40
  end
  object DSMails: TDataSource
    DataSet = DM.CDSMails
    Left = 680
    Top = 128
  end
  object sdsCliEmail: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CLIENTESEMAIL'
      ' ORDER BY NOME ')
    SQLConnection = DM.CON_AUXNFE
    Left = 664
    Top = 208
  end
  object dspCliEmail: TDataSetProvider
    DataSet = sdsCliEmail
    Left = 696
    Top = 256
  end
  object cdsCliEmail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliEmail'
    Left = 704
    Top = 200
    object cdsCliEmailIDOADM: TIntegerField
      FieldName = 'IDOADM'
    end
    object cdsCliEmailNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object cdsCliEmailPOP3: TStringField
      FieldName = 'POP3'
      Size = 50
    end
    object cdsCliEmailUSUARIONOME: TStringField
      FieldName = 'USUARIONOME'
      Size = 100
    end
    object cdsCliEmailUSUARIOSENHA: TStringField
      FieldName = 'USUARIOSENHA'
      Size = 50
    end
    object cdsCliEmailPORTA: TSmallintField
      FieldName = 'PORTA'
    end
    object cdsCliEmailARQDIRETORIOPADRAO: TStringField
      FieldName = 'ARQDIRETORIOPADRAO'
      Size = 100
    end
  end
  object dsCliEmail: TDataSource
    DataSet = cdsCliEmail
    Left = 664
    Top = 248
  end
end
