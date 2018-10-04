inherited fmCadastroSalas: TfmCadastroSalas
  Caption = 'Cadastro de Salas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    inherited tsEdit: TTabSheet
      inherited pnEdit: TPanel
        object ld: TLabel
          Left = 24
          Top = 14
          Width = 13
          Height = 19
          Caption = 'ld'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 24
          Top = 78
          Width = 42
          Height = 19
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 280
          Top = 78
          Width = 80
          Height = 19
          Caption = 'Capacidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edId: TDBEdit
          Left = 24
          Top = 44
          Width = 121
          Height = 21
          DataField = 'ID'
          DataSource = dsDados
          TabOrder = 0
        end
        object edNome: TDBEdit
          Left = 24
          Top = 108
          Width = 225
          Height = 21
          DataField = 'NOME'
          DataSource = dsDados
          TabOrder = 1
        end
        object edCapacidade: TDBEdit
          Left = 280
          Top = 108
          Width = 249
          Height = 21
          DataField = 'CAPACIDADE'
          DataSource = dsDados
          TabOrder = 2
        end
      end
    end
  end
  inherited fdDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM Salas;')
    object fdDadosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object fdDadosCAPACIDADE: TIntegerField
      DisplayLabel = 'Capacidade'
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
      Required = True
    end
    object fdDadosID: TFDAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
end
