object form_otchety: Tform_otchety
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1054#1090#1095#1077#1090#1099
  ClientHeight = 161
  ClientWidth = 185
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
    Width = 185
    Height = 161
    ActivePage = ts_TO
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 163
    object ts_TO: TTabSheet
      Caption = 'ts_TO'
      ExplicitHeight = 135
      object Label1: TLabel
        Left = 16
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
        Left = 16
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
        Left = 16
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
        Left = 16
        Top = 103
        Width = 145
        Height = 17
        TabOrder = 2
      end
    end
  end
end
