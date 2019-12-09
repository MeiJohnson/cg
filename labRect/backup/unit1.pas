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
  n=5;
  l=2;
var

 p:array [1..n,1..l] of integer = ((20,20),(340,20),(340,340),(20, 340),(20,20));
i,j,k,g:integer;

procedure TForm1.Button1Click(Sender: TObject);
begin



   Image1.Canvas.pen.Color := clWhite;
   Image1.Canvas.Rectangle(0, 0, Image1.Width, Image1.Height);
   Image1.Canvas.pen.Color := clGreen;


   for k := 0 to 50 do
    begin
    Image1.Canvas.MoveTo(p[1,1],p[1,2]);
    for g:= 2 to n do
     Image1.canvas.lineto(p[g,1],p[g,2]);
    for i:=1 to n do
     for j:=1 to l do
       if (((i = 1) and (j = 1)) or ((i = 1) and (j = 2)) or ((i = 2) and (j = 2)) or ((i = 4) and (j = 1)) or ((i = 5) and (j = 1) or ((i = 5) and (j = 2))))then
        p[i,j]:=p[i,j]+5
       else
        p[i,j]:=p[i,j]-5;
    end;


end;

end.

