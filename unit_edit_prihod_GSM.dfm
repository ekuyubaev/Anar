object form_edit_prihod_GSM: Tform_edit_prihod_GSM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'/'#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1088#1080#1093#1086#1076#1072' '#1043#1057#1052
  ClientHeight = 346
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 325
    Height = 307
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 104
    ExplicitTop = 24
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 19
      Top = 24
      Width = 84
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1088#1080#1093#1086#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 61
      Top = 67
      Width = 42
      Height = 13
      Caption = #1055#1088#1080#1085#1103#1083
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 35
      Top = 112
      Width = 68
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 21
      Top = 160
      Width = 82
      Height = 13
      Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 33
      Top = 208
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
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 120
      Top = 21
      Width = 121
      Height = 21
      DataField = 'Data_priniato'
      DataSource = DM.ds_prihod_GSM
      DynProps = <>
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 0
      Visible = True
    end
    object DBEditEh1: TDBEditEh
      Left = 120
      Top = 64
      Width = 185
      Height = 21
      DataField = 'Prinial'
      DataSource = DM.ds_prihod_GSM
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 120
      Top = 109
      Width = 121
      Height = 21
      DataField = 'Kolichestvo'
      DataSource = DM.ds_prihod_GSM
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 120
      Top = 157
      Width = 121
      Height = 21
      DynProps = <>
      DataField = 'EI'
      DataSource = DM.ds_prihod_GSM
      EditButtons = <>
      TabOrder = 3
      Visible = True
    end
    object DBMemoEh1: TDBMemoEh
      Left = 120
      Top = 205
      Width = 185
      Height = 89
      AutoSize = False
      DataField = 'Primechanie'
      DataSource = DM.ds_prihod_GSM
      DynProps = <>
      EditButtons = <>
      TabOrder = 4
      Visible = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 307
    Width = 325
    Height = 39
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 328
    ExplicitWidth = 457
    object BitBtn1: TBitBtn
      Left = 19
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