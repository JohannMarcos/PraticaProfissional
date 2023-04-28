object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 547
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 392
    Top = 280
    object MnCadastros: TMenuItem
      Caption = '&Cadastros'
      object SbmnPaises: TMenuItem
        Caption = '&Paises'
        OnClick = SbmnPaisesClick
      end
      object SbmnUF: TMenuItem
        Caption = '&Estados'
        OnClick = SbmnUFClick
      end
      object SbmnCidades: TMenuItem
        Caption = '&Cidades'
        OnClick = SbmnCidadesClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SbmnPessoas: TMenuItem
        Caption = 'P&essoas'
      end
      object SbmnProdutos: TMenuItem
        Caption = 'P&rodutos'
      end
      object SbmnServiços: TMenuItem
        Caption = '&Servi'#231'os'
      end
      object Servios1: TMenuItem
      end
    end
  end
end
