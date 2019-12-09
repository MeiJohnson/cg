unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    enterX1: TEdit;
    enterY1: TEdit;
    enterX2: TEdit;
    enterY2: TEdit;
    enterX3: TEdit;
    enterY3: TEdit;
    Image1: TImage;
    X1: TLabel;
    X2: TLabel;
    X3: TLabel;
    Y1: TLabel;
    Y2: TLabel;
    Y3: TLabel;
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
var x_1,x_2,x_3,y_1,y_2,y_3:integer;

begin
    x_1:=StrtoInt(enterX1.Text);
    y_1:=StrtoInt(enterY1.Text);
    x_2:=StrtoInt(enterX2.Text);
    y_2:=StrtoInt(enterY2.Text);
    x_3:=StrtoInt(enterX3.Text);
    y_3:=StrtoInt(enterY3.Text);
    Image1.Canvas.pen.Color := clwhite;
    Image1.Canvas.Rectangle(0,0,300,180);
    Image1.Canvas.MoveTo(x_1,y_1);
    Image1.Canvas.pen.Color := clred;
    Image1.Canvas.LineTo(x_2,y_2);
    Image1.Canvas.pen.Color := clblack;
    Image1.Canvas.LineTo(x_3,y_3);
    Image1.Canvas.pen.Color := clblue;
    Image1.Canvas.LineTo(x_1,y_1);
end;

end.

