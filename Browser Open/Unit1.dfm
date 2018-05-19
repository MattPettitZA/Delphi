object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblurl: TLabel
    Left = 8
    Top = 8
    Width = 133
    Height = 13
    Caption = 'URL You would like to open:'
  end
  object urledt: TEdit
    Left = 147
    Top = 5
    Width = 454
    Height = 21
    TabOrder = 0
  end
  object browser: TButton
    Left = 320
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Open Link'
    TabOrder = 1
    OnClick = browserClick
  end
end
