inherited fmCadastroFilmes: TfmCadastroFilmes
  Caption = 'fmCadastroFilmes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    inherited tsEdit: TTabSheet
      inherited pnEdit: TPanel
        object Label1: TLabel
          Left = 39
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 39
          Top = 71
          Width = 29
          Height = 13
          Caption = 'NOME'
          FocusControl = edNome
        end
        object Label3: TLabel
          Left = 40
          Top = 127
          Width = 61
          Height = 13
          Caption = 'Classifica'#231#227'o'
        end
        object cmbClassificacao: TComboBox
          Left = 40
          Top = 148
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          ItemIndex = 0
          TabOrder = 2
          Text = 'Livre'
          Items.Strings = (
            'Livre'
            '18+')
        end
        object edNome: TDBEdit
          Left = 39
          Top = 87
          Width = 400
          Height = 21
          DataField = 'NOME'
          DataSource = dsDados
          TabOrder = 1
        end
        object cbxDublado: TCheckBox
          Left = 40
          Top = 328
          Width = 97
          Height = 17
          Caption = 'Dublado?'
          TabOrder = 4
        end
        object rgTipo: TRadioGroup
          Left = 39
          Top = 200
          Width = 185
          Height = 105
          Caption = 'Tipo'
          ItemIndex = 0
          Items.Strings = (
            'Normal'
            '3D')
          TabOrder = 3
        end
        object edId: TDBEdit
          Left = 39
          Top = 35
          Width = 134
          Height = 21
          DataField = 'ID'
          DataSource = dsDados
          TabOrder = 0
        end
      end
    end
  end
  inherited fdDados: TFDQuery
    BeforePost = fdDadosBeforePost
    AfterScroll = fdDadosAfterScroll
    OnCalcFields = fdDadosCalcFields
    SQL.Strings = (
      'Select * from FILMES')
    object fdDadosID: TFDAutoIncField
      DisplayWidth = 6
      FieldName = 'ID'
      ReadOnly = True
    end
    object fdDadosNOME: TStringField
      DisplayWidth = 27
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object fdDadosDUBLADO: TSmallintField
      FieldName = 'DUBLADO'
      Origin = 'DUBLADO'
      Required = True
      Visible = False
    end
    object fdDadosDUBLADO_CF: TStringField
      DisplayLabel = 'Dublado'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'DUBLADO_CF'
      Size = 4
      Calculated = True
    end
    object fdDadosCLASSIFICACAO: TSmallintField
      DisplayWidth = 13
      FieldName = 'CLASSIFICACAO'
      Origin = 'CLASSIFICACAO'
      Required = True
      Visible = False
    end
    object fdDadosCLASSIFICACAO_CF: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'CLASSIFICACAO_CF'
      Size = 6
      Calculated = True
    end
    object fdDadosTIPO: TSmallintField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Visible = False
    end
    object fdDadosTIPO_CF: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'TIPO_CF'
      Size = 7
      Calculated = True
    end
  end
end
