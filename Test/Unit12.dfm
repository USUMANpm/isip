object Form12: TForm12
  Left = 466
  Top = 197
  Width = 620
  Height = 402
  Caption = #1058#1077#1089#1090#8470'4'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 601
    Height = 361
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'1'
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 340
        Height = 22
        Caption = #1044#1083#1103' '#1095#1077#1075#1086' '#1087#1088#1080#1084#1077#1085#1103#1077#1090#1089#1103' '#1101#1083#1077#1084#1077#1085#1090' <small>'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup1: TRadioGroup
        Left = 16
        Top = 72
        Width = 345
        Height = 105
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          #1044#1083#1103' '#1074#1090#1086#1088#1086#1089#1090#1077#1087#1077#1085#1085#1086#1075#1086' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086' '#1089#1090#1088#1072#1085#1080#1094#1099
          #1044#1083#1103' '#1074#1099#1076#1077#1083#1077#1085#1080#1103' '#1084#1077#1085#1077#1077' '#1074#1072#1078#1085#1099#1093' '#1089#1083#1086#1074
          #1044#1083#1103' '#1087#1086#1076#1079#1072#1075#1086#1083#1086#1074#1082#1072' '#1090#1077#1082#1089#1090#1072
          #1044#1083#1103' '#1091#1084#1077#1085#1100#1096#1077#1085#1080#1103' '#1088#1072#1079#1084#1077#1088#1072' '#1090#1077#1082#1089#1090#1072)
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 288
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
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'2'
      ImageIndex = 1
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 363
        Height = 22
        Caption = #1044#1083#1103' '#1095#1077#1075#1086' '#1087#1088#1080#1084#1077#1085#1103#1077#1090#1089#1103' '#1101#1083#1077#1084#1077#1085#1090' <header>?'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button2: TButton
        Left = 184
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
        TabOrder = 0
        OnClick = Button2Click
      end
      object RadioGroup2: TRadioGroup
        Left = 16
        Top = 72
        Width = 233
        Height = 105
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          #1044#1083#1103' '#1079#1072#1075#1086#1083#1086#1074#1082#1072' '#1089#1090#1088#1072#1085#1080#1094#1099
          #1044#1083#1103' '#1085#1072#1074#1080#1075#1072#1094#1080#1080' '#1087#1086' '#1089#1072#1081#1090#1091
          #1044#1083#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086#1073' '#1072#1074#1090#1086#1088#1072#1093' '
          #1044#1083#1103' '#1087#1077#1088#1074#1086#1075#1086' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1089#1072#1081#1090#1072)
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'3'
      ImageIndex = 2
      object Label3: TLabel
        Left = 16
        Top = 24
        Width = 359
        Height = 22
        Caption = #1044#1083#1103' '#1095#1077#1075#1086' '#1087#1088#1080#1084#1077#1085#1103#1077#1090#1089#1103' '#1101#1083#1077#1084#1077#1085#1090' <article>?'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button3: TButton
        Left = 256
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
        TabOrder = 0
        OnClick = Button3Click
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
          #1044#1083#1103' '#1072#1073#1079#1072#1094#1072' '#1090#1077#1082#1089#1090#1072
          #1042' '#1082#1072#1095#1077#1089#1090#1074#1077' '#1091#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1086#1075#1086' '#1073#1083#1086#1082#1072
          #1044#1083#1103' '#1088#1072#1079#1076#1077#1083#1086#1074' '#1089#1072#1081#1090#1072
          #1044#1083#1103' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086' '#1089#1090#1088#1072#1085#1080#1094#1099)
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'4'
      ImageIndex = 3
      object Label4: TLabel
        Left = 16
        Top = 24
        Width = 331
        Height = 22
        Caption = #1044#1083#1103' '#1095#1077#1075#1086' '#1087#1088#1080#1084#1077#1085#1103#1077#1090#1089#1103' '#1101#1083#1077#1084#1077#1085#1090' <div>?'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button4: TButton
        Left = 256
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
        TabOrder = 0
        OnClick = Button4Click
      end
      object RadioGroup4: TRadioGroup
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
          #1042' '#1082#1072#1095#1077#1089#1090#1074#1077' '#1091#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1086#1075#1086' '#1073#1083#1086#1082#1072
          #1044#1083#1103' '#1083#1086#1075#1086#1090#1080#1087#1072' '#1080' '#1089#1083#1086#1075#1072#1085#1072
          #1044#1083#1103' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086' '#1089#1090#1088#1072#1085#1080#1094#1099
          #1044#1083#1103' '#1091#1082#1072#1079#1072#1085#1080#1103' '#1088#1072#1079#1076#1077#1083#1086#1074' '#1089#1072#1081#1090#1072)
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'5'
      ImageIndex = 4
      object Label5: TLabel
        Left = 16
        Top = 24
        Width = 231
        Height = 22
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1101#1083#1077#1084#1077#1085#1090' '#1094#1080#1090#1072#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button5: TButton
        Left = 136
        Top = 240
        Width = 75
        Height = 25
        Caption = #1044#1072#1083#1077#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button5Click
      end
      object RadioGroup5: TRadioGroup
        Left = 16
        Top = 72
        Width = 193
        Height = 145
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          '<p>'
          '<blockquote>'
          '<ul>'
          '<nav>')
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1042#1086#1087#1088#1086#1089#8470'6'
      ImageIndex = 5
      object Label6: TLabel
        Left = 16
        Top = 24
        Width = 516
        Height = 22
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1101#1083#1077#1084#1077#1085#1090' '#1082#1086#1090#1086#1088#1099#1081' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1076#1083#1103' '#1074#1072#1078#1085#1099#1093' '#1089#1083#1086#1074
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button6: TButton
        Left = 136
        Top = 248
        Width = 75
        Height = 25
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button6Click
      end
      object RadioGroup6: TRadioGroup
        Left = 16
        Top = 72
        Width = 193
        Height = 145
        Caption = #1054#1090#1074#1077#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          '<strong>'
          '<em>'
          '<blockquote>'
          '<a>')
        ParentFont = False
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 352
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'Edit1'
      end
    end
  end
end
