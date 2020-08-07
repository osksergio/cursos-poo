unit Classe.Endereco;

interface

type
  TEndereco = class
  private
    FLogradouro: string;
    FNumero: Integer;
    procedure SetLogradouro(const Value: string);
    procedure SetNumero(const Value: Integer);
  public
    constructor Create;
    property Logradouro: string read FLogradouro write SetLogradouro;
    property Numero: Integer read FNumero write SetNumero;
  private

  end;

implementation

{ TEndereco }

constructor TEndereco.Create;
begin
  Logradouro := 'Sem endereco';
  Numero := 0;
end;

procedure TEndereco.SetLogradouro(const Value: string);
begin
  FLogradouro := Value;
end;

procedure TEndereco.SetNumero(const Value: Integer);
begin
  FNumero := Value;
end;

end.
