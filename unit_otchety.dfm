object form_otchety: Tform_otchety
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1054#1090#1095#1077#1090#1099
  ClientHeight = 226
  ClientWidth = 196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 196
    Height = 226
    ActivePage = ts_attest
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 185
    ExplicitHeight = 161
    object ts_TO: TTabSheet
      Caption = 'ts_TO'
      ExplicitWidth = 177
      ExplicitHeight = 133
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 144
        Height = 13
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1090#1095#1077#1090#1085#1099#1081' '#1075#1086#1076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboBox1: TComboBox
        Left = 24
        Top = 35
        Width = 145
        Height = 21
        ItemIndex = 0
        TabOrder = 0
        Text = '2018'
        Items.Strings = (
          '2018'
          '2019'
          '2020'
          '2021'
          '2022'
          '2023'
          '2024'
          '2025')
      end
      object BitBtn1: TBitBtn
        Left = 24
        Top = 72
        Width = 145
        Height = 25
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object ProgressBar1: TProgressBar
        Left = 24
        Top = 103
        Width = 144
        Height = 17
        TabOrder = 2
      end
    end
    object ts_attest: TTabSheet
      Caption = 'ts_attest'
      ImageIndex = 1
      ExplicitWidth = 177
      ExplicitHeight = 133
      object Label2: TLabel
        Left = 17
        Top = 16
        Width = 157
        Height = 13
        Caption = #1059#1082#1072#1078#1080#1090#1077' '#1076#1072#1090#1091' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 17
        Top = 72
        Width = 93
        Height = 13
        Caption = #1042#1080#1076' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 17
        Top = 35
        Width = 141
        Height = 21
        Date = 43248.853374178240000000
        Time = 43248.853374178240000000
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 17
        Top = 128
        Width = 141
        Height = 25
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object ProgressBar2: TProgressBar
        Left = 17
        Top = 159
        Width = 141
        Height = 17
        TabOrder = 2
      end
      object DBLookupComboboxEh1: TDBLookupComboboxEh
        Left = 17
        Top = 91
        Width = 141
        Height = 21
        DynProps = <>
        DataField = ''
        EditButtons = <>
        KeyField = 'ID_vid_attestacia'
        ListField = 'Naimenovanie'
        ListSource = DM.ds_vid_attestacia
        TabOrder = 3
        Visible = True
      end
    end
  end
end
