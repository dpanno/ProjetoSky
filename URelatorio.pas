unit URelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, UDMPrincipal, frxDBSet;

type
  TRelatorio = class(TForm)
    Panel2: TPanel;
    btnImprimir: TSpeedButton;
    PnlCrudCliente: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    edtClienteOrd: TDBEdit;
    btnBuscarCliente: TButton;
    edtDataAbertura: TEdit;
    edtDataPrevista: TEdit;
    rgStatus: TRadioGroup;
    edtVlrTotal: TEdit;
    ComboBox1: TComboBox;
    frxRelatorio: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Relatorio: TRelatorio;

implementation

{$R *.dfm}

end.
