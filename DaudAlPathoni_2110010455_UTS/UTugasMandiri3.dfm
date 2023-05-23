object FormTugasMandiri3: TFormTugasMandiri3
  Left = 302
  Top = 124
  Width = 709
  Height = 500
  Caption = 'Tugas Mandiri 3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 19
    Height = 13
    Caption = 'NIM'
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 94
    Height = 13
    Caption = 'NAMA MAHASISWA'
  end
  object Label3: TLabel
    Left = 32
    Top = 88
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object edtnilai1: TEdit
    Left = 144
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object StringGrid1: TStringGrid
    Left = 320
    Top = 24
    Width = 320
    Height = 120
    TabOrder = 1
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object Chart1: TChart
    Left = 24
    Top = 160
    Width = 649
    Height = 281
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
    TabOrder = 2
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
  object Button1: TButton
    Left = 224
    Top = 120
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 120
    Width = 75
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
    Left = 136
    Top = 120
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 6
    OnClick = Button3Click
  end
  object edtnama: TEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 7
  end
end
