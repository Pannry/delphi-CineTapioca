program CineTapioca;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fmPrincipal},
  uCadastroBase in 'uCadastroBase.pas' {fmCadastroBase},
  uCadastroSalas in 'uCadastroSalas.pas' {fmCadastroSalas},
  uDmConn in 'uDmConn.pas' {dmConn: TDataModule},
  uSystemUtils in 'uSystemUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cine Tapioca';
  Application.CreateForm(TdmConn, dmConn);
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
