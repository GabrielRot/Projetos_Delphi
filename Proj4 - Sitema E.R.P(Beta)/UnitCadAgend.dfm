object FormCadAgend: TFormCadAgend
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 433
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 15
    Top = 79
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label4: TLabel
    Left = 15
    Top = 122
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 737
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 156
      Height = 25
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 440
      Top = 20
      Width = 240
      Height = 34
      DataSource = DM.DS_FORNECEDORES
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 304
      Top = 0
      Width = 33
      Height = 33
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DAE0F67491ED4F73E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C71
        E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C
        71E84C71E84C71E84C71E84F73E87491EDDAE1F7FFFFFFFFFFFFFFFFFFE7EBF6
        4B70E74067E64067E64067E64067E64067E64067E64067E64067E64067E64067
        E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067E640
        67E64067E64067E64067E64067E64067E64B70E7E7EBF8FFFFFFFFFFFF9EB2F2
        4067E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067
        E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067E640
        67E64067E64067E64067E64067E64067E64067E69EB2F2FFFFFFFFFFFF89A1F0
        4067E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067
        E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067E640
        67E64067E64067E64067E64067E64067E64067E689A1F0FFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64067E64067E64067E64067E64067E6486DE7819B
        EEB3C4F5D4DEF9E3EAFBE2E9FBCFDAF9ACBDF47592ED4269E64067E64067E640
        67E64067E64067E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64067E64067E64067E6456BE69AAFF2EEF2FDFBFD
        FFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFE4EAFB869FEF4067E640
        67E64067E64067E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64067E64067E65B7DE9DBE3FAFBFDFFFBFDFFFAFC
        FED3DCF9A7BAF393A9F193AAF1A9BBF4D6DFFAFAFCFEFBFDFFFBFDFFC6D3F74C
        71E74067E64067E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64067E66081EAECF1FCFBFDFFFAFCFEBAC9F65C7E
        E94067E64067E64067E64067E64067E64067E66081EAC2CFF7FBFDFFFBFDFFDA
        E2FA4E72E74067E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64E72E7E4EBFCFBFDFFF5F8FE819BEE4067E64067
        E64067E64067E64067E64067E64067E64067E64067E64067E68BA3F0F8FAFEFB
        FDFFCDD8F84269E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E6B8C7F6FBFDFFF9FCFE7B96ED4067E64067E64067
        E64067E65578E8A4B7F3A6B8F35B7CE94067E64067E64067E64067E6869FEFFA
        FCFEFBFDFF94ABF14067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E66282EAFAFCFEFBFDFFABBCF44067E64067E64067E64067
        E64067E6AEBFF4FBFDFFFBFDFFBAC9F64067E64067E64067E64067E64067E6B6
        C6F5FBFDFFEFF3FD4A6FE74067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E6AFC0F4FBFDFFF2F6FD4D71E74067E64067E64067E64067
        E64067E6B4C4F5FBFDFFFBFDFFC0CEF74067E64067E64067E64067E64067E654
        77E8F6F9FEFBFDFF8CA4F04067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E6E8EEFCFBFDFFB6C5F54067E64067E64067E64067E64067
        E64067E6B4C4F5FBFDFFFBFDFFC0CEF74067E64067E64067E64067E64067E640
        67E6C1CFF7FBFDFFC6D2F74067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E65578E8FAFCFEFBFDFF859FEF4067E64067E64067E64067E64067
        E64067E6B4C4F5FBFDFFFBFDFFC0CEF74067E64067E64067E64067E64067E640
        67E691A8F0FBFDFFEDF2FD4067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E66C8AEBFBFDFFFBFDFF6D8BEB4067E64067E64067E64067E64067
        E64067E6B4C4F5FBFDFFFBFDFFC0CEF74067E64067E64067E64067E64067E640
        67E67894EDFBFDFFFAFCFE486DE74067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E66C8AEBFBFDFFFBFDFF6D8BEB4067E64067E64067E64067E64067
        E64067E6B4C4F5FBFDFFFBFDFFC0CEF74067E64067E64067E64067E64067E640
        67E67894EDFBFDFFFAFCFE486DE74067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E65578E8FAFCFEFBFDFF859FEF4067E64067E64067E64067E64067
        E64067E6B4C4F5FBFDFFFBFDFFC0CEF74067E64067E64067E64067E64067E640
        67E691A8F0FBFDFFEDF2FD4067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E6E8EEFCFBFDFFB6C5F54067E64067E64067E64067E64067
        E64067E6B4C4F5FBFDFFFBFDFFC0CEF74067E64067E64067E64067E64067E640
        67E6C1CFF7FBFDFFC6D2F74067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E6AFC0F4FBFDFFF2F6FD4D71E74067E64067E64067E64067
        E64067E6B4C4F5FBFDFFFBFDFFC0CEF74067E64067E64067E64067E64067E654
        77E8F6F9FEFBFDFF8CA4F04067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E66282EAFAFCFEFBFDFFABBCF44067E64067E64067E64067
        E64067E6AEBFF4FBFDFFFBFDFFBAC9F64067E64067E64067E64067E64067E6B6
        C6F5FBFDFFEFF3FD4A6FE74067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E6B8C7F6FBFDFFF9FCFE7B96ED4067E64067E64067
        E64067E65578E8A4B7F3A6B8F35B7CE94067E64067E64067E64067E6869FEFFA
        FCFEFBFDFF94ABF14067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64E72E7E4EBFCFBFDFFF5F8FE819BEE4067E64067
        E64067E64067E64067E64067E64067E64067E64067E64067E68BA3F0F8FAFEFB
        FDFFCDD8F84269E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64067E66081EAECF1FCFBFDFFFAFCFEBAC9F65C7E
        E94067E64067E64067E64067E64067E64067E66081EAC2CFF7FBFDFFFBFDFFDA
        E2FA4E72E74067E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64067E64067E65B7DE9DBE3FAFBFDFFFBFDFFFAFC
        FED3DCF9A7BAF393A9F193AAF1A9BBF4D6DFFAFAFCFEFBFDFFFBFDFFC6D3F74C
        71E74067E64067E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64067E64067E64067E6456BE69AAFF2EEF2FDFBFD
        FFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFFBFDFFE4EAFB869FEF4067E640
        67E64067E64067E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF88A0EF
        4067E64067E64067E64067E64067E64067E64067E64067E64067E6486DE7819B
        EEB3C4F5D4DEF9E3EAFBE2E9FBCFDAF9ACBDF47592ED4269E64067E64067E640
        67E64067E64067E64067E64067E64067E64067E688A0EFFFFFFFFFFFFF89A1F0
        4067E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067
        E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067E640
        67E64067E64067E64067E64067E64067E64067E689A1F0FFFFFFFFFFFF9EB2F2
        4067E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067
        E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067E640
        67E64067E64067E64067E64067E64067E64067E69EB2F2FFFFFFFFFFFFE7EBF7
        4B70E74067E64067E64067E64067E64067E64067E64067E64067E64067E64067
        E64067E64067E64067E64067E64067E64067E64067E64067E64067E64067E640
        67E64067E64067E64067E64067E64067E64B70E7E8ECF9FFFFFFFFFFFFFFFFFF
        DAE1F77491ED4F73E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C71
        E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C71E84C
        71E84C71E84C71E84C71E84F73E87491EDDAE1F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 1
    end
  end
  object TxtCodigo: TDBEdit
    Left = 54
    Top = 76
    Width = 49
    Height = 21
    DataField = 'id'
    DataSource = DM.DS_FORNECEDORES
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 112
    Top = 122
    Width = 145
    Height = 21
    TabOrder = 2
  end
end
