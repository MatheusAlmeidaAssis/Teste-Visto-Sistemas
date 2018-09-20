unit UPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtDlgs, Vcl.Imaging.jpeg, DB;

type
  TfrmPessoa = class(TForm)
    edtID: TDBEdit;
    edtNome: TDBEdit;
    edtIdade: TDBEdit;
    edtSobrenome: TDBEdit;
    lblID: TLabel;
    lblNome: TLabel;
    lblIdade: TLabel;
    lblSobrenome: TLabel;
    imgFoto: TImage;
    lblFoto: TLabel;
    dbnvgr1: TDBNavigator;
    btnSalvar: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure btnSalvarClick(Sender: TObject);
    procedure edtIdadeKeyPress(Sender: TObject; var Key: Char);
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

uses
  dm_Principal;

{$R *.dfm}

procedure TfrmPessoa.btnSalvarClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then begin
    imgFoto.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    dmPrincipal.blbfldPessoaFOTO.LoadFromFile(OpenPictureDialog1.FileName);
  end else ShowMessage('Não foi possivel carregar a foto!');
end;

procedure TfrmPessoa.dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
var
  nID:Integer;
  sImg:TStream;
begin
  if (Button = nbInsert) then begin
    dmPrincipal.qryPessoa.Last;
    nID := dmPrincipal.qryPessoa.FieldByName('ID').Value + 1;
    dmPrincipal.qryPessoa.Insert;
    dmPrincipal.qryPessoa.FieldByName('ID').Value := nID;
    imgFoto.Picture := nil;
  end;

  if (Button in [nbEdit, nbInsert]) then begin
    edtNome.Enabled := True;
    edtIdade.Enabled := True;
    edtSobrenome.Enabled := True;
    btnSalvar.Enabled := True;
    edtNome.SetFocus;
  end else begin
    edtNome.Enabled := False;
    edtIdade.Enabled := False;
    edtSobrenome.Enabled := False;
    btnSalvar.Enabled := False;
    if not dmPrincipal.blbfldPessoaFOTO.IsNull then begin
      sImg := TStream.Create;
      try
        sImg := dmPrincipal.qryPessoa.CreateBlobStream(dmPrincipal.blbfldPessoaFOTO, bmRead);
        imgFoto.Picture.LoadFromStream(sImg);
      finally
        sImg.Free;
      end;
    end;
  end;
end;

procedure TfrmPessoa.edtIdadeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['1' .. '9']) then
    Key:=#0;
end;

procedure TfrmPessoa.FormShow(Sender: TObject);
var
  sImg:TStream;
begin
  if not dmPrincipal.blbfldPessoaFOTO.IsNull then begin
    sImg := TStream.Create;
    try
      sImg := dmPrincipal.qryPessoa.CreateBlobStream(dmPrincipal.blbfldPessoaFOTO, bmRead);
      imgFoto.Picture.LoadFromStream(sImg);
    finally
      sImg.Free;
    end;
  end;
end;

end.
