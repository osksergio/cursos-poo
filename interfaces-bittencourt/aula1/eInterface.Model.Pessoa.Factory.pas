unit eInterface.Model.Pessoa.Factory;

interface

uses
  eInterface.Model.Interfaces;

type
  FModelPssoaFactory = class(TInterfacedObject, iPessoaFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPessoaFactory;
    function PessoaFisica: iPessoa;
    function PessoaJuridica: iPessoa;
  end;


implementation

uses
  eInterface.Model.PessoaFisica, eInterface.Model.PessoaJuridica;

{ FModelPssoaFactory }

constructor FModelPssoaFactory.Create;
begin
 //
end;

destructor FModelPssoaFactory.Destroy;
begin
  //
  inherited;
end;

class function FModelPssoaFactory.New: iPessoaFactory;
begin
  Result := Self.Create;
end;

function FModelPssoaFactory.PessoaFisica: iPessoa;
begin
  Result := TModelPessoaFisica.New;
end;

function FModelPssoaFactory.PessoaJuridica: iPessoa;
begin
  Result := TModelPessoaJuridica.New;
end;

end.
