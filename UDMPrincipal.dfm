object DMPrincipal: TDMPrincipal
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
  object FDCliente: TFDQuery
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
    object FDClienteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDClienteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 120
    end
    object FDClienteDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object FDClienteEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 120
    end
    object FDClienteTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
    object FDClienteDATACADASTRO: TSQLTimeStampField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 408
    Top = 208
  end
  object FDOrdServico: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT'
      
        '    A.ID, A.CLIENTE_ID, A.DATA_ABERTURA, A.DATA_PREVISTA, A.DATA' +
        '_FECHAMENTO,'
      '    A.STATUS, A.DESCRICAO_PROBLEMA, A.VALOR_TOTAL'
      'FROM'
      '    ORDEM_SERVICO A')
    Left = 140
    Top = 56
    object FDOrdServicoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDOrdServicoCLIENTE_ID: TIntegerField
      DisplayLabel = 'C'#243'd. cliente'
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      Required = True
    end
    object FDOrdServicoDATA_ABERTURA: TDateField
      DisplayLabel = 'Data de abertura'
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
      Required = True
    end
    object FDOrdServicoDATA_PREVISTA: TDateField
      DisplayLabel = 'Data prevista'
      FieldName = 'DATA_PREVISTA'
      Origin = 'DATA_PREVISTA'
    end
    object FDOrdServicoDATA_FECHAMENTO: TDateField
      DisplayLabel = 'Data de fechamento'
      FieldName = 'DATA_FECHAMENTO'
      Origin = 'DATA_FECHAMENTO'
    end
    object FDOrdServicoSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 15
    end
    object FDOrdServicoDESCRICAO_PROBLEMA: TStringField
      DisplayLabel = 'Descri'#231#227'o do problema'
      FieldName = 'DESCRICAO_PROBLEMA'
      Origin = 'DESCRICAO_PROBLEMA'
      Size = 500
    end
    object FDOrdServicoVALOR_TOTAL: TBCDField
      DisplayLabel = 'Valor total'
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      DisplayFormat = '#,##0.00'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object FDItemOrd: TFDQuery
    AfterPost = FDItemOrdAfterPost
    AfterDelete = FDItemOrdAfterDelete
    OnNewRecord = FDItemOrdNewRecord
    Connection = FDConnection
    SQL.Strings = (
      'SELECT'
      
        '    A.ID, A.ORDEM_ID, A.DESCRICAO, A.QUANTIDADE, A.VALOR_UNITARI' +
        'O'
      'FROM'
      '    ITEM_ORDEM A'
      'WHERE'
      '    A.ORDEM_ID = :IDPAI')
    Left = 208
    Top = 56
    ParamData = <
      item
        Name = 'IDPAI'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDItemOrdID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDItemOrdORDEM_ID: TIntegerField
      DisplayLabel = 'C'#243'd ordem'
      FieldName = 'ORDEM_ID'
      Origin = 'ORDEM_ID'
      Required = True
    end
    object FDItemOrdDESCRICAO: TStringField
      DisplayLabel = 'Decri'#231#227'o da ordem'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 200
    end
    object FDItemOrdQUANTIDADE: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDItemOrdVALOR_UNITARIO: TBCDField
      DisplayLabel = 'Valor unit'#225'rio'
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object FDConsulta: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT'
      
        '  A.ID, A.CLIENTE_ID, A.DATA_ABERTURA, A.DATA_PREVISTA, A.DATA_F' +
        'ECHAMENTO,'
      '  A.STATUS, A.DESCRICAO_PROBLEMA, A.VALOR_TOTAL'
      'FROM ORDEM_SERVICO A'
      'WHERE 1=1'
      
        '  AND (:P_DATA_ABERTURA IS NULL OR A.DATA_ABERTURA >= :P_DATA_AB' +
        'ERTURA)'
      
        '  AND (:P_DATA_FECHAMENTO IS NULL OR A.DATA_FECHAMENTO <= :P_DAT' +
        'A_FECHAMENTO)'
      '  AND (:P_CLIENTE_ID IS NULL OR A.CLIENTE_ID = :P_CLIENTE_ID)'
      '  AND (:P_VALOR_TOTAL IS NULL OR'
      '      (:P_OPERADOR = 0 AND A.VALOR_TOTAL = :P_VALOR_TOTAL) OR'
      '      (:P_OPERADOR = 1 AND A.VALOR_TOTAL >= :P_VALOR_TOTAL) OR'
      '      (:P_OPERADOR = 2 AND A.VALOR_TOTAL <= :P_VALOR_TOTAL))'
      '  AND (:P_STATUS IS NULL OR A.STATUS = :P_STATUS)')
    Left = 272
    Top = 56
    ParamData = <
      item
        Name = 'P_DATA_ABERTURA'
        ParamType = ptInput
      end
      item
        Name = 'P_DATA_FECHAMENTO'
        ParamType = ptInput
      end
      item
        Name = 'P_CLIENTE_ID'
        ParamType = ptInput
      end
      item
        Name = 'P_VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        Name = 'P_OPERADOR'
        ParamType = ptInput
      end
      item
        Name = 'P_STATUS'
        ParamType = ptInput
      end>
    object FDConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDConsultaCLIENTE_ID: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      Required = True
    end
    object FDConsultaDATA_ABERTURA: TDateField
      DisplayLabel = 'Dt. abertura'
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
      Required = True
    end
    object FDConsultaDATA_PREVISTA: TDateField
      DisplayLabel = 'Dt Prevista'
      FieldName = 'DATA_PREVISTA'
      Origin = 'DATA_PREVISTA'
    end
    object FDConsultaDATA_FECHAMENTO: TDateField
      DisplayLabel = 'Dt. Fechamento'
      FieldName = 'DATA_FECHAMENTO'
      Origin = 'DATA_FECHAMENTO'
    end
    object FDConsultaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 15
    end
    object FDConsultaDESCRICAO_PROBLEMA: TStringField
      DisplayLabel = 'Descri'#231#227'o do problema'
      FieldName = 'DESCRICAO_PROBLEMA'
      Origin = 'DESCRICAO_PROBLEMA'
      Size = 500
    end
    object FDConsultaVALOR_TOTAL: TBCDField
      DisplayLabel = 'Valor total'
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object FDAux: TFDQuery
    Connection = FDConnection
    Left = 96
    Top = 184
  end
end
