object DMSistema: TDMSistema
  OldCreateOrder = False
  Height = 280
  Width = 453
  object Conexao: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\Program Files (x86)\Firebird\Firebird_2_5\bin\DADOS'
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Connected = True
    Left = 56
    Top = 16
  end
  object QryCadCli: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '   COD_CLIENTE,'
      '   DES_CLIENTE,'
      '   DTA_CADASTRO'
      'FROM'
      '   TAB_CLIENTE'
      'WHERE'
      '   COD_CLIENTE = :CODIGO'
      'AND'
      '   DES_CLIENTE = :NOME'
      'AND'
      '   DTA_CADASTRO = :DATA')
    SQLConnection = Conexao
    Left = 56
    Top = 80
  end
  object QryPesqCli: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT '
      'DES_CLIENTE,'
      'COD_CLIENTE,'
      'DTA_CADASTRO'
      'FROM TAB_CLIENTE'
      'ORDER BY COD_CLIENTE')
    SQLConnection = Conexao
    Left = 56
    Top = 144
  end
  object QryRelCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 56
    Top = 208
  end
  object DspCadCli: TDataSetProvider
    DataSet = QryCadCli
    Left = 152
    Top = 80
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
        DataType = ftString
        Name = 'NOME'
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
    Left = 248
    Top = 80
    object CdsCadCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Required = True
      OnGetText = CdsCadCliCOD_CLIENTEGetText
    end
    object CdsCadCliDES_CLIENTE: TStringField
      FieldName = 'DES_CLIENTE'
      Size = 50
    end
    object CdsCadCliDTA_CADASTRO: TSQLTimeStampField
      FieldName = 'DTA_CADASTRO'
    end
  end
  object DsCadCli: TDataSource
    DataSet = CdsCadCli
    Left = 336
    Top = 80
  end
  object DspPesqCli: TDataSetProvider
    DataSet = QryPesqCli
    Left = 152
    Top = 144
  end
  object CdsPesqCli: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPesqCli'
    Left = 248
    Top = 144
    object CdsPesqCliDES_CLIENTE: TStringField
      FieldName = 'DES_CLIENTE'
      Size = 50
    end
    object CdsPesqCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Required = True
    end
    object CdsPesqCliDTA_CADASTRO: TSQLTimeStampField
      FieldName = 'DTA_CADASTRO'
    end
  end
  object DsPesqCli: TDataSource
    DataSet = CdsPesqCli
    Left = 336
    Top = 144
  end
  object DsRelCli: TDataSource
    DataSet = CdsRelCli
    Left = 336
    Top = 208
  end
  object CdsRelCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspRelCli'
    Left = 248
    Top = 208
    object CdsRelCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object CdsRelCliDES_CLIENTE: TStringField
      FieldName = 'DES_CLIENTE'
      Size = 50
    end
    object CdsRelCliDTA_CADASTRO: TSQLTimeStampField
      FieldName = 'DTA_CADASTRO'
    end
  end
  object DspRelCli: TDataSetProvider
    DataSet = QryRelCli
    Left = 152
    Top = 208
  end
end
