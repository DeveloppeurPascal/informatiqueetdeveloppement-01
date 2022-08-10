program ssExemple_5;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

uses
  Forms,
  SysUtils,
  Windows,
  ssExemple_5_ss in 'ssExemple_5_ss.pas' {Form4};

{$E scr}

{$R *.RES}

begin
  if (UpperCase (Copy (ParamStr (1), 2, 1)) = 'C')
  then
    begin
      Application.Initialize;
      Application.CreateForm(TForm4, Form4);
      Application.Run;
    end;
  {endif}
end.
