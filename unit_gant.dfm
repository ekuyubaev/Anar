object form_gant: Tform_gant
  Left = 0
  Top = 0
  Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1043#1072#1085#1090#1072' '#1076#1083#1103' '#1088#1072#1073#1086#1090' '#1087#1086' '#1058#1054' '#1080' '#1087#1091#1089#1082#1086#1074
  ClientHeight = 521
  ClientWidth = 771
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
    Top = 49
    Width = 771
    Height = 472
    Align = alClient
    TabOrder = 0
    object Chart1: TChart
      Left = 2
      Top = 15
      Width = 767
      Height = 455
      MarginBottom = 0
      MarginLeft = 0
      MarginRight = 0
      MarginTop = 0
      Title.Text.Strings = (
        '')
      BottomAxis.ExactDateTime = False
      BottomAxis.Increment = 0.016666666666666670
      Chart3DPercent = 1
      Align = alClient
      TabOrder = 0
      ColorPaletteIndex = 13
      object Series1: TGanttSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Visible = False
        ClickableLine = False
        Pointer.Brush.Gradient.EndColor = 10708548
        Pointer.Gradient.EndColor = 10708548
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.Name = 'Start'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        StartValues.Name = 'Start'
        StartValues.Order = loAscending
        EndValues.Name = 'End'
        EndValues.Order = loNone
        NextTask.Name = 'NextTask'
        NextTask.Order = loNone
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 771
    Height = 49
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 7
      Width = 43
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 160
      Top = 7
      Width = 63
      Height = 13
      Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 296
      Top = 18
      Width = 80
      Height = 25
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 24
      Top = 22
      Width = 100
      Height = 21
      Date = 43246.806146157410000000
      Time = 43246.806146157410000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 160
      Top = 22
      Width = 100
      Height = 21
      Date = 43246.806280266200000000
      Time = 43246.806280266200000000
      TabOrder = 2
    end
  end
end
