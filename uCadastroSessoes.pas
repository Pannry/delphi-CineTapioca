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
    fdDadosFILME: TIntegerField;
    fdDadosSALA: TIntegerField;
    fdDadosID: TFDAutoIncField;
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
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

{ TfmCadastroBase1 }

function TfmCadastroSessao.ValidarDados: Boolean;
begin
//
end;

end.
