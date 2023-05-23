program ProgramLatihan;

uses
  Forms,
  Umainmenu in 'Umainmenu.pas' {FormMainMenu},
  Ulatihan1 in 'Ulatihan1.pas' {FormLatihan1},
  Ulatihan2 in 'Ulatihan2.pas' {FormKondisional1},
  ULatihanM1 in 'ULatihanM1.pas' {FormLatihanM1},
  ULatihanM2 in 'ULatihanM2.pas' {FormKondisional2},
  Ulatihanstringgrid in 'Ulatihanstringgrid.pas' {FormStringGrid},
  UTugasMandiri3 in 'UTugasMandiri3.pas' {FormTugasMandiri3},
  UTugasMandiri4 in 'UTugasMandiri4.pas' {FormTugasMandiri4},
  UGrafikStringGrid in 'UGrafikStringGrid.pas' {FormGrafikStringGrid},
  UGrafikStringGridRevisi in 'UGrafikStringGridRevisi.pas' {FormGrafikStringGridRevisi},
  Uviewjadwal in 'Uviewjadwal.pas' {FormDatabaseLatihan},
  Utmbhjadwal in 'Utmbhjadwal.pas' {FormTambahData};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMainMenu, FormMainMenu);
  Application.CreateForm(TFormLatihan1, FormLatihan1);
  Application.CreateForm(TFormKondisional1, FormKondisional1);
  Application.CreateForm(TFormLatihanM1, FormLatihanM1);
  Application.CreateForm(TFormKondisional2, FormKondisional2);
  Application.CreateForm(TFormStringGrid, FormStringGrid);
  Application.CreateForm(TFormTugasMandiri3, FormTugasMandiri3);
  Application.CreateForm(TFormTugasMandiri4, FormTugasMandiri4);
  Application.CreateForm(TFormGrafikStringGrid, FormGrafikStringGrid);
  Application.CreateForm(TFormGrafikStringGridRevisi, FormGrafikStringGridRevisi);
  Application.CreateForm(TFormDatabaseLatihan, FormDatabaseLatihan);
  Application.CreateForm(TFormTambahData, FormTambahData);
  Application.Run;
end.
