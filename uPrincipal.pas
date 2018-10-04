unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Grids, Vcl.StdCtrls;

type
  TfmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Salas1: TMenuItem;
    Filmes1: TMenuItem;
    Produtos1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    stPrincipal: TStatusBar;
    tbPrincipal: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure Sair2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Salas1Click(Sender: TObject);
  private
    procedure abrirCadastroSalas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

uses uCadastroSalas;

procedure TfmPrincipal.abrirCadastroSalas;
begin
  if(fmCadastroSalas = nil) then
    fmCadastroSalas := TfmCadastroSalas.Create(Self);

  fmCadastroSalas.Show;

end;

procedure TfmPrincipal.Sair2Click(Sender: TObject);
begin
  fmPrincipal.Close;
end;

procedure TfmPrincipal.Salas1Click(Sender: TObject);
begin
  abrirCadastroSalas;
end;

procedure TfmPrincipal.ToolButton1Click(Sender: TObject);
begin
  abrirCadastroSalas;
end;

end.

