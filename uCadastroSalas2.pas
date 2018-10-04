unit uCadastroSalas2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmCadastroSalas2 = class(TfmCadastroBase)
    fdDadosID: TIntegerField;
    fdDadosNOME: TStringField;
    fdDadosCAPACIDADE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadastroSalas2: TfmCadastroSalas2;

implementation

{$R *.dfm}

uses uDmConn;

end.
