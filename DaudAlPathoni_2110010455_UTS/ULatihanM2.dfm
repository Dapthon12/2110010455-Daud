object FormKondisional2: TFormKondisional2
  Left = 192
  Top = 125
  Width = 422
  Height = 377
  Caption = 'Latihan Kondisional 2'
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
    Left = 16
    Top = 120
    Width = 99
    Height = 13
    Caption = 'NILAI KEHADIRAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 152
    Width = 72
    Height = 13
    Caption = 'NILAI TUGAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 16
    Top = 184
    Width = 56
    Height = 13
    Caption = 'NILAI UTS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 264
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
    Left = 264
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
  object lbl6: TLabel
    Left = 16
    Top = 216
    Width = 78
    Height = 13
    Caption = 'NILAI HARIAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 16
    Top = 248
    Width = 57
    Height = 13
    Caption = 'NILAI UAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 264
    Top = 184
    Width = 23
    Height = 13
    Caption = 'KET.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 16
    Top = 16
    Width = 369
    Height = 41
    Caption = 'CEK NILAI BOBOT SISWA'
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 120
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
    Left = 192
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
    Left = 120
    Top = 120
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object edtnilai2: TEdit
    Left = 120
    Top = 152
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object edtnilai3: TEdit
    Left = 120
    Top = 184
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object edtbobot1: TEdit
    Left = 192
    Top = 120
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 6
    Text = '15'
  end
  object edtbobot2: TEdit
    Left = 192
    Top = 152
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 7
    Text = '25'
  end
  object edtbobot3: TEdit
    Left = 192
    Top = 184
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 8
    Text = '20'
  end
  object edttotal: TEdit
    Left = 312
    Top = 120
    Width = 57
    Height = 21
    TabOrder = 9
    Text = '0'
  end
  object edtgrade: TEdit
    Left = 312
    Top = 152
    Width = 57
    Height = 21
    TabOrder = 10
    Text = '0'
  end
  object btn1: TButton
    Left = 120
    Top = 280
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
    Left = 192
    Top = 280
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
    Left = 288
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
  object edtharian: TEdit
    Left = 120
    Top = 216
    Width = 65
    Height = 21
    TabOrder = 14
    Text = '0'
  end
  object edtbobot4: TEdit
    Left = 192
    Top = 216
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 15
    Text = '10'
  end
  object edtuas: TEdit
    Left = 120
    Top = 248
    Width = 65
    Height = 21
    TabOrder = 16
    Text = '0'
  end
  object edtbobot5: TEdit
    Left = 192
    Top = 248
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 17
    Text = '30'
  end
  object edtket: TEdit
    Left = 312
    Top = 184
    Width = 73
    Height = 21
    TabOrder = 18
    Text = '0'
  end
end
