object form_edit_oborudovanie: Tform_edit_oborudovanie
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  ClientHeight = 401
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 457
    Height = 361
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 369
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 172
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 86
      Top = 56
      Width = 102
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1079#1072#1074#1086#1076#1089#1082#1086#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 70
      Top = 91
      Width = 118
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1080#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 128
      Width = 170
      Height = 13
      Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 77
      Top = 165
      Width = 109
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100' '#1058#1054
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 48
      Top = 200
      Width = 138
      Height = 13
      Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 113
      Top = 232
      Width = 73
      Height = 13
      Caption = #1057#1086#1086#1088#1091#1078#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 116
      Top = 269
      Width = 70
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditEh1: TDBEditEh
      Left = 200
      Top = 16
      Width = 233
      Height = 21
      DataField = 'Naimenovanie'
      DataSource = DM.ds_oborudovanie
      DynProps = <>
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 200
      Top = 53
      Width = 233
      Height = 21
      DataField = 'N_zavodskoi'
      DataSource = DM.ds_oborudovanie
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 200
      Top = 88
      Width = 233
      Height = 21
      DataField = 'N_inventarnyi'
      DataSource = DM.ds_oborudovanie
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 200
      Top = 125
      Width = 121
      Height = 21
      DataField = 'Data_vvedeno'
      DataSource = DM.ds_oborudovanie
      DynProps = <>
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 3
      Visible = True
    end
    object DBEditEh4: TDBEditEh
      Left = 200
      Top = 162
      Width = 233
      Height = 21
      DataField = 'Periodichnost_TO'
      DataSource = DM.ds_oborudovanie
      DynProps = <>
      EditButtons = <>
      TabOrder = 4
      Visible = True
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 200
      Top = 197
      Width = 233
      Height = 21
      DynProps = <>
      DataField = 'Sostoianie'
      DataSource = DM.ds_oborudovanie
      EditButtons = <>
      TabOrder = 5
      Visible = True
    end
    object DBLookupComboboxEh2: TDBLookupComboboxEh
      Left = 200
      Top = 229
      Width = 233
      Height = 21
      DynProps = <>
      DataField = 'Sooruzhene'
      DataSource = DM.ds_oborudovanie
      EditButtons = <>
      TabOrder = 6
      Visible = True
    end
    object DBMemoEh1: TDBMemoEh
      Left = 200
      Top = 266
      Width = 233
      Height = 89
      AutoSize = False
      DataField = 'Primechanie'
      DataSource = DM.ds_oborudovanie
      DynProps = <>
      EditButtons = <>
      TabOrder = 7
      Visible = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 361
    Width = 457
    Height = 40
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 120
      Top = 6
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
