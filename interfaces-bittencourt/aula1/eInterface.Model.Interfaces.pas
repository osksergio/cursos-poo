unit eInterface.Model.Interfaces;

interface

type
  TEvDisplay = procedure(Value: string) of Object;

  iPessoa = interface
    ['{C02B4448-AB1F-44D4-96D0-BA297A2CC10F}']
    function Nome(Value: string): iPessoa; overload;
    function Nome: string; overload;
    function SobreNome(Value: string): iPessoa;
    function NomeCompleto: iPessoa;
    function Display(Value: TEvDisplay): iPessoa;
  end;

  iPessoaFactory = interface
    ['{1A0E478A-3C9F-4E52-B9AF-BEDD6EBFFB87}']
    function PessoaFisica: iPessoa;
    function PessoaJuridica: iPessoa;
  end;

implementation

end.
