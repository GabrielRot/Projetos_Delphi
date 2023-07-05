object FrmPesqProdutos: TFrmPesqProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FrmPesqProdutos'
  ClientHeight = 255
  ClientWidth = 422
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 131
    Height = 16
    Caption = 'Filtrar por Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 256
    Top = 36
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 337
    Top = 36
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 337
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button3Click
  end
  object EdtFiltro: TEdit
    Left = 8
    Top = 38
    Width = 233
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 403
    Height = 120
    DataSource = DMSistema.DsPesqProd
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_PRODUTO'
        Visible = True
      end>
  end
end
