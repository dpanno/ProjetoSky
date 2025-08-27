unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, frxClass, frxRich,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, UConsulta,
  UDMPrincipal;

type
  TPrincipal = class(TForm)
    Central: TPanel;
    MainMenu1: TMainMenu;
    Cadastrodeordemdeservio1: TMenuItem;
    Cadastrodeordemdeservio2: TMenuItem;
    Consultas1: TMenuItem;
    Ordemdeservio1: TMenuItem;
    Relatrio1: TMenuItem;
    Ordemdeservio2: TMenuItem;
    Movimentao1: TMenuItem;
    CalculodeSLA1: TMenuItem;
    Ordemdeservio3: TMenuItem;
    procedure Cadastrodeordemdeservio2Click(Sender: TObject);
    procedure Ordemdeservio3Click(Sender: TObject);
    procedure Ordemdeservio1Click(Sender: TObject);
    procedure Ordemdeservio2Click(Sender: TObject);
    procedure CalculodeSLA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses UCliente, UCadOrdem, URelatorio, UValidador;

procedure TPrincipal.Cadastrodeordemdeservio2Click(Sender: TObject);
begin
  TCliente.Create(Self).Show;
end;

procedure TPrincipal.CalculodeSLA1Click(Sender: TObject);
begin
  TValidarPrazOrdem.Create(Self).Show;
end;

procedure TPrincipal.Ordemdeservio1Click(Sender: TObject);
begin
  TConsulta.Create(Self).Show;
end;

procedure TPrincipal.Ordemdeservio2Click(Sender: TObject);
begin
  TRelatorio.Create(Self).Show
end;

procedure TPrincipal.Ordemdeservio3Click(Sender: TObject);
begin
  TCadOrdem.Create(Self).Show;
end;

end.
