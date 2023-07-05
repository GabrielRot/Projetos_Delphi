object DMSistema: TDMSistema
  OldCreateOrder = False
  Height = 371
  Width = 548
  object Conexao: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=C:\Program Files (x86)\Firebird\Firebird_2_5\bin\GESTAO' +
        '.FDB'
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
    Left = 64
    Top = 56
  end
  object DspPesqCli: TDataSetProvider
    DataSet = QryPesqCli
    Left = 136
    Top = 136
  end
  object CdsPesqCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPesqCli'
    Left = 208
    Top = 136
    object CdsPesqCliCOD_PAGAMENTO: TIntegerField
      FieldName = 'COD_PAGAMENTO'
      Required = True
    end
    object CdsPesqCliDES_PAGAMENTO: TStringField
      FieldName = 'DES_PAGAMENTO'
      Required = True
      Size = 50
    end
    object CdsPesqCliVAL_PAGAMENTO: TFloatField
      FieldName = 'VAL_PAGAMENTO'
      Required = True
    end
    object CdsPesqCliFLG_PAG_MENSAL: TStringField
      FieldName = 'FLG_PAG_MENSAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsPesqCliDTA_PAGAMENTO: TSQLTimeStampField
      FieldName = 'DTA_PAGAMENTO'
    end
    object CdsPesqCliDTA_INCLUSAO: TSQLTimeStampField
      FieldName = 'DTA_INCLUSAO'
      Required = True
    end
    object CdsPesqCliDTA_ALTERACAO: TSQLTimeStampField
      FieldName = 'DTA_ALTERACAO'
      Required = True
    end
  end
  object DsPesqCli: TDataSource
    DataSet = CdsPesqCli
    Left = 280
    Top = 136
  end
  object QryPesqCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT '
      'TAB_PAGAMENTO.COD_PAGAMENTO,'
      'TAB_PAGAMENTO.DES_PAGAMENTO,'
      'TAB_PAGAMENTO.VAL_PAGAMENTO,'
      'TAB_PAGAMENTO.FLG_PAG_MENSAL,'
      'TAB_PAGAMENTO.DTA_PAGAMENTO,'
      'TAB_PAGAMENTO.DTA_INCLUSAO,'
      'TAB_PAGAMENTO.DTA_ALTERACAO'
      'FROM'
      'TAB_PAGAMENTO'
      'ORDER BY'
      'COD_PAGAMENTO')
    SQLConnection = Conexao
    Left = 64
    Top = 136
  end
end
