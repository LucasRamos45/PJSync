unit uCadastroPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  uRotinasComuns;

type
  TfrmCadastroPessoa = class(TForm)
    razao: TEdit;
    fantasia: TEdit;
    logradouro: TEdit;
    numero: TEdit;
    bairro: TEdit;
    municipio: TEdit;
    uf: TEdit;
    cep: TEdit;
    email: TEdit;
    complemento: TEdit;
    CNPJ: TEdit;
    Pesquisar: TBitBtn;
    IE: TEdit;
    procedure PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPessoa: TfrmCadastroPessoa;

implementation

{$R *.dfm}

procedure TfrmCadastroPessoa.PesquisarClick(Sender: TObject);
begin
  try
    dmrotinas.Pessoa.Clear;
    dmrotinas.BuscaCNPJ(CNPJ.text);
    razao.Text := UpperCase(dmrotinas.Pessoa.razao);
    fantasia.text := UpperCase(dmrotinas.Pessoa.fantasia);
    if trim(fantasia.Text) = '' then
    fantasia.Text := UpperCase(dmrotinas.Pessoa.razao);
    logradouro.Text := UpperCase(dmrotinas.Pessoa.Logradouro);
    numero.Text := UpperCase(dmrotinas.Pessoa.numero);
    bairro.Text := UpperCase(dmrotinas.Pessoa.Bairro);
    municipio.Text := UpperCase(dmrotinas.Pessoa.Municipio);
    uf.Text := UpperCase(dmrotinas.Pessoa.uf);
    cep.Text := UpperCase(dmrotinas.Pessoa.cep);
    email.Text := UpperCase(dmrotinas.Pessoa.email);

  except
    on E: Exception do
      raise Exception.Create(E.Message);
  end;
end;
end.
