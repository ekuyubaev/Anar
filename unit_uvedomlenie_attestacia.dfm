object form_uvedomlenie_attestacia: Tform_uvedomlenie_attestacia
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = #1059#1074#1077#1076#1077#1084#1083#1077#1085#1080#1077' '#1086#1073' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1103
  ClientHeight = 317
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 881
    Height = 276
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 105
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 15
      Width = 877
      Height = 259
      Align = alClient
      AutoFitColWidths = True
      DrawMemoText = True
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ReadOnly = True
      SortLocal = True
      TabOrder = 0
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_zachet'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_attestacia'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Data_attestacia'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 120
        end
        item
          LookupParams.KeyFieldNames = 'ID_vid_attestacia'
          LookupParams.LookupDataSet = DM.q_vid_attestacia
          LookupParams.LookupDisplayFieldName = 'Naimenovanie'
          LookupParams.LookupKeyFieldNames = 'ID_vid_attestacia'
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_vid_attestacia'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1042#1080#1076' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1080
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 200
        end
        item
          LookupParams.KeyFieldNames = 'ID_sotrudnik'
          LookupParams.LookupDataSet = DM.q_sotrudnik
          LookupParams.LookupDisplayFieldName = 'FIO'
          LookupParams.LookupKeyFieldNames = 'ID_sotrudnik'
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_sotrudnik'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 200
        end
        item
          LookupParams.KeyFieldNames = 'ID_rezultat_attestacia'
          LookupParams.LookupDataSet = DM.q_rezultat_attestacia
          LookupParams.LookupDisplayFieldName = 'Naimenovanie'
          LookupParams.LookupKeyFieldNames = 'ID_rezultat_attestacia'
          Alignment = taCenter
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_rezultat_attestacia'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1080
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 150
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Primechanie'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
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
          FieldName = 'ID_attestacia_1'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Primechanie_1'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 276
    Width = 881
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 272
    ExplicitWidth = 457
    DesignSize = (
      881
      41)
    object btnClose: TBitBtn
      Left = 776
      Top = 6
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'btnClose'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object BitBtn1: TBitBtn
      Left = 16
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
      OnClick = BitBtn1Click
    end
  end
end
