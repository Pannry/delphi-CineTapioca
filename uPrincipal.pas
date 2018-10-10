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
    procedure Produtos1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    procedure abrirCadastroSalas;
    procedure abrirCadastroProdutos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

uses uCadastroSalas, uCadastroProdutos;

procedure TfmPrincipal.abrirCadastroProdutos;
begin
  if(fmCadastroProdutos = nil) then
    fmCadastroProdutos := TfmCadastroProdutos.Create(Self);

  fmCadastroProdutos.Show;
end;

procedure TfmPrincipal.abrirCadastroSalas;
begin
  if(fmCadastroSalas = nil) then
    fmCadastroSalas := TfmCadastroSalas.Create(Self);

  fmCadastroSalas.Show;
end;

procedure TfmPrincipal.Produtos1Click(Sender: TObject);
begin
  abrirCadastroProdutos;
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

procedure TfmPrincipal.ToolButton2Click(Sender: TObject);
begin
  abrirCadastroProdutos;
end;

end.

