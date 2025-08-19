program Projeto;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Principal},
  UCliente in 'UCliente.pas' {Cliente},
  UDMPrincipal in 'UDMPrincipal.pas' {DMPrincipal: TDataModule},
  UCadOrdem in 'UCadOrdem.pas' {CadOrdem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TCliente, Cliente);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TCadOrdem, CadOrdem);
  Application.Run;
end.
