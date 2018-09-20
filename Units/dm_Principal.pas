unit dm_Principal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TdmPrincipal = class(TDataModule)
    conTeste: TFDConnection;
    qryPessoa: TFDQuery;
    intgrfldPessoaID: TIntegerField;
    strngfldPessoaNOME: TStringField;
    strngfldPessoaSOBRENOME: TStringField;
    intgrfldPessoaIDADE: TIntegerField;
    blbfldPessoaFOTO: TBlobField;
    dsPessoa: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
