program ssExemple_1;
// Economiseurs d'�crans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Pr�martin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

uses
    Dialogs;

{$R *.RES}

{$E scr}

begin
  if (paramcount = 0) then
    ShowMessage ('Appel� sans param�tre')
  else if (paramcount = 1) then
    ShowMessage ('1 param�tre: "'+paramstr(1)+'"')
  else if (paramcount = 2) then
    ShowMessage ('2 param�tres: "'+paramstr(1)+'" et "'+paramstr(2)+'"')
  else
    ShowMessage ('Trop de param�tres');
  {endif}
end.
