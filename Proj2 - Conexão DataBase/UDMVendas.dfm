object DmVendas: TDmVendas
  OldCreateOrder = False
  Height = 439
  Width = 674
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      
        'Database=C:\Program Files (x86)\Firebird\Firebird_2_5\bin\GESTAO' +
        '.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 120
    Top = 32
  end
  object QryListaCli: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '   COD_CLIENTE,'
      '   NOME_CLIENTE'
      'FROM'
      '   TAB_CLIENTE'
      'ORDER BY NOME_CLIENTE')
    Left = 40
    Top = 120
  end
  object QryListaProd: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '   COD_PRODUTO,'
      '   DES_PRODUTO'
      'FROM'
      '   TAB_PRODUTO'
      'ORDER BY'
      '   DES_PRODUTO')
    Left = 40
    Top = 192
  end
  object QryVendas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  TAB_VENDA.*,'
      '  TAB_CLIENTE.NOME_CLIENTE'
      'FROM'
      '  TAB_VENDA INNER JOIN TAB_CLIENTE ON'
      '    TAB_CLIENTE.cod_cliente = TAB_VENDA.COD_CLIENTE'
      'WHERE'
      'COD_VENDA = :COD_VENDA')
    Left = 40
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = 'COD_VENDA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryVendasCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object QryVendasCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object QryVendasDTA_VENDA: TSQLTimeStampField
      FieldName = 'DTA_VENDA'
    end
    object QryVendasTOTAL_VENDA: TCurrencyField
      FieldName = 'TOTAL_VENDA'
    end
    object QryVendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
  end
  object QryProdPed: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM TAB_VENDA_PRODUTO'
      'WHERE'
      '   COD_VENDA = :COD_VENDA')
    Left = 40
    Top = 336
    ParamData = <
      item
        Name = 'COD_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QryProdPedCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object QryProdPedCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object QryProdPedQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object QryProdPedVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
  end
  object QryProxVenda: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '   CAST(gen_id(gen_vendas_id, 1) AS INTEGER) AS PROX_COD'
      'FROM'
      '   rdb$database')
    Left = 384
    Top = 232
  end
  object DspListaCli: TDataSetProvider
    DataSet = QryListaCli
    Left = 120
    Top = 120
  end
  object DspListaProd: TDataSetProvider
    DataSet = QryListaProd
    Left = 120
    Top = 192
  end
  object DspVendas: TDataSetProvider
    DataSet = QryVendas
    Left = 120
    Top = 264
  end
  object CdsProdPed: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    OnCalcFields = CdsProdPedCalcFields
    Left = 120
    Top = 336
    object CdsProdPedCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object CdsProdPedCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object CdsProdPedQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object CdsProdPedVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object CdsProdPedNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = QryListaProd
      LookupKeyFields = 'COD_PRODUTO'
      LookupResultField = 'DES_PRODUTO'
      KeyFields = 'COD_PRODUTO'
      Size = 50
      Lookup = True
    end
    object CdsProdPedTotalItem: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TotalItem'
    end
    object CdsProdPedTotalGeral: TAggregateField
      FieldName = 'TotalGeral'
      Active = True
      DisplayName = ''
      Expression = 'SUM(TotalItem)'
    end
  end
  object DsProdPed: TDataSource
    DataSet = CdsProdPed
    Left = 200
    Top = 336
  end
  object DsProdPedido: TDataSource
    DataSet = QryVendas
    Left = 280
    Top = 336
  end
  object CdsVendas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_VENDA'
        ParamType = ptInput
      end>
    ProviderName = 'DspVendas'
    Left = 200
    Top = 264
    object CdsVendasCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object CdsVendasCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object CdsVendasDTA_VENDA: TSQLTimeStampField
      FieldName = 'DTA_VENDA'
    end
    object CdsVendasTOTAL_VENDA: TCurrencyField
      FieldName = 'TOTAL_VENDA'
    end
    object CdsVendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
  end
  object CdsListaProd: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspListaProd'
    Left = 200
    Top = 192
    object CdsListaProdCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsListaProdDES_PRODUTO: TStringField
      FieldName = 'DES_PRODUTO'
      Origin = 'DES_PRODUTO'
      Size = 50
    end
  end
  object CdsListaCli: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspListaCli'
    Left = 200
    Top = 120
    object CdsListaCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsListaCliNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
  end
  object DsListaProd: TDataSource
    DataSet = CdsListaProd
    Left = 280
    Top = 192
  end
  object DsListaCli: TDataSource
    DataSet = CdsListaCli
    Left = 280
    Top = 120
  end
  object DsVendas: TDataSource
    DataSet = CdsVendas
    Left = 280
    Top = 264
  end
end
