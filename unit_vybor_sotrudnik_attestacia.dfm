object form_vybor_sotrudnik_attestacia: Tform_vybor_sotrudnik_attestacia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074' '#1076#1083#1103' '#1072#1090#1090#1077#1089#1090#1072#1094#1080#1080
  ClientHeight = 362
  ClientWidth = 750
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
    Width = 385
    Height = 362
    Align = alLeft
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 15
      Width = 381
      Height = 345
      Align = alClient
      AutoFitColWidths = True
      DataSource = DM.ds_vybor_sotrudnik_attestacia
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
          Width = 180
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
          Width = 180
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 385
    Top = 0
    Width = 41
    Height = 362
    Align = alLeft
    TabOrder = 1
    ExplicitLeft = 400
    object BitBtn1: TBitBtn
      Left = 6
      Top = 89
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
  object GroupBox3: TGroupBox
    Left = 426
    Top = 0
    Width = 324
    Height = 362
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 452
    ExplicitWidth = 327
    object DBGridEh2: TDBGridEh
      Left = 2
      Top = 15
      Width = 320
      Height = 345
      Align = alClient
      AutoFitColWidths = True
      DataSource = DM.ds_zachet
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
          Title.TitleButton = True
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
          Title.TitleButton = True
          Visible = False
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_sotrudnik'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Visible = False
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_rezultat_attestacia'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Visible = False
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Primechanie'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
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
          Width = 300
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Rezultat'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
