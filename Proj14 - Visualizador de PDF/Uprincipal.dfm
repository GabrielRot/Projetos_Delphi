object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 462
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 24
    object PnlBotao: TPanel
      Left = 15
      Top = 8
      Width = 97
      Height = 24
      BevelOuter = bvNone
      Color = 176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Open Sans'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object BtnLerPDF: TSpeedButton
        Left = 0
        Top = 0
        Width = 97
        Height = 24
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Ler PDF'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Open sans'
        Font.Style = []
        ParentFont = False
        OnClick = BtnLerPDFClick
        ExplicitLeft = -32
        ExplicitWidth = 145
        ExplicitHeight = 33
      end
    end
  end
  object WBPDF: TWebBrowser
    Left = 0
    Top = 41
    Width = 715
    Height = 421
    Align = alClient
    TabOrder = 1
    ExplicitTop = 38
    ControlData = {
      4C000000E6490000832B00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivos PDF (*.PDF)|*.PDF'
    Left = 40
    Top = 64
  end
end
