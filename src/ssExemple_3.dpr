program ssExemple_3;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

uses
  Forms,
  SysUtils,
  ssExemple_3_ss in 'ssExemple_3_ss.pas' {Form2};

{$E scr}

{$R *.RES}

begin
  if (copy (UpperCase (ParamStr (1)), 2, 1) = 'S')
  then
    begin
      Application.Initialize;
      Application.CreateForm(TForm2, Form2);
      Application.Run;
    end;
  {endif}
end.
