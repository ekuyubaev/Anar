object form_sredstvo_izmerenia: Tform_sredstvo_izmerenia
  Left = 0
  Top = 0
  ActiveControl = DBGridEh1
  Caption = #1057#1088#1077#1076#1089#1090#1074#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
  ClientHeight = 323
  ClientWidth = 776
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
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 776
    Height = 288
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 15
      Width = 772
      Height = 271
      Align = alClient
      AutoFitColWidths = True
      DataSource = DM.ds_sredstvo_izmerenia
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
          FieldName = 'ID_sredstvo_izmerenia'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Visible = False
          Width = 90
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Naimenovanie'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 150
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'N_zavodskoi'
          Footers = <>
          Title.Caption = 'N '#1079#1072#1074#1086#1076#1089#1082#1086#1081
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 100
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'N_inventarnyi'
          Footers = <>
          Title.Caption = 'N '#1080#1085#1074#1077#1085#1090#1072#1088#1085'.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Sostoianie'
          Footers = <>
          Title.Caption = #1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 130
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Data_vvedeno'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072' '#1074' '#1101#1082#1089#1087#1083'.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 125
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Periodichnost_poverka'
          Footers = <>
          Title.Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100' '#1087#1086#1074#1077#1088#1082#1080
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
          FieldName = 'ID_sostoianie'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Visible = False
          Width = 90
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
          Title.TitleButton = True
          Width = 150
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 288
    Width = 776
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
