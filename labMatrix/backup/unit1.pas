unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    Label1: TLabel;
    LabeledEdit1: TLabeledEdit;
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
  n=9;
  l=2;

 M: array[1..n,1..l]of real=((30,10),(10,20),(10,40),(20,50),(30,40),(40,50),(50,40),(50,20),(30,10));
var
 p1,p2,p3:array[1..l,1..l] of real;
 p:array[1..n,1..l] of real;
 i,j,t,xs,ys:integer;
 dx,dy,xmax,ymin,ymax,xmin,a:real;
procedure TForm1.Button1Click(Sender: TObject);
begin
   xmax:=150;
   ymin:=-150;
   ymax:=150;
   xmin:=-150;

   p1[1,1]:=StrtoInt(Edit1.Text);
   p1[1,2]:=StrtoInt(Edit2.Text);
   p1[2,1]:=StrtoInt(Edit3.Text);
   p1[2,2]:=StrtoInt(Edit4.Text);
   a := (StrtoInt(LabeledEdit1.Text))*(pi/180);

   p2[1,1]:=cos(a);
   p2[1,2]:=sin(a);
   p2[2,1]:=-sin(a);
   p2[2,2]:=cos(a);

   for i:=1 to l do
    for j:=1 to l do
     begin
     p3[i,j]:=0;
      for t:=1 to l do
       p3[i,j]:=p3[i,j]+p1[i,t]*p2[t,j];
     end;
   for i:=1 to n do
    for j:=1 to l do
     begin
      p[i,j]:=0;
      for t:=1 to l do
       p[i,j]:=p[i,j]+M[i,t]*p3[t,j];
     end;

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

   Image1.canvas.MoveTo(Round((M[1,1]-xmin)*dx),Round(Image1.Height-(M[1,2]-ymin)*dy));
   for i:= 2 to n do
    Image1.canvas.lineto(Round((M[i,1]-xmin)*dx),Round(Image1.Height-(M[i,2]-ymin)*dy));

   Image1.Canvas.pen.Color := clWhite;
   Image1.Canvas.Rectangle(0, 0, Image1.Width, Image1.Height);
   Image1.Canvas.pen.Color := clBlue;
   Image1.Canvas.MoveTo(xs,0);
   Image1.Canvas.LineTo(xs,Image1.Height);
   Image1.Canvas.MoveTo(0,ys);
   Image1.Canvas.LineTo(Image1.Width,ys);

   Image1.Canvas.MoveTo(Round((p[1,1]-xmin)*dx),Round(Image1.Height-(p[1,2]-ymin)*dy));
   for i:=2 to n do
    Image1.Canvas.LineTo(Round((p[i,1]-xmin)*dx),Round(Image1.Height-(p[i,2]-ymin)*dy));

end;

end.

