object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 550
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object boltslbl: TLabel
    Left = 24
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Bolts:'
  end
  object nutslbl: TLabel
    Left = 25
    Top = 123
    Width = 26
    Height = 13
    Caption = 'Nuts:'
  end
  object washerslbl: TLabel
    Left = 24
    Top = 195
    Width = 46
    Height = 13
    Caption = 'Washers:'
  end
  object boltsspn: TSpinEdit
    Left = 111
    Top = 45
    Width = 137
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object nutsspn: TSpinEdit
    Left = 111
    Top = 120
    Width = 137
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object washersspn: TSpinEdit
    Left = 111
    Top = 192
    Width = 137
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object checkbtn: TButton
    Left = 232
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Check Order'
    TabOrder = 3
    OnClick = checkbtnClick
  end
  object memo: TMemo
    Left = 336
    Top = 39
    Width = 321
    Height = 169
    TabOrder = 4
  end
end
