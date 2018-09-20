object frmPrincipal: TfrmPrincipal
  Left = 194
  Top = 111
  BorderIcons = [biSystemMenu]
  Caption = 'VM-Teste'
  ClientHeight = 243
  ClientWidth = 360
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 160
    Top = 88
    object CadastrodePessoa1: TMenuItem
      Caption = 'Cadastro de Pessoa'
      OnClick = CadastrodePessoa1Click
    end
    object CarregaBancodeDados1: TMenuItem
      Caption = 'Carregar Banco de Dados'
      OnClick = CarregaBancodeDados1Click
    end
  end
  object dlgOpen1: TOpenDialog
    Filter = 'Firebird DataBase(*.fb;*.fdb)|*.fb;*.fdb'
    Left = 248
    Top = 136
  end
end
