unit Utmbhjadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  TFormTambahData = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    dbgrd1: TDBGrid;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTambahData: TFormTambahData;
  upd: string;

implementation
uses Uviewjadwal;

{$R *.dfm}

{ TFormTambahData }

procedure TFormTambahData.bersih;
begin
edt1.Text :='00:00';
edt2.Text :='00:00';
cbb1.Text :='---PILIH HARI---';
edt3.Text :='-';
edt4.Text :='-';
edt5.Text :='-';
edt6.Text :='0';

FormDatabaseLatihan.qry1.SQL.Clear;
FormDatabaseLatihan.qry1.SQL.Add('select * from jadwal');
FormDatabaseLatihan.qry1.Open;
dbgrd1.Columns[0].Width:=20;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=80;
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
end;

procedure TFormTambahData.btn1Click(Sender: TObject);
var a: Integer;
begin
  if (edt1.Text='') or (edt1.Text='00:00') or (edt2.Text='') or (edt2.Text='00:00')then
  begin
    ShowMessage('JAM BELUM DIISI DENGAN BENAR');
  end else
  if (cbb1.Text='') or (cbb1.Text='---PILIH HARI---') then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (edt3.Text='') or (edt3.Text='-') or (edt4.Text='') or (edt4.Text='-') then
  begin
    ShowMessage('RUANGAN ATAU MATAKULIAH BELUM DIISI DENGAN BENAR');
  end else
  if (edt5.Text='') or (edt5.Text='-') or (edt6.Text='') or (edt6.Text='0') then
  begin
    ShowMessage('KELAS ATAU TOTAL HADIR BELUM DIISI DENGAN BENAR');
  end else
  if (FormDatabaseLatihan.qry1.Locate('hari',cbb1.Text,[])) and (FormDatabaseLatihan.qry1.Locate('jam_awal',edt1.Text,[])) then //validasi membandingkan data inputan dengan data di tabel
  begin
    ShowMessage('DATA SUDAH ADA DIDALAM SISTEM');
    edt1.SetFocus;
  end else
  begin //kode simpan
    a:=FormDatabaseLatihan.qry1.RecordCount+1;
  with FormDatabaseLatihan.qry1 do  //kode simpan
  begin
    SQL.Clear;
    SQL.Add('insert into jadwal values("'+inttostr(a)+'","'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'")');
    ExecSQL;

    bersih; //procedure bersih
    ShowMessage('DATA BERHASIL DI SIMPAN');
  end;
  end;

end;

procedure TFormTambahData.dbgrd1CellClick(Column: TColumn);
begin
try
  upd:= FormDatabaseLatihan.qry1.Fields[0].AsString;
  edt1.Text:= FormDatabaseLatihan.qry1.Fields[1].AsString;
  edt2.Text:= FormDatabaseLatihan.qry1.Fields[2].AsString;
  cbb1.Text:= FormDatabaseLatihan.qry1.Fields[3].AsString;
  dtp1.Date:= FormDatabaseLatihan.qry1.Fields[4].AsDateTime;
  edt3.Text:= FormDatabaseLatihan.qry1.Fields[5].AsString;
  edt4.Text:= FormDatabaseLatihan.qry1.Fields[6].AsString;
  edt5.Text:= FormDatabaseLatihan.qry1.Fields[7].AsString;
  edt6.Text:= FormDatabaseLatihan.qry1.Fields[8].AsString;
  btn1.Enabled:=False;
  btn2.Enabled:=True;
  btn3.Enabled:=True;
except
  //kosong
end;
end;

procedure TFormTambahData.FormShow(Sender: TObject);
begin
bersih;
end;

procedure TFormTambahData.btn2Click(Sender: TObject);
begin
  if (edt1.Text='') or (edt1.Text='00:00') or (edt2.Text='') or (edt2.Text='00:00')then
  begin
    ShowMessage('JAM BELUM DIISI DENGAN BENAR');
  end else
  if (cbb1.Text='') or (cbb1.Text='---PILIH HARI---') then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (edt3.Text='') or (edt3.Text='-') or (edt4.Text='') or (edt4.Text='-') then
  begin
    ShowMessage('RUANGAN ATAU MATAKULIAH BELUM DIISI DENGAN BENAR');
  end else
  if (edt5.Text='') or (edt5.Text='-') or (edt6.Text='') or (edt6.Text='0') then
  begin
    ShowMessage('KELAS ATAU TOTAL HADIR BELUM DIISI DENGAN BENAR');
  end else
  if (edt1.Text= FormDatabaseLatihan.qry1.Fields[1].AsString) and (edt2.Text= FormDatabaseLatihan.qry1.Fields[2].AsString)
  and (cbb1.Text= FormDatabaseLatihan.qry1.Fields[3].AsString) and (dtp1.Date= FormDatabaseLatihan.qry1.Fields[4].AsDateTime)
  and (edt3.Text= FormDatabaseLatihan.qry1.Fields[5].AsString) and (edt4.Text= FormDatabaseLatihan.qry1.Fields[6].AsString)
  and (edt5.Text= FormDatabaseLatihan.qry1.Fields[6].AsString) and (edt6.Text= FormDatabaseLatihan.qry1.Fields[8].AsString) then //perbandingan dari inputan dari tabel
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
  end else
  begin
    //Kode update
    with FormDatabaseLatihan.qry1 do
    begin
      SQL.Clear;
      SQL.Add('update jadwal set jam_awal="'+edt1.Text+'",jam_akhir="'+edt2.Text+'", hari="'+cbb1.Text+'", tanggal="'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'", ruangan="'+edt3.Text+'", matkul="'+edt4.Text+'", kelas="'+edt5.Text+'", total_kehadiran="'+edt6.Text+'" where id="'+upd+'"');
      ExecSQL;

      bersih; //procedure bersih
      ShowMessage('DATA BERHASIL DI UPDATE');
    end;
  end;
end;

procedure TFormTambahData.btn3Click(Sender: TObject);
begin
  if (edt1.Text='') or (edt1.Text='00:00') or (edt2.Text='') or (edt2.Text='00:00')then
  begin
    ShowMessage('JAM BELUM DIISI DENGAN BENAR');
  end else
  if (cbb1.Text='') or (cbb1.Text='---PILIH HARI---') then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (edt3.Text='') or (edt3.Text='-') or (edt4.Text='') or (edt4.Text='-') then
  begin
    ShowMessage('RUANGAN ATAU MATAKULIAH BELUM DIISI DENGAN BENAR');
  end else
  if (edt5.Text='') or (edt5.Text='-') or (edt6.Text='') or (edt6.Text='0') then
  begin
    ShowMessage('KELAS ATAU TOTAL HADIR BELUM DIISI DENGAN BENAR');
  end else
  begin
    // Kode delete
    if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)=mryes then
    begin
      with FormDatabaseLatihan.qry1 do
      begin
        SQL.Clear;
        SQL.Add('delete from jadwal where id="'+upd+'"');
        ExecSQL;

        bersih; //procedure bersih
        ShowMessage('DATA BERHASIL DI HAPUS');
      end;
    end else
    begin
      ShowMessage('DATA BATAL DIHAPUS!');
    end;
  end;
end;

procedure TFormTambahData.btn4Click(Sender: TObject);
begin
bersih;
end;

end.
