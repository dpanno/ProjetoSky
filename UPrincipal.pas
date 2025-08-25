unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses UCliente, UCadOrdem;

procedure TPrincipal.Cadastrodeordemdeservio2Click(Sender: TObject);
begin
  TCliente.Create(Self).Show;
end;

procedure TPrincipal.Ordemdeservio1Click(Sender: TObject);
begin
  TConsulta.Create(Self).Show;
end;

procedure TPrincipal.Ordemdeservio3Click(Sender: TObject);
begin
  TCadOrdem.Create(Self).Show;
end;

end.
