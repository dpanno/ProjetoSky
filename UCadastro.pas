unit UCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TCrudCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    edtCliente: TDBEdit;
    Label1: TLabel;
    edtDocumento: TDBEdit;
    Label2: TLabel;
    edtEmail: TDBEdit;
    Label3: TLabel;
    edtTelefone: TDBEdit;
    Telefone: TLabel;
    DBGrid1: TDBGrid;
    dsCrud: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CrudCliente: TCrudCliente;

implementation

{$R *.dfm}

uses UDMCrud;

procedure TCrudCliente.btnCancelarClick(Sender: TObject);
begin
  DMCrud.FDCrud.Cancel;
end;

procedure TCrudCliente.btnEditarClick(Sender: TObject);
begin
  DMCrud.FDCrud.Edit;
end;

procedure TCrudCliente.btnExcluirClick(Sender: TObject);
begin
  DMCrud.FDCrud.Delete;
end;

procedure TCrudCliente.btnInserirClick(Sender: TObject);
begin
  DMCrud.FDCrud.Insert;
end;

procedure TCrudCliente.btnSalvarClick(Sender: TObject);
begin
  DMCrud.FDCrud.Post;
end;

procedure TCrudCliente.FormShow(Sender: TObject);
begin
  DMCrud.FDCrud.Open;
end;

end.
