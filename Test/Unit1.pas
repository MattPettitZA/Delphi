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
    boltsspn: TSpinEdit;
    nutsspn: TSpinEdit;
    washersspn: TSpinEdit;
    boltslbl: TLabel;
    nutslbl: TLabel;
    washerslbl: TLabel;
    checkbtn: TButton;
    memo: TMemo;
    procedure checkbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.checkbtnClick(Sender: TObject);
var
numbolts, numnuts, numwashers, bolts, nuts, washers, totalcost : integer;

begin
memo.Clear;
numbolts := boltsspn.Value;
numnuts := nutsspn.Value;
numwashers := washersspn.Value;
bolts := 5;
nuts := 3;
washers := 1;
totalcost := (numbolts* bolts)+(numnuts*nuts)+(numwashers*washers);

if numnuts < numbolts then
memo.Lines.Add('Check Order: too few nuts');

if numwashers < 2 * numbolts then
memo.Lines.Add('Check Order: too few washers');


if (numnuts >= numbolts) and (numwashers >= 2* numbolts) then
memo.Lines.Add('Bolts cost: '+ IntToStr(numbolts*bolts));
memo.Lines.Add('Nuts cost: '+ IntToStr(numnuts*nuts));
memo.Lines.Add('Washers cost :'+ IntToStr(numwashers*washers));
memo.Lines.Add('Your total cost is: '+IntToStr(totalcost));
end;

end.
