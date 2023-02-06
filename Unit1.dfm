object Form1: TForm1
  Left = 611
  Top = 138
  Width = 511
  Height = 307
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label1: TLabel
    Left = 152
    Top = 64
    Width = 61
    Height = 13
    Caption = 'DATA NASC'
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 16
    Height = 13
    Caption = 'RG'
  end
  object Label4: TLabel
    Left = 152
    Top = 112
    Width = 76
    Height = 13
    Caption = 'NOME DA M'#195'E'
  end
  object Label5: TLabel
    Left = 16
    Top = 160
    Width = 60
    Height = 13
    Caption = 'FORMA'#199#195'O'
  end
  object Label6: TLabel
    Left = 152
    Top = 160
    Width = 72
    Height = 13
    Caption = 'STATUS CIV'#205'L'
  end
  object Label7: TLabel
    Left = 16
    Top = 208
    Width = 29
    Height = 13
    Caption = 'PESO'
  end
  object Label8: TLabel
    Left = 152
    Top = 208
    Width = 43
    Height = 13
    Caption = 'ALTURA'
  end
  object Label9: TLabel
    Left = 16
    Top = 16
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object Label10: TLabel
    Left = 152
    Top = 16
    Width = 69
    Height = 13
    Caption = 'SOBRENOME'
  end
  object Memo1: TMemo
    Left = 272
    Top = 16
    Width = 209
    Height = 185
    TabOrder = 0
  end
  object Button1: TButton
    Left = 336
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Gerar arquivo'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 32
    Width = 113
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 16
    Top = 80
    Width = 113
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 152
    Top = 80
    Width = 113
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 16
    Top = 128
    Width = 113
    Height = 21
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 152
    Top = 128
    Width = 113
    Height = 21
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 16
    Top = 176
    Width = 113
    Height = 21
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 152
    Top = 176
    Width = 113
    Height = 21
    TabOrder = 8
  end
  object Edit8: TEdit
    Left = 16
    Top = 224
    Width = 113
    Height = 21
    TabOrder = 9
  end
  object Edit9: TEdit
    Left = 152
    Top = 224
    Width = 113
    Height = 21
    TabOrder = 10
  end
  object Edit10: TEdit
    Left = 152
    Top = 32
    Width = 113
    Height = 21
    TabOrder = 11
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.log'#13#10
    Filter = 'Arquivo de Log|*.log'
    Left = 448
    Top = 216
  end
end
