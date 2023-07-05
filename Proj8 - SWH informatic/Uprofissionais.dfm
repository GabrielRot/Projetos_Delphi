object FrmProfissionais: TFrmProfissionais
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 481
  ClientWidth = 469
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 469
    Height = 481
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 8
    ExplicitWidth = 478
    ExplicitHeight = 546
    DesignSize = (
      469
      481)
    object LblProfissional: TLabel
      Left = 16
      Top = 91
      Width = 143
      Height = 20
      Caption = 'Nome do Profissional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12105912
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblEspecialidade: TLabel
      Left = 16
      Top = 187
      Width = 92
      Height = 20
      Caption = 'Especialidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12105912
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblContato: TLabel
      Left = 332
      Top = 187
      Width = 53
      Height = 20
      Caption = 'Contato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12105912
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblTittle: TLabel
      Left = 16
      Top = 17
      Width = 231
      Height = 21
      Caption = 'CADASTRO DE PROFISSIONAIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMEdtContato: TSWHMaskEdit
      Left = 332
      Top = 213
      Width = 105
      Height = 26
      EditMask = '(99)9999-9999;0;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 0
      Text = ''
      MudarColor = 14087422
      TipoMascara = tmTelefone
    end
    object DBEdtEspecialidade: TSWHEdit
      Left = 16
      Top = 213
      Width = 289
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ControlarDigitacao = False
      MudarColor = 14087422
    end
    object PnlBtns: TPanel
      Left = 120
      Top = 364
      Width = 227
      Height = 50
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 129
      object PnlBotaoConfirma: TPanel
        Left = 9
        Top = 11
        Width = 110
        Height = 33
        BevelOuter = bvNone
        Color = 33023
        ParentBackground = False
        TabOrder = 0
        object BtnConfirma: TSpeedButton
          Left = 0
          Top = 0
          Width = 110
          Height = 33
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Confirmar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = -11
          ExplicitTop = 6
        end
      end
      object PnlBotaoCancela: TPanel
        Left = 113
        Top = 11
        Width = 106
        Height = 33
        BevelOuter = bvNone
        Color = 15921906
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
          Height = 33
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BtnCancelaClick
          ExplicitWidth = 105
          ExplicitHeight = 25
        end
      end
    end
    object DBEdtNome: TSWHEdit
      Left = 16
      Top = 117
      Width = 421
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ControlarDigitacao = False
      MudarColor = 14087422
    end
    object PnlDraw: TPanel
      Left = 16
      Top = 50
      Width = 536
      Height = 1
      BevelOuter = bvNone
      Color = 12105912
      ParentBackground = False
      TabOrder = 4
    end
  end
end
