object DMSistema: TDMSistema
  OldCreateOrder = False
  Height = 353
  Width = 749
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      
        'Database=C:\Program Files (x86)\Firebird\Firebird_2_5\bin\GESTAO' +
        '.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 32
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 160
    Top = 32
  end
  object DsCadCli: TDataSource
    DataSet = CdsCadCli
    Left = 304
    Top = 120
  end
  object CdsCadCli: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'DspCadCli'
    AfterPost = CdsCadCliAfterPost
    AfterDelete = CdsCadCliAfterDelete
    OnNewRecord = CdsCadCliNewRecord
    Left = 232
    Top = 120
    object CdsCadCliCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Origin = 'CPF_CLIENTE'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 19
    end
    object CdsCadCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = CdsCadCliCOD_CLIENTEGetText
    end
    object CdsCadCliNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Required = True
      Size = 50
    end
    object CdsCadCliRG_CLIENTE: TStringField
      FieldName = 'RG_CLIENTE'
      Origin = 'RG_CLIENTE'
      Size = 18
    end
    object CdsCadCliENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Origin = 'ENDERECO_CLIENTE'
      Size = 50
    end
    object CdsCadCliBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      Origin = 'BAIRRO_CLIENTE'
      Size = 25
    end
    object CdsCadCliCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Origin = 'CEP_CLIENTE'
      Size = 9
    end
    object CdsCadCliCIDADE_CLIENTE: TStringField
      FieldName = 'CIDADE_CLIENTE'
      Origin = 'CIDADE_CLIENTE'
      Required = True
      Size = 50
    end
    object CdsCadCliUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      Origin = 'UF_CLIENTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CdsCadCliFONE_CLIENTE: TStringField
      FieldName = 'FONE_CLIENTE'
      Origin = 'FONE_CLIENTE'
      EditMask = '(##)####-####;1;_'
      Size = 15
    end
    object CdsCadCliDTA_CLIENTE: TSQLTimeStampField
      FieldName = 'DTA_CLIENTE'
      Origin = 'DTA_CLIENTE'
    end
  end
  object DspCadCli: TDataSetProvider
    DataSet = QryCadCli
    Left = 160
    Top = 120
  end
  object QryCadCli: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      #9'COD_CLIENTE,'
      #9'NOME_CLIENTE,'
      #9'CPF_CLIENTE,'
      #9'RG_CLIENTE,'
      #9'ENDERECO_CLIENTE,'
      #9'BAIRRO_CLIENTE,'
      #9'CEP_CLIENTE,'
      #9'CIDADE_CLIENTE,'
      #9'UF_CLIENTE,'
      #9'FONE_CLIENTE,'
      #9'DTA_CLIENTE'
      'FROM'
      #9'TAB_CLIENTE'
      'WHERE'
      #9'COD_CLIENTE = :CODIGO'
      '        AND'
      '        DTA_CLIENTE = :DATA')
    Left = 80
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'DATA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object QryPesqCli: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  COD_CLIENTE,'
      '  NOME_CLIENTE,'
      '  FONE_CLIENTE'
      'FROM'
      '  TAB_CLIENTE'
      'WHERE'
      '  NOME_CLIENTE LIKE :NOME')
    Left = 80
    Top = 192
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftInteger
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
  end
  object DsPesqCli: TDataSource
    DataSet = CdsPesqCli
    Left = 304
    Top = 192
  end
  object CdsPesqCli: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPesqCli'
    Left = 232
    Top = 192
    object CdsPesqCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPesqCliNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Required = True
      Size = 50
    end
    object CdsPesqCliFONE_CLIENTE: TStringField
      FieldName = 'FONE_CLIENTE'
      Origin = 'FONE_CLIENTE'
      Size = 15
    end
  end
  object DspPesqCli: TDataSetProvider
    DataSet = QryPesqCli
    Left = 160
    Top = 192
  end
  object QryRelCli: TFDQuery
    Connection = Conexao
    Left = 80
    Top = 264
  end
  object DspRelCli: TDataSetProvider
    DataSet = QryRelCli
    Left = 160
    Top = 264
  end
  object CdsRelCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspRelCli'
    Left = 232
    Top = 264
    object CdsRelCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object CdsRelCliNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CdsRelCliFONE_CLIENTE: TStringField
      FieldName = 'FONE_CLIENTE'
      Size = 15
    end
    object CdsRelCliDTA_CLIENTE: TSQLTimeStampField
      FieldName = 'DTA_CLIENTE'
    end
    object CdsRelCliCIDADE_CLIENTE: TStringField
      FieldName = 'CIDADE_CLIENTE'
      Size = 50
    end
  end
  object DsRelCli: TDataSource
    DataSet = CdsRelCli
    Left = 304
    Top = 264
  end
  object QryCadProd: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '   COD_PRODUTO,'
      '   DES_PRODUTO,'
      '   CUSTO,'
      '   VENDA,'
      '   ESTOQUE,'
      '   DTA_PRODUTO,'
      '   LOG_PRODUTO'
      'FROM'
      '   TAB_PRODUTO'
      'WHERE'
      '   COD_PRODUTO = :CODIGO'
      '   AND'
      '   DTA_PRODUTO = :DATE'
      '')
    Left = 408
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QryPesqProd: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '   COD_PRODUTO,'
      '   DES_PRODUTO'
      'FROM'
      '   TAB_PRODUTO'
      'WHERE'
      '   DES_PRODUTO LIKE :DESCRICAO')
    Left = 408
    Top = 192
    ParamData = <
      item
        Name = 'DESCRICAO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
  end
  object QryRelProd: TFDQuery
    Connection = Conexao
    Left = 408
    Top = 264
  end
  object DspCadProd: TDataSetProvider
    DataSet = QryCadProd
    Left = 488
    Top = 120
  end
  object DspPesqProd: TDataSetProvider
    DataSet = QryPesqProd
    Left = 488
    Top = 192
  end
  object DspRelProd: TDataSetProvider
    DataSet = QryRelProd
    Left = 488
    Top = 264
  end
  object CdsCadProd: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'DspCadProd'
    AfterPost = CdsCadProdAfterPost
    AfterDelete = CdsCadProdAfterDelete
    OnNewRecord = CdsCadProdNewRecord
    Left = 560
    Top = 120
    object CdsCadProdCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = CdsCadProdCOD_PRODUTOGetText
    end
    object CdsCadProdDES_PRODUTO: TStringField
      FieldName = 'DES_PRODUTO'
      Origin = 'DES_PRODUTO'
      Required = True
      Size = 50
    end
    object CdsCadProdCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object CdsCadProdVENDA: TFloatField
      FieldName = 'VENDA'
      Origin = 'VENDA'
    end
    object CdsCadProdESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object CdsCadProdLOG_PRODUTO: TStringField
      FieldName = 'LOG_PRODUTO'
      Origin = 'LOG_PRODUTO'
      Size = 50
    end
    object CdsCadProdDTA_PRODUTO: TSQLTimeStampField
      FieldName = 'DTA_PRODUTO'
      Origin = 'DTA_PRODUTO'
    end
  end
  object CdsPesqProd: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPesqProd'
    Left = 560
    Top = 192
    object CdsPesqProdCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPesqProdDES_PRODUTO: TStringField
      FieldName = 'DES_PRODUTO'
      Origin = 'DES_PRODUTO'
      Required = True
      Size = 50
    end
  end
  object CdsRelProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspRelProd'
    Left = 560
    Top = 264
    object CdsRelProdCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object CdsRelProdDES_PRODUTO: TStringField
      FieldName = 'DES_PRODUTO'
      Size = 50
    end
    object CdsRelProdCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object CdsRelProdVENDA: TFloatField
      FieldName = 'VENDA'
    end
    object CdsRelProdESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object CdsRelProdDTA_PRODUTO: TSQLTimeStampField
      FieldName = 'DTA_PRODUTO'
    end
  end
  object DsCadProd: TDataSetProvider
    DataSet = CdsCadProd
    Left = 632
    Top = 120
  end
  object DsPesqProd: TDataSource
    DataSet = CdsPesqProd
    Left = 632
    Top = 192
  end
  object DsRelProd: TDataSource
    DataSet = CdsRelProd
    Left = 632
    Top = 264
  end
end
