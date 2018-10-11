object dmConn: TdmConn
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 215
  Width = 399
  object fcConn: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\thale\Documents\Thales\delphi-CineTapioca\CINE' +
        'TAPIOCA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 16
  end
end
