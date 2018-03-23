object form_oborudovanie: Tform_oborudovanie
  Left = 0
  Top = 0
  ActiveControl = DBGridEh1
  Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
  ClientHeight = 338
  ClientWidth = 784
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
    Width = 784
    Height = 300
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 794
    ExplicitHeight = 310
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 15
      Width = 780
      Height = 283
      Align = alClient
      AutoFitColWidths = True
      DataSource = DM.ds_oborudovanie
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
          FieldName = 'ID_oborudovanie'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Visible = False
          Width = 100
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
          Title.Caption = 'N_'#1079#1072#1074#1086#1076#1089#1082#1086#1081
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 85
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'N_inventarnyi'
          Footers = <>
          Title.Caption = 'N_'#1080#1085#1074#1077#1085#1090#1072#1088'.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 85
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
          Width = 130
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Periodichnost_TO'
          Footers = <>
          Title.Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100' '#1058#1054
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
          Width = 100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Sooruzhene'
          Footers = <>
          Title.Caption = #1057#1086#1086#1088#1091#1078#1077#1085#1080#1077
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
          FieldName = 'ID_sostoianie'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Visible = False
          Width = 100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_sooruzhenie'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Visible = False
          Width = 100
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
          Visible = False
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 300
    Width = 784
    Height = 38
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 310
    ExplicitWidth = 794
    DesignSize = (
      784
      38)
    object BitBtn1: TBitBtn
      Left = 16
      Top = 4
      Width = 90
      Height = 25
      Anchors = [akLeft, akBottom]
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
      Top = 4
      Width = 90
      Height = 25
      Anchors = [akLeft, akBottom]
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
      Top = 4
      Width = 90
      Height = 25
      Anchors = [akLeft, akBottom]
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
    object BitBtn4: TBitBtn
      Left = 678
      Top = 4
      Width = 90
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1053#1072#1088#1072#1073#1086#1090#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn4Click
      ExplicitLeft = 688
    end
  end
end
