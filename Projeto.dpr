program Projeto;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Principal},
  UCadastro in 'UCadastro.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
