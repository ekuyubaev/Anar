object form_narabotka: Tform_narabotka
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1053#1072#1088#1072#1073#1086#1090#1082#1072' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  ClientHeight = 339
  ClientWidth = 594
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
    Width = 594
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 304
      Top = 11
      Width = 81
      Height = 13
      Caption = 'N_'#1080#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081
      FocusControl = DBEdit2
    end
    object Label2: TLabel
      Left = 16
      Top = 11
      Width = 73
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 30
      Width = 217
      Height = 21
      DataField = 'Naimenovanie'
      DataSource = DM.ds_oborudovanie
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 304
      Top = 30
      Width = 130
      Height = 21
      DataField = 'N_inventarnyi'
      DataSource = DM.ds_oborudovanie
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 57
    Width = 594
    Height = 282
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 15
      Width = 590
      Height = 265
      Align = alClient
      AutoFitColWidths = True
      DataSource = DM.ds_narabotka
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
          FieldName = 'ID_narabotka'
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
          AutoFitColWidth = False
          ButtonStyle = cbsNone
          DisplayFormat = 'dd.mm.yyyy hh:mm'
          DynProps = <>
          EditButton.Visible = False
          EditButtons = <>
          EditMask = '!90.90.0000 90:00;1;_'
          FieldName = 'Data_narabotka'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072'_'#1074#1088#1077#1084#1103
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
          FieldName = 'Narabotka'
          Footers = <>
          Title.Caption = #1053#1072#1088#1072#1073#1086#1090#1082#1072
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
          FieldName = 'EI'
          Footers = <>
          Title.Caption = #1045#1076'. '#1080#1079#1084'.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 60
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_EI'
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
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Narabotka_vsego'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1053#1072#1088#1072#1073#1086#1090#1082#1072' '#1074#1089#1077#1075#1086
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 110
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
end
