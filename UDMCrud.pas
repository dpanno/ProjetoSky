unit UDMCrud;

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
    FDCrud: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDCrudID: TIntegerField;
    FDCrudNOME: TStringField;
    FDCrudDOCUMENTO: TStringField;
    FDCrudEMAIL: TStringField;
    FDCrudTELEFONE: TStringField;
    FDCrudDATACADASTRO: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{$R *.dfm}

var
  DMPrincipal: TDMPrincipal;

implementation

initialization

end.
