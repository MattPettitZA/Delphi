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
