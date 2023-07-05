object FrmRelClientes: TFrmRelClientes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 122
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 313
    Height = 57
    Caption = 'Filtrar por Intervalo de C'#243'digos:'
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 24
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 159
      Top = 24
      Width = 21
      Height = 13
      Caption = 'At'#233':'
    end
    object EdtCodInicial: TEdit
      Left = 35
      Top = 21
      Width = 110
      Height = 21
      TabOrder = 0
    end
    object EdtCodFinal: TEdit
      Left = 186
      Top = 21
      Width = 119
      Height = 21
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 80
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
    Left = 97
    Top = 80
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
    Left = 254
    Top = 80
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
    OnClick = BitBtn3Click
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 128
    Width = 794
    Height = 1123
    DataSource = DMSistema.DsRelCli
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
        Left = 505
        Top = -1
        Width = 213
        Height = 16
        Align = faCenterRight
        Alignment = taRightJustify
        Info = itPagePreview
        Text = '# de#'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 658
        Top = 12
        Width = 60
        Height = 16
        Align = faCenterRight
        Alignment = taRightJustify
        Info = itFullDate
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 65
      Width = 718
      Height = 35
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 199
        Top = 6
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
      Top = 100
      Width = 718
      Height = 27
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 16
        Top = 8
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 112
        Top = 6
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 568
        Top = 6
        Width = 31
        Height = 16
        Caption = 'Data'
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 25
        Width = 713
        Height = 1
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 127
      Width = 718
      Height = 32
      object RLDBText1: TRLDBText
        Left = 16
        Top = 13
        Width = 92
        Height = 16
        DataField = 'COD_CLIENTE'
        DataSource = DMSistema.DsRelCli
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 112
        Top = 16
        Width = 441
        Height = 16
        DataField = 'DES_CLIENTE'
        DataSource = DMSistema.DsRelCli
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 568
        Top = 16
        Width = 107
        Height = 16
        DataField = 'DTA_CADASTRO'
        DataSource = DMSistema.DsRelCli
        Text = ''
      end
    end
  end
end
