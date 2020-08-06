unit Classe.Cliente;

interface

uses Classe.Pessoa;

type
  TCliente = class(TPessoa)
    //
  private
    FValorCredito: Currency;
    procedure SetValorCredito(const Value: Currency);

  public
    property ValorCredito: Currency read FValorCredito write SetValorCredito;
    function RetornaNome: string; override;
    function MetodoAbstrato: string; override;
  end;

implementation

{ TCliente }

function TCliente.MetodoAbstrato: string;
begin
  Result := 'Eu sou o Método Abstrato.';
end;

function TCliente.RetornaNome: string;
begin
  inherited;
  Result := 'Eu a classe TCliente filha da classe: ' + Nome;
end;

procedure TCliente.SetValorCredito(const Value: Currency);
begin
  FValorCredito := Value;
end;

end.
