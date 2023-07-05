object FrmRelProdutos: TFrmRelProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Produtos'
  ClientHeight = 140
  ClientWidth = 360
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 332
    Height = 65
    Caption = 'Filtrar por Intervalo de C'#243'digos:'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 166
      Top = 32
      Width = 21
      Height = 13
      Caption = 'At'#233':'
    end
    object EdtCodInicial: TEdit
      Left = 39
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EdtCodFinal: TEdit
      Left = 193
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 273
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 168
    Width = 794
    Height = 1123
    DataSource = DMSistema.DsRelProd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 27
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 501
        Top = 0
        Width = 217
        Height = 13
        Align = faClientRight
        Alignment = taRightJustify
        Info = itPagePreview
        Text = '# de #'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 658
        Top = 13
        Width = 60
        Height = 14
        Align = faClientRight
        Alignment = taRightJustify
        Info = itFullDate
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 65
      Width = 718
      Height = 24
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 199
        Top = 1
        Width = 320
        Height = 22
        Align = faCenter
        Caption = 'Relat'#243'rio de Clientes Cadastrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 32
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 19
        Top = 6
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 83
        Top = 6
        Width = 62
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
      object RLLabel4: TRLLabel
        Left = 304
        Top = 6
        Width = 49
        Height = 16
        Caption = 'Custo'
      end
      object RLLabel5: TRLLabel
        Left = 384
        Top = 6
        Width = 49
        Height = 16
        Caption = 'Venda'
      end
      object RLLabel6: TRLLabel
        Left = 553
        Top = 6
        Width = 107
        Height = 16
        Caption = 'Data Cadastrado'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 28
        Width = 713
        Height = 6
        DrawHeight = 1
        DrawWidth = 0
      end
      object RLLabel7: TRLLabel
        Left = 464
        Top = 6
        Width = 52
        Height = 16
        Caption = 'Estoque'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 32
      object RLDBText1: TRLDBText
        Left = 19
        Top = 8
        Width = 58
        Height = 16
        DataField = 'COD_PRODUTO'
        DataSource = DMSistema.DsRelProd
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 83
        Top = 8
        Width = 201
        Height = 16
        DataField = 'DES_PRODUTO'
        DataSource = DMSistema.DsRelProd
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 304
        Top = 8
        Width = 48
        Height = 16
        DataField = 'CUSTO'
        DataSource = DMSistema.DsRelProd
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 384
        Top = 8
        Width = 49
        Height = 16
        DataField = 'VENDA'
        DataSource = DMSistema.DsRelProd
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 464
        Top = 8
        Width = 67
        Height = 16
        DataField = 'ESTOQUE'
        DataSource = DMSistema.DsRelProd
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 553
        Top = 8
        Width = 107
        Height = 16
        DataField = 'DTA_PRODUTO'
        DataSource = DMSistema.DsRelProd
        Text = ''
      end
    end
  end
end
