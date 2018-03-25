object form_vybor_ispolnitel: Tform_vybor_ispolnitel
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1077#1081
  ClientHeight = 296
  ClientWidth = 863
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 337
    Height = 296
    Align = alLeft
    AutoFitColWidths = True
    DataSource = DM.ds_vybor_ispolnitel
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
        FieldName = 'ID_vybor'
        Footers = <>
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_sotrudnik'
        Footers = <>
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_dolzhnost'
        Footers = <>
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Vybran'
        Footers = <>
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Sotrudnik'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
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
        FieldName = 'Dolzhnost'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
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
  object DBGridEh2: TDBGridEh
    Left = 377
    Top = 0
    Width = 486
    Height = 296
    Align = alClient
    AutoFitColWidths = True
    DataSource = DM.ds_ispolnitel
    DrawMemoText = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SortLocal = True
    TabOrder = 1
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_ispolnitel'
        Footers = <>
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_rabota'
        Footers = <>
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_sotrudnik'
        Footers = <>
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Sotrudnik'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
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
        FieldName = 'ID_dolzhnost'
        Footers = <>
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Dolzhnost'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
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
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object GroupBox1: TGroupBox
    Left = 337
    Top = 0
    Width = 40
    Height = 296
    Align = alLeft
    TabOrder = 2
    ExplicitHeight = 272
    object BitBtn1: TBitBtn
      Left = 6
      Top = 72
      Width = 25
      Height = 25
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
