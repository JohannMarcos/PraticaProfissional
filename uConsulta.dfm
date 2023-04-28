object ConsultaPai: TConsultaPai
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 590
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtChave: TEdit
    Left = 16
    Top = 29
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object btnPesquisar: TButton
    Left = 352
    Top = 27
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 1
    OnClick = btnPesquisarClick
  end
  object DBGridPai: TDBGrid
    Left = 16
    Top = 64
    Width = 969
    Height = 465
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnSair: TButton
    Left = 910
    Top = 544
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
  object btnExcluir: TButton
    Left = 814
    Top = 544
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object btnAlterar: TButton
    Left = 718
    Top = 544
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 5
    OnClick = btnAlterarClick
  end
  object btnIncluir: TButton
    Left = 622
    Top = 544
    Width = 75
    Height = 25
    Caption = '&Incluir'
    TabOrder = 6
    OnClick = btnIncluirClick
  end
end
