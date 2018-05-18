{
MIT License

Copyright (c) [2018] [Matt Pettit]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
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
