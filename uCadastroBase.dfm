object fmCadastroBase: TfmCadastroBase
  Left = 0
  Top = 0
  Caption = 'fmCadastroBase'
  ClientHeight = 428
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 710
    Height = 428
    ActivePage = tsDados
    Align = alClient
    TabOrder = 0
    object tsDados: TTabSheet
      Caption = 'tsDados'
      object pnDadosButtons: TPanel
        Left = 0
        Top = 0
        Width = 193
        Height = 348
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object btInserir: TButton
          Left = 11
          Top = 8
          Width = 166
          Height = 33
          Caption = 'Inserir Dados (F2)'
          TabOrder = 0
          OnClick = btInserirClick
        end
        object btEditar: TButton
          Left = 11
          Top = 47
          Width = 166
          Height = 33
          Caption = 'Editar Dados (F3)'
          TabOrder = 1
          OnClick = btEditarClick
        end
        object btDeletar: TButton
          Left = 11
          Top = 88
          Width = 166
          Height = 33
          Caption = 'Deletar Dados (F4)'
          TabOrder = 2
          OnClick = btDeletarClick
        end
      end
      object pnDadosNavigator: TPanel
        Left = 0
        Top = 348
        Width = 702
        Height = 52
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          702
          52)
        object nvDados: TDBNavigator
          Left = 451
          Top = 6
          Width = 240
          Height = 41
          DataSource = dsDados
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akTop, akRight]
          Hints.Strings = (
            'Primeiro Registro'
            'Registro Anterior'
            'Pr'#243'ximo Registro'
            #218'tilmo Registro')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object grDados: TDBGrid
        Left = 193
        Top = 0
        Width = 509
        Height = 348
        Align = alClient
        DataSource = dsDados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tsEdit: TTabSheet
      Caption = 'tsEdit'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnEdit: TPanel
        Left = 193
        Top = 0
        Width = 509
        Height = 400
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 153
        ExplicitWidth = 549
      end
      object pnEditButtons: TPanel
        Left = 0
        Top = 0
        Width = 193
        Height = 400
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btSalvar: TButton
          Left = 11
          Top = 9
          Width = 166
          Height = 33
          Caption = 'Salvar (F9)'
          TabOrder = 0
          OnClick = btSalvarClick
        end
        object btCancelar: TButton
          Left = 11
          Top = 48
          Width = 166
          Height = 33
          Caption = 'Cancelar (ESC)'
          TabOrder = 1
          OnClick = btCancelarClick
        end
      end
    end
  end
  object fdDados: TFDQuery
    Connection = dmConn.fcConn
    Left = 16
    Top = 376
  end
  object dsDados: TDataSource
    DataSet = fdDados
    Left = 72
    Top = 376
  end
end
