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
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
const
  n=3;
  l=2;
  g=2;
  q=30;
var
  point_t: array[1..l,1..n]of real=((0,0,1),(0,50,1));
  point_tt: array[1..l,1..n]of real;
  p2:array[1..n,1..n] of real;

  scr: array[1..l,1..l]of integer;
  i,k,j,t,xs,ys,cirX,cirY:integer;
  dx,dy,xmax,ymin,ymax,xmin,a:real;
procedure TForm1.Button1Click(Sender: TObject);
begin
     xmax:=150;
     ymin:=-150;
     ymax:=150;
     xmin:=-150;
     dx:=Image1.Width/(xmax-xmin);
     dy:=Image1.Height/(ymax-ymin);
     xs:=Round((-xmin)*dx);
     ys:=Round(Image1.Height-(-ymin)*dy);

     Image1.Canvas.pen.Color := clWhite;
     Image1.Canvas.Rectangle(0, 0, Image1.Width, Image1.Height);
     Image1.Canvas.pen.Color := clBlue;
     Image1.Canvas.MoveTo(xs,0);
     Image1.Canvas.LineTo(xs,Image1.Height);
     Image1.Canvas.MoveTo(0,ys);
     Image1.Canvas.LineTo(Image1.Width,ys);
     Image1.Canvas.pen.Color := clBlack;

      p2[1,1]:=cos(a);
      p2[1,2]:=sin(a);
      p2[1,3]:=0;
      p2[2,1]:=-sin(a);
      p2[2,2]:=cos(a);
      p2[2,3]:=0;

     cirX :=StrtoInt(LabeledEdit1.Text);
     cirY :=StrtoInt(LabeledEdit2.Text);
     point_t[1,1] := cirX;
     point_t[1,2] := cirY;

     p2[3,1]:=-cirX*cos(a)+cirY*sin(a)+cirX;
     p2[3,2]:=-cirX*sin(a)-cirY*cos(a)+cirY;
     p2[3,3]:=1;

     scr[1,1]:=round(cirX + Image1.Width/2);
     scr[1,2]:=round(Image1.Width/2 - cirY);
     scr[2,1]:=round(point_t[2,1] + Image1.Width/2);
     scr[2,2]:=round(Image1.Width/2 - point_t[2,2]);

     Image1.canvas.MoveTo(scr[1,1],scr[1,2]);
     Image1.canvas.lineto(scr[2,1],scr[2,2]);


     a := 13*(pi/180);


      //for k:=1 to q do
      //begin
      //   point_t[2,1]:=(point_t[2,1]-cirX)*cos(a)-(point_t[2,2]-cirY)*sin(a)+cirX;
      //   point_t[2,2]:=(point_t[2,1]-cirX)*sin(a)+(point_t[2,2]-cirY)*cos(a)+cirY;

      //   scr[2,1]:=round(point_t[2,1] + Image1.Width/2);
      //   scr[2,2]:=round(Image1.Width/2 - point_t[2,2]);

      //   Image1.canvas.MoveTo(round(cirX+ Image1.Width/2),Round(Image1.Width/2-cirY));
      //   Image1.canvas.lineto(scr[2,1],scr[2,2]);

      //end;
    for k:=1 to q do
    begin

        for j:=1 to n do
         begin
            point_tt[2,j]:= 0;
         for t:=1 to n do
          begin
             point_tt[2,j]:= point_tt[2,j]+point_t[2,t]*p2[t,j];
             point_t[2,j]:=point_tt[2,j];
          end;
          end;
    scr[2,1]:=round(point_tt[2,1] + Image1.Width/2);
    scr[2,2]:=round(Image1.Width/2 - point_tt[2,2]);

    Image1.canvas.MoveTo(Round(cirX+Image1.Width/2),Round(Image1.Width/2-cirY));
    Image1.canvas.lineto(scr[2,1],scr[2,2]);
    end;
end;
end.

