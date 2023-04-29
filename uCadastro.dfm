object CadastroPai: TCadastroPai
  Left = 0
  Top = 0
  Caption = 'CadastroPai'
  ClientHeight = 537
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 24
    Top = 24
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object lblDatUltAlt: TLabel
    Left = 746
    Top = 70
    Width = 123
    Height = 13
    Caption = 'Data da '#218'ltima Altera'#231#227'o:'
  end
  object lblDatCad: TLabel
    Left = 746
    Top = 24
    Width = 90
    Height = 13
    Caption = 'Data Do Cadastro:'
  end
  object lblUserAlt: TLabel
    Left = 746
    Top = 116
    Width = 70
    Height = 13
    Caption = 'Quem Alterou:'
  end
  object edtCodigo: TEdit
    Left = 24
    Top = 43
    Width = 65
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
    Text = '0'
  end
  object btnSalvar: TButton
    Left = 696
    Top = 496
    Width = 75
    Height = 25
    Caption = 'S&alvar'
    TabOrder = 1
    OnClick = btnSalvarClick
  end
  object btnSair: TButton
    Left = 792
    Top = 496
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
    OnClick = btnSairClick
  end
  object edtDatCad: TEdit
    Left = 746
    Top = 43
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object edtDatUltAlt: TEdit
    Left = 746
    Top = 89
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object edtUserAlt: TEdit
    Left = 746
    Top = 135
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = '0'
  end
end
