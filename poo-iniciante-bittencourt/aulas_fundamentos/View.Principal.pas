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
  Principais conceitos da programação orientada a objetos:
  --------------------------------------------------------

  - Abstração:
  ------------
    Possibilidade de modelar objetos e problemas do mundo real dentro da linguagem.
    Capacidade de suporte ao mundo real e a reutilização dos métodos e procedimentos.

  - Herança:
  ----------
    Capacidade que as classes têm de herdar características (propriedades e funções) de
    outras classes.

  - Encapsulamento:
  -----------------
    Capacidade de criar objetos e procedimentos reutilizáveis, sem se preocupar com
    detalhes e regras internas.

    Coesão: Comportamentos únicos, métodos e funções que realizam apenas uma única
    ------  operação para facilitar o seu reproveitamento.

    Acoplamento: sfasdafsdafsdfasd asdf df ew  sfsfes sst

  - Polimorfismo:
  ---------------
}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  Pessoa1: TPessoa;
  Cliente1: TCliente;
  //Cliente2, Cliente3: TCliente;
  Valor: Currency;
begin
  Pessoa1 := TPessoa.Create;
  Pessoa1.Nome := 'Fulando da Silva';
  Pessoa1.DataNasc := '01/01/1980';
  Pessoa1.Sexo := 'Masculino';
  Cliente1 := TCliente.Create;

  //Cliente2 := TCliente.Create('Sérgio Oseko');   // na aula #12 foi criado um constructor "Create" na classe "Cliente"
  //Cliente3 := TCliente.Create(Pessoa1);
  try
    { **************************************************** }
    { *** aula sobre Polimorfismo (virtual e override) *** }
    { **************************************************** }
    //ShowMessage(Pessoa1.RetornaNome);
    ShowMessage(Cliente1.Endereco.Logradouro);
    //ShowMessage(Cliente2.Nome);
    ShowMessage(Cliente1.MetodoAbstrato);
    ShowMessage(Cliente1.RetornaNome);
    //ShowMessage('Nome: ' + Cliente3.Nome + ' - ' + 'Nasc: ' + Cliente3.DataNasc + ' - ' + 'Sexo: ' + Cliente3.Sexo);

    { ****************************************** }
    { *** aula sobre POLIMORFISMO (overload) *** }
    { ****************************************** }
    {
    ShowMessage(Pessoa1.Receber(5));
    Valor := 10.5;
    ShowMessage(Pessoa1.Receber(Valor));
    ShowMessage(Pessoa1.Receber(5, 2));
    }

    { ****************************************** }
    { *** primeiras aulas criação de classes *** }
    { ****************************************** }
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
    Cliente1.Destroy;
    //Cliente2.Free;
    //Cliente3.Free;
  end;
end;

end.
