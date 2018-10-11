program CineTapioca;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fmPrincipal},
  uCadastroBase in 'uCadastroBase.pas' {fmCadastroBase},
  uCadastroSalas in 'uCadastroSalas.pas' {fmCadastroSalas},
  uDmConn in 'uDmConn.pas' {dmConn: TDataModule},
  uSystemUtils in 'uSystemUtils.pas',
  uCadastroProdutos in 'uCadastroProdutos.pas' {fmCadastroProdutos},
  uCadastroFilmes in 'uCadastroFilmes.pas' {fmCadastroFilmes},
  uCadastroSessoes in 'uCadastroSessoes.pas' {fmCadastroSessao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cine Tapioca';
  Application.CreateForm(TdmConn, dmConn);
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
