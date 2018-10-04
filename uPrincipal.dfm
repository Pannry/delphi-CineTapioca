object fmPrincipal: TfmPrincipal
  Left = 0
  Top = 0
  Caption = 'CineTapioca - v0.1'
  ClientHeight = 411
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmPrincipal
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object stPrincipal: TStatusBar
    Left = 0
    Top = 392
    Width = 764
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Sistema para gerenciamento de cinemas!!'
  end
  object tbPrincipal: TToolBar
    Left = 0
    Top = 0
    Width = 764
    Height = 29
    ButtonHeight = 29
    ButtonWidth = 56
    Caption = 'tbPrincipal'
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 56
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
    end
  end
  object mmPrincipal: TMainMenu
    Left = 24
    Top = 32
    object Cadastro1: TMenuItem
      Caption = 'Cadastros'
      object Salas1: TMenuItem
        Caption = 'Salas'
        OnClick = Salas1Click
      end
      object Filmes1: TMenuItem
        Caption = 'Filmes'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Sair1: TMenuItem
        Caption = '-'
      end
      object Sair2: TMenuItem
        Caption = 'Sair'
        OnClick = Sair2Click
      end
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
    end
  end
end
