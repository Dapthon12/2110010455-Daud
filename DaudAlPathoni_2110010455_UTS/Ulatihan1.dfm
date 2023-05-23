object FormLatihan1: TFormLatihan1
  Left = 454
  Top = 173
  Width = 385
  Height = 205
  Caption = 'Latihan Kalkulator 1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object Label3: TLabel
    Left = 32
    Top = 112
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object edt1: TEdit
    Left = 104
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edt2: TEdit
    Left = 104
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object edthasil: TEdit
    Left = 104
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Button1: TButton
    Left = 264
    Top = 32
    Width = 75
    Height = 41
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 88
    Width = 75
    Height = 41
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = Button2Click
  end
end
