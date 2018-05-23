unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    creditcardedt: TEdit;
    label1: TLabel;
    btnval: TButton;
    memo: TMemo;
    procedure btnvalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnvalClick(Sender: TObject);
var
i, times,checksum : integer;
sum, cardnum : string;
begin
memo.lines.clear;
cardnum := (creditcardedt.Text);
checksum := 0;
sum := '';
if(Length(cardnum)>= 6) and (Length(cardnum)<= 16) then
for i := 1 to (Length(cardnum)) do
  if odd(i)  then
  sum := sum+ (cardnum[i])

  else
   sum := sum+ IntToStr(2 * (StrToInt(cardnum[i])));

for i:= 1 to Length(sum) do
checksum := checksum + StrToInt(sum[i]);

Memo.Lines.Add(IntToStr(checksum));
if (checksum MOD 10 = 0) then
Memo.Lines.Add('Valid')
else 
Memo.Lines.Add('Invalid')


end;

end.
