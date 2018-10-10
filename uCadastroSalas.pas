unit uCadastroSalas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask;

type
  TfmCadastroSalas = class(TfmCadastroBase)
    fdDadosNOME: TStringField;
    fdDadosCAPACIDADE: TIntegerField;
    ld: TLabel;
    edId: TDBEdit;
    edNome: TDBEdit;
    Label1: TLabel;
    edCapacidade: TDBEdit;
    Label2: TLabel;
    fdDadosID: TFDAutoIncField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  protected
    function ValidarDados: Boolean; override;

  public
    { Public declarations }
  end;

var
  fmCadastroSalas: TfmCadastroSalas;

implementation

{$R *.dfm}

uses uSystemUtils;

procedure TfmCadastroSalas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fmCadastroSalas := nil;
end;

function TfmCadastroSalas.ValidarDados: Boolean;
{TODO -oUece -cBug : Forçar atribução do valor ao field}
begin
  if Trim(fdDadosNOME.AsString) = '' then
  begin
    ShowInformation('Informe o nome!!!!');
    edNome.SetFocus;
    Exit(false);
  end;
  if fdDadosCAPACIDADE.AsInteger <= 0 then
  begin
    ShowInformation('Capacidade invalida!!!!!');
    edCapacidade.SetFocus;
    Exit(false);
  end;


    Result := true;
end;

end.
