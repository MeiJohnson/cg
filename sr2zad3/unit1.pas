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
 h,w,x,xi,x3,x4,y,yi,y3,y4,radius,xs,ys,dx1,dx2,dy1,dy2: integer;
 a,ai,p,p1,p2,angle: real;
 colour: TColor;

begin
 Image1.Canvas.pen.Color := clWhite;
 Image1.Canvas.Rectangle(0, 0, Image1.Width, Image1.Height);
 Image1.Canvas.pen.Color := clBlack;

 w:=Image1.Width;
 h:=Image1.Height;
 a:=pi/15;
 radius:=round(w/10+w/8);
 xs:=round(w/2);
 ys:=round(h/2);

 Image1.Canvas.MoveTo(xs,0);
 Image1.Canvas.LineTo(xs,Image1.Height);
 Image1.Canvas.MoveTo(0,ys);
 Image1.Canvas.LineTo(Image1.Width,ys);


 xi:=xs+radius;
 yi:=ys;
 ai:=a;
 while ai<=2*pi+a do
 begin
  x:=xi;
  y:=yi;
  xi:=round(xs+radius*cos(ai));
  yi:=round(ys+radius*sin(ai));

  Image1.Canvas.Pen.Color:=clBlue;
  Image1.Canvas.MoveTo(x,y);
  Image1.Canvas.LineTo(xi,yi);
  p1:=y-yi;
  p2:=x-xi;

  if p2=0 then
   p:=pi/2
  else p:=p1/p2;
   angle:=pi/3-ArcTan(abs(p));

  dx1:=round(10*sin(angle));
  dy1:=round(10*cos(Angle));
  angle:=angle+pi/3;
  dx2:=round(10*sin(angle));
  dy2:=round(10*cos(angle));

  if p1<0 then
  begin
   if p2<0 then
   begin
    x3:=x+dx1;
    y3:=y+dy1;
    x4:=x+dx2;
    y4:=y+dy2;
   end
   else begin
   x3:=x-dx1;
   y3:=y+dy1;
   x4:=x-dx2;
   y4:=y+dy2;
   end
 end
   else begin
   if p2<0 then
   begin
    x3:=x+dx1;
    y3:=y-dy1;
    x4:=x+dx2;
    y4:=y-dy2;
   end
   else begin
    x3:=x-dx1;
    y3:=y-dy1;
    x4:=x-dx2;
    y4:=y-dy2;
   end
  end;
  Image1.Canvas.MoveTo(x,y);
  Image1.Canvas.LineTo(x3,y3);
  Image1.Canvas.MoveTo(x,y);
  Image1.Canvas.LineTo(x4,y4);
  ai:=ai+a;
 end;
end;

end.

