unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;

type
  TTypePessoa = (tpFisica, tpJuridica);

  iControllerPessoa = interface
    ['{3073B249-2512-43CD-BE4C-8EFD078976BC}']

    function Pessoa(Value: TTypePessoa): iPessoa;
  end;

implementation

end.
