object form_edit_GSM: Tform_edit_GSM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'/'#1087#1088#1086#1089#1084#1086#1090#1088' '#1043#1057#1052
  ClientHeight = 398
  ClientWidth = 345
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
    Width = 345
    Height = 365
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 280
    object Label1: TLabel
      Left = 48
      Top = 24
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
      Left = 64
      Top = 147
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
    object Label3: TLabel
      Left = 19
      Top = 184
      Width = 113
      Height = 13
      Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 15
      Top = 224
      Width = 117
      Height = 13
      Caption = #1050#1088#1080#1090#1080#1095#1077#1089#1082#1086#1077' '#1082#1086#1083'-'#1074#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 62
      Top = 265
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
    object Label6: TLabel
      Left = 112
      Top = 67
      Width = 20
      Height = 13
      Caption = #1058#1080#1087
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 49
      Top = 107
      Width = 83
      Height = 13
      Caption = #1043#1054#1057#1058', '#1058#1059'  '#1080' '#1076#1088'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditEh1: TDBEditEh
      Left = 144
      Top = 21
      Width = 185
      Height = 21
      DataField = 'Naimenovanie'
      DataSource = DM.ds_GSM
      DynProps = <>
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 144
      Top = 144
      Width = 121
      Height = 21
      DataField = 'Kolichestvo'
      DataSource = DM.ds_MTO
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 144
      Top = 181
      Width = 121
      Height = 21
      DynProps = <>
      DataField = 'EI'
      DataSource = DM.ds_GSM
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 144
      Top = 221
      Width = 121
      Height = 21
      DataField = 'Kriticheskoe_kolichestvo'
      DataSource = DM.ds_GSM
      DynProps = <>
      EditButtons = <>
      TabOrder = 3
      Visible = True
    end
    object DBMemoEh1: TDBMemoEh
      Left = 144
      Top = 262
      Width = 185
      Height = 89
      AutoSize = False
      DataField = 'Primechanie'
      DataSource = DM.ds_GSM
      DynProps = <>
      EditButtons = <>
      TabOrder = 4
      Visible = True
    end
    object DBEditEh4: TDBEditEh
      Left = 144
      Top = 64
      Width = 185
      Height = 21
      DataField = 'Tip'
      DataSource = DM.ds_MTO
      DynProps = <>
      EditButtons = <>
      TabOrder = 5
      Visible = True
    end
    object DBEditEh5: TDBEditEh
      Left = 144
      Top = 104
      Width = 185
      Height = 21
      DataField = 'GOST'
      DataSource = DM.ds_MTO
      DynProps = <>
      EditButtons = <>
      TabOrder = 6
      Visible = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 365
    Width = 345
    Height = 33
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 280
    object BitBtn1: TBitBtn
      Left = 16
      Top = 5
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
