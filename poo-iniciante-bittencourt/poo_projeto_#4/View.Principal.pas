unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Administrativo, Classe.Pessoa,
  Classe.Vendedor;

type
  TEnumFuncao = (tpAdministrativo, tpVendedor, tpFuncionario);

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cbFuncao: TComboBox;
    Nome: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtSalario: TEdit;
    Label3: TLabel;
    edtBonus: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure fnc_IncluirAdministrativo;
    procedure fnc_IncluirVendedor;
    procedure fnc_IncluirFuncionario;
    { Private declarations }
  public
    { Public declarations }
    Funcionario: Array[1..100] of TPessoa;
    qtdFuncionario: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
    case TEnumFuncao(cbFuncao.ItemIndex) of
      tpAdministrativo:
      begin
        fnc_IncluirAdministrativo;
      end;

      tpVendedor:
      begin
        fnc_IncluirVendedor;
      end;

      tpFuncionario:
      begin
        fnc_IncluirFuncionario;
      end;
    end;
    Inc(qtdFuncionario);
  except
    raise Exception.Create('Erro ao cadastrar o funcionário!');
  end;
end;

procedure TForm1.fnc_IncluirAdministrativo;
begin
  Funcionario[qtdFuncionario] := TAdministrativo.Create;
  TAdministrativo(Funcionario[qtdFuncionario]).Bonus := StrToCurr(edtBonus.Text);
  TAdministrativo(Funcionario[qtdFuncionario]).Nome := edtNome.Text;
  TAdministrativo(Funcionario[qtdFuncionario]).Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirVendedor;
begin
  Funcionario[qtdFuncionario] := TVendedor.Create;
  TVendedor(Funcionario[qtdFuncionario]).Comissao := StrToCurr(edtBonus.Text);
  TVendedor(Funcionario[qtdFuncionario]).Nome := edtNome.Text;
  TVendedor(Funcionario[qtdFuncionario]).Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirFuncionario;
begin
  Funcionario[qtdFuncionario] := TPessoa.Create;
  Funcionario[qtdFuncionario].Nome := edtNome.Text;
  Funcionario[qtdFuncionario].Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  qtdFuncionario := 0;
end;

end.
