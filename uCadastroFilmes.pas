unit uCadastroFilmes;

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
  TfmCadastroFilmes = class(TfmCadastroBase)
    cmbClassificacao: TComboBox;
    fdDadosNOME: TStringField;
    fdDadosCLASSIFICACAO: TSmallintField;
    fdDadosTIPO: TSmallintField;
    Label1: TLabel;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    rgTipo: TRadioGroup;
    cbxDublado: TCheckBox;
    fdDadosID: TFDAutoIncField;
    edId: TDBEdit;
    fdDadosDUBLADO_CF: TStringField;
    fdDadosDUBLADO: TSmallintField;
    fdDadosCLASSIFICACAO_CF: TStringField;
    fdDadosTIPO_CF: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fdDadosBeforePost(DataSet: TDataSet);
    procedure fdDadosAfterScroll(DataSet: TDataSet);
    procedure fdDadosCalcFields(DataSet: TDataSet);


  private
    { Private declarations }
  protected
    function ValidarDados: Boolean; override;
  public
    { Public declarations }
  end;

var
  fmCadastroFilmes: TfmCadastroFilmes;

implementation

{$R *.dfm}

uses uDmConn, uSystemUtils;

procedure TfmCadastroFilmes.fdDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cmbClassificacao.ItemIndex := fdDadosCLASSIFICACAO.AsInteger;
  rgTipo.ItemIndex := fdDadosTIPO.AsInteger;
  cbxDublado.Checked := (fdDadosDUBLADO.AsInteger = 1);
end;

procedure TfmCadastroFilmes.fdDadosBeforePost(DataSet: TDataSet);
begin
  inherited;
  fdDadosCLASSIFICACAO.AsInteger := cmbClassificacao.ItemIndex;
  fdDadosTIPO.AsInteger := rgTipo.ItemIndex;

  if cbxDublado.Checked then
    fdDadosDUBLADO.AsInteger := 1
  else
    fdDadosDUBLADO.AsInteger := 0;

end;

procedure TfmCadastroFilmes.fdDadosCalcFields(DataSet: TDataSet);
begin
  inherited;
  if fdDadosDUBLADO.AsInteger = 1 then
    fdDadosDUBLADO_CF.AsString := 'Sim'
  else
    fdDadosDUBLADO_CF.AsString := 'Não';

  if fdDadosCLASSIFICACAO.AsInteger = 0 then
    fdDadosCLASSIFICACAO_CF.AsString := 'Livre'
  else
    fdDadosCLASSIFICACAO_CF.AsString := '+18';

  if fdDadosTipo.AsInteger = 0 then
    fdDadosTipo_CF.AsString := 'Normal'
  else
    fdDadosTipo_CF.AsString := '3D';
end;

procedure TfmCadastroFilmes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fmCadastroFilmes := nil;
end;

function TfmCadastroFilmes.ValidarDados: Boolean;
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
