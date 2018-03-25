object form_vid_rabota: Tform_vid_rabota
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1080#1076#1099' '#1088#1072#1073#1086#1090
  ClientHeight = 344
  ClientWidth = 457
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
    Width = 457
    Height = 344
    Align = alClient
    AutoFitColWidths = True
    DataSource = DM.ds_vid_rabota
    DrawMemoText = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SortLocal = True
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_vid_rabota'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = False
        Width = 200
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Naimenovanie'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
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
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 200
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
