object Form2: TForm2
  Left = 192
  Top = 124
  Width = 1024
  Height = 768
  Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 150
    Top = 0
    Width = 858
    Height = 710
    ActivePage = TabSheet0
    Align = alClient
    TabOrder = 0
    OnMouseDown = PageControl1MouseDown
    object TabSheet0: TTabSheet
      Caption = '    +'
      Enabled = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 150
    Height = 710
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object N11: TMenuItem
      Caption = #1053#1086#1074#1099#1081
    end
    object N1: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100
    end
    object N2: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    end
    object N3: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 56
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    Left = 88
    Top = 16
  end
end
