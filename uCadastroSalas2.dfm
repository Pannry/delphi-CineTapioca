inherited fmCadastroSalas2: TfmCadastroSalas2
  Caption = 'Sala do Thales'
  PixelsPerInch = 96
  TextHeight = 13
  inherited fdDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM SALAS;')
    object fdDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdDadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object fdDadosCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
      Required = True
    end
  end
end
