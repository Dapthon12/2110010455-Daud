object FormMainMenu: TFormMainMenu
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'MENU FORM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 72
    Top = 56
    object FILE1: TMenuItem
      Caption = 'FILE'
    end
    object LATIHAN1: TMenuItem
      Caption = 'LATIHAN'
      object LATIHAN11: TMenuItem
        Caption = 'Latihan 1'
        OnClick = LATIHAN11Click
      end
      object LATIHAN21: TMenuItem
        Caption = 'Latihan 2'
        OnClick = LATIHAN21Click
      end
      object KONDISIONAL11: TMenuItem
        Caption = 'Kondisional 1'
        OnClick = KONDISIONAL11Click
      end
      object KONDISIONAL21: TMenuItem
        Caption = 'Kondisional 2'
        OnClick = KONDISIONAL21Click
      end
      object GRAFIKSTRINGGRID1: TMenuItem
        Caption = 'Grafik Stringgrid'
        OnClick = GRAFIKSTRINGGRID1Click
      end
      object GRAFIKSTRINGGRIDREVISI: TMenuItem
        Caption = 'Grafik Stringgrid Revisi'
        OnClick = GRAFIKSTRINGGRIDREVISIClick
      end
      object TugasMandiri3: TMenuItem
        Caption = 'Tugas Mandiri 3'
        OnClick = TugasMandiri3Click
      end
      object TugasMandiri41: TMenuItem
        Caption = 'Tugas Mandiri 4'
        OnClick = TugasMandiri41Click
      end
    end
    object DATABASE1: TMenuItem
      Caption = 'DATABASE'
      OnClick = DATABASE1Click
    end
  end
end
