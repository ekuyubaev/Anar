object form_edit_vydacha_ZIP: Tform_edit_vydacha_ZIP
  Left = 0
  Top = 0
  Caption = #1042#1099#1076#1072#1095#1072' '#1047#1048#1055
  ClientHeight = 304
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 80
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 93
    Height = 13
    Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 136
    Width = 70
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    FocusControl = DBMemo1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 152
    Width = 265
    Height = 89
    DataField = 'Primechanie'
    DataSource = DM.ds_vydacha_ZIP
    TabOrder = 0
  end
  object DBDateTimeEditEh1: TDBDateTimeEditEh
    Left = 24
    Top = 43
    Width = 265
    Height = 21
    DataField = 'Data_vydano'
    DataSource = DM.ds_vydacha_ZIP
    DynProps = <>
    EditButtons = <>
    TabOrder = 1
    Visible = True
    EditFormat = 'DD.MM.YYYY HH:NN'
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 264
    Width = 90
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 264
    Width = 90
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 24
    Top = 99
    Width = 265
    Height = 21
    DynProps = <>
    DataField = 'Otvetstvennyi'
    DataSource = DM.ds_vydacha_ZIP
    EditButtons = <>
    KeyField = 'FIO'
    ListField = 'FIO'
    ListSource = DM.ds_sotrudnik
    TabOrder = 4
    Visible = True
  end
end
