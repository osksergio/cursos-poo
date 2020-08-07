program poo_basico;

uses
  Vcl.Forms,
  View.Principal in 'View.Principal.pas' {frmPrincipal},
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Classe.Cliente in 'Classe.Cliente.pas',
  Classe.Endereco in 'Classe.Endereco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
