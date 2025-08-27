program Projeto;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Principal},
  UCliente in 'UCliente.pas' {Cliente},
  UDMPrincipal in 'UDMPrincipal.pas' {DMPrincipal: TDataModule},
  UCadOrdem in 'UCadOrdem.pas' {CadOrdem},
  UConsulta in 'UConsulta.pas' {Consulta},
  UBuscarCliente in 'UBuscarCliente.pas' {BuscarCliente},
  URelatorio in 'URelatorio.pas' {Relatorio},
  UValidador in 'UValidador.pas' {ValidarPrazOrdem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TCliente, Cliente);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TCadOrdem, CadOrdem);
  Application.CreateForm(TConsulta, Consulta);
  Application.CreateForm(TBuscarCliente, BuscarCliente);
  Application.CreateForm(TRelatorio, Relatorio);
  Application.CreateForm(TValidarPrazOrdem, ValidarPrazOrdem);
  Application.Run;
end.
