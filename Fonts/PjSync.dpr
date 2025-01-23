program PjSync;

uses
  Vcl.Forms,
  UCadastroPessoa in 'UCadastroPessoa.pas' {frmCadastroPessoa},
  UWebServiceCNPJ in 'UWebServiceCNPJ.pas' {DMRotinas: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastroPessoa, frmCadastroPessoa);
  Application.CreateForm(TDMRotinas, DMRotinas);
  Application.Run;
end.
