object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 224
  Width = 396
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\Embarcadero\3LM\Banco\3LM.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'SQLDialect=1'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Projetos\Embarcadero\3LM\Banco\fbclient.dll'
    Left = 64
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 192
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 208
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 224
    Top = 16
  end
end
