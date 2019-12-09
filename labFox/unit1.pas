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
var
  xs1,xs2,ys1,ys2:integer;

begin
 with Image1.Canvas do begin
   Pen.Color := clWhite;
   Rectangle(0, 0, Image1.Width, Image1.Height);
   Pen.Color := clBlack;
   xs1:= 25;
   xs2:= 575;
   ys1:= Image1.Width-350;
   ys2:= Image1.Width-50;
   Brush.Color := clWhite;
   Arc(xs1,ys1,xs2,ys2,25,400,575,400);
   Brush.Color := clMaroon;
   Polygon([Point(25,400),Point(75,200),Point(75,25),Point(225,125),Point(350,125),Point(525,25),Point(525,200),Point(575,400),Point(500,375),Point(375,425),Point(375,375),Point(225,375),Point(225,425),Point(100,375)]);
   Brush.Color := clBlack;
   Polygon([Point(275,375),Point(325,375),Point(325,400),Point(300,425),Point(275,400)]);
   MoveTo(300,425);
   LineTo(300,450);
   LineTo(325,475);
   MoveTo(300,450);
   LineTo(275,475);

   Ellipse(175,275,250,325);
   Ellipse(350,325,425,275);
   Brush.Color := clWhite;
   Ellipse(200,275,225,300);
   Ellipse(375,275,400,300);
   Brush.Color := clCream;
   Polygon([Point(100,200),Point(100,50),Point(225,150)]);
   Polygon([Point(375,150),Point(500,50),Point(500,200)]);

   MoveTo(350,400);
   LineTo(475,350);
   MoveTo(350,415);
   LineTo(475,415);
   MoveTo(350,425);
   LineTo(475,475);

   MoveTo(250,400);
   LineTo(125,350);
   MoveTo(250,415);
   LineTo(125,415);
   MoveTo(250,425);
   LineTo(125,475);


 end;
end;

end.

