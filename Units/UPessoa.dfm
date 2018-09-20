object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Pessoa'
  ClientHeight = 180
  ClientWidth = 394
  Color = clBtnFace
  Constraints.MaxHeight = 219
  Constraints.MaxWidth = 410
  Constraints.MinHeight = 219
  Constraints.MinWidth = 410
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblID: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object lblNome: TLabel
    Left = 8
    Top = 54
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lblIdade: TLabel
    Left = 8
    Top = 100
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object lblSobrenome: TLabel
    Left = 152
    Top = 54
    Width = 54
    Height = 13
    Caption = 'Sobrenome'
  end
  object imgFoto: TImage
    Left = 279
    Top = 27
    Width = 105
    Height = 105
    Stretch = True
  end
  object lblFoto: TLabel
    Left = 279
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Foto'
  end
  object edtID: TDBEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 21
    DataField = 'ID'
    DataSource = dmPrincipal.dsPessoa
    Enabled = False
    TabOrder = 0
  end
  object edtNome: TDBEdit
    Left = 8
    Top = 73
    Width = 121
    Height = 21
    DataField = 'NOME'
    DataSource = dmPrincipal.dsPessoa
    Enabled = False
    TabOrder = 1
  end
  object edtIdade: TDBEdit
    Left = 8
    Top = 119
    Width = 121
    Height = 21
    DataField = 'IDADE'
    DataSource = dmPrincipal.dsPessoa
    Enabled = False
    TabOrder = 3
    OnKeyPress = edtIdadeKeyPress
  end
  object edtSobrenome: TDBEdit
    Left = 152
    Top = 73
    Width = 121
    Height = 21
    DataField = 'SOBRENOME'
    DataSource = dmPrincipal.dsPessoa
    Enabled = False
    TabOrder = 2
  end
  object dbnvgr1: TDBNavigator
    Left = 8
    Top = 146
    Width = 261
    Height = 25
    DataSource = dmPrincipal.dsPessoa
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 4
    OnClick = dbnvgr1Click
  end
  object btnSalvar: TButton
    Left = 279
    Top = 138
    Width = 107
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.png;*.jpg;*.jpeg;*.jpg;*.jpeg;*.gif;*.png;*.ico;*.e' +
      'mf;*.wmf;*.tif;*.tiff)|*.gif;*.png;*.jpg;*.jpeg;*.jpg;*.jpeg;*.g' +
      'if;*.png;*.ico;*.emf;*.wmf;*.tif;*.tiff|GIF Image (*.gif)|*.gif|' +
      'Portable Network Graphics (*.png)|*.png|JPEG Image File (*.jpg)|' +
      '*.jpg|JPEG Image File (*.jpeg)|*.jpeg|JPEG Images (*.jpg)|*.jpg|' +
      'JPEG Images (*.jpeg)|*.jpeg|GIF Images (*.gif)|*.gif|PNG Images ' +
      '(*.png)|*.png|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.e' +
      'mf|Metafiles (*.wmf)|*.wmf|TIFF Images (*.tif)|*.tif|TIFF Images' +
      ' (*.tiff)|*.tiff'
    Left = 192
    Top = 104
  end
end
