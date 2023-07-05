object FrmVendas: TFrmVendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 279
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 71
    Top = 8
    Width = 65
    Height = 17
    DataField = 'COD_VENDA'
    DataSource = DmVendas.DsVendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 40
    Top = 8
    Width = 25
    Height = 18
    Caption = 'N'#176':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 30
    Top = 56
    Width = 40
    Height = 18
    Caption = 'Data:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 12
    Top = 32
    Width = 58
    Height = 18
    Caption = 'Cliente:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 80
    Width = 432
    Height = 159
    Caption = 'Produtos Inclusos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 241
      Top = 133
      Width = 74
      Height = 16
      Caption = 'Total Geral:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 365
      Top = 133
      Width = 64
      Height = 17
      DataField = 'TotalGeral'
      DataSource = DmVendas.DsProdPed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 16
      Width = 422
      Height = 111
      DataSource = DmVendas.DsProdPed
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PRODUTO'
          Title.Caption = 'C'#243'digo'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto'
          Title.Caption = 'Produto'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Qtde'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor Unit.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalItem'
          Title.Caption = 'Valor Total'
          Visible = True
        end>
    end
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 245
    Width = 75
    Height = 25
    Caption = 'N'#818'ovo'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 118
    Top = 245
    Width = 75
    Height = 25
    Caption = 'C'#818'ancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 230
    Top = 245
    Width = 75
    Height = 25
    Caption = 'S'#818'alvar'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 365
    Top = 245
    Width = 75
    Height = 25
    Caption = 'S'#818'air'
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object DBEdit1: TDBEdit
    Left = 73
    Top = 55
    Width = 72
    Height = 21
    DataField = 'DTA_VENDA'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 73
    Top = 31
    Width = 367
    Height = 21
    DataField = 'NomeCliente'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = DmVendas.CdsVendas
    Left = 328
    Top = 240
  end
end
