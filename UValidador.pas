unit UValidador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TValidarPrazOrdem = class(TForm)
    Panel2: TPanel;
    btnValOrdem: TSpeedButton;
    PnlCrudCliente: TPanel;
    Label6: TLabel;
    btnBuscarCliente: TButton;
    edtCliente: TEdit;
    procedure btnBuscarClienteClick(Sender: TObject);
    procedure btnValOrdemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ValidarPrazOrdem: TValidarPrazOrdem;

implementation

{$R *.dfm}

uses UBuscarCliente, UDMPrincipal;

procedure TValidarPrazOrdem.btnBuscarClienteClick(Sender: TObject);
var
  vForm: TBuscarCliente;
begin
  vForm := TBuscarCliente.Create(nil);
  try
    vForm.ShowModal;
    edtCliente.Text := vForm.Cliente.ToString;
  finally
    vForm.Free
  end;
end;

procedure TValidarPrazOrdem.btnValOrdemClick(Sender: TObject);
var
  ClienteID: Integer;
begin
  if not TryStrToInt(Trim(edtCliente.Text), ClienteID) then
  begin
    ShowMessage('Informe um número de cliente válido.');
    Exit;
  end;

  try
    DMPrincipal.FDAux.ExecSQL
      ('EXECUTE PROCEDURE ATUALIZA_STATUS_ORDENS_CLIENTE(?)', [ClienteID]);

    ShowMessage('Status das ordens atualizado com sucesso!');
  except
    on E: Exception do
      ShowMessage('Erro ao atualizar status das ordens: ' + E.Message);
  end;
end;

end.
