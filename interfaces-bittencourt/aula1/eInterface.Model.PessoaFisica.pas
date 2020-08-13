unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.Interfaces;

  type
    TModelPessoaFisica = class(TInterfacedObject, iPessoa)
    private
      FNome: string;
      FSobreNome: string;
      FDisplay: TEvDisplay;
      function Nome(Value: string): iPessoa; overload;
      function Nome: string; overload;
      function SobreNome(Value: string): iPessoa;
      function NomeCompleto: iPessoa;
      function Display(Value: TEvDisplay): iPessoa;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iPessoa;
    end;

implementation

{ TModelPessoa }

constructor TModelPessoaFisica.Create;
begin
  //
end;

destructor TModelPessoaFisica.Destroy;
begin
  //
  inherited;
end;

function TModelPessoaFisica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelPessoaFisica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: string): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.Nome: string;
begin
  Result := FNome;
end;

function TModelPessoaFisica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome + ' ' + FSobreNome);
end;

function TModelPessoaFisica.SobreNome(Value: string): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
