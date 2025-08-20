unit UCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TCliente = class(TForm)
    Panel2: TPanel;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsCliente: TDataSource;
    PnlCrudCliente: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Telefone: TLabel;
    edtCliente: TDBEdit;
    edtDocumento: TDBEdit;
    edtEmail: TDBEdit;
    edtTelefone: TDBEdit;
    GridCliente: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure ControlarBotoes;
  end;

var
  Cliente: TCliente;

implementation

{$R *.dfm}

uses UDMCrud, UDMPrincipal;

procedure TCliente.ControlarBotoes;
begin
  btnInserir.Enabled := not(DMPrincipal.FDCliente.State in [dsInsert, dsEdit]);
  btnEditar.Enabled := (DMPrincipal.FDCliente.RecordCount > 0) and
    btnInserir.Enabled;
  btnExcluir.Enabled := (DMPrincipal.FDCliente.RecordCount > 0) and
    btnInserir.Enabled;
  btnSalvar.Enabled := DMPrincipal.FDCliente.State in [dsInsert, dsEdit];
  btnCancelar.Enabled := DMPrincipal.FDCliente.State in [dsInsert, dsEdit];
end;

procedure TCliente.btnCancelarClick(Sender: TObject);
begin
  DMPrincipal.FDCliente.Cancel;
  DMPrincipal.FDCliente.Refresh;
  ControlarBotoes;
end;

procedure TCliente.btnEditarClick(Sender: TObject);
begin
  DMPrincipal.FDCliente.Edit;
  ControlarBotoes;
end;

procedure TCliente.btnExcluirClick(Sender: TObject);
begin
  DMPrincipal.FDCliente.Delete;
  DMPrincipal.FDCliente.Refresh;
  ControlarBotoes;
end;

procedure TCliente.btnInserirClick(Sender: TObject);
begin
  DMPrincipal.FDCliente.Append;
  ControlarBotoes;
end;

procedure TCliente.btnSalvarClick(Sender: TObject);
begin
  DMPrincipal.FDCliente.Post;
  DMPrincipal.FDCliente.Refresh;
  ControlarBotoes;
end;

procedure TCliente.FormShow(Sender: TObject);
begin
  DMPrincipal.FDCliente.Open;
  ControlarBotoes;
end;

end.
