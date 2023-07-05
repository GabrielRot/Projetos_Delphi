object FrmCadClientes: TFrmCadClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Clientes'
  ClientHeight = 254
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 64
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 96
    Width = 34
    Height = 13
    Caption = 'Nome: '
    FocusControl = DBEdit2
  end
  object Button1: TButton
    Left = 118
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 222
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 326
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = Button3Click
  end
  object DBEdit1: TDBEdit
    Left = 53
    Top = 60
    Width = 60
    Height = 21
    DataField = 'COD_CLIENTE'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 53
    Top = 93
    Width = 348
    Height = 21
    DataField = 'DES_CLIENTE'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 352
    Width = 446
    Height = 21
    DataField = 'DTA_CADASTRO'
    DataSource = DataSource1
    TabOrder = 5
  end
  object Button4: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 6
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 120
    Width = 388
    Height = 120
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTA_CADASTRO'
        Visible = True
      end>
  end
  object Button5: TButton
    Left = 128
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Limpa'
    TabOrder = 8
    OnClick = Button5Click
  end
  object DataSource1: TDataSource
    DataSet = DMSistema.CdsCadCli
    Left = 256
    Top = 48
  end
end
