object Form5: TForm5
  Left = 610
  Top = 483
  Width = 745
  Height = 401
  Caption = #1058#1077#1089#1090' '#8470'3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = -1
    Top = -3
    Width = 729
    Height = 363
    ActivePage = TabSheet6
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'1'
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 265
        Height = 22
        Caption = #1053#1072#1081#1076#1080#1090#1077' '#1086#1096#1080#1073#1082#1091' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup1: TRadioGroup
        Left = 32
        Top = 72
        Width = 313
        Height = 129
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1080#1084#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
          ' '#1080#1084#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1085#1072#1087#1080#1089#1072#1085#1086' '#1085#1077' '#1087#1088#1072#1074#1080#1083#1100#1085#1086
          ' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1088#1072#1079#1076#1077#1083' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093)
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 136
        Top = 200
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Memo1: TMemo
        Left = 360
        Top = 8
        Width = 329
        Height = 225
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        Lines.Strings = (
          'program ;'
          'var a,b,c,d,f,p:integer;'
          'begin'
          'writeln('#39#1042#1074#1077#1076#1080#1090#1077' 5 '#1095#1080#1089#1083#1077#1085#1085#1099#1093' '
          #1079#1085#1072#1095#1077#1085#1080#1081':'#39');'
          'readln(a,b,c,d,f );'
          'p:=a+b+c+d+f;'
          'writeln('#39'p='#39',p);'
          'readln'
          'end.')
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'2'
      ImageIndex = 1
      object Label4: TLabel
        Left = 16
        Top = 24
        Width = 265
        Height = 22
        Caption = #1053#1072#1081#1076#1080#1090#1077' '#1086#1096#1080#1073#1082#1091' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup2: TRadioGroup
        Left = 24
        Top = 72
        Width = 313
        Height = 105
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1088#1072#1079#1076#1077#1083' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093
          #1080#1084#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1085#1072#1087#1080#1089#1072#1085#1086' '#1085#1077' '#1087#1088#1072#1074#1080#1083#1100#1085#1086
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1080#1084#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099)
        ParentFont = False
        TabOrder = 0
      end
      object Button2: TButton
        Left = 136
        Top = 200
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Memo2: TMemo
        Left = 368
        Top = 8
        Width = 289
        Height = 217
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        Lines.Strings = (
          'program Prim  2  1;'
          'var a,b,c,d,f,p:integer;'
          'begin'
          'writeln('#39#1042#1074#1077#1076#1080#1090#1077' 5 '#1095#1080#1089#1083#1077#1085#1085#1099#1093' '
          #1079#1085#1072#1095#1077#1085#1080#1081':'#39');'
          'readln(a,b,c,d,f );'
          'p:=a+b+c+d+f;'
          'writeln('#39'p='#39',p);'
          'readln'
          'end.')
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'3'
      ImageIndex = 2
      object Label5: TLabel
        Left = 16
        Top = 24
        Width = 265
        Height = 22
        Caption = #1053#1072#1081#1076#1080#1090#1077' '#1086#1096#1080#1073#1082#1091' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup3: TRadioGroup
        Left = 24
        Top = 72
        Width = 305
        Height = 105
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          #1080#1084#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1085#1072#1087#1080#1089#1072#1085#1086' '#1085#1077' '#1087#1088#1072#1074#1080#1083#1100#1085#1086
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1088#1072#1079#1076#1077#1083' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1074#1074#1086#1076' '#1076#1072#1085#1085#1099#1093)
        ParentFont = False
        TabOrder = 0
      end
      object Button3: TButton
        Left = 136
        Top = 200
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Memo3: TMemo
        Left = 376
        Top = 16
        Width = 257
        Height = 201
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        Lines.Strings = (
          'program Prim_2_1;'
          'begin'
          'writeln('#39#1042#1074#1077#1076#1080#1090#1077' 5 '#1095#1080#1089#1083#1077#1085#1085#1099#1093' '
          #1079#1085#1072#1095#1077#1085#1080#1081':'#39');'
          'readln(a,b,c,d,f );'
          'p:=a+b+c+d+f;'
          'writeln('#39'p='#39',p);'
          'readln'
          'end.')
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'4'
      ImageIndex = 3
      object Label6: TLabel
        Left = 16
        Top = 24
        Width = 265
        Height = 22
        Caption = #1053#1072#1081#1076#1080#1090#1077' '#1086#1096#1080#1073#1082#1091' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup4: TRadioGroup
        Left = 24
        Top = 72
        Width = 449
        Height = 129
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          #1085#1077' '#1074#1089#1077' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1077' '#1086#1087#1080#1089#1072#1085#1099' '#1074' '#1088#1072#1079#1076#1077#1083#1077' '#1086#1087#1080#1089#1072#1085#1080#1103' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1088#1072#1079#1076#1077#1083' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077)
        ParentFont = False
        TabOrder = 0
      end
      object Button4: TButton
        Left = 136
        Top = 200
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Memo4: TMemo
        Left = 472
        Top = 0
        Width = 233
        Height = 225
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        Lines.Strings = (
          'program Prim_2_1;'
          'var a,b:integer;'
          'begin'
          'writeln('#39#1042#1074#1077#1076#1080#1090#1077' 5 '
          #1095#1080#1089#1083#1077#1085#1085#1099#1093' '#1079#1085#1072#1095#1077#1085#1080#1081':'#39');'
          'readln(a,b,c,d,f );'
          'p:=a+b+c+d+f;'
          'writeln('#39'p='#39',p);'
          'readln'
          'end.')
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'5'
      ImageIndex = 4
      object Label8: TLabel
        Left = 16
        Top = 24
        Width = 265
        Height = 22
        Caption = #1053#1072#1081#1076#1080#1090#1077' '#1086#1096#1080#1073#1082#1091' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup5: TRadioGroup
        Left = 24
        Top = 72
        Width = 329
        Height = 105
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1082#1086#1084#1072#1085#1076#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1088#1072#1079#1076#1077#1083' '#1074#1074#1086#1076#1072' '#1076#1072#1085#1085#1099#1093)
        ParentFont = False
        TabOrder = 0
      end
      object Button5: TButton
        Left = 136
        Top = 200
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Memo5: TMemo
        Left = 384
        Top = 8
        Width = 297
        Height = 201
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        Lines.Strings = (
          'program Prim_2_1;'
          'var a,b,c,d,f,p:integer;'
          'begin'
          'writeln('#39#1042#1074#1077#1076#1080#1090#1077' 5 '#1095#1080#1089#1083#1077#1085#1085#1099#1093' '
          #1079#1085#1072#1095#1077#1085#1080#1081':'#39');'
          'p:=a+b+c+d+f;'
          'writeln('#39'p='#39',p);'
          'readln'
          'end.')
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'6'
      ImageIndex = 5
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 265
        Height = 22
        Caption = #1053#1072#1081#1076#1080#1090#1077' '#1086#1096#1080#1073#1082#1091' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup6: TRadioGroup
        Left = 24
        Top = 72
        Width = 361
        Height = 105
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1082#1086#1084#1072#1085#1076#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090' '#1082#1086#1084#1072#1085#1076#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
          #1086#1090#1089#1091#1090#1089#1090#1074#1091#1102#1090' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077)
        ParentFont = False
        TabOrder = 0
      end
      object Button6: TButton
        Left = 392
        Top = 216
        Width = 75
        Height = 25
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 256
        Top = 224
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'Edit1'
      end
      object Memo6: TMemo
        Left = 392
        Top = 8
        Width = 289
        Height = 201
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        Lines.Strings = (
          'program Prim_2_1;'
          'var a,b,c,d,f,p:integer;'
          'begin'
          'writeln('#39#1042#1074#1077#1076#1080#1090#1077' 5 '#1095#1080#1089#1083#1077#1085#1085#1099#1093' '
          #1079#1085#1072#1095#1077#1085#1080#1081':'#39');'
          'readln(a,b,c,d,f );'
          'writeln('#39'p='#39',p);'
          'readln'
          'end.')
        ParentFont = False
        TabOrder = 3
      end
    end
  end
end
