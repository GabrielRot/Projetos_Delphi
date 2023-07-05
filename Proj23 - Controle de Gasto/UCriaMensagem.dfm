object FrmCriaMsg: TFrmCriaMsg
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 221
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 221
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object PnlFundo: TPanel
      Left = 0
      Top = 0
      Width = 483
      Height = 221
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        483
        221)
      object ImgCriaMsg: TImage
        Left = 32
        Top = 56
        Width = 113
        Height = 97
      end
      object LblTituloMsg: TLabel
        Left = 160
        Top = 64
        Width = 45
        Height = 21
        Caption = 'Titulo'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LblDesMsg: TLabel
        Left = 160
        Top = 93
        Width = 293
        Height = 45
        Caption = 
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do ' +
          'eiusmod tempor incididunt ut labore et dolore magna aliqua.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object ShpFundo: TShape
        Left = 0
        Top = 33
        Width = 483
        Height = 188
        Align = alClient
        Brush.Style = bsClear
        Pen.Color = clGray
        ExplicitLeft = 72
        ExplicitTop = 56
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object PnlTop: TPanel
        Left = 0
        Top = 0
        Width = 483
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          483
          33)
        object ShpTop: TShape
          Left = 0
          Top = 0
          Width = 483
          Height = 32
          Align = alClient
          Brush.Style = bsClear
          Pen.Color = clGray
          ExplicitTop = 1
        end
        object LblProgramName: TLabel
          Left = 16
          Top = 12
          Width = 62
          Height = 17
          Caption = 'CDG E.R.P'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnClose: TSpeedButton
          Left = 448
          Top = 5
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A2A2ABFBFBFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFBFBFBF2A2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC2C2C2161616BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3161616BDBD
            BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2161616BDBDBDFF
            FFFFFFFFFFC3C3C3161616BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC2C2C2161616BDBDBDC3C3C3161616BDBDBDFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C211
            1111101010BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFC3C3C3111111101010BDBDBDFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3161616BD
            BDBDC2C2C2161616BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFC3C3C3161616BDBDBDFFFFFFFFFFFFC2C2C2161616BDBDBDFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3161616BDBDBDFFFFFFFF
            FFFFFFFFFFFFFFFFC2C2C2161616BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2A2A2ABFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2A2A
            2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = BtnCloseClick
          ExplicitLeft = 435
        end
        object PnlDrawTop: TPanel
          Left = 0
          Top = 32
          Width = 483
          Height = 1
          Align = alBottom
          BevelOuter = bvNone
          Color = clGray
          ParentBackground = False
          TabOrder = 0
        end
      end
      object PnlBtns: TPanel
        Left = 239
        Top = 159
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
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object LblConfirma: TLabel
            Left = 0
            Top = 0
            Width = 104
            Height = 30
            Align = alClient
            Alignment = taCenter
            BiDiMode = bdLeftToRight
            Caption = 'SIM ( ENTER )'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 71
            ExplicitHeight = 13
          end
          object BtnConfirma: TSpeedButton
            Left = 0
            Top = 0
            Width = 104
            Height = 30
            Align = alClient
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = BtnConfirmaClick
            ExplicitLeft = 48
            ExplicitTop = 24
            ExplicitWidth = 23
            ExplicitHeight = 22
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
end
