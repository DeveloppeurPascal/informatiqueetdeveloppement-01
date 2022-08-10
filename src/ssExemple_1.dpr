program ssExemple_1;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

uses
    Dialogs;

{$R *.RES}

{$E scr}

begin
  if (paramcount = 0) then
    ShowMessage ('Appelé sans paramètre')
  else if (paramcount = 1) then
    ShowMessage ('1 paramètre: "'+paramstr(1)+'"')
  else if (paramcount = 2) then
    ShowMessage ('2 paramètres: "'+paramstr(1)+'" et "'+paramstr(2)+'"')
  else
    ShowMessage ('Trop de paramètres');
  {endif}
end.
