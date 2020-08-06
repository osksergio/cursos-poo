unit Classe.Pessoa;

interface

type
  TPessoa = class
  private
    FNome: string;
    FNacionalidade: string;
    FDataNasc: string;
    FSexo: string;
    function getNome: string;
    procedure setNome(Value: string);
    procedure SetDataNasc(const Value: string);
    procedure SetNacionalidade(const Value: string);
    procedure SetSexo(const Value: string);
  public
    property DataNasc: string read FDataNasc write SetDataNasc;
    property Sexo: string read FSexo write SetSexo;
    property Nacionalidade: string read FNacionalidade write SetNacionalidade;
    property Nome: string read getNome write setNome;
    function Idade: Integer;
    function Receber(I: Integer): string; overload;
    function Receber(C: Currency): string; overload;
    function Receber(A, B: Integer): string; overload;

    function RetornaNome: string; virtual;
    function MetodoAbstrato: string; virtual; abstract;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((Now - StrToDate(DataNasc)) / 365.25);
end;

function TPessoa.Receber(C: Currency): string;
begin
  Result := 'Recebi um valor Currency: ' + CurrToStr(C);
end;

function TPessoa.Receber(I: Integer): string;
begin
  Result := 'Recebi um Valor Inteiro: ' + IntToStr(I);
end;

procedure TPessoa.SetDataNasc(const Value: string);
begin
  FDataNasc := Value;
end;

procedure TPessoa.SetNacionalidade(const Value: string);
begin
  FNacionalidade := Value;
end;

function TPessoa.getNome: string;
begin
  Result := FNome;
end;

procedure TPessoa.setNome(Value: string);
begin
  if Value = '' then
    raise Exception.Create('O campo "Nome" deve ser preenchido corretamente!');

  FNome := Value;
end;

procedure TPessoa.SetSexo(const Value: string);
begin
  FSexo := Value;
end;

function TPessoa.Receber(A, B: Integer): string;
begin
  Result := 'A Soma de A + B é igual a: ' + IntToStr(A + B);
end;

function TPessoa.RetornaNome: string;
begin
  Nome := 'TPessoa';
end;

end.
