unit Classe.Cliente;

interface

uses Classe.Pessoa, Classe.Endereco;

type
  TCliente = class(TPessoa)
  private
    FValorCredito: Currency;
    FEndereco: TEndereco;

    procedure SetValorCredito(const Value: Currency);
    procedure SetEndereco(const Value: TEndereco);
  public
    constructor Create; overload;
    constructor Create(sNome: string); overload;
    constructor Create(objetoParam: TPessoa); overload;
    destructor Destroy; reintroduce;
    function RetornaNome: string; override;
    function MetodoAbstrato: string; override;
    property ValorCredito: Currency read FValorCredito write SetValorCredito;

    property Endereco: TEndereco read FEndereco write SetEndereco;

  end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  FEndereco := TEndereco.Create;
  Nome := 'Novo cliente';
end;

constructor TCliente.Create(sNome: string);
begin
  Nome := sNome;
end;

constructor TCliente.Create(objetoParam: TPessoa);
begin
  Nome := objetoParam.Nome;
  DataNasc := objetoParam.DataNasc;
  Sexo := objetoParam.Sexo;
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
end;

function TCliente.MetodoAbstrato: string;
begin
  Result := 'Eu sou o Método Abstrato.';
end;

function TCliente.RetornaNome: string;
begin
  inherited;
  Result := 'Eu a classe TCliente filha da classe: ' + Nome;
end;

procedure TCliente.SetEndereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

procedure TCliente.SetValorCredito(const Value: Currency);
begin
  FValorCredito := Value;
end;

end.
