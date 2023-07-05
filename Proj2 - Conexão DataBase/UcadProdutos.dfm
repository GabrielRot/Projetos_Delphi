object FCadProdutos: TFCadProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 221
  ClientWidth = 418
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 33
    Top = 25
    Width = 41
    Height = 13
    Caption = 'C'#243'digo:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 49
    Width = 58
    Height = 13
    Caption = 'Descri'#231#227'o:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 74
    Width = 67
    Height = 13
    Caption = 'Valor Custo:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 4
    Top = 99
    Width = 70
    Height = 13
    Caption = 'Valor Venda:'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 26
    Top = 123
    Width = 48
    Height = 13
    Caption = 'Estoque:'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 216
    Top = 123
    Width = 88
    Height = 13
    Caption = 'Cadastrado Em:'
  end
  object DBEdit1: TDBEdit
    Left = 76
    Top = 22
    Width = 61
    Height = 21
    DataField = 'COD_PRODUTO'
    DataSource = DataSource1
    Enabled = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 76
    Top = 46
    Width = 339
    Height = 21
    DataField = 'DES_PRODUTO'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 76
    Top = 71
    Width = 134
    Height = 21
    DataField = 'CUSTO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 76
    Top = 96
    Width = 134
    Height = 21
    DataField = 'VENDA'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 76
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = DataSource1
    TabOrder = 4
  end
  object Button1: TButton
    Left = 16
    Top = 176
    Width = 75
    Height = 25
    Caption = 'N'#818'ovo'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 97
    Top = 176
    Width = 75
    Height = 25
    Caption = 'C'#818'ancelar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 178
    Top = 176
    Width = 75
    Height = 25
    Caption = 'S'#818'alvar'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 259
    Top = 176
    Width = 75
    Height = 25
    Caption = 'E'#818'xcluir'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 340
    Top = 176
    Width = 75
    Height = 25
    Caption = 'S'#818'air'
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 340
    Top = 20
    Width = 75
    Height = 25
    Caption = 'P'#818'esquisar'
    TabOrder = 10
    OnClick = Button6Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 310
    Top = 120
    Width = 105
    Height = 21
    Date = 44834.000000000000000000
    Time = 0.501834560185670900
    TabOrder = 11
  end
  object DataSource1: TDataSource
    DataSet = DMSistema.CdsCadProd
    Left = 160
  end
end
