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
const
  n=4;
  l=2;
var

 p:array [1..n,1..l] of integer = ((10,10),(190,10),(100,190),(10,10));
i,j,k,g,num:integer;

begin
   Image1.Canvas.pen.Color := clWhite;
   Image1.Canvas.Rectangle(0, 0, Image1.Width, Image1.Height);
   Image1.Canvas.pen.Color := clGreen;
   num := StrtoInt(LabeledEdit1.Text);
    for k := 1 to num do
    begin
    Image1.Canvas.MoveTo(p[1,1],p[1,2]);
    for g:= 2 to n do
     Image1.canvas.lineto(p[g,1],p[g,2]);
    for i:=1 to n do
     for j:=1 to l do
       begin
       if (((i = 1) and (j = 1)) or ((i = 1) and (j = 2)) or ((i = 2)
       and (j = 2))  or ((i = 4) and (j = 1)) or
       ((i = 4) and (j = 2)))then
        p[i,j]:=p[i,j]+6;
       if (((i = 2) and (j = 1)) or ((i = 3) and (j = 2)))then
        p[i,j]:=p[i,j]-6;
       end;
    end;
end;

end.

