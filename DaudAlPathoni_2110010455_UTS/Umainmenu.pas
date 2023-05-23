unit Umainmenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFormMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    LATIHAN1: TMenuItem;
    LATIHAN11: TMenuItem;
    LATIHAN21: TMenuItem;
    KONDISIONAL11: TMenuItem;
    KONDISIONAL21: TMenuItem;
    GRAFIKSTRINGGRID1: TMenuItem;
    GRAFIKSTRINGGRIDREVISI: TMenuItem;
    DATABASE1: TMenuItem;
    TugasMandiri3: TMenuItem;
    TugasMandiri41: TMenuItem;
    procedure LATIHAN11Click(Sender: TObject);
    procedure KONDISIONAL11Click(Sender: TObject);
    procedure LATIHAN21Click(Sender: TObject);
    procedure KONDISIONAL21Click(Sender: TObject);
    procedure LATIHAN2Click(Sender: TObject);
    procedure TugasMandiri3Click(Sender: TObject);
    procedure TugasMandiri41Click(Sender: TObject);
    procedure GRAFIKSTRINGGRID1Click(Sender: TObject);
    procedure GRAFIKSTRINGGRIDREVISIClick(Sender: TObject);
    procedure DATABASE1Click(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainMenu: TFormMainMenu;

implementation

uses Ulatihan1, Ulatihan2, ULatihanM1, ULatihanM2, Ulatihanstringgrid,
  UTugasMandiri3, UTugasMandiri4, UGrafikStringGrid,
  UGrafikStringGridRevisi, Uviewjadwal;

{$R *.dfm}

procedure TFormMainMenu.LATIHAN11Click(Sender: TObject);
begin
  FormLatihan1.ShowModal;
end;

procedure TFormMainMenu.KONDISIONAL11Click(Sender: TObject);
begin
 FormKondisional1.ShowModal;
end;

procedure TFormMainMenu.LATIHAN21Click(Sender: TObject);
begin
  FormLatihanM1.ShowModal;
end;

procedure TFormMainMenu.KONDISIONAL21Click(Sender: TObject);
begin
 FormKondisional2.ShowModal;
end;

procedure TFormMainMenu.LATIHAN2Click(Sender: TObject);
begin
 FormStringGrid.ShowModal;
end;

procedure TFormMainMenu.TugasMandiri3Click(Sender: TObject);
begin
 FormTugasMandiri3.ShowModal;
end;

procedure TFormMainMenu.TugasMandiri41Click(Sender: TObject);
begin
 FormTugasMandiri4.ShowModal;
end;

procedure TFormMainMenu.GRAFIKSTRINGGRID1Click(Sender: TObject);
begin
 FormGrafikStringGrid.ShowModal;
end;

procedure TFormMainMenu.GRAFIKSTRINGGRIDREVISIClick(Sender: TObject);
begin
 FormGrafikStringGridRevisi.ShowModal;
end;

procedure TFormMainMenu.DATABASE1Click(Sender: TObject);
begin
 FormDatabaseLatihan.ShowModal;
end;

end.
