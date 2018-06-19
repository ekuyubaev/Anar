object form_napravlenie: Tform_napravlenie
  Left = 0
  Top = 0
  Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1080
  ClientHeight = 324
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 447
    Height = 324
    Align = alClient
    AutoFitColWidths = True
    DataSource = DM.ds_napravlenie
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SortLocal = True
    TabOrder = 0
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_napravlenie'
        Footers = <>
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Napravlenie'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1080
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Title.TitleButton = True
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
