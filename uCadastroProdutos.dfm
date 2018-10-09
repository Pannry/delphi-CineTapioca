inherited fmCadastroProdutos: TfmCadastroProdutos
  Caption = 'fmCadastroProdutos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    inherited tsEdit: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 702
      ExplicitHeight = 400
      inherited pnEdit: TPanel
        ExplicitLeft = 150
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = edId
        end
        object Label2: TLabel
          Left = 16
          Top = 72
          Width = 27
          Height = 13
          Caption = 'Nome'
          FocusControl = edNome
        end
        object Label3: TLabel
          Left = 16
          Top = 136
          Width = 27
          Height = 13
          Caption = 'Pre'#231'o'
          FocusControl = edPreco
        end
        object Label4: TLabel
          Left = 16
          Top = 208
          Width = 82
          Height = 13
          Caption = 'C'#243'digo de barras'
          FocusControl = edBarra
        end
        object edId: TDBEdit
          Left = 16
          Top = 24
          Width = 134
          Height = 21
          DataField = 'ID'
          DataSource = dsDados
          TabOrder = 0
        end
        object edNome: TDBEdit
          Left = 16
          Top = 88
          Width = 400
          Height = 21
          DataField = 'NOME'
          DataSource = dsDados
          TabOrder = 1
        end
        object edPreco: TDBEdit
          Left = 16
          Top = 152
          Width = 134
          Height = 21
          DataField = 'PRECO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edBarra: TDBEdit
          Left = 16
          Top = 224
          Width = 394
          Height = 21
          DataField = 'BARRA'
          DataSource = dsDados
          TabOrder = 3
        end
      end
    end
  end
  inherited fdDados: TFDQuery
    SQL.Strings = (
      'Select * from produtos;')
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
    object fdDadosPRECO: TBCDField
      DefaultExpression = '0'
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object fdDadosBARRA: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'BARRA'
      Origin = 'BARRA'
      Size = 30
    end
  end
end
