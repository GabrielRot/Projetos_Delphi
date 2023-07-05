object FrmPessoasCampos: TFrmPessoasCampos
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FrmPessoasCampos'
  ClientHeight = 461
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 461
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object PgcPessoas: TPageControl
      Left = 0
      Top = 41
      Width = 725
      Height = 420
      ActivePage = TBSEndereco
      Align = alClient
      Style = tsButtons
      TabOrder = 0
      ExplicitTop = 42
      object TBSDadosGerais: TTabSheet
        Caption = '&1 Dados Gerais'
      end
      object TBSEndereco: TTabSheet
        Caption = '&2 Endere'#231'o'
        ImageIndex = 1
      end
    end
    object PnlTopo: TPanel
      Left = 0
      Top = 0
      Width = 725
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object BtnEndereco: TSpeedButton
        AlignWithMargins = True
        Left = 99
        Top = 0
        Width = 70
        Height = 35
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Endere'#231'o'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Margin = 5
        ParentFont = False
        OnClick = BtnEnderecoClick
        ExplicitHeight = 36
      end
      object BtnDadosGerais: TSpeedButton
        AlignWithMargins = True
        Left = 5
        Top = 0
        Width = 89
        Height = 35
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Dados Gerais'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Margin = 5
        ParentFont = False
        OnClick = BtnDadosGeraisClick
        ExplicitHeight = 36
      end
      object PnlBotoes: TPanel
        Left = 488
        Top = 0
        Width = 237
        Height = 40
        Align = alRight
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 41
        object PnlBtns: TPanel
          Left = 0
          Top = 0
          Width = 237
          Height = 40
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 41
          object PnlBotaoCancela: TPanel
            AlignWithMargins = True
            Left = 112
            Top = 5
            Width = 120
            Height = 30
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alRight
            BevelOuter = bvNone
            Color = 6447714
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 114
            ExplicitTop = 3
            ExplicitHeight = 35
            object LblCancela: TLabel
              Left = 0
              Top = 0
              Width = 120
              Height = 30
              Align = alClient
              Alignment = taCenter
              BiDiMode = bdLeftToRight
              Caption = 'Cancelar'
              Color = 15921906
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 15921906
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitWidth = 44
              ExplicitHeight = 13
            end
            object BtnCancela: TSpeedButton
              Left = 0
              Top = 0
              Width = 120
              Height = 30
              Align = alClient
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = BtnCancelaClick
              ExplicitLeft = 48
              ExplicitTop = 24
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
          object PnlBotaoConfirma: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 5
            Width = 107
            Height = 30
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BevelOuter = bvNone
            Color = 33023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            ExplicitTop = 3
            ExplicitWidth = 111
            ExplicitHeight = 35
            object LblConfirma: TLabel
              Left = 0
              Top = 0
              Width = 107
              Height = 30
              Align = alClient
              Alignment = taCenter
              BiDiMode = bdLeftToRight
              Caption = 'Confirmar'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 6
              ExplicitTop = -5
              ExplicitWidth = 114
              ExplicitHeight = 44
            end
            object BtnConfirma: TSpeedButton
              Left = 0
              Top = 0
              Width = 107
              Height = 30
              Cursor = crHandPoint
              Align = alClient
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = BtnConfirmaClick
              ExplicitLeft = 8
              ExplicitTop = -2
              ExplicitWidth = 106
            end
          end
        end
      end
      object PnlDrawBotao: TPanel
        Left = 0
        Top = 40
        Width = 725
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = 14869218
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 39
        ExplicitWidth = 89
      end
    end
  end
end
