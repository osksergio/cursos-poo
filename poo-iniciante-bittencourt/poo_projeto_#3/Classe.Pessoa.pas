unit Classe.Pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
  private
    FSalario: Currency;
    FNome: string;
    procedure SetNome(const Value: string);
    procedure SetSalario(const Value: Currency);
  public
    property Nome: string read FNome write SetNome;
    property Salario: Currency read FSalario write SetSalario;
    function calcularSalario: Currency; virtual;
  private

  end;

implementation

{ TPessoa }

function TPessoa.calcularSalario: Currency;
begin
  Result := Salario;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  if Value = '' then
    raise Exception.Create('O Nome deve ser informado corretamente.');
  FNome := Value;
end;

procedure TPessoa.SetSalario(const Value: Currency);
begin
  if Value <= 0 then
    raise Exception.Create('O valor do salário deve ser maior que zero!');
  FSalario := Value;
end;

end.
