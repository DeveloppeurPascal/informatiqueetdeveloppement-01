unit ssExemple_3_ss;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Déclarations privées}
  protected
    DeplacementSouris : integer;
    procedure Arret_Economiseur;
    procedure WMSysCommand (var msg : TWMSysCommand); message WM_SYSCOMMAND;
  public
    { Déclarations publiques}
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  FormStyle := fsStayOntop;
  WindowState := wsMaximized;
  ShowCursor (False);
  DeplacementSouris := 5;

  randomize;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ShowCursor (True);
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Canvas.MoveTo (Random (ClientWidth), Random (ClientHeight));
  Canvas.LineTo (Random (ClientWidth), Random (ClientHeight));
end;

procedure TForm2.Arret_Economiseur;
begin
  Close;
end;

procedure TForm2.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (DeplacementSouris = 0)
  then
    Arret_Economiseur
  else
    Dec (DeplacementSouris);
  {endif}
end;

procedure TForm2.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Arret_Economiseur;
end;

procedure TForm2.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  Arret_Economiseur;
end;

procedure TForm2.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Arret_Economiseur;
end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Arret_Economiseur;
end;

procedure TForm2.WMSysCommand (var msg : TWMSysCommand);
begin
  if (msg.cmdType = SC_SCREENSAVE)
  then
    msg.Result := 1
  else
    inherited;
  {endif}
end;

end.

