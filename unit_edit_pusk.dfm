object form_edit_pusk: Tform_edit_pusk
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1072#1074#1083#1077#1085#1080#1077'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1091#1089#1082#1072
  ClientHeight = 301
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
    Height = 264
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 32
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 28
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
      Left = 36
      Top = 69
      Width = 76
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 117
      Width = 96
      Height = 13
      Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 42
      Top = 168
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
      Left = 118
      Top = 21
      Width = 121
      Height = 21
      DataField = 'Naimenovanie'
      DataSource = DM.ds_pusk
      DynProps = <>
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 118
      Top = 66
      Width = 121
      Height = 21
      DataField = 'Data_nachalo'
      DataSource = DM.ds_pusk
      DynProps = <>
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 1
      Visible = True
    end
    object DBDateTimeEditEh2: TDBDateTimeEditEh
      Left = 118
      Top = 114
      Width = 121
      Height = 21
      DataField = 'Data_okonchanie'
      DataSource = DM.ds_pusk
      DynProps = <>
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 2
      Visible = True
    end
    object DBMemoEh1: TDBMemoEh
      Left = 118
      Top = 165
      Width = 185
      Height = 89
      AutoSize = False
      DataField = 'Primechanie'
      DataSource = DM.ds_pusk
      DynProps = <>
      EditButtons = <>
      TabOrder = 3
      Visible = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 264
    Width = 321
    Height = 37
    Align = alBottom
    TabOrder = 1
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
      Left = 120
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