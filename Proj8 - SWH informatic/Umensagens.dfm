object FrmMensagens: TFrmMensagens
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 260
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 260
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      609
      260)
    object ShpFundo: TShape
      Left = 0
      Top = 0
      Width = 609
      Height = 260
      Align = alClient
      ExplicitLeft = 152
      ExplicitTop = 80
      ExplicitWidth = 65
      ExplicitHeight = 65
    end
    object LblTituloAtencao: TLabel
      Left = 16
      Top = 8
      Width = 74
      Height = 21
      Caption = 'ATEN'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ImgIcone: TImage
      Left = 40
      Top = 72
      Width = 96
      Height = 96
      AutoSize = True
      Center = True
    end
    object LblTituloMensagem: TLabel
      Left = 160
      Top = 72
      Width = 55
      Height = 21
      Caption = 'T'#205'TULO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblMensagem: TLabel
      Left = 160
      Top = 99
      Width = 385
      Height = 34
      Caption = 
        'Mensagem Para o Usu'#225'rio-----------------------------------------' +
        '---------------------------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object PnlDraw: TPanel
      Left = 0
      Top = 35
      Width = 625
      Height = 1
      BevelOuter = bvNone
      Color = clGray
      ParentBackground = False
      TabOrder = 0
    end
    object PnlBtns: TPanel
      Left = 367
      Top = 176
      Width = 227
      Height = 50
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 1
      object PnlBotaoConfirma: TPanel
        Left = 113
        Top = 11
        Width = 104
        Height = 30
        BevelOuter = bvNone
        Color = 33023
        ParentBackground = False
        TabOrder = 0
        object BtnConfirma: TSpeedButton
          Left = 0
          Top = 0
          Width = 104
          Height = 30
          Cursor = crHandPoint
          Align = alClient
          Caption = 'SIM ( ENTER )'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BtnConfirmaClick
          ExplicitWidth = 120
          ExplicitHeight = 25
        end
      end
      object PnlBotaoCancela: TPanel
        Left = 9
        Top = 11
        Width = 106
        Height = 30
        BevelOuter = bvNone
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object BtnCancela: TSpeedButton
          Left = 0
          Top = 0
          Width = 106
          Height = 30
          Cursor = crHandPoint
          Align = alClient
          Caption = 'N'#195'O ( ESC )'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BtnCancelaClick
          ExplicitTop = 16
          ExplicitHeight = 33
        end
      end
    end
  end
end
