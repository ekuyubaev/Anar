object form_sotrudnik: Tform_sotrudnik
  Left = 0
  Top = 0
  ActiveControl = DBGridEh1
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
  ClientHeight = 358
  ClientWidth = 562
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 562
    Height = 316
    Align = alClient
    DataSource = DM.ds_sotrudnik
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
        FieldName = 'ID_sotrudnik'
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
        FieldName = 'FIO'
        Footers = <>
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
        DynProps = <>
        EditButtons = <>
        FieldName = 'Dolzhnost'
        Footers = <>
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Title.TitleButton = True
        Width = 200
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_dolzhnost'
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
        FieldName = 'DR'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
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
        FieldName = 'Adress'
        Footers = <>
        Title.Caption = #1040#1076#1088#1077#1089
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Title.TitleButton = True
        Width = 200
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Telefon'
        Footers = <>
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Title.TitleButton = True
        Width = 200
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Primechanie'
        Footers = <>
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 316
    Width = 562
    Height = 42
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 326
    ExplicitWidth = 572
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
