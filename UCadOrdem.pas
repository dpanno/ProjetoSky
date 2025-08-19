unit UCadOrdem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TCadOrdem = class(TForm)
    Panel2: TPanel;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    PnlCrudCliente: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Telefone: TLabel;
    GridCliente: TDBGrid;
    dsOrdem: TDataSource;
    DateTimePicker1: TDateTimePicker;
  private
    procedure ControlarBotoes;
  public
    { Public declarations }
  end;

var
  CadOrdem: TCadOrdem;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TCadOrdem.ControlarBotoes;
begin
  btnInserir.Enabled := not(DMPrincipal.FDCliente.State in [dsInsert, dsEdit]);
  btnEditar.Enabled := (DMPrincipal.FDCliente.RecordCount > 0) and
    btnInserir.Enabled;
  btnExcluir.Enabled := (DMPrincipal.FDCliente.RecordCount > 0) and
    btnInserir.Enabled;
  btnSalvar.Enabled := DMPrincipal.FDCliente.State in [dsInsert, dsEdit];
  btnCancelar.Enabled := DMPrincipal.FDCliente.State in [dsInsert, dsEdit];
end;

end.
