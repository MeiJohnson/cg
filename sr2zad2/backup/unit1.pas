unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
{ TForm1 }
procedure TForm1.Button1Click(Sender: TObject);
var  x,xi,y,yi:integer;
begin
x := 10;
y := 60;
xi := 10;
yi := 10;
Image1.Canvas.pen.Color := clWhite;
Image1.Canvas.Rectangle(0, 0, Image1.Width, Image1.Height);
Image1.Canvas.pen.Color := clGreen;

while(xi <= 60) do
begin
   Image1.Canvas.MoveTo(x*2,y*2);
   Image1.Canvas.LineTo(xi*2,yi*2);
   xi := xi + 2;
   y := y - 2;

end;
end;
end.

