object form_attestacia: Tform_attestacia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1090#1090#1077#1089#1090#1072#1094#1080#1103
  ClientHeight = 427
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 492
    Height = 392
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 105
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 15
      Width = 488
      Height = 375
      Align = alClient
      AutoFitColWidths = True
      DataSource = DM.ds_attestacia
      DrawMemoText = True
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ReadOnly = True
      SortLocal = True
      TabOrder = 0
      VertScrollBar.VisibleMode = sbAlwaysShowEh
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_attestacia'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
          Width = 150
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Data_attestacia'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 150
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_vid_attestacia'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
          Width = 150
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Vid_attestacia'
          Footers = <>
          Title.Caption = #1042#1080#1076' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1080
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 150
          WordWrap = False
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Primechanie'
          Footers = <>
          Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 150
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 392
    Width = 492
    Height = 35
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 6
      Width = 90
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
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
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 224
      Top = 6
      Width = 90
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
end
