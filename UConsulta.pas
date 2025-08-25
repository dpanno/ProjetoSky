unit UConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls,
  UBuscarCliente, Data.DB, Vcl.Grids, Vcl.DBGrids, UDMPrincipal;

type
  TConsulta = class(TForm)
    Panel2: TPanel;
    btnProcurar: TSpeedButton;
    btnCancelar: TSpeedButton;
    PnlCrudCliente: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    edtClienteOrd: TDBEdit;
    btnBuscarCliente: TButton;
    edtDataAbertura: TEdit;
    edtDataPrevista: TEdit;
    rgStatus: TRadioGroup;
    edtVlrTotal: TEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    gridConsulta: TDBGrid;
    dsConsulta: TDataSource;
    procedure edtDataPrevistaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataAberturaKeyPress(Sender: TObject; var Key: Char);
    procedure btnBuscarClienteClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
  private
    procedure AplicarMascaraData(AEdt: TEdit; var Key: Char);
  public
    { Public declarations }
  end;

var
  Consulta: TConsulta;

implementation

{$R *.dfm}

procedure TConsulta.AplicarMascaraData(AEdt: TEdit; var Key: Char);
var
  sData: string;
begin
  sData := AEdt.Text;
  if not(Key in ['0' .. '9', #8]) then
  begin
    Key := #0;
    Exit;
  end;

  if Key = #8 then
    Exit;

  if Length(sData) >= 10 then
  begin
    Key := #0;
    Exit;
  end;

  if (Length(sData) = 2) or (Length(sData) = 5) then
  begin
    AEdt.Text := sData + '/';
    AEdt.SelStart := Length(AEdt.Text); // posiciona cursor no final
  end;
end;

procedure TConsulta.btnBuscarClienteClick(Sender: TObject);
var
  vForm: TBuscarCliente;
begin
  vForm := TBuscarCliente.Create(nil);
  try
    vForm.ShowModal;
    edtClienteOrd.Text := vForm.Cliente.ToString;
  finally
    vForm.Free
  end;
end;

procedure TConsulta.btnProcurarClick(Sender: TObject);
begin
  if Trim(edtDataAbertura.Text) = '' then
  begin
    ShowMessage('Informe a data de abertura');
    Exit;
    edtDataAbertura.SetFocus;
  end
  else if Trim(edtDataPrevista.Text) = '' then
  begin
    ShowMessage('Informe a data de abertura');
    Exit;
    edtDataPrevista.SetFocus;
  end;

  ShowMessage(DMPrincipal.FDOrdServico.SQL.CommaText);

end;

procedure TConsulta.edtDataAberturaKeyPress(Sender: TObject; var Key: Char);
begin
  AplicarMascaraData(TEdit(Sender), Key);
end;

procedure TConsulta.edtDataPrevistaKeyPress(Sender: TObject; var Key: Char);
begin
  AplicarMascaraData(TEdit(Sender), Key);
end;

end.
