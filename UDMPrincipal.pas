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
    procedure FDClienteAfterPost(DataSet: TDataSet);
    procedure FDItemOrdNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{$R *.dfm}

var
  DMPrincipal: TDMPrincipal;

implementation

procedure TDMPrincipal.FDClienteAfterPost(DataSet: TDataSet);
begin

end;

procedure TDMPrincipal.FDItemOrdNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ORDEM_ID').AsInteger := FDOrdServico.FieldByName('ID')
    .AsInteger;
end;

initialization

end.
