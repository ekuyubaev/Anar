object form_dolzhnost: Tform_dolzhnost
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
  ClientHeight = 301
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 588
    Height = 301
    Align = alClient
    DataSource = DataModule2.ds_dolzhnost
    DrawMemoText = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_dolzhnost'
        Footers = <>
        Visible = False
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Naimenovanie'
        Footers = <>
        Width = 250
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Primechanie'
        Footers = <>
        Width = 300
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
