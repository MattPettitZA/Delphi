{
"THE BEER-WARE LICENSE" (Revision 42):
<pettit.matt@gmail.com> wrote this file. As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer in return. Matt Pettit
}
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    star1: TButton;
    star2: TButton;
    memo: TMemo;
    star3: TButton;
    pat4: TSpinEdit;
    lbl: TLabel;
    star4: TButton;
    procedure star1Click(Sender: TObject);
    procedure star2Click(Sender: TObject);
    procedure star3Click(Sender: TObject);
    procedure star4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.star1Click(Sender: TObject);
var
star : string;
i : integer;
begin
memo.Lines.Clear;

for i := 1 to 5 do
  begin
  star :=  StringOfChar('*', i);
  memo.Lines.Add(star);
  end;

end;

procedure TForm1.star2Click(Sender: TObject);
var
star : string;
i : integer;
begin
memo.Lines.Clear;

for i := 5 downto 1 do
  begin
  star :=  StringOfChar('*', i);
  memo.Lines.Add(star);
  end;
end;

procedure TForm1.star3Click(Sender: TObject);
var
star : string;
i : integer;
begin
memo.Lines.Clear;

for i := 1 to 5 do
  begin
  star :=  StringOfChar('*', i);
  memo.Lines.Add(star);
  end;

for i := 4 downto 1 do
  begin
  star :=  StringOfChar('*', i);
  memo.Lines.Add(star);
  end;
end;

procedure TForm1.star4Click(Sender: TObject);
var
star : string;
i, times : integer;
begin
memo.Lines.Clear;
times := pat4.Value;
for i := 1 to times do
  begin
  star :=  StringOfChar('*', i);
  memo.Lines.Add(star);
  end;

for i := (times - 1) downto 1 do
  begin
  star :=  StringOfChar('*', i);
  memo.Lines.Add(star);
  end;

end;

end.
