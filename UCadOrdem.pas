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
    dsOrdem: TDataSource;
    pcPrincipal: TPageControl;
    tsOrdemServico: TTabSheet;
    tsItemOrdem: TTabSheet;
    pnlCrudOrdem: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Telefone: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GridCliente: TDBGrid;
    edtDataAbertura: TDBEdit;
    edtDataPrevista: TDBEdit;
    edtDataFechamento: TDBEdit;
    cmbStatus: TDBComboBox;
    mmDescProblema: TDBMemo;
    edtValorTotal: TDBEdit;
    pnlCrudItemOrdem: TPanel;
    gridItensOrd: TDBGrid;
    dsItemOrd: TDataSource;
    edtClienteOrd: TDBEdit;
    Label6: TLabel;
    btnBuscarCliente: TButton;
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDataAberturaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataPrevistaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataFechamentoKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditarClick(Sender: TObject);
    procedure pcPrincipalChange(Sender: TObject);
    procedure btnBuscarClienteClick(Sender: TObject);
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

uses UDMPrincipal, UBuscarCliente;

procedure TCadOrdem.btnBuscarClienteClick(Sender: TObject);
var
  vForm: TBuscarCliente;
begin
  vForm := TBuscarCliente.Create(nil);
  try
    vForm.ShowModal;
    DMPrincipal.FDOrdServicoCLIENTE_ID.AsInteger := vForm.Cliente;
  finally
    vForm.Free
  end;
end;

procedure TCadOrdem.btnCancelarClick(Sender: TObject);
begin
  if pcPrincipal.ActivePageIndex = 0 then
  begin
    DMPrincipal.FDOrdServico.Cancel;
    DMPrincipal.FDOrdServico.Refresh;
  end
  else
  begin
    DMPrincipal.FDItemOrd.Cancel;
    DMPrincipal.FDItemOrd.Refresh;
  end;

  ControlarBotoes;
end;

procedure TCadOrdem.btnEditarClick(Sender: TObject);
begin
  if pcPrincipal.ActivePageIndex = 0 then
    DMPrincipal.FDOrdServico.Edit
  else
    DMPrincipal.FDOrdServico.Edit;

  ControlarBotoes;
end;

procedure TCadOrdem.btnExcluirClick(Sender: TObject);
begin
  if pcPrincipal.ActivePageIndex = 0 then
  begin
    DMPrincipal.FDOrdServico.Delete;
    DMPrincipal.FDOrdServico.Refresh;
  end
  else
  begin
    DMPrincipal.FDItemOrd.Delete;
    DMPrincipal.FDItemOrd.Refresh;
  end;
  ControlarBotoes;
end;

procedure TCadOrdem.btnInserirClick(Sender: TObject);
begin
  if pcPrincipal.ActivePageIndex = 0 then
    DMPrincipal.FDOrdServico.Append
  else
    DMPrincipal.FDItemOrd.Append;
  ControlarBotoes;
end;

procedure TCadOrdem.btnSalvarClick(Sender: TObject);
begin
  if pcPrincipal.ActivePageIndex = 0 then
  begin
    DMPrincipal.FDOrdServico.Post;
    DMPrincipal.FDOrdServico.Refresh;
  end
  else
  begin
    DMPrincipal.FDItemOrd.Post;
    DMPrincipal.FDItemOrd.Refresh;
  end;
  ControlarBotoes;
end;

procedure TCadOrdem.ControlarBotoes;
begin
  btnInserir.Enabled := not(DMPrincipal.FDOrdServico.State
    in [dsInsert, dsEdit]);
  btnEditar.Enabled := (not DMPrincipal.FDOrdServico.IsEmpty) and
    btnInserir.Enabled;
  btnExcluir.Enabled := (not DMPrincipal.FDOrdServico.IsEmpty) and
    btnInserir.Enabled;
  btnSalvar.Enabled := DMPrincipal.FDOrdServico.State in [dsInsert, dsEdit];
  btnCancelar.Enabled := DMPrincipal.FDOrdServico.State in [dsInsert, dsEdit];
  btnBuscarCliente.Enabled := DMPrincipal.FDOrdServico.State
    in [dsInsert, dsEdit];
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
  ControlarBotoes;
end;

procedure TCadOrdem.pcPrincipalChange(Sender: TObject);
begin
  if pcPrincipal.ActivePageIndex = 0 then
  begin
    DMPrincipal.FDOrdServico.Close;
    DMPrincipal.FDOrdServico.Open;
  end
  else if (not DMPrincipal.FDOrdServico.IsEmpty) then
  begin
    DMPrincipal.FDItemOrd.Close;
    DMPrincipal.FDItemOrd.ParamByName('IDPAI').AsInteger :=
      DMPrincipal.FDOrdServicoID.AsInteger;
    DMPrincipal.FDItemOrd.Open;
  end
  else
  begin
    ShowMessage('É preciso cadastrar uma ordem antes dos itens');
    pcPrincipal.ActivePage := tsOrdemServico;
  end;
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
