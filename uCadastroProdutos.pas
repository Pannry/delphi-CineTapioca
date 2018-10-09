unit uCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Mask;

type
  TfmCadastroProdutos = class(TfmCadastroBase)
    fdDadosNOME: TStringField;
    fdDadosPRECO: TBCDField;
    fdDadosBARRA: TStringField;
    fdDadosID: TFDAutoIncField;
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    edPreco: TDBEdit;
    Label4: TLabel;
    edBarra: TDBEdit;
  private
    { Private declarations }
  protected
    function ValidarDados: Boolean; override;

  public
    { Public declarations }
  end;

var
  fmCadastroProdutos: TfmCadastroProdutos;

implementation

{$R *.dfm}

uses uSystemUtils;

{ TfmCadastroBase1 }

function TfmCadastroProdutos.ValidarDados: Boolean;
begin
  if Trim(fdDadosNOME.AsString) = '' then
  begin
    ShowInformation('Informe o nome!!!!');
    edNome.SetFocus;
    Exit(false);
  end;

  if fdDadosPRECO.AsCurrency <= 0 then
  begin
    ShowInformation('Quer as coisas de gra�a meu fi??');
    edPreco.SetFocus;
    Exit(false);
  end;

end;

end.
