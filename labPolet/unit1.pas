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
  t, tmax, step, v0, N, al, x, y, g:real;
  xs, ys:integer;
begin

  v0 := StrtoInt(LabeledEdit1.Text);
  N := StrtoInt(LabeledEdit2.Text);
  al := (StrtoInt(LabeledEdit3.Text)*pi())/180;
  g := 9.8;
  t := 0;
  tmax:=(2*v0*sin(al))/g;
  step := tmax/n;


  Image1.Canvas.pen.Color := clwhite;
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
  Image1.Canvas.pen.Color := clblack;
  Image1.Canvas.MoveTo(10, 0);
  Image1.Canvas.LineTo(10,Image1.Height);
  Image1.Canvas.MoveTo(0,220);
  Image1.Canvas.LineTo(Image1.Width,220);
  Image1.Canvas.pen.Color := clblue;

  while (t <= tmax) do
   begin
     x:=v0*Abs(cos(al))*t;
     y:=v0*Abs(sin(al))*t-(g*t*t)/2;
     xs:= round(x);
     ys:= -round(y);
     Image1.Canvas.Ellipse(round(0.5*xs)+10,round(0.5*ys)+215,round(0.5*xs+4)+10,round(0.5*ys+4)+215);
     t := t + step;
   end;

end;

end.

