unit uCadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfmCadastroBase = class(TForm)
    pcPrincipal: TPageControl;
    tsDados: TTabSheet;
    tsEdit: TTabSheet;
    pnDadosButtons: TPanel;
    pnDadosNavigator: TPanel;
    grDados: TDBGrid;
    btInserir: TButton;
    btEditar: TButton;
    btDeletar: TButton;
    nvDados: TDBNavigator;
    pnEditButtons: TPanel;
    pnEdit: TPanel;
    btSalvar: TButton;
    btCancelar: TButton;
    fdDados: TFDQuery;
    dsDados: TDataSource;
    procedure btInserirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btDeletarClick(Sender: TObject);
  private
    procedure GoToPageDados;
    procedure GoToPageEdit;
    procedure HiddenTabs;
    { Private declarations }
  protected
    function ValidarDados: Boolean; virtual;
  public
    { Public declarations }
  end;

var
  fmCadastroBase: TfmCadastroBase;

implementation

{$R *.dfm}

uses uDmConn, uSystemUtils;

procedure TfmCadastroBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  //Self.Free;
end;

procedure TfmCadastroBase.FormShow(Sender: TObject);
begin
  HiddenTabs;
  GoToPageDados;
  fdDados.Open;
end;

procedure TfmCadastroBase.HiddenTabs;
var
  I: Integer;
begin
  for I := 0 to pcPrincipal.PageCount -1 do
    pcPrincipal.Pages[I].TabVisible := false;
end;

function TfmCadastroBase.ValidarDados: Boolean;
begin
  Result := False;
end;

procedure TfmCadastroBase.btInserirClick(Sender: TObject);
begin
  fdDados.Insert;
  GoToPageEdit;
end;

procedure TfmCadastroBase.btDeletarClick(Sender: TObject);
begin
  if not(fdDados.IsEmpty) then
    if ShowQuestion('Deseja excluir o registro atual?') then
    begin
      fdDados.Delete;
    end;


end;

procedure TfmCadastroBase.btEditarClick(Sender: TObject);
begin
  fdDados.Edit;
  GoToPageEdit;

end;

procedure TfmCadastroBase.btSalvarClick(Sender: TObject);
begin
  if ValidarDados then
  begin
    fdDados.Post;
    GoToPageDados;
  end;

end;

procedure TfmCadastroBase.btCancelarClick(Sender: TObject);
begin
  fdDados.Cancel;
  GoToPageDados;
end;

procedure TfmCadastroBase.GoToPageDados;
begin
  pcPrincipal.ActivePage := tsDados;
end;

procedure TfmCadastroBase.GoToPageEdit;
begin
  pcPrincipal.ActivePage := tsEdit;
end;


end.
