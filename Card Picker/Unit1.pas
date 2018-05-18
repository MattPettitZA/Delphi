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
  Dialogs, StdCtrls, ExtCtrls, pngimage;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
suitnum: integer;
cardnum: integer;
suit: string;
card: string;

begin
suitnum := Random (4)+1;
cardnum := Random (13)+1;

case suitnum  of
1 : suit := 'hearts';
2 : suit := 'diamonds';
3 : suit := 'spades';
4 : suit := 'clubs';
end;

case cardnum of
1 : card := 'Ace';
11: card := 'Jack';
12 : card := 'Queen';
13 : card := 'King';
end;
if (cardnum >=2) And (cardnum <=10) then
card := IntToStr(cardnum);

begin
Panel1.Caption := ('Your Card is the '+ card + ' of '+suit);

Image1.Picture.LoadFromFile(LowerCase(card)+'_of_'+LowerCase(suit)+'.png');





end;

end;

end.
