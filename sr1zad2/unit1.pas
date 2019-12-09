unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}


procedure TForm1.Label1Click(Sender: TObject);

begin
 Edit1.Text:= '255.255.0';
end;

procedure TForm1.Label2Click(Sender: TObject);
var
s:string;
begin
 Edit2.Text:= '255.0.255';
end;

procedure TForm1.Label3Click(Sender: TObject);
var
s:string;
begin
 Edit3.Text:= '0.255.255';
end;
end.

