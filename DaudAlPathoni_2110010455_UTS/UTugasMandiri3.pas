unit UTugasMandiri3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids;

type
  TFormTugasMandiri3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtnilai1: TEdit;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series1: TPieSeries;
    Button1: TButton;
    Button2: TButton;
    cbb2: TComboBox;
    Button3: TButton;
    edtnama: TEdit;
    procedure charadd;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTugasMandiri3: TFormTugasMandiri3;

implementation

{$R *.dfm}

{ TFormTugasMandiri3 }

procedure TFormTugasMandiri3.charadd;
var i:Integer;
begin
Chart1.Series[0].Clear; //membersihkan tampilan char
for i:=1 to StringGrid1.rowcount-1 do
begin
Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
end;
end;

procedure TFormTugasMandiri3.FormShow(Sender: TObject);
begin
StringGrid1.RowCount:=1;
StringGrid1.ColCount:=4;
StringGrid1.Cells[0,0]:='NO';
StringGrid1.Cells[1,0]:='NIM';
StringGrid1.Cells[2,0]:='NAMA MAHASISWA';
StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';

StringGrid1.ColWidths[0]:=20;
StringGrid1.ColWidths[1]:=70;
StringGrid1.ColWidths[2]:=100;
StringGrid1.ColWidths[3]:=100;
end;

procedure TFormTugasMandiri3.Button2Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -
1);
StringGrid1.Cells[1,StringGrid1.RowCount -1] := edtnilai1.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := edtnama.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := cbb2.Text;
charadd;//procedure
end;

procedure TFormTugasMandiri3.Button3Click(Sender: TObject);
var a,b:Integer;
begin
  a:=StringGrid1.Selection.Bottom - StringGrid1.Selection.Top+1;
  for b:=StringGrid1.Selection.Bottom +1 to StringGrid1.rowcount-1 do
  StringGrid1.Rows[b-a]:=StringGrid1.Rows[b];
  StringGrid1.RowCount:=StringGrid1.RowCount-1;
  charadd; //procedure
end;

procedure TFormTugasMandiri3.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount:= StringGrid1.RowCount-
MAX_PATH; //hapus isi data stringgrid all
charadd;
end;

end.
