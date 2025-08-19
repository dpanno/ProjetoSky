unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

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
    procedure Cadastrodeordemdeservio2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses UCadastro;

procedure TPrincipal.Cadastrodeordemdeservio2Click(Sender: TObject);
begin
   Cliente.Show;
end;

end.
