unit Uviewjadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ADODB, StdCtrls, Buttons, TeEngine,
  Series, ExtCtrls, TeeProcs, Chart, Grids, DBGrids;

type
  TFormDatabaseLatihan = class(TForm)
    dbgrd1: TDBGrid;
    cht1: TChart;
    Series1: TBarSeries;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    con1: TADOConnection;
    ds1: TDataSource;
    qry1: TADOQuery;
    qry2: TADOQuery;
    frxDBjadwal: TfrxDBDataset;
    frxjadwal: TfrxReport;
    frxdetailjadwal: TfrxReport;
    frxDBdetailjadwal: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure frxjadwalClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDatabaseLatihan: TFormDatabaseLatihan;

implementation

uses Utmbhjadwal;

{$R *.dfm}

procedure TFormDatabaseLatihan.FormShow(Sender: TObject);
begin
dbgrd1.Columns[0].Width:=20;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=80;
cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM');
end;

procedure TFormDatabaseLatihan.BitBtn1Click(Sender: TObject);
var i : Integer;
begin
qry2.SQL.Clear;
qry2.SQL.Add('select count(no)as jumlah_kelas,sum(total_kehadiran)as total_siswa,kelas as nama_kelas from jadwal group by kelas');
qry2.Open;
cht1.Series[0].Clear;  //clear grafik
for i:=1 to qry2.RecordCount do
begin
  cht1.Series[0].Add(StrToInt(qry2.fieldbyname('total_siswa').AsString),qry2.fieldbyname('nama_kelas').AsString);
  qry2.Next;
end;

end;

procedure TFormDatabaseLatihan.BitBtn2Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select * from jadwal');
qry1.Open;

dbgrd1.Columns[0].Width:=20;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=80;
end;

procedure TFormDatabaseLatihan.BitBtn4Click(Sender: TObject);
begin
 FormTambahData.ShowModal;
end;

procedure TFormDatabaseLatihan.BitBtn3Click(Sender: TObject);
begin
frxjadwal.ShowReport();
end;

procedure TFormDatabaseLatihan.frxjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.Name ='Memo7' then
  begin
    qry2.SQL.Clear;
    qry2.SQL.Add('select * from jadwal where kelas="'+View.TagStr+'"');
    qry2.Open;

    frxdetailjadwal.ShowReport();
  end;
end;

end.
