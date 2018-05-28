object form_prognoz: Tform_prognoz
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1075#1085#1086#1079#1080#1088#1086#1074#1072#1085#1080#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1043#1057#1052
  ClientHeight = 520
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 739
    Height = 73
    Align = alTop
    TabOrder = 0
    DesignSize = (
      739
      73)
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 51
      Height = 26
      Hint = 
        #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1077#1089#1103#1094#1077#1074' '#1082#1086#1090#1086#1088#1086#1077' '#1073#1091#1076#1077#1090' '#1073#1088#1072#1090#1100#1089#1103' '#1076#1083#1103' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1087#1088#1086#1075#1085#1086#1079 +
        #1072
      Caption = #1056#1072#1079#1084#1077#1088' '#1074#1099#1073#1086#1088#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      WordWrap = True
    end
    object Label2: TLabel
      Left = 112
      Top = 16
      Width = 77
      Height = 26
      Caption = #1048#1085#1090#1077#1088#1074#1072#1083' '#1089#1075#1083#1072#1078#1080#1074#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 328
      Top = 14
      Width = 77
      Height = 26
      Caption = #1057#1088#1077#1076#1085#1103#1103' '#1087#1086#1075#1088#1077#1096#1085#1086#1089#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label4: TLabel
      Left = 224
      Top = 16
      Width = 82
      Height = 26
      Caption = #1043#1086#1088#1080#1079#1086#1085#1090' '#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 47
      Width = 57
      Height = 21
      Hint = 
        #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1077#1089#1103#1094#1077#1074' '#1082#1086#1090#1086#1088#1086#1077' '#1073#1091#1076#1077#1090' '#1073#1088#1072#1090#1100#1089#1103' '#1076#1083#1103' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1087#1088#1086#1075#1085#1086#1079 +
        #1072
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '3'
      Items.Strings = (
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object ComboBox2: TComboBox
      Left = 112
      Top = 47
      Width = 81
      Height = 21
      ItemIndex = 0
      TabOrder = 1
      Text = '3'
      Items.Strings = (
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object BitBtn1: TBitBtn
      Left = 433
      Top = 33
      Width = 185
      Height = 25
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1087#1088#1086#1075#1085#1086#1079#1080#1088#1086#1074#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object Edit1: TEdit
      Left = 328
      Top = 46
      Width = 77
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object ComboBox3: TComboBox
      Left = 224
      Top = 47
      Width = 89
      Height = 21
      ItemIndex = 0
      TabOrder = 4
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3')
    end
    object BitBtn2: TBitBtn
      Left = 656
      Top = 33
      Width = 64
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1055#1077#1095#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object ProgressBar1: TProgressBar
      Left = 570
      Top = 10
      Width = 150
      Height = 17
      Anchors = [akTop, akRight]
      TabOrder = 6
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 73
    Width = 739
    Height = 447
    Align = alClient
    TabOrder = 1
    object Chart1: TChart
      Left = 2
      Top = 15
      Width = 735
      Height = 430
      Legend.LegendStyle = lsSeries
      MarginBottom = 0
      MarginLeft = 0
      MarginRight = 0
      MarginTop = 0
      PrintProportional = False
      Title.Text.Strings = (
        '')
      View3D = False
      View3DWalls = False
      Align = alClient
      TabOrder = 0
      PrintMargins = (
        15
        17
        15
        17)
      ColorPaletteIndex = 13
      object Series1: TLineSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Visible = False
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
  end
end
