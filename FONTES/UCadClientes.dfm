inherited F_CadClientes: TF_CadClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 462
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 45
    Top = 72
    Width = 31
    Height = 15
    Caption = 'Ident.'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 184
    Top = 72
    Width = 70
    Height = 15
    Caption = 'Raz'#227'o Social'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 45
    Top = 112
    Width = 24
    Height = 15
    Caption = 'Tipo'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 337
    Top = 112
    Width = 25
    Height = 15
    Caption = 'CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 45
    Top = 152
    Width = 10
    Height = 15
    Caption = 'IE'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 337
    Top = 152
    Width = 15
    Height = 15
    Caption = 'IM'
    FocusControl = DBEdit6
  end
  inherited Panel1: TPanel
    Height = 49
    ExplicitHeight = 49
  end
  inherited StatusBar1: TStatusBar
    Top = 443
    ExplicitTop = 447
  end
  inherited GroupBox1: TGroupBox
    Top = 388
    ExplicitTop = 392
  end
  inherited DBGrid1: TDBGrid
    Top = 200
    Height = 188
  end
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  object DBEdit1: TDBEdit [11]
    Left = 96
    Top = 69
    Width = 60
    Height = 23
    DataField = 'IDOADM'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit2: TDBEdit [12]
    Left = 260
    Top = 69
    Width = 340
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit3: TDBEdit [13]
    Left = 96
    Top = 109
    Width = 19
    Height = 23
    DataField = 'TIPOCLIENTE'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit4: TDBEdit [14]
    Left = 386
    Top = 109
    Width = 214
    Height = 23
    DataField = 'CNPJ'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit5: TDBEdit [15]
    Left = 100
    Top = 149
    Width = 188
    Height = 23
    DataField = 'IE'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit6: TDBEdit [16]
    Left = 386
    Top = 149
    Width = 214
    Height = 23
    DataField = 'IM'
    DataSource = DataSource1
    TabOrder = 10
  end
  inherited DataSource1: TDataSource
    DataSet = DM.cdsCadCliente
    Left = 680
    Top = 176
  end
end
