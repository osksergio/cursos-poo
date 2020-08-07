unit Classe.Pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
  private
    FFuncao: string;
    FSalario: Currency;
    FNome: string;
    procedure SetFuncao(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetSalario(const Value: Currency);
  public
    property Nome: string read FNome write SetNome;
    property Funcao: string read FFuncao write SetFuncao;
    property Salario: Currency read FSalario write SetSalario;
  private

  end;

implementation

{ TPessoa }

procedure TPessoa.SetFuncao(const Value: string);
begin
  if value = '' then
    raise Exception.Create('A função do funcionário deve ser informada corretamente.');
  FFuncao := Value;
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
