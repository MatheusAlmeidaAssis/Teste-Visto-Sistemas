unit UPrincipal;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.Menus, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Buttons, Winapi.Messages,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin,
  Vcl.ImgList, System.ImageList, System.Actions;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    CadastrodePessoa1: TMenuItem;
    dlgOpen1: TOpenDialog;
    CarregaBancodeDados1: TMenuItem;
    procedure CadastrodePessoa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CarregaBancodeDados1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UPessoa, dm_Principal;

{$R *.dfm}


procedure TfrmPrincipal.CadastrodePessoa1Click(Sender: TObject);
var
  formPessoa:TfrmPessoa;
begin
  formPessoa := TfrmPessoa.Create(Self);
  try
    formPessoa.ShowModal;
  finally
    formPessoa.Free;
  end;
end;

procedure TfrmPrincipal.CarregaBancodeDados1Click(Sender: TObject);
begin
  if dlgOpen1.Execute then begin
    dmPrincipal.conTeste.Params.UserName := 'SYSDBA';
    dmPrincipal.conTeste.Params.Password := 'masterkey';
    dmPrincipal.conTeste.Params.Database := dlgOpen1.FileName;
    dmPrincipal.conTeste.Connected := True;
    dmPrincipal.qryPessoa.Active := True;
    CadastrodePessoa1.Enabled := True;
  end else begin
    ShowMessage('Favor carregar o Banco de Dados!');
    CadastrodePessoa1.Enabled := False;
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  if dlgOpen1.Execute then begin
    dmPrincipal.conTeste.Params.UserName := 'SYSDBA';
    dmPrincipal.conTeste.Params.Password := 'masterkey';
    dmPrincipal.conTeste.Params.Database := dlgOpen1.FileName;
    dmPrincipal.conTeste.Connected := True;
    dmPrincipal.qryPessoa.Active := True;
    CadastrodePessoa1.Enabled := True;
  end else begin
    ShowMessage('Favor carregar o Banco de Dados!');
    CadastrodePessoa1.Enabled := False;
  end;
end;

end.
