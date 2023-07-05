object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'MANIPULANDO DBGRIDS'
  ClientHeight = 444
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlDBGrid: TPanel
    Left = 0
    Top = 88
    Width = 765
    Height = 356
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 133
    ExplicitHeight = 317
    object DBGRegistros: TDBGrid
      Left = 0
      Top = 0
      Width = 765
      Height = 356
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = True
      DataSource = DataSource1
      DrawingStyle = gdsClassic
      FixedColor = 7165253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7165253
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGRegistrosDrawColumnCell
      OnTitleClick = DBGRegistrosTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PAGAMENTO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DES_PAGAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7165253
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 269
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VAL_PAGAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FLG_PAG_MENSAL'
          Title.Caption = 'Pag. Mensal?'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTA_PAGAMENTO'
          Title.Caption = 'Dta. Pagamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTA_INCLUSAO'
          Title.Caption = 'Dta. Inclus'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTA_ALTERACAO'
          Title.Caption = 'Dta. Alterac'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
  end
  object PnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 88
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 496
    ExplicitTop = 16
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 8
      Top = 37
      Width = 74
      Height = 13
      Caption = 'Pesquisar por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CmbPesquisar: TComboBox
      Left = 8
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 0
      OnChange = CmbPesquisarChange
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Data de Cadastro')
    end
    object EdtPesquisar: TEdit
      Left = 176
      Top = 56
      Width = 445
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object PnlConsultar: TPanel
      Left = 627
      Top = 48
      Width = 103
      Height = 29
      BevelOuter = bvNone
      Color = 15365376
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Open Sans'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object BtnConsultar: TSpeedButton
        Left = 0
        Top = 0
        Width = 103
        Height = 29
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Consultar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Open sans'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnConsultarClick
        ExplicitLeft = 64
        ExplicitWidth = 145
        ExplicitHeight = 33
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DMSistema.CdsPesqCli
    OnDataChange = DataSource1DataChange
    Left = 360
    Top = 8
  end
end
