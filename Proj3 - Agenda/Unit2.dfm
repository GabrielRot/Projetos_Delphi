object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 439
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 79
    Width = 825
    Height = 362
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Agenda de contatos'
      object Label2: TLabel
        Left = 54
        Top = 75
        Width = 33
        Height = 13
        Caption = 'Celular'
      end
      object Label3: TLabel
        Left = 4
        Top = 123
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object Label5: TLabel
        Left = 382
        Top = 35
        Width = 90
        Height = 13
        Caption = 'Busca de Contatos'
      end
      object nNO: TLabel
        Left = 3
        Top = 35
        Width = 84
        Height = 13
        Caption = 'Nome do Contato'
      end
      object DBCheckBox1: TDBCheckBox
        Left = 309
        Top = 76
        Width = 97
        Height = 17
        Caption = 'Bloqueado?'
        DataField = 'bloqueado'
        DataSource = DM.DS_CONTATOS
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 93
        Top = 32
        Width = 234
        Height = 21
        DataField = 'nome'
        DataSource = DM.DS_CONTATOS
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 93
        Top = 72
        Width = 193
        Height = 21
        DataField = 'celular'
        DataSource = DM.DS_CONTATOS
        TabOrder = 2
      end
      object DBGrid1: TDBGrid
        Left = 485
        Top = 59
        Width = 320
        Height = 250
        DataSource = DM.DS_CONTATOS
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Contatos Cadastrados'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object DBMemo1: TDBMemo
        Left = 12
        Top = 150
        Width = 310
        Height = 75
        DataField = 'observacoes'
        DataSource = DM.DS_CONTATOS
        TabOrder = 4
      end
      object TxtBusca: TEdit
        Left = 485
        Top = 32
        Width = 320
        Height = 21
        TabOrder = 5
        OnChange = TxtBuscaChange
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 835
    Height = 49
    TabOrder = 1
    object DBText1: TDBText
      Left = 640
      Top = 4
      Width = 120
      Height = 17
      DataField = 'data'
      DataSource = DM.DS_CONTATOS
    end
    object Label4: TLabel
      Left = 504
      Top = 4
      Width = 120
      Height = 13
      Caption = 'Data e Hora do Cadastro'
    end
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 8
      Width = 290
      Height = 33
      DataSource = DM.DS_CONTATOS
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 0
    Top = 55
    Width = 137
    Height = 18
    Caption = 'Pesquisa Desativada'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 143
    Top = 55
    Width = 562
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = 'Intersolid Software'
  end
  object Edit2: TEdit
    Left = 720
    Top = 55
    Width = 101
    Height = 21
    Color = clLime
    Enabled = False
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 169
    Top = 76
    Width = 545
    Height = 21
    Enabled = False
    TabOrder = 5
  end
end
