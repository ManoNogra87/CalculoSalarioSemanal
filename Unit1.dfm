object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calcula Salario Semanal'
  ClientHeight = 202
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 445
    Height = 202
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 112
      Height = 13
      Caption = 'Nombre del trabajador:'
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 142
      Height = 13
      Caption = 'Ingrese las horas trabajadas:'
    end
    object Label3: TLabel
      Left = 40
      Top = 144
      Width = 31
      Height = 13
      Caption = 'Label3'
      Visible = False
    end
    object Editnombre: TEdit
      Left = 144
      Top = 40
      Width = 265
      Height = 21
      TabOrder = 0
    end
    object Edithoras: TEdit
      Left = 172
      Top = 67
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 172
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Calcular'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end
