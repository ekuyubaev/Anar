object form_edit_ZIP: Tform_edit_ZIP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'\'#1091#1076#1072#1083#1077#1085#1080#1077' '#1047#1048#1055
  ClientHeight = 371
  ClientWidth = 321
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
    Width = 321
    Height = 336
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 72
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 19
      Top = 21
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
      Left = 31
      Top = 54
      Width = 72
      Height = 13
      Caption = 'N '#1079#1072#1074#1086#1076#1089#1082#1086#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 15
      Top = 91
      Width = 88
      Height = 13
      Caption = 'N '#1080#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 15
      Top = 121
      Width = 88
      Height = 26
      Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072' '#1074' '#1101#1089#1082#1087#1083#1091#1072#1090#1072#1094#1080#1102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label5: TLabel
      Left = 16
      Top = 160
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
    object Label6: TLabel
      Left = 17
      Top = 200
      Width = 86
      Height = 13
      Caption = #1044#1072#1090#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 33
      Top = 240
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
      Left = 117
      Top = 18
      Width = 185
      Height = 21
      DataField = 'Naimenovanie'
      DataSource = DM.ds_ZIP
      DynProps = <>
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 117
      Top = 51
      Width = 185
      Height = 21
      DataField = 'N_zavodskoi'
      DataSource = DM.ds_ZIP
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 117
      Top = 88
      Width = 185
      Height = 21
      DataField = 'N_inventarnyi'
      DataSource = DM.ds_ZIP
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 117
      Top = 157
      Width = 185
      Height = 21
      DynProps = <>
      DataField = 'Sostoianie'
      DataSource = DM.ds_ZIP
      EditButtons = <>
      TabOrder = 3
      Visible = True
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 117
      Top = 125
      Width = 185
      Height = 21
      DataField = 'Data_vvedeno'
      DataSource = DM.ds_ZIP
      DynProps = <>
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 4
      Visible = True
    end
    object DBDateTimeEditEh2: TDBDateTimeEditEh
      Left = 117
      Top = 197
      Width = 185
      Height = 21
      DataField = 'Data_spisano'
      DataSource = DM.ds_ZIP
      DynProps = <>
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 5
      Visible = True
    end
    object DBMemoEh1: TDBMemoEh
      Left = 117
      Top = 237
      Width = 185
      Height = 89
      AutoSize = False
      DataField = 'Primechanie'
      DataSource = DM.ds_ZIP
      DynProps = <>
      EditButtons = <>
      TabOrder = 6
      Visible = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 336
    Width = 321
    Height = 35
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 376
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
