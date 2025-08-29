unit UBuscarCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TBuscarCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GridCliente: TDBGrid;
    dsCliente: TDataSource;
    btnOK: TButton;
    btnCancelar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    FCliente: Integer;
  public
    property Cliente: Integer read FCliente;
  end;

var
  BuscarCliente: TBuscarCliente;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TBuscarCliente.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TBuscarCliente.btnOKClick(Sender: TObject);
begin
  FCliente := DMPrincipal.FDCliente.FieldByName('ID').AsInteger;
  ModalResult := mrOk;
end;

procedure TBuscarCliente.FormShow(Sender: TObject);
begin
  DMPrincipal.FDCliente.Open;
  if DMPrincipal.FDCliente.IsEmpty then
  begin
    ShowMessage
      ('Sem clientes cadastrado! Cadastre um cliente para criar a ordem');
    ModalResult := mrCancel;
  end
  else
    FCliente := DMPrincipal.FDCliente.FieldByName('ID').AsInteger;
end;

end.
