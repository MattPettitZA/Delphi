object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 265
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 8
    Top = 8
    Width = 99
    Height = 13
    Caption = 'Credit Card Number:'
  end
  object creditcardedt: TEdit
    Left = 8
    Top = 40
    Width = 345
    Height = 21
    TabOrder = 0
  end
  object btnval: TButton
    Left = 8
    Top = 88
    Width = 105
    Height = 25
    Caption = 'Validate'
    TabOrder = 1
    OnClick = btnvalClick
  end
  object memo: TMemo
    Left = 119
    Top = 90
    Width = 234
    Height = 121
    Lines.Strings = (
      '')
    TabOrder = 2
  end
end
