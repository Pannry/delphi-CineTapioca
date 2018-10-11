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
    ToolButton3: TToolButton;
    sessao: TMenuItem;
    N1: TMenuItem;
    ToolButton4: TToolButton;
    procedure Sair2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Salas1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Filmes1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure sessaoClick(Sender: TObject);
  private
    procedure abrirCadastroSalas;
    procedure abrirCadastroProdutos;
    procedure abrirCadastroFilmes;
    procedure abrirCadastroSessao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

uses uCadastroSalas, uCadastroProdutos, uCadastroFilmes, uCadastroSessoes;

{
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Abrir janelas
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}

procedure TfmPrincipal.abrirCadastroFilmes;
begin
  if(fmCadastroFilmes = nil) then
    fmCadastroFilmes := TfmCadastroFilmes.Create(Self);

  fmCadastroFilmes.Show;
end;

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

procedure TfmPrincipal.abrirCadastroSessao;
begin
  if(fmCadastroSessao = nil) then
    fmCadastroSessao := TfmCadastroSessao.Create(Self);

  fmCadastroSessao.Show;
end;

{
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Botoes Abrir janelas
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}

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

procedure TfmPrincipal.sessaoClick(Sender: TObject);
begin
  abrirCadastroSessao;
end;

procedure TfmPrincipal.ToolButton1Click(Sender: TObject);
begin
  abrirCadastroSalas;
end;

procedure TfmPrincipal.ToolButton2Click(Sender: TObject);
begin
  abrirCadastroProdutos;
end;

procedure TfmPrincipal.ToolButton3Click(Sender: TObject);
begin
  abrirCadastroFilmes;
end;

procedure TfmPrincipal.ToolButton4Click(Sender: TObject);
begin
  abrirCadastroSessao;
end;

procedure TfmPrincipal.Filmes1Click(Sender: TObject);
begin
  abrirCadastroFilmes;
end;

end.

