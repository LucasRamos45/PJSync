program PjSync;

uses
  Vcl.Forms,
  uCadastroPessoa in 'uCadastroPessoa.pas' {frmCadastroPessoa},
  uRotinasComuns in 'uRotinasComuns.pas' {DMRotinas: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastroPessoa, frmCadastroPessoa);
  Application.CreateForm(TDMRotinas, DMRotinas);
  Application.Run;
end.
