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
  Dialogs, StdCtrls, ShellApi ;

type
  TForm1 = class(TForm)
    lblurl: TLabel;
    urledt: TEdit;
    browser: TButton;
    procedure browserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.browserClick(Sender: TObject);
var
url : string;

begin
url := urledt.Text;

ShellExecute(self.WindowHandle,'open',PChar(url),nil,nil, SW_SHOWNORMAL);


end;


end.
