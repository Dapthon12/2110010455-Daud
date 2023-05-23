unit Ulatihan2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormKondisional1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
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
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKondisional1: TFormKondisional1;

implementation

{$R *.dfm}

procedure TFormKondisional1.btn1Click(Sender: TObject);
var
  nil1, nil2, nil3, hasil : real ;
  b1, b2, b3 : real;
  grade :string;
begin
  //berfungsi untuk mengambil data nilai
  nil1 := strtofloat(edtnilai1.Text);
  nil2 := strtofloat(edtnilai2.Text);
  nil3 := strtofloat(edtnilai3.Text);

  //mengambil pesan data bobot
  b1 := strtofloat(edtbobot1.Text)/100;
  b2 := strtofloat(edtbobot2.Text)/100;
  b3 := strtofloat(edtbobot3.Text)/100;

  //menghitung nilai akhir
  hasil := nil1*b1 + nil2*b2 + nil3*b3 ;

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

  //Hasil dari proses....
  edttotal.Text := floattostr(hasil);
  edtgrade.Text := grade;
end;

procedure TFormKondisional1.btn2Click(Sender: TObject);
begin
  edtnilai1.Text := '0';
  edtnilai2.Text := '0';
  edtnilai3.Text := '0';
  edtbobot1.Text := '0';
  edtbobot2.Text := '0';
  edtbobot3.Text := '0';
  edttotal.Text := '';
  edtgrade.Text := '';
end;

procedure TFormKondisional1.btn3Click(Sender: TObject);
begin
Close;
end;

end.
