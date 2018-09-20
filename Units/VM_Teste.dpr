program VM_Teste;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  dm_Principal in 'dm_Principal.pas' {dmPrincipal: TDataModule},
  UPessoa in 'UPessoa.pas' {frmPessoa};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmPessoa, frmPessoa);
  Application.Run;
end.
