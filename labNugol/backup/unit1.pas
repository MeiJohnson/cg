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
var
  l, n, xs,ys:integer;
  x,y,a,b:real;
procedure TForm1.Button1Click(Sender: TObject);
begin
   Image1.Canvas.Pen.Color:=clWhite;
   Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
   Image1.Canvas.Pen.Color:=clBlue;
   n:=StrtoInt(LabeledEdit1.Text);
   l:=StrtoInt(LabeledEdit2.Text);
   a:=((360/n)*pi)/180;
   x:=Round(Image1.Width/2);
   y:=Round(Image1.Height/2);
   xs:=Round(x+L*cos(a));
   ys:=Round(y+L*sin(a));
   Image1.Canvas.MoveTo(xs,ys);
   b:=0;
   while b<360 do
   begin
    xs:=Round(x+L*cos(b));
    ys:=Round(y+L*sin(b));
    Image1.Canvas.LineTo(xs,ys);
    b:=b+a;
   end;
end;

end.

