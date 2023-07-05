object FCadPct: TFCadPct
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 166
  ClientWidth = 426
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 41
    Height = 13
    Caption = 'C'#243'digo:'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 14
    Top = 41
    Width = 35
    Height = 13
    Caption = 'Nome:'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 19
    Top = 66
    Width = 30
    Height = 13
    Caption = 'Fone:'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 27
    Top = 93
    Width = 23
    Height = 13
    Caption = 'CPF:'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 184
    Top = 90
    Width = 89
    Height = 13
    Caption = 'Cadastrado em:'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 208
    Top = 66
    Width = 40
    Height = 13
    Caption = 'Fone 2:'
  end
  object DBEdit1: TDBEdit
    Left = 55
    Top = 13
    Width = 60
    Height = 21
    DataField = 'COD_PACIENTE'
    DataSource = DMSistema.DsCadPct
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 55
    Top = 39
    Width = 363
    Height = 21
    DataField = 'NOME_PACIENTE'
    DataSource = DMSistema.DsCadPct
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 55
    Top = 63
    Width = 105
    Height = 21
    DataField = 'FONE_PACIENTE'
    DataSource = DMSistema.DsCadPct
    MaxLength = 14
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 56
    Top = 90
    Width = 122
    Height = 21
    DataField = 'CPF_PACIENTE'
    DataSource = DMSistema.DsCadPct
    MaxLength = 14
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 279
    Top = 87
    Width = 139
    Height = 21
    DataField = 'DTA_PACIENTE'
    DataSource = DMSistema.DsCadPct
    MaxLength = 10
    TabOrder = 5
  end
  object Button1: TButton
    Left = 8
    Top = 128
    Width = 75
    Height = 25
    Caption = 'N'#818'ovo'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 128
    Width = 75
    Height = 25
    Caption = 'C'#818'ancelar'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 258
    Top = 128
    Width = 75
    Height = 25
    Caption = 'E'#818'xcluir'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 128
    Width = 74
    Height = 25
    Caption = 'S'#818'air'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 343
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 176
    Top = 128
    Width = 75
    Height = 25
    Caption = 'S'#818'alvar'
    TabOrder = 8
    OnClick = Button6Click
  end
  object DBEdit6: TDBEdit
    Left = 254
    Top = 63
    Width = 164
    Height = 21
    DataField = 'FONE_SEC_PACIENTE'
    DataSource = DMSistema.DsCadPct
    MaxLength = 14
    TabOrder = 3
  end
end
