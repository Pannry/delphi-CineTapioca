unit uCadastroSessoes;

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
  TfmCadastroSessao = class(TfmCadastroBase)
    fdDadosNOME: TStringField;
    fdDadosHORA: TTimeField;
    fdDadosSALA: TIntegerField;
    fdDadosID: TFDAutoIncField;
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dtHora: TDateTimePicker;
    cbFilmes: TDBLookupComboBox;
    cbSala: TDBLookupComboBox;
    fdFilmes: TFDQuery;
    dsFilmes: TDataSource;
    dsSala: TDataSource;
    fdSala: TFDQuery;
    fdDadosFILME_NOME: TStringField;
    fdDadosFILME: TIntegerField;
    fdDadosSALA_NOME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure fdDadosBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    function ValidarDados: Boolean; override;
  public
    { Public declarations }
  end;

var
  fmCadastroSessao: TfmCadastroSessao;

implementation

{$R *.dfm}

uses uDmConn, uSystemUtils;

{ TfmCadastroBase1 }

procedure TfmCadastroSessao.fdDadosBeforePost(DataSet: TDataSet);
begin
  inherited;
  fdDadosHORA.AsDateTime := dtHora.Time;
end;

procedure TfmCadastroSessao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fmCadastroSessao := nil;
end;

procedure TfmCadastroSessao.FormShow(Sender: TObject);
begin
  inherited;
  fdFilmes.Open;
  fdSala.Open;
end;

function TfmCadastroSessao.ValidarDados: Boolean;
begin
  edNome.SetFocus;
  if Trim(fdDadosNOME.AsString) = '' then
  begin
    ShowInformation('Informe o nome!!!!');
    edNome.SetFocus;
    Exit(false);
  end;

  Result := True;
end;

end.
