object FCadClientes: TFCadClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 298
  ClientWidth = 624
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 46
    Top = 80
    Width = 23
    Height = 13
    Caption = 'CPF:'
    Color = clBlack
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16514043
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 31
    Top = 24
    Width = 41
    Height = 13
    Caption = 'C'#243'digo:'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 34
    Top = 48
    Width = 35
    Height = 13
    Caption = 'Nome:'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 204
    Top = 77
    Width = 19
    Height = 13
    Caption = 'RG:'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 20
    Top = 99
    Width = 55
    Height = 13
    Caption = 'Endere'#231'o:'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 32
    Top = 123
    Width = 37
    Height = 13
    Caption = 'Bairro:'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 215
    Top = 123
    Width = 23
    Height = 13
    Caption = 'CEP:'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 34
    Top = 147
    Width = 41
    Height = 13
    Caption = 'Cidade:'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 265
    Top = 147
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object Label10: TLabel
    Left = 45
    Top = 171
    Width = 30
    Height = 13
    Caption = 'Fone:'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 161
    Top = 171
    Width = 89
    Height = 13
    Caption = 'Cadastrado em:'
  end
  object Label12: TLabel
    Left = 472
    Top = 72
    Width = 74
    Height = 13
    Caption = 'DTA_CLIENTE'
    FocusControl = DBEdit9
  end
  object DBEdit1: TDBEdit
    Left = 75
    Top = 72
    Width = 102
    Height = 21
    DataField = 'CPF_CLIENTE'
    DataSource = DataSource1
    MaxLength = 14
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 75
    Top = 21
    Width = 63
    Height = 21
    DataField = 'COD_CLIENTE'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 75
    Top = 46
    Width = 270
    Height = 21
    DataField = 'NOME_CLIENTE'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 229
    Top = 72
    Width = 116
    Height = 21
    DataField = 'RG_CLIENTE'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 75
    Top = 96
    Width = 270
    Height = 21
    DataField = 'ENDERECO_CLIENTE'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 75
    Top = 120
    Width = 134
    Height = 21
    DataField = 'BAIRRO_CLIENTE'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 244
    Top = 120
    Width = 101
    Height = 21
    DataField = 'CEP_CLIENTE'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 75
    Top = 144
    Width = 184
    Height = 21
    DataField = 'CIDADE_CLIENTE'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit10: TDBEdit
    Left = 75
    Top = 168
    Width = 78
    Height = 21
    DataField = 'FONE_CLIENTE'
    DataSource = DataSource1
    MaxLength = 13
    TabOrder = 9
  end
  object DBComboBox1: TDBComboBox
    Left = 288
    Top = 144
    Width = 57
    Height = 21
    DataField = 'UF_CLIENTE'
    DataSource = DataSource1
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    TabOrder = 8
  end
  object Button1: TButton
    Left = 8
    Top = 208
    Width = 60
    Height = 25
    Caption = 'N'#818'ovo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 75
    Top = 208
    Width = 79
    Height = 25
    Caption = 'C'#818'ancelar'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 154
    Top = 208
    Width = 64
    Height = 25
    Caption = 'S'#818'alvar'
    TabOrder = 12
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 224
    Top = 208
    Width = 58
    Height = 25
    Caption = 'E'#818'xcluir'
    TabOrder = 13
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 288
    Top = 208
    Width = 73
    Height = 25
    Caption = 'S'#818'air'
    TabOrder = 14
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 267
    Top = 15
    Width = 75
    Height = 25
    Caption = 'P'#818'esquisar'
    TabOrder = 15
    OnClick = Button6Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 256
    Top = 168
    Width = 89
    Height = 21
    Date = 44834.000000000000000000
    Time = 0.639031006947334400
    TabOrder = 16
  end
  object DBEdit9: TDBEdit
    Left = 432
    Top = 91
    Width = 168
    Height = 21
    DataField = 'DTA_CLIENTE'
    DataSource = DataSource1
    TabOrder = 17
  end
  object DataSource1: TDataSource
    DataSet = DMSistema.CdsCadCli
    Left = 192
  end
end
