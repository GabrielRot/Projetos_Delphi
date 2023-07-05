object DM: TDM
  OldCreateOrder = False
  Height = 249
  Width = 335
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=erp'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 16
  end
  object TAB_AGENDAMENTO: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'erp.tab_agend'
    Left = 208
    Top = 72
  end
  object DS_FORNECEDORES: TDataSource
    DataSet = TAB_FORNECEDORES
    Left = 56
    Top = 128
  end
  object DS_AGENDAMENTO: TDataSource
    DataSet = TAB_AGENDAMENTO
    Left = 208
    Top = 128
  end
  object TAB_FORNECEDORES: TFDTable
    Active = True
    AfterInsert = TAB_FORNECEDORESAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'erp.clientes'
    Left = 56
    Top = 72
    object TAB_FORNECEDORESid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object TAB_FORNECEDORESNOME_CLI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CLI'
      Origin = 'NOME_CLI'
      Size = 80
    end
    object TAB_FORNECEDORESFONE_CLI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE_CLI'
      Origin = 'FONE_CLI'
      EditMask = '(##) #####-####;1;_'
      Size = 16
    end
    object TAB_FORNECEDORESSEG_FONE_CLI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEG_FONE_CLI'
      Origin = 'SEG_FONE_CLI'
      EditMask = '(##) #####-####;1;_'
      Size = 16
    end
    object TAB_FORNECEDORESDATA_CADASTRO_CLI: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO_CLI'
      Origin = 'DATA_CADASTRO_CLI'
    end
    object TAB_FORNECEDORESCNPJ_FORN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ_FORN'
      Origin = 'CNPJ_FORN'
      EditMask = '##.###.###/####-##;1;_'
      Size = 22
    end
  end
end
