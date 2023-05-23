unit Ulatihanstringgrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids,
  StdCtrls;

type
  TFormStringGrid = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    cbb1: TComboBox;
    edt1: TEdit;
    btn1: TButton;
    strngrd1: TStringGrid;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStringGrid: TFormStringGrid;

implementation

{$R *.dfm}

procedure TFormStringGrid.FormCreate(Sender: TObject);
begin
  strngrd1.Cells[0,0]:='JENIS PENYAKIT';
  strngrd1.Cells[0,1]:='COVID 19';
  strngrd1.Cells[0,2]:='FLU BIASA';
  strngrd1.Cells[0,3]:='DEMAM';
  strngrd1.Cells[0,4]:='RINDU';
  strngrd1.Cells[1,0]:='JUMLAH';
  cht1.Title.Text.add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure TFormStringGrid.btn1Click(Sender: TObject);
begin
  strngrd1.Cells[1,cbb1.ItemIndex+1]:=edt1.Text;
end;

procedure TFormStringGrid.btn4Click(Sender: TObject);
begin
Close;
end;

procedure TFormStringGrid.btn2Click(Sender: TObject);
var i: Integer;
begin
for i:=1 to strngrd1.rowcount-1 do
cht1.Series[0].Add(StrToFloat(strngrd1.Cells[1,i]),strngrd1.Cells[0,i]);
end;

end.
