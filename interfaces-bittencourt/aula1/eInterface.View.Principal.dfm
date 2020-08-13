object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 212
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 14
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 14
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 152
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Memo1: TMemo
    Left = 14
    Top = 111
    Width = 259
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 14
    Top = 17
    Width = 259
    Height = 21
    TabOrder = 4
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
  end
end
