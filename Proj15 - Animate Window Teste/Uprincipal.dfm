object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 345
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 185
    Height = 305
    Caption = 'RadioGroup1'
    Items.Strings = (
      'AW_BLEND'
      'AW_SLIDE'
      'AW_ACTIVATE'
      'AW_HIDE'
      'AW_CENTER'
      'AW_HOR_POSITIVE'
      'AW_HOR_NEGATIVE'
      'AW_VER_POSITIVE'
      'AW_VER_NEGATIVE')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 240
    Top = 8
    Width = 113
    Height = 41
    Caption = 'Executa Form 2'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 80
    Width = 113
    Height = 41
    Caption = 'Direitos LGBTS'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 240
    Top = 168
    Width = 153
    Height = 57
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    object Label1: TLabel
      Left = 18
      Top = 24
      Width = 7
      Height = 17
      Caption = 'F'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 31
      Top = 24
      Width = 10
      Height = 17
      Caption = 'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 47
      Top = 24
      Width = 10
      Height = 17
      Caption = 'D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 50886
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 63
      Top = 24
      Width = 9
      Height = 17
      Caption = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 78
      Top = 24
      Width = 7
      Height = 17
      Caption = 'S'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 91
      Top = 24
      Width = 7
      Height = 17
      Caption = 'E'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16711808
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 107
      Top = 24
      Width = 6
      Height = 17
      Caption = '?'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
  end
end
