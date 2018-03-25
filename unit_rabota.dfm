object form_rabota: Tform_rabota
  Left = 0
  Top = 0
  ActiveControl = DBGridEh1
  Caption = #1056#1072#1073#1086#1090#1099
  ClientHeight = 398
  ClientWidth = 741
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
    Width = 741
    Height = 363
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 105
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 15
      Width = 737
      Height = 346
      Align = alClient
      AutoFitColWidths = True
      DataSource = DM.ds_rabota
      DrawMemoText = True
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
          FieldName = 'ID_rabota'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
          Width = 100
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
          Width = 100
        end
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
          Width = 100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Vid_rabota'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
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
          FieldName = 'ID_oborudovanie'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
          Width = 100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oborudovanie'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
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
          FieldName = 'Nachalo'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1095#1072#1083#1086
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 80
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Okonchanie'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 80
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Prodlen_po'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1086#1076#1083#1077#1085' '#1087#1086
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 80
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Vypolnena'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 80
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Po_rasporiazheniu'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1086' '#1088#1072#1089#1087#1086#1088#1103#1078#1077#1085#1080#1102
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 120
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Po_nariadu_dopusku'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1086' '#1085#1072#1088#1103#1076#1091'-'#1076#1086#1087#1091#1089#1082#1091
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 120
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
          Visible = False
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 363
    Width = 741
    Height = 35
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 240
    ExplicitWidth = 735
    object BitBtn1: TBitBtn
      Left = 16
      Top = 4
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
      Top = 4
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
      Top = 4
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
