object DMSistema: TDMSistema
  OldCreateOrder = False
  Height = 287
  Width = 579
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\Program Files (x86)\Firebird\Firebird_2_5\bin\DADOS'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 24
  end
  object QryCadCli: TFDQuery
    Connection = Conexao
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
      '   DTA_CADASTRO = :DATA'
      'AND'
      '   DES_CLIENTE = :NOME')
    Left = 48
    Top = 96
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
      end
      item
        Position = 3
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
      end>
    object QryCadCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object QryCadCliDES_CLIENTE: TStringField
      FieldName = 'DES_CLIENTE'
      Size = 50
    end
    object QryCadCliDTA_CADASTRO: TSQLTimeStampField
      FieldName = 'DTA_CADASTRO'
    end
  end
  object QryRelCli: TFDQuery
    Connection = Conexao
    Left = 48
    Top = 160
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 120
    Top = 24
  end
  object DspCadCli: TDataSetProvider
    DataSet = QryCadCli
    Left = 120
    Top = 96
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
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'DspCadCli'
    AfterPost = CdsCadCliAfterPost
    AfterDelete = CdsCadCliAfterDelete
    OnNewRecord = CdsCadCliNewRecord
    Left = 192
    Top = 96
    object CdsCadCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = CdsCadCliCOD_CLIENTEGetText
    end
    object CdsCadCliDES_CLIENTE: TStringField
      FieldName = 'DES_CLIENTE'
      Origin = 'DES_CLIENTE'
      Size = 50
    end
    object CdsCadCliDTA_CADASTRO: TSQLTimeStampField
      FieldName = 'DTA_CADASTRO'
      Origin = 'DTA_CADASTRO'
    end
  end
  object DspRelCli: TDataSetProvider
    DataSet = QryRelCli
    Left = 120
    Top = 160
  end
  object CdsRelCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspRelCli'
    Left = 192
    Top = 160
    object CdsRelCliDES_CLIENTE: TStringField
      FieldName = 'DES_CLIENTE'
      Size = 50
    end
    object CdsRelCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object CdsRelCliDTA_CADASTRO: TSQLTimeStampField
      FieldName = 'DTA_CADASTRO'
    end
  end
  object DsCadCli: TDataSource
    DataSet = CdsCadCli
    Left = 264
    Top = 96
  end
  object DsRelCli: TDataSource
    DataSet = CdsRelCli
    Left = 264
    Top = 160
  end
  object QryPesqCli: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT '
      'DES_CLIENTE,'
      'COD_CLIENTE,'
      'DTA_CADASTRO'
      'FROM TAB_CLIENTE'
      'ORDER BY COD_CLIENTE')
    Left = 48
    Top = 224
    object QryPesqCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object QryPesqCliDES_CLIENTE: TStringField
      FieldName = 'DES_CLIENTE'
      Size = 50
    end
    object QryPesqCliDTA_CADASTRO: TSQLTimeStampField
      FieldName = 'DTA_CADASTRO'
    end
  end
  object DspPesqCli: TDataSetProvider
    DataSet = QryPesqCli
    Left = 120
    Top = 224
  end
  object DsPesqCli: TDataSource
    DataSet = CdsPesqCli
    Left = 264
    Top = 224
  end
  object CdsPesqCli: TClientDataSet
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
        Size = 50
      end
      item
        DataType = ftTimeStamp
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'DspPesqCli'
    Left = 192
    Top = 224
    object CdsPesqCliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPesqCliDES_CLIENTE: TStringField
      FieldName = 'DES_CLIENTE'
      Origin = 'DES_CLIENTE'
      Size = 50
    end
    object CdsPesqCliDTA_CADASTRO: TSQLTimeStampField
      FieldName = 'DTA_CADASTRO'
      Origin = 'DTA_CADASTRO'
    end
  end
  object CURSO: TSQLConnection
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXInterbase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXInterBaseDriver2' +
        '00.bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=20.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver200.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=20.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbexpint.dll'
      'LibraryNameOsx=libsqlib.dylib'
      'VendorLib=gds32.dll'
      'VendorLibWin64=ibclient64.dll'
      'VendorLibOsx=libgds.dylib'
      'Database=database.gdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'DisplayDriverName=InterBase Server'
      'RoleName=RoleName'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    Left = 440
    Top = 96
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CURSO
    Left = 448
    Top = 152
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'Interbase'
    Params.Strings = (
      'DriverUnit=Data.DBXInterbase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXInterBaseDriver2' +
        '00.bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=20.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver200.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=20.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbexpint.dll'
      'LibraryNameOsx=libsqlib.dylib'
      'VendorLib=gds32.dll'
      'VendorLibWin64=ibclient64.dll'
      'VendorLibOsx=libgds.dylib'
      'Database=database.gdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'DisplayDriverName=InterBase Server'
      'RoleName=RoleName'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    Left = 440
    Top = 96
  end
end
