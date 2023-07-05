object DMSistema: TDMSistema
  OldCreateOrder = False
  Height = 357
  Width = 644
  object DsCadPct: TDataSource
    DataSet = CdsCadPct
    Left = 272
    Top = 120
  end
  object CdsCadPct: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCadPct'
    AfterPost = CdsCadPctAfterPost
    AfterDelete = CdsCadPctAfterDelete
    OnNewRecord = CdsCadPctNewRecord
    Left = 200
    Top = 120
    object CdsCadPctCOD_PACIENTE: TIntegerField
      FieldName = 'COD_PACIENTE'
      Origin = 'COD_PACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = CdsCadPctCOD_PACIENTEGetText
    end
    object CdsCadPctNOME_PACIENTE: TStringField
      FieldName = 'NOME_PACIENTE'
      Origin = 'NOME_PACIENTE'
      Required = True
      Size = 80
    end
    object CdsCadPctFONE_PACIENTE: TStringField
      FieldName = 'FONE_PACIENTE'
      Origin = 'FONE_PACIENTE'
      Required = True
      EditMask = '(##)#####-####;1;_'
      Size = 15
    end
    object CdsCadPctFONE_SEC_PACIENTE: TStringField
      FieldName = 'FONE_SEC_PACIENTE'
      Origin = 'FONE_SEC_PACIENTE'
      EditMask = '(##)#####-####;1;_'
      Size = 15
    end
    object CdsCadPctCPF_PACIENTE: TStringField
      FieldName = 'CPF_PACIENTE'
      Origin = 'CPF_PACIENTE'
      Required = True
      EditMask = '###-###-###-##;1;_'
      Size = 19
    end
    object CdsCadPctDTA_PACIENTE: TSQLTimeStampField
      FieldName = 'DTA_PACIENTE'
      Origin = 'DTA_PACIENTE'
      EditMask = '##/##/####;1;_'
    end
  end
  object DspCadPct: TDataSetProvider
    DataSet = QryCadPct
    Left = 120
    Top = 120
  end
  object Connection: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      
        'Database=C:\Program Files (x86)\Firebird\Firebird_2_5\bin\CLINIC' +
        'A.FDB'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 48
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 120
    Top = 48
  end
  object QryCadPct: TFDQuery
    Active = True
    Connection = Connection
    SQL.Strings = (
      'SELECT'
      '    COD_PACIENTE,'
      '    NOME_PACIENTE,'
      '    FONE_PACIENTE,'
      '    FONE_SEC_PACIENTE,'
      '    CPF_PACIENTE,'
      '    DTA_PACIENTE'
      'FROM'
      '    TAB_PACIENTE'
      'WHERE'
      '    COD_PACIENTE =:CODIGO')
    Left = 48
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryCadAgend: TFDQuery
    Active = True
    Connection = Connection
    SQL.Strings = (
      'SELECT'
      '    COD_AGENDAMENTO,'
      '    COD_PACIENTE,'
      '    ESPC_AGENDAMENTO,'
      '    MEDICO_AGENDAMTO,'
      '    HORA_AGENDAMENTO,'
      '    DTA_AGENDAMENTO'
      'FROM'
      '    TAB_AGENDAMENTO'
      'WHERE'
      '    COD_AGENDAMENTO = :CODIGO'
      'AND'
      '    DTA_AGENDAMENTO = :DATA'
      'AND'
      '    HORA_AGENDAMENTO = :HORA'
      'AND'
      '    ESPC_AGENDAMENTO = :ESPC')
    Left = 48
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'HORA'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Name = 'ESPC'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end>
  end
  object DspCadAgend: TDataSetProvider
    DataSet = QryCadAgend
    Left = 120
    Top = 192
  end
  object CdsCadAgend: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCadAgend'
    OnNewRecord = CdsCadAgendNewRecord
    Left = 200
    Top = 192
    object CdsCadAgendCOD_AGENDAMENTO: TIntegerField
      FieldName = 'COD_AGENDAMENTO'
      Origin = 'COD_AGENDAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCadAgendMEDICO_AGENDAMTO: TStringField
      FieldName = 'MEDICO_AGENDAMTO'
      Origin = 'MEDICO_AGENDAMTO'
      Required = True
      Size = 80
    end
    object CdsCadAgendHORA_AGENDAMENTO: TTimeField
      FieldName = 'HORA_AGENDAMENTO'
      Origin = 'HORA_AGENDAMENTO'
      EditMask = '!90:00;1;_'
    end
    object CdsCadAgendDTA_AGENDAMENTO: TDateField
      FieldName = 'DTA_AGENDAMENTO'
      Origin = 'DTA_AGENDAMENTO'
      Required = True
    end
    object CdsCadAgendCOD_PACIENTE: TIntegerField
      FieldName = 'COD_PACIENTE'
      Origin = 'COD_PACIENTE'
      Required = True
    end
    object CdsCadAgendESPC_AGENDAMENTO: TStringField
      FieldName = 'ESPC_AGENDAMENTO'
      Origin = 'ESPC_AGENDAMENTO'
      Required = True
      Size = 25
    end
  end
  object DsCadAgend: TDataSource
    DataSet = CdsCadAgend
    Left = 272
    Top = 192
  end
  object QryPesqPct: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT'
      '  COD_PACIENTE,'
      '  NOME_PACIENTE,'
      '  CPF_PACIENTE,'
      '  FONE_PACIENTE,'
      '  FONE_SEC_PACIENTE,'
      '  DTA_PACIENTE'
      'FROM'
      '  TAB_PACIENTE'
      'WHERE'
      'NOME_PACIENTE LIKE :NOME'
      'ORDER BY COD_PACIENTE')
    Left = 48
    Top = 264
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 80
        Value = Null
      end>
  end
  object DspPesqPct: TDataSetProvider
    DataSet = QryPesqPct
    Left = 120
    Top = 264
  end
  object DsPesqPct: TDataSource
    DataSet = CdsPesqPct
    Left = 272
    Top = 264
  end
  object CdsPesqPct: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPesqPct'
    Left = 200
    Top = 264
    object CdsPesqPctCOD_PACIENTE: TIntegerField
      FieldName = 'COD_PACIENTE'
      Origin = 'COD_PACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPesqPctNOME_PACIENTE: TStringField
      FieldName = 'NOME_PACIENTE'
      Origin = 'NOME_PACIENTE'
      Required = True
      Size = 80
    end
    object CdsPesqPctCPF_PACIENTE: TStringField
      FieldName = 'CPF_PACIENTE'
      Origin = 'CPF_PACIENTE'
      Required = True
      Size = 19
    end
    object CdsPesqPctFONE_PACIENTE: TStringField
      FieldName = 'FONE_PACIENTE'
      Origin = 'FONE_PACIENTE'
      Required = True
      Size = 15
    end
    object CdsPesqPctFONE_SEC_PACIENTE: TStringField
      FieldName = 'FONE_SEC_PACIENTE'
      Origin = 'FONE_SEC_PACIENTE'
      Size = 15
    end
    object CdsPesqPctDTA_PACIENTE: TSQLTimeStampField
      FieldName = 'DTA_PACIENTE'
      Origin = 'DTA_PACIENTE'
    end
  end
end
