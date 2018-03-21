object form_edit_sredstvo_izmerenia: Tform_edit_sredstvo_izmerenia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'\'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
  ClientHeight = 391
  ClientWidth = 408
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
    Width = 408
    Height = 351
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 120
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 74
      Top = 19
      Width = 84
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
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
      Left = 40
      Top = 88
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
      Left = 71
      Top = 128
      Width = 87
      Height = 13
      Caption = #1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 38
      Top = 168
      Width = 120
      Height = 13
      Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072' '#1074' '#1101#1082#1089#1087#1083'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 211
      Width = 142
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100' '#1087#1086#1074#1077#1088#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 88
      Top = 251
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
      Left = 176
      Top = 16
      Width = 217
      Height = 21
      DataField = 'Naimenovanie'
      DataSource = DM.ds_sredstvo_izmerenia
      DynProps = <>
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 176
      Top = 53
      Width = 217
      Height = 21
      DataField = 'N_zavodskoi'
      DataSource = DM.ds_sredstvo_izmerenia
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 176
      Top = 85
      Width = 217
      Height = 21
      DataField = 'N_inventarnyi'
      DataSource = DM.ds_sredstvo_izmerenia
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 176
      Top = 125
      Width = 217
      Height = 21
      DynProps = <>
      DataField = 'Sostoianie'
      DataSource = DM.ds_sredstvo_izmerenia
      EditButtons = <>
      TabOrder = 3
      Visible = True
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 176
      Top = 165
      Width = 121
      Height = 21
      DataField = 'Data_vvedeno'
      DataSource = DM.ds_sredstvo_izmerenia
      DynProps = <>
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 4
      Visible = True
    end
    object DBEditEh4: TDBEditEh
      Left = 176
      Top = 208
      Width = 217
      Height = 21
      DataField = 'Periodichnost_poverka'
      DataSource = DM.ds_sredstvo_izmerenia
      DynProps = <>
      EditButtons = <>
      TabOrder = 5
      Visible = True
    end
    object DBMemoEh1: TDBMemoEh
      Left = 176
      Top = 248
      Width = 217
      Height = 89
      AutoSize = False
      DataField = 'Primechanie'
      DataSource = DM.ds_sredstvo_izmerenia
      DynProps = <>
      EditButtons = <>
      TabOrder = 6
      Visible = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 351
    Width = 408
    Height = 40
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 392
    ExplicitWidth = 457
    object BitBtn1: TBitBtn
      Left = 16
      Top = 6
      Width = 90
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
      Left = 128
      Top = 6
      Width = 90
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
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
