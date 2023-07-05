object DMSistema: TDMSistema
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 312
  Width = 534
  object FBConexao: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 
      'C:\Users\admin\Documents\Embarcadero\Studio\Projects\Proj8 - SWH' +
      ' informatic\Output\FBCLIENT.DLL'
    Left = 128
    Top = 24
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 200
    Top = 24
  end
end
