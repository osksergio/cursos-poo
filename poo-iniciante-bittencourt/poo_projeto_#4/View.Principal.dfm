object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 243
  ClientWidth = 400
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
  object Label1: TLabel
    Left = 13
    Top = 16
    Width = 35
    Height = 13
    Caption = 'Fun'#231#227'o'
  end
  object Nome: TLabel
    Left = 13
    Top = 43
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 13
    Top = 73
    Width = 32
    Height = 13
    Caption = 'Sal'#225'rio'
  end
  object Label3: TLabel
    Left = 245
    Top = 70
    Width = 29
    Height = 13
    Caption = 'B'#244'nus'
  end
  object cbFuncao: TComboBox
    Left = 53
    Top = 13
    Width = 335
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Administrativo'
    Items.Strings = (
      'Administrativo'
      'Vendedor'
      'Funcion'#225'rio')
  end
  object edtNome: TEdit
    Left = 53
    Top = 40
    Width = 335
    Height = 21
    TabOrder = 1
    Text = 'edtNome'
  end
  object edtSalario: TEdit
    Left = 53
    Top = 70
    Width = 105
    Height = 21
    TabOrder = 2
    Text = 'edtNome'
  end
  object edtBonus: TEdit
    Left = 283
    Top = 67
    Width = 105
    Height = 21
    TabOrder = 3
    Text = 'edtNome'
  end
  object Button1: TButton
    Left = 13
    Top = 112
    Width = 95
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 112
    Width = 39
    Height = 25
    Caption = '<<'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 349
    Top = 112
    Width = 39
    Height = 25
    Caption = '>>'
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 13
    Top = 145
    Width = 375
    Height = 85
    Lines.Strings = (
      '')
    TabOrder = 7
  end
  object Button4: TButton
    Left = 114
    Top = 112
    Width = 95
    Height = 25
    Caption = 'Calcular Sal'#225'rio'
    TabOrder = 8
  end
end
