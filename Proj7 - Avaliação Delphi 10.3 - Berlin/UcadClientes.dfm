object FrmCadClientes: TFrmCadClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 252
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 48
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
    Left = 14
    Top = 73
    Width = 35
    Height = 13
    Caption = 'Nome:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'N'#818'ovo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 8
    Width = 75
    Height = 25
    Caption = 'S'#818'alvar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 184
    Top = 8
    Width = 75
    Height = 25
    Caption = 'E'#818'xcluir'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 8
    Width = 75
    Height = 25
    Caption = 'I'#818'mprimir'
    TabOrder = 3
    OnClick = Button4Click
  end
  object DBEdit1: TDBEdit
    Left = 52
    Top = 46
    Width = 58
    Height = 21
    DataField = 'COD_CLIENTE'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 52
    Top = 70
    Width = 295
    Height = 21
    DataField = 'DES_CLIENTE'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 14
    Top = 356
    Width = 446
    Height = 21
    DataField = 'DTA_CADASTRO'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 6
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 339
    Height = 128
    DataSource = DMSistema.DsPesqCli
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_CLIENTE'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_CLIENTE'
        Title.Caption = 'Nome'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DMSistema.CdsCadCli
    Left = 240
    Top = 32
  end
end
