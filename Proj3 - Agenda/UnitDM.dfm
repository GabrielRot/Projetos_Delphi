object DM: TDM
  OldCreateOrder = False
  Height = 294
  Width = 383
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object TAB_CONTATOS: TFDTable
    Active = True
    AfterInsert = TAB_CONTATOSAfterInsert
    IndexFieldNames = 'id_'
    Connection = Conexao
    TableName = 'agenda.contatos'
    Left = 96
    Top = 16
    object TAB_CONTATOSid_: TFDAutoIncField
      FieldName = 'id_'
      Origin = 'id_'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TAB_CONTATOSnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TAB_CONTATOScelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 16
    end
    object TAB_CONTATOSbloqueado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object TAB_CONTATOSdata: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object TAB_CONTATOSobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
  end
  object DS_CONTATOS: TDataSource
    DataSet = TAB_CONTATOS
    Left = 96
    Top = 80
  end
end
