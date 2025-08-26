unit UDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase;

type
  TDMPrincipal = class(TDataModule)
    FDConnection: TFDConnection;
    FDCliente: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDClienteID: TIntegerField;
    FDClienteNOME: TStringField;
    FDClienteDOCUMENTO: TStringField;
    FDClienteEMAIL: TStringField;
    FDClienteTELEFONE: TStringField;
    FDClienteDATACADASTRO: TSQLTimeStampField;
    FDOrdServico: TFDQuery;
    FDOrdServicoID: TIntegerField;
    FDOrdServicoCLIENTE_ID: TIntegerField;
    FDOrdServicoDATA_ABERTURA: TDateField;
    FDOrdServicoDATA_PREVISTA: TDateField;
    FDOrdServicoDATA_FECHAMENTO: TDateField;
    FDOrdServicoSTATUS: TStringField;
    FDOrdServicoDESCRICAO_PROBLEMA: TStringField;
    FDOrdServicoVALOR_TOTAL: TBCDField;
    FDItemOrd: TFDQuery;
    FDItemOrdID: TIntegerField;
    FDItemOrdORDEM_ID: TIntegerField;
    FDItemOrdDESCRICAO: TStringField;
    FDItemOrdQUANTIDADE: TBCDField;
    FDItemOrdVALOR_UNITARIO: TBCDField;
    FDConsulta: TFDQuery;
    FDConsultaID: TIntegerField;
    FDConsultaCLIENTE_ID: TIntegerField;
    FDConsultaDATA_ABERTURA: TDateField;
    FDConsultaDATA_PREVISTA: TDateField;
    FDConsultaDATA_FECHAMENTO: TDateField;
    FDConsultaSTATUS: TStringField;
    FDConsultaDESCRICAO_PROBLEMA: TStringField;
    FDConsultaVALOR_TOTAL: TBCDField;
    procedure FDItemOrdNewRecord(DataSet: TDataSet);
    procedure FDItemOrdBeforePost(DataSet: TDataSet);
    procedure FDItemOrdAfterPost(DataSet: TDataSet);
    procedure FDItemOrdAfterDelete(DataSet: TDataSet);
  private
    procedure CalculaTotalOrdem;
  public
    { Public declarations }
  end;

{$R *.dfm}

var
  DMPrincipal: TDMPrincipal;

implementation

procedure TDMPrincipal.FDItemOrdBeforePost(DataSet: TDataSet);
begin

end;

procedure TDMPrincipal.FDItemOrdAfterDelete(DataSet: TDataSet);
begin
  CalculaTotalOrdem;
end;

procedure TDMPrincipal.FDItemOrdAfterPost(DataSet: TDataSet);
begin
  CalculaTotalOrdem;
end;

procedure TDMPrincipal.FDItemOrdNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ORDEM_ID').AsInteger := FDOrdServico.FieldByName('ID')
    .AsInteger;
end;

procedure TDMPrincipal.CalculaTotalOrdem;
var
  vTotalOrdem: Double;
begin
  vTotalOrdem := 0;

  FDItemOrd.DisableControls;
  try
    FDItemOrd.First;
    while not FDItemOrd.Eof do
    begin
      vTotalOrdem := vTotalOrdem + (FDItemOrd.FieldByName('QUANTIDADE').AsFloat
        * FDItemOrd.FieldByName('VALOR_UNITARIO').AsFloat);
      FDItemOrd.Next;
    end;
  finally
    FDItemOrd.EnableControls;
  end;

  FDOrdServico.Edit;
  FDOrdServicoVALOR_TOTAL.AsFloat := vTotalOrdem;
  FDOrdServico.Post;
end;

initialization

end.
