inherited CadastroPaises: TCadastroPaises
  Caption = 'Cadastro de Pa'#237'ses'
  PixelsPerInch = 96
  TextHeight = 13
  object lblPais: TLabel [4]
    Left = 26
    Top = 70
    Width = 64
    Height = 13
    Caption = 'Nome do Pa'#237's'
  end
  object lblDDI: TLabel [5]
    Left = 496
    Top = 70
    Width = 18
    Height = 13
    Caption = 'DDI'
  end
  object lblSigla: TLabel [6]
    Left = 584
    Top = 70
    Width = 22
    Height = 13
    Caption = 'Sigla'
  end
  object edtPais: TEdit
    Left = 26
    Top = 89
    Width = 447
    Height = 21
    OEMConvert = True
    TabOrder = 6
  end
  object edtDDI: TEdit
    Left = 496
    Top = 89
    Width = 65
    Height = 21
    TabOrder = 7
  end
  object edtSigla: TEdit
    Left = 584
    Top = 89
    Width = 57
    Height = 21
    TabOrder = 8
  end
end
