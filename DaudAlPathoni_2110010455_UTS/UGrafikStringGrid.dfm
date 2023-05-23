object FormGrafikStringGrid: TFormGrafikStringGrid
  Left = 329
  Top = 115
  Width = 708
  Height = 502
  Caption = 'Grafik String Grid'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object Label3: TLabel
    Left = 32
    Top = 88
    Width = 50
    Height = 13
    Caption = 'FAKULTAS'
  end
  object cbb1: TComboBox
    Left = 144
    Top = 24
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = '0'
  end
  object edtnilai1: TEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object StringGrid1: TStringGrid
    Left = 320
    Top = 24
    Width = 320
    Height = 120
    TabOrder = 2
  end
  object Chart1: TChart
    Left = 16
    Top = 154
    Width = 657
    Height = 297
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 3
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object Button2: TButton
    Left = 48
    Top = 120
    Width = 105
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 4
    OnClick = Button2Click
  end
  object cbb2: TComboBox
    Left = 144
    Top = 88
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = '0'
  end
  object Button3: TButton
    Left = 200
    Top = 120
    Width = 91
    Height = 25
    Caption = 'VIEW GRAFIK'
    TabOrder = 6
    OnClick = Button3Click
  end
end
