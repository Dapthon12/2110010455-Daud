object FormKondisional1: TFormKondisional1
  Left = 469
  Top = 181
  Width = 408
  Height = 312
  Caption = 'Latihan Kondisional 1'
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
  object lbl1: TLabel
    Left = 40
    Top = 120
    Width = 41
    Height = 13
    Caption = 'NILAI 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 152
    Width = 41
    Height = 13
    Caption = 'NILAI 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 184
    Width = 41
    Height = 13
    Caption = 'NILAI 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 232
    Top = 120
    Width = 36
    Height = 13
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 232
    Top = 152
    Width = 38
    Height = 13
    Caption = 'GRADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 40
    Top = 16
    Width = 289
    Height = 41
    Caption = 'Contoh Kondisional'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 96
    Top = 88
    Width = 65
    Height = 25
    Caption = 'Nilai'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object pnl3: TPanel
    Left = 168
    Top = 88
    Width = 57
    Height = 25
    Caption = 'Bobot'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object edtnilai1: TEdit
    Left = 96
    Top = 120
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object edtnilai2: TEdit
    Left = 96
    Top = 152
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object edtnilai3: TEdit
    Left = 96
    Top = 184
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object edtbobot1: TEdit
    Left = 168
    Top = 120
    Width = 57
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object edtbobot2: TEdit
    Left = 168
    Top = 152
    Width = 57
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object edtbobot3: TEdit
    Left = 168
    Top = 184
    Width = 57
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object edttotal: TEdit
    Left = 280
    Top = 120
    Width = 57
    Height = 21
    TabOrder = 9
    Text = '0'
  end
  object edtgrade: TEdit
    Left = 280
    Top = 152
    Width = 57
    Height = 21
    TabOrder = 10
    Text = '0'
  end
  object btn1: TButton
    Left = 96
    Top = 216
    Width = 65
    Height = 25
    Caption = 'Hitung'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 168
    Top = 216
    Width = 57
    Height = 25
    Caption = 'Hapus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 264
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Keluar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = btn3Click
  end
end
