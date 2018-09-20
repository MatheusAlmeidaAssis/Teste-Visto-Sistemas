object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Height = 298
  Width = 563
  object conTeste: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 296
    Top = 72
  end
  object qryPessoa: TFDQuery
    Connection = conTeste
    SQL.Strings = (
      'select * from pessoa')
    Left = 392
    Top = 136
    object intgrfldPessoaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldPessoaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object strngfldPessoaSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Origin = 'SOBRENOME'
      Size = 50
    end
    object intgrfldPessoaIDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = 'IDADE'
    end
    object blbfldPessoaFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
  end
  object dsPessoa: TDataSource
    DataSet = qryPessoa
    Left = 392
    Top = 216
  end
end
