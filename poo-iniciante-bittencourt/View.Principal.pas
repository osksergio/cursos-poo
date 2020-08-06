unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    edtNome: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  Classe.Cliente, Classe.Pessoa;

{
  Principais conceitos da programa��o orientada a objetos:
  --------------------------------------------------------

  - Abstra��o:
  ------------
    Possibilidade de modelar objetos e problemas do mundo real dentro da linguagem.
    Capacidade de suporte ao mundo real e a reutiliza��o dos m�todos e procedimentos.

  - Heran�a:
  ----------
    Capacidade que as classes t�m de herdar caracter�sticas (propriedades e fun��es) de
    outras classes.

  - Encapsulamento:
  -----------------
    Capacidade de criar objetos e procedimentos reutiliz�veis, sem se preocupar com
    detalhes e regras internas.

    Coes�o: Comportamentos �nicos, m�todos e fun��es que realizam apenas uma �nica
    ------  opera��o para facilitar o seu reproveitamento.

    Acoplamento: sfasdafsdafsdfasd asdf df ew  sfsfes sst

  - Polimorfismo:
  ---------------
}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  Pessoa1: TPessoa;
  Cliente1: TCliente;
  Valor: Currency;
begin
  Pessoa1 := TPessoa.Create;
  Cliente1 := TCliente.Create;
  try
    { **************************************************** }
    { *** aula sobre Polimorfismo (virtual e override) *** }
    { **************************************************** }

    //ShowMessage(Pessoa1.RetornaNome);
    ShowMessage(Cliente1.MetodoAbstrato);
    ShowMessage(Cliente1.RetornaNome);

    // Parei na aula #11 !!!!!!!!!!!!!!!!!!! 05/08/2020 (come�ar a aula #12 em 06/08/2020)

    { ****************************************** }
    { *** aula sobre POLIMORFISMO (overload) *** }
    { ****************************************** }
    {
    ShowMessage(Pessoa1.Receber(5));

    Valor := 10.5;
    ShowMessage(Pessoa1.Receber(Valor));

    ShowMessage(Pessoa1.Receber(5, 2));
    }


    {
    Pessoa1.Nome := edtNome.Text;
    Pessoa1.DataNasc := '06/03/1978';
    Pessoa2.Nome := 'Koiti Oseko';
    Pessoa2.DataNasc := '26/09/1945';
    ShowMessage('Nome: ' + Pessoa1.Nome + ' - Idade: ' + IntToStr(Pessoa1.Idade));
    ShowMessage('Nome: ' + Pessoa2.Nome + ' - Idade: ' + IntToStr(Pessoa2.Idade));
    }
  finally
    Pessoa1.Free;
    Cliente1.Free;
  end;
end;

end.
