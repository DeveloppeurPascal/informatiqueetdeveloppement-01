unit ssExemple_5_ss;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées}
  protected
    procedure CreateParams (var Params : TCreateParams); override;
  public
    { Déclarations publiques}
  end;

var
  Form4: TForm4;
  Fenetre_Parente : hWnd;

implementation

{$R *.DFM}

procedure TForm4.CreateParams (var Params : TCreateParams);
begin
  inherited CreateParams (Params);
  if (Fenetre_Parente <> 0)
  then
    begin
      Params.WndParent := Fenetre_Parente;
      EnableWindow (Fenetre_Parente, false);
    end;
  {endif}
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Fenetre_Parente <> 0)
  then
    begin
      EnableWindow (Fenetre_Parente, true);
      SetForegroundWindow (Fenetre_Parente);
    end;
  {endif}
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  Close;
end;

initialization
  Fenetre_Parente := GetForegroundWindow;
end.
