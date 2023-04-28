object DM: TDM
  OldCreateOrder = False
  Height = 553
  Width = 729
  object Banco: TFDConnection
    Params.Strings = (
      'Database=C:\PP\Banco\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 96
    Top = 56
  end
  object Trans: TFDTransaction
    Connection = Banco
    Left = 96
    Top = 112
  end
  object QyPaises: TFDQuery
    Connection = Banco
    SQL.Strings = (
      'select * from Paises')
    Left = 96
    Top = 168
  end
  object DsPaises: TDataSource
    Left = 168
    Top = 336
  end
end
