object DMCrud: TDMCrud
  OldCreateOrder = False
  Height = 334
  Width = 493
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\ProjetoSky\ProjetoSky\DB\DB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3366'
      'DriverID=FB')
    Connected = True
    Left = 408
    Top = 256
  end
  object FDCrud: TFDQuery
    Connection = FDConnection
    UpdateOptions.UpdateTableName = 'CLIENTE'
    UpdateOptions.KeyFields = 'ID'
    SQL.Strings = (
      'SELECT'
      
        '    A.ID, A.NOME, A.DOCUMENTO, A.EMAIL, A.TELEFONE, A.DATACADAST' +
        'RO'
      'FROM'
      '    CLIENTE A')
    Left = 64
    Top = 56
    object FDCrudID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDCrudNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 120
    end
    object FDCrudDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object FDCrudEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 120
    end
    object FDCrudTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
    object FDCrudDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 408
    Top = 208
  end
end
