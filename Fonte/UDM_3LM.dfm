object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 257
  Width = 336
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
    Left = 71
    Top = 45
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from funcoes')
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
    Left = 81
    Top = 26
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select fn.cod_funcao, fn.codigo, fn.nome, fn.dt_nascimento, fn.s' +
        'alario '
      'from funcionarios fn '
      ' inner join funcoes fc on (fc.codigo = fn.cod_funcao) ')
    Left = 192
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 208
    Top = 101
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    Left = 192
    Top = 160
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 208
    Top = 172
  end
end
