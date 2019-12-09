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
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
procedure TForm1.Button1Click(Sender: TObject);
 var
   height_screen, width_screen, n, xs, ys, xmin, ymin, xmax, ymax:integer;
   A, B, C, step, x, y, kx, ky:real;
begin
   height_screen:=Image1.Height;
   width_screen:=Image1.Width;
   xmin:=StrtoInt(LabeledEdit4.Text);
   ymin:=StrtoInt(LabeledEdit6.Text);
   xmax:=StrtoInt(LabeledEdit5.Text);
   ymax:=StrtoInt(LabeledEdit7.Text);

   A:=StrtoInt(LabeledEdit1.Text);
   B:=StrtoInt(LabeledEdit2.Text);
   C:=StrtoInt(LabeledEdit3.Text);
   n:=77;
   step:=width_screen/n;
   kx:=width_screen/(xmax-xmin);
   ky:=width_screen/(ymax-ymin);
   xs:=Round(-xmin);
   ys:=Round(Image1.Height-(-ymin));

   Image1.Canvas.pen.Color := clwhite;
   Image1.Canvas.Rectangle(0,0,width_screen,height_screen);
   Image1.Canvas.pen.Color := clblack;

   Image1.Canvas.MoveTo(xs,0);
   Image1.Canvas.LineTo(xs,Image1.Height);
   Image1.Canvas.MoveTo(0,ys);
   Image1.Canvas.LineTo(Image1.Width,ys);

   x:=xmin;
   image1.Canvas.MoveTo(xmin, round(A*x*x+B*x+C));
 while x<=xmax do
   begin
   y:=A*x*x+B*x+C;
   xs:=round((x+xmin)*kx);
   ys:=round(height_screen-(y-ymin)*ky);
   Image1.Canvas.LineTo(xs,ys);
   x:=x+step;
   end;
end;
end.


