object form_edit_sotrudnik: Tform_edit_sotrudnik
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 361
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 389
    Height = 307
    Align = alClient
    TabOrder = 0
    object Label4: TLabel
      Left = 80
      Top = 136
      Width = 37
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label5: TLabel
      Left = 66
      Top = 179
      Width = 51
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085
    end
    object Label3: TLabel
      Left = 22
      Top = 99
      Width = 95
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    end
    object Label2: TLabel
      Left = 48
      Top = 61
      Width = 69
      Height = 13
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object Label1: TLabel
      Left = 19
      Top = 24
      Width = 98
      Height = 13
      Caption = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
    end
    object Label6: TLabel
      Left = 47
      Top = 220
      Width = 70
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    end
    object DBEditEh2: TDBEditEh
      Left = 136
      Top = 133
      Width = 233
      Height = 21
      DataField = 'Adress'
      DataSource = DM.ds_sotrudnik
      DynProps = <>
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 136
      Top = 176
      Width = 233
      Height = 21
      DataField = 'Telefon'
      DataSource = DM.ds_sotrudnik
      DynProps = <>
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = True
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 136
      Top = 96
      Width = 121
      Height = 21
      DataField = 'DR'
      DataSource = DM.ds_sotrudnik
      DynProps = <>
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkDateEh
      ParentFont = False
      TabOrder = 2
      Visible = True
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 136
      Top = 58
      Width = 233
      Height = 21
      DynProps = <>
      DataField = 'Dolzhnost'
      DataSource = DM.ds_sotrudnik
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = True
    end
    object DBEditEh1: TDBEditEh
      Left = 136
      Top = 21
      Width = 233
      Height = 21
      DataField = 'FIO'
      DataSource = DM.ds_sotrudnik
      DynProps = <>
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = True
    end
    object DBMemoEh1: TDBMemoEh
      Left = 136
      Top = 217
      Width = 233
      Height = 75
      AutoSize = False
      DataField = 'Primechanie'
      DataSource = DM.ds_sotrudnik
      DynProps = <>
      EditButtons = <>
      TabOrder = 5
      Visible = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 307
    Width = 389
    Height = 54
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 136
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
