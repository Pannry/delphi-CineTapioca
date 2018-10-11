inherited fmCadastroSessao: TfmCadastroSessao
  Caption = 'fmCadastroSessao'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    ActivePage = tsEdit
    inherited tsEdit: TTabSheet
      inherited pnEdit: TPanel
        ExplicitLeft = 199
        object Label1: TLabel
          Left = 6
          Top = -1
          Width = 16
          Height = 13
          Caption = 'Id'
          FocusControl = edId
        end
        object Label2: TLabel
          Left = 6
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Nome'
          FocusControl = edNome
        end
        object Label3: TLabel
          Left = 6
          Top = 96
          Width = 29
          Height = 13
          Caption = 'Hora'
        end
        object Label4: TLabel
          Left = 6
          Top = 147
          Width = 30
          Height = 13
          Caption = 'Filme'
        end
        object Label5: TLabel
          Left = 6
          Top = 199
          Width = 26
          Height = 13
          Caption = 'Sala'
        end
        object edId: TDBEdit
          Left = 6
          Top = 15
          Width = 140
          Height = 21
          DataField = 'ID'
          DataSource = dsDados
          TabOrder = 0
        end
        object edNome: TDBEdit
          Left = 6
          Top = 64
          Width = 552
          Height = 21
          DataField = 'NOME'
          DataSource = dsDados
          TabOrder = 1
        end
        object DateTimePicker1: TDateTimePicker
          Left = 6
          Top = 112
          Width = 83
          Height = 21
          Date = 43384.680717465280000000
          Time = 43384.680717465280000000
          Kind = dtkTime
          TabOrder = 2
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 6
          Top = 218
          Width = 145
          Height = 21
          TabOrder = 3
        end
      end
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox [1]
    Left = 203
    Top = 190
    Width = 145
    Height = 21
    TabOrder = 1
  end
  inherited fdDados: TFDQuery
    Active = True
    SQL.Strings = (
      'Select * from SESSAO')
    object fdDadosID: TFDAutoIncField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      ReadOnly = True
    end
    object fdDadosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object fdDadosHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      Origin = 'HORA'
      Required = True
    end
    object fdDadosFILME: TIntegerField
      DisplayLabel = 'Filme'
      FieldName = 'FILME'
      Origin = 'FILME'
      Required = True
    end
    object fdDadosSALA: TIntegerField
      DisplayLabel = 'Sala'
      FieldName = 'SALA'
      Origin = 'SALA'
      Required = True
    end
  end
  object FDQuery1: TFDQuery
    Left = 20
    Top = 272
  end
  object DataSource1: TDataSource
    Left = 68
    Top = 272
  end
end
