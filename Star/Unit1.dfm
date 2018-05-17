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
  object lbl: TLabel
    Left = 352
    Top = 168
    Width = 89
    Height = 13
    Caption = 'Pattern 4 Length:'
  end
  object star1: TButton
    Left = 8
    Top = 224
    Width = 97
    Height = 25
    Caption = 'First Pattern'
    TabOrder = 0
    OnClick = star1Click
  end
  object star2: TButton
    Left = 128
    Top = 224
    Width = 97
    Height = 25
    Caption = 'Second Pattern'
    TabOrder = 1
    OnClick = star2Click
  end
  object memo: TMemo
    Left = 8
    Top = 8
    Width = 321
    Height = 201
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object star3: TButton
    Left = 8
    Top = 266
    Width = 97
    Height = 25
    HelpType = htKeyword
    Caption = 'Third Pattern'
    TabOrder = 3
    OnClick = star3Click
  end
  object pat4: TSpinEdit
    Left = 352
    Top = 187
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
  object star4: TButton
    Left = 128
    Top = 266
    Width = 97
    Height = 25
    Caption = 'Fourth Pattern'
    TabOrder = 5
    OnClick = star4Click
  end
end
