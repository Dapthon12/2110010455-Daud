unit ULatihanM2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormKondisional2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    edtnilai1: TEdit;
    edtnilai2: TEdit;
    edtnilai3: TEdit;
    edtbobot1: TEdit;
    edtbobot2: TEdit;
    edtbobot3: TEdit;
    edttotal: TEdit;
    edtgrade: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edtharian: TEdit;
    edtbobot4: TEdit;
    edtuas: TEdit;
    edtbobot5: TEdit;
    edtket: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKondisional2: TFormKondisional2;

implementation

{$R *.dfm}

procedure TFormKondisional2.btn1Click(Sender: TObject);
var
  nil1, nil2, nil3, nil4, nil5, hasil : real ;
  b1, b2, b3, b4, b5 : real;
  grade, ket :string;
begin
  //berfungsi untuk mengambil data nilai
  nil1 := Strtofloat(edtnilai1.Text);
  nil2 := Strtofloat(edtnilai2.Text);
  nil3 := Strtofloat(edtnilai3.Text);
  nil4 := StrToFloat(edtharian.Text);
  nil5 := StrToFloat(edtuas.Text);

  //mengambil pesan data bobot
  b1 := Strtofloat(edtbobot1.Text)/100;
  b2 := Strtofloat(edtbobot2.Text)/100;
  b3 := Strtofloat(edtbobot3.Text)/100;
  b4 := Strtofloat(edtbobot4.Text)/100;
  b5 := Strtofloat(edtbobot5.Text)/100;

  //menghitung nilai akhir
  hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;

  //menentukan grade nilai
  if (hasil >= 80) then
  grade:='A'
  else
  if (hasil >= 70) then
  grade :='B'
  else
  if (hasil >= 60) then
  grade := 'C'
  else
  if (hasil >= 50) then
  grade :='D'
  else
  grade :='E';

  //Menentukan keterangan hasil
  if ((grade = 'A')or(grade='B')or(grade='C')) then
  ket:='LULUS'
  else
  ket:='TIDAK LULUS';

  //Hasil dari proses....
  edttotal.Text := floattostr(hasil);
  edtgrade.Text := grade;
  edtket.Text := ket;
end;

procedure TFormKondisional2.btn2Click(Sender: TObject);
begin
  edtnilai1.Text := '0';
  edtnilai2.Text := '0';
  edtnilai3.Text := '0';
  edtharian.Text := '0';
  edtuas.Text := '0';
  edttotal.Text := '';
  edtgrade.Text := '';
  edtket.Text := '-';
end;

procedure TFormKondisional2.btn3Click(Sender: TObject);
begin
Close;
end;

end.
