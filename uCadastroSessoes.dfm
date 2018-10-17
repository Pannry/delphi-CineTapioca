inherited fmCadastroSessao: TfmCadastroSessao
  Caption = 'fmCadastroSessao'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    ActivePage = tsEdit
    inherited tsEdit: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 702
      ExplicitHeight = 400
      inherited pnEdit: TPanel
        ExplicitLeft = 193
        ExplicitWidth = 509
        object Label1: TLabel
          Left = 6
          Top = -1
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = edId
        end
        object Label2: TLabel
          Left = 6
          Top = 48
          Width = 27
          Height = 13
          Caption = 'Nome'
          FocusControl = edNome
        end
        object Label3: TLabel
          Left = 6
          Top = 96
          Width = 23
          Height = 13
          Caption = 'Hora'
        end
        object Label4: TLabel
          Left = 6
          Top = 147
          Width = 24
          Height = 13
          Caption = 'Filme'
        end
        object Label5: TLabel
          Left = 6
          Top = 199
          Width = 20
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
          Top = 67
          Width = 552
          Height = 21
          DataField = 'NOME'
          DataSource = dsDados
          TabOrder = 1
        end
        object dtHora: TDateTimePicker
          Left = 6
          Top = 112
          Width = 83
          Height = 21
          Date = 43384.666666666660000000
          Format = 'HH:mm'
          Time = 43384.666666666660000000
          Kind = dtkTime
          TabOrder = 2
        end
        object cbSala: TDBLookupComboBox
          Left = 6
          Top = 218
          Width = 145
          Height = 21
          DataField = 'SALA'
          DataSource = dsDados
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsSala
          TabOrder = 3
        end
        object cbFilmes: TDBLookupComboBox
          Left = 6
          Top = 172
          Width = 145
          Height = 21
          DataField = 'FILME'
          DataSource = dsDados
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsFilmes
          TabOrder = 4
        end
      end
    end
  end
  inherited fdDados: TFDQuery
    Active = True
    BeforePost = fdDadosBeforePost
    SQL.Strings = (
      'Select * from SESSAO')
    object fdDadosID: TFDAutoIncField
      DisplayLabel = 'Id'
      DisplayWidth = 6
      FieldName = 'ID'
      ReadOnly = True
    end
    object fdDadosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 19
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object fdDadosHORA: TTimeField
      DisplayLabel = 'Hora'
      DisplayWidth = 10
      FieldName = 'HORA'
      Origin = 'HORA'
      Required = True
    end
    object fdDadosFILME: TIntegerField
      FieldName = 'FILME'
      Origin = 'FILME'
      Required = True
      Visible = False
    end
    object fdDadosFILME_NOME: TStringField
      DisplayLabel = 'Filme'
      DisplayWidth = 22
      FieldKind = fkLookup
      FieldName = 'FILME_NOME'
      LookupDataSet = fdFilmes
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'FILME'
      Size = 50
      Lookup = True
    end
    object fdDadosSALA: TIntegerField
      DisplayLabel = 'Sala'
      DisplayWidth = 10
      FieldName = 'SALA'
      Origin = 'SALA'
      Required = True
      Visible = False
    end
    object fdDadosSALA_NOME: TStringField
      DisplayLabel = 'Sala'
      DisplayWidth = 23
      FieldKind = fkLookup
      FieldName = 'SALA_NOME'
      LookupDataSet = fdSala
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'SALA'
      Size = 50
      Lookup = True
    end
  end
  inherited dsDados: TDataSource
    Left = 73
    Top = 375
  end
  object fdFilmes: TFDQuery
    Active = True
    Connection = dmConn.fcConn
    SQL.Strings = (
      'select * from FILMEs')
    Left = 20
    Top = 313
  end
  object dsFilmes: TDataSource
    DataSet = fdFilmes
    Left = 73
    Top = 311
  end
  object dsSala: TDataSource
    DataSet = fdSala
    Left = 72
    Top = 254
  end
  object fdSala: TFDQuery
    Active = True
    Connection = dmConn.fcConn
    SQL.Strings = (
      'select * from SAlas')
    Left = 20
    Top = 254
  end
end
