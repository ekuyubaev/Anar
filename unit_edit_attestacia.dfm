object form_edit_attestacia: Tform_edit_attestacia
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1081
  ClientHeight = 513
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 461
    Height = 185
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 105
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 28
      Top = 56
      Width = 93
      Height = 13
      Caption = #1042#1080#1076' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 51
      Top = 96
      Width = 70
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 127
      Top = 13
      Width = 121
      Height = 21
      DataField = 'Data_attestacia'
      DataSource = DM.ds_attestacia
      DynProps = <>
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 0
      Visible = True
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 127
      Top = 53
      Width = 315
      Height = 21
      DynProps = <>
      DataField = 'Vid_attestacia'
      DataSource = DM.ds_attestacia
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object DBMemoEh1: TDBMemoEh
      Left = 127
      Top = 93
      Width = 315
      Height = 68
      AutoSize = False
      DataField = 'Primechanie'
      DataSource = DM.ds_attestacia
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 185
    Width = 461
    Height = 287
    Align = alClient
    Caption = #1057#1087#1080#1089#1086#1082' '#1072#1090#1090#1077#1089#1090#1091#1077#1084#1099#1093
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 2
      Top = 15
      Width = 457
      Height = 34
      Align = alTop
      TabOrder = 0
      object BitBtn3: TBitBtn
        Left = 354
        Top = 3
        Width = 40
        Height = 25
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 0
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 400
        Top = 3
        Width = 40
        Height = 25
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 0
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn4Click
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 49
      Width = 457
      Height = 236
      Align = alClient
      AutoFitColWidths = True
      DataSource = DM.ds_zachet
      DrawMemoText = True
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      IndicatorOptions = [gioShowRowIndicatorEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentFont = False
      SortLocal = True
      TabOrder = 1
      VertScrollBar.VisibleMode = sbAlwaysShowEh
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_zachet'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
          Width = 140
        end
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
          Width = 140
        end
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
          Visible = False
          Width = 140
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_rezultat_attestacia'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
          Width = 140
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Sotrudnik'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 140
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Rezultat'
          Footers = <>
          Title.Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 140
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
          Width = 140
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 472
    Width = 461
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 16
      Top = 6
      Width = 90
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
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
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
