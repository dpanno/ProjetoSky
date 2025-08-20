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
    edtDataAbertura: TDBEdit;
    edtDataPrevista: TDBEdit;
    edtDataFechamento: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    mmDescProblema: TDBMemo;
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDataAberturaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataPrevistaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataFechamentoKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditarClick(Sender: TObject);
  private
    procedure ControlarBotoes;
    procedure AplicarMascaraData(AEdtData: TDBEdit; var Key: Char);
  public
    { Public declarations }
  end;

var
  CadOrdem: TCadOrdem;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TCadOrdem.btnCancelarClick(Sender: TObject);
begin
  DMPrincipal.FDOrdServico.Cancel;
  DMPrincipal.FDOrdServico.Refresh;
  ControlarBotoes;
end;

procedure TCadOrdem.btnEditarClick(Sender: TObject);
begin
  DMPrincipal.FDOrdServico.Edit;
  ControlarBotoes;
end;

procedure TCadOrdem.btnExcluirClick(Sender: TObject);
begin
  DMPrincipal.FDOrdServico.Delete;
  DMPrincipal.FDOrdServico.Refresh;
  ControlarBotoes;
end;

procedure TCadOrdem.btnInserirClick(Sender: TObject);
begin
  DMPrincipal.FDOrdServico.Append;
  ControlarBotoes;
end;

procedure TCadOrdem.btnSalvarClick(Sender: TObject);
begin
  DMPrincipal.FDOrdServico.Post;
  DMPrincipal.FDOrdServico.Refresh;
  ControlarBotoes;
end;

procedure TCadOrdem.ControlarBotoes;
begin
  btnInserir.Enabled := not(DMPrincipal.FDOrdServico.State
    in [dsInsert, dsEdit]);
  btnEditar.Enabled := (DMPrincipal.FDOrdServico.RecordCount > 0) and
    btnInserir.Enabled;
  btnExcluir.Enabled := (DMPrincipal.FDOrdServico.RecordCount > 0) and
    btnInserir.Enabled;
  btnSalvar.Enabled := DMPrincipal.FDOrdServico.State in [dsInsert, dsEdit];
  btnCancelar.Enabled := DMPrincipal.FDOrdServico.State in [dsInsert, dsEdit];
end;

procedure TCadOrdem.edtDataAberturaKeyPress(Sender: TObject; var Key: Char);
begin
  AplicarMascaraData(TDBEdit(Sender), Key);
end;

procedure TCadOrdem.edtDataFechamentoKeyPress(Sender: TObject; var Key: Char);
begin
  AplicarMascaraData(TDBEdit(Sender), Key);
end;

procedure TCadOrdem.edtDataPrevistaKeyPress(Sender: TObject; var Key: Char);
begin
  AplicarMascaraData(TDBEdit(Sender), Key);
end;

procedure TCadOrdem.FormShow(Sender: TObject);
begin
  DMPrincipal.FDOrdServico.Open;
end;

procedure TCadOrdem.AplicarMascaraData(AEdtData: TDBEdit; var Key: Char);
var
  sData: string;
begin
  sData := AEdtData.Text;
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
    AEdtData.Text := sData + '/';
    AEdtData.SelStart := Length(AEdtData.Text); // posiciona cursor no final
  end;
end;

end.
