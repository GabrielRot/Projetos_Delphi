object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  ClientHeight = 438
  ClientWidth = 689
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object LblCódigo: TLabel
    Left = 64
    Top = 77
    Width = 52
    Height = 17
    Caption = 'C'#243'digo *'
  end
  object LblCategoria: TLabel
    Left = 216
    Top = 77
    Width = 66
    Height = 17
    Caption = 'Categoria *'
  end
  object LblData: TLabel
    Left = 378
    Top = 77
    Width = 36
    Height = 17
    Caption = 'Data *'
  end
  object LblNome: TLabel
    Left = 64
    Top = 157
    Width = 45
    Height = 17
    Caption = 'Nome *'
  end
  object LblDescricao: TLabel
    Left = 64
    Top = 245
    Width = 57
    Height = 17
    Caption = 'Descri'#231#227'o'
  end
  object BtnConfirma: TButton
    Left = 169
    Top = 320
    Width = 113
    Height = 33
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BtnConfirmaClick
  end
  object BtnCancela: TButton
    Left = 304
    Top = 320
    Width = 121
    Height = 33
    Caption = 'Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnCancelaClick
  end
  object EdtCódigo: TEdit
    Tag = 5
    Left = 64
    Top = 96
    Width = 129
    Height = 25
    Hint = 'C'#243'digo'
    TabOrder = 2
  end
  object CmbCategoria: TComboBox
    Tag = 5
    Left = 216
    Top = 96
    Width = 145
    Height = 25
    Hint = 'Categoria'
    TabOrder = 3
  end
  object EdtNome: TEdit
    Tag = 5
    Left = 64
    Top = 176
    Width = 435
    Height = 25
    Hint = 'Nome'
    TabOrder = 4
  end
  object EdtDescricao: TEdit
    Left = 64
    Top = 264
    Width = 435
    Height = 25
    Hint = 'Descri'#231#227'o'
    TabOrder = 5
  end
  object MEdtData: TMaskEdit
    Tag = 5
    Left = 378
    Top = 96
    Width = 120
    Height = 25
    Hint = 'Data'
    EditMask = '##/##/##;1;_'
    MaxLength = 8
    TabOrder = 6
    Text = '  /  /  '
  end
end
