unit URelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, FireDAC.Comp.Client,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, UDMPrincipal, frxDBSet,
  frxExportBaseDialog, frxExportCSV, frxExportPDF;

type
  TRelatorio = class(TForm)
    Panel2: TPanel;
    btnImprimir: TSpeedButton;
    PnlCrudCliente: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    btnBuscarCliente: TButton;
    edtDataAbertura: TEdit;
    edtDataPrevista: TEdit;
    rgStatus: TRadioGroup;
    edtVlrTotal: TEdit;
    cbMaior: TComboBox;
    frxRelatorio: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    edtClienteOrd: TEdit;
    btnExportarCSV: TSpeedButton;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    btnExportarPDF: TSpeedButton;
    procedure btnImprimirClick(Sender: TObject);
    procedure edtDataAberturaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataPrevistaKeyPress(Sender: TObject; var Key: Char);
    procedure btnExportarCSVClick(Sender: TObject);
    procedure btnExportarPDFClick(Sender: TObject);
    procedure btnBuscarClienteClick(Sender: TObject);
  private
    procedure AplicarMascaraData(AEdt: TEdit; var Key: Char);
    function RetornarStatus: string;
  public
    { Public declarations }
  end;

var
  Relatorio: TRelatorio;

implementation

{$R *.dfm}

uses UBuscarCliente;

function TRelatorio.RetornarStatus: string;
begin

  case rgStatus.ItemIndex of
    0:
      Result := 'ABERTA';
    1:
      Result := 'EM ANDAMENTO';
    2:
      Result := 'CONCLUIDA';
    3:
      Result := 'CANCELADA';
  else
    Result := '';
  end;
end;

procedure TRelatorio.AplicarMascaraData(AEdt: TEdit; var Key: Char);
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
    AEdt.SelStart := Length(AEdt.Text);
  end;
end;

procedure TRelatorio.btnBuscarClienteClick(Sender: TObject);
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

procedure TRelatorio.btnExportarCSVClick(Sender: TObject);
var
  path, FileName, vFiltro, StatusSelecionado: string;
  Rel: TfrxReport;
  ExportFilter: TfrxCSVExport;
  Valor: Double;
begin
  path := ExtractFilePath(Application.ExeName);
  FileName := path + 'RelatorioExportado.csv';

  Rel := TfrxReport.Create(nil);
  ExportFilter := TfrxCSVExport.Create(nil);
  try
    Rel.LoadFromFile(path + 'ModeloRelatorio.fr3');
    if Trim(edtDataAbertura.Text) = '' then
    begin
      ShowMessage('Informe a data de abertura');
      edtDataAbertura.SetFocus;
      Exit;
    end;

    if Trim(edtDataPrevista.Text) = '' then
    begin
      ShowMessage('Informe a data de abertura');
      edtDataPrevista.SetFocus;
      Exit;
    end;

    if Trim(edtVlrTotal.Text) = '' then
      Valor := 0
    else
      Valor := StrToFloat(edtVlrTotal.Text);

    DMPrincipal.MontarParametros(StrToDateDef(edtDataAbertura.Text, 0),
      StrToDateDef(edtDataPrevista.Text, 0), edtClienteOrd.Text, Valor,
      cbMaior.ItemIndex, RetornarStatus);
    Rel.PrepareReport;
    ExportFilter.FileName := FileName;
    ExportFilter.ShowDialog := False;
    Rel.Export(ExportFilter);

    ShowMessage('Exportado para CSV: ' + FileName);
  finally
    ExportFilter.Free;
    Rel.Free;
    DMPrincipal.FDConsulta.Close;
  end;
end;

procedure TRelatorio.btnExportarPDFClick(Sender: TObject);
var
  path, FileName, vFiltro, StatusSelecionado: string;
  Rel: TfrxReport;
  ExportFilter: TfrxPDFExport;
  Valor: Double;
begin
  path := ExtractFilePath(Application.ExeName);
  FileName := path + 'RelatorioExportado.pdf';

  Rel := TfrxReport.Create(nil);
  ExportFilter := TfrxPDFExport.Create(nil);
  try
    Rel.LoadFromFile(path + 'ModeloRelatorio.fr3');
    if Trim(edtDataAbertura.Text) = '' then
    begin
      ShowMessage('Informe a data de abertura');
      edtDataAbertura.SetFocus;
      Exit;
    end;

    if Trim(edtDataPrevista.Text) = '' then
    begin
      ShowMessage('Informe a data de abertura');
      edtDataPrevista.SetFocus;
      Exit;
    end;

    if Trim(edtVlrTotal.Text) = '' then
      Valor := 0
    else
      Valor := StrToFloat(edtVlrTotal.Text);

    DMPrincipal.MontarParametros(StrToDateDef(edtDataAbertura.Text, 0),
      StrToDateDef(edtDataPrevista.Text, 0), edtClienteOrd.Text, Valor,
      cbMaior.ItemIndex, RetornarStatus);
    Rel.PrepareReport;
    ExportFilter.FileName := FileName;
    ExportFilter.ShowDialog := False;
    Rel.Export(ExportFilter);

    ShowMessage('Exportado para PDF: ' + FileName);
  finally
    ExportFilter.Free;
    Rel.Free;
    DMPrincipal.FDConsulta.Close;
  end;
end;

procedure TRelatorio.btnImprimirClick(Sender: TObject);
var
  path, vFiltro, StatusSelecionado: string;
  Rel: TfrxReport;
  Valor: Double;
begin
  path := ExtractFilePath(Application.ExeName);
  try
    Rel := TfrxReport.Create(nil);
    try
      Rel.LoadFromFile(path + 'ModeloRelatorio.fr3');

      if not Assigned(Rel) then
      begin
        raise Exception.Create('Arquivo não encontrado.');
      end;

      if Trim(edtDataAbertura.Text) = '' then
      begin
        ShowMessage('Informe a data de abertura');
        edtDataAbertura.SetFocus;
        Exit;
      end;

      if Trim(edtDataPrevista.Text) = '' then
      begin
        ShowMessage('Informe a data de abertura');
        edtDataPrevista.SetFocus;
        Exit;
      end;

      if Trim(edtVlrTotal.Text) = '' then
        Valor := 0
      else
        Valor := StrToFloat(edtVlrTotal.Text);

      DMPrincipal.MontarParametros(StrToDateDef(edtDataAbertura.Text, 0),
        StrToDateDef(edtDataPrevista.Text, 0), edtClienteOrd.Text, Valor,
        cbMaior.ItemIndex, RetornarStatus);
      Rel.ShowReport();
    finally
      Rel.Free;
      DMPrincipal.FDConsulta.Close;
    end;
  except
    On E: Exception do
      ShowMessage('Ocorreu um erro ao gerar o relatório: ' + E.Message);

  end;
end;

procedure TRelatorio.edtDataAberturaKeyPress(Sender: TObject; var Key: Char);
begin
  AplicarMascaraData(TEdit(Sender), Key);
end;

procedure TRelatorio.edtDataPrevistaKeyPress(Sender: TObject; var Key: Char);
begin
  AplicarMascaraData(TEdit(Sender), Key);
end;

end.
