object form_edit_rabota: Tform_edit_rabota
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
  ClientHeight = 556
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 990
    Height = 290
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 266
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 494
      Height = 288
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 264
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 492
        Height = 247
        Align = alClient
        TabOrder = 0
        DesignSize = (
          492
          247)
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 84
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 16
          Top = 61
          Width = 70
          Height = 13
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 287
          Top = 8
          Width = 86
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 288
        end
        object Label4: TLabel
          Left = 16
          Top = 117
          Width = 43
          Height = 13
          Caption = #1053#1072#1095#1072#1083#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 136
          Top = 117
          Width = 63
          Height = 13
          Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 263
          Top = 117
          Width = 69
          Height = 13
          Caption = #1055#1088#1086#1076#1083#1077#1085' '#1087#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 16
          Top = 205
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
        object Label7: TLabel
          Left = 287
          Top = 61
          Width = 126
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100', '#1076#1085#1077#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 288
        end
        object DBEditEh1: TDBEditEh
          Left = 16
          Top = 24
          Width = 256
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Naimenovanie'
          DataSource = DM.ds_rabota
          DynProps = <>
          EditButtons = <>
          TabOrder = 0
          Visible = True
          ExplicitWidth = 257
        end
        object DBLookupComboboxEh1: TDBLookupComboboxEh
          Left = 16
          Top = 77
          Width = 256
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DynProps = <>
          DataField = 'Vid_rabota'
          DataSource = DM.ds_rabota
          DropDownBox.Width = 200
          EditButtons = <>
          TabOrder = 1
          Visible = True
          ExplicitWidth = 257
        end
        object DBLookupComboboxEh2: TDBLookupComboboxEh
          Left = 287
          Top = 24
          Width = 185
          Height = 21
          Anchors = [akTop, akRight]
          DynProps = <>
          DataField = 'Oborudovanie'
          DataSource = DM.ds_rabota
          DropDownBox.Columns = <
            item
              FieldName = 'Naimenovanie'
              Width = 150
            end
            item
              FieldName = 'N_inventarnyi'
              Width = 150
            end>
          DropDownBox.Width = 300
          EditButtons = <>
          TabOrder = 2
          Visible = True
          ExplicitLeft = 288
        end
        object DBDateTimeEditEh1: TDBDateTimeEditEh
          Left = 16
          Top = 133
          Width = 90
          Height = 21
          DataField = 'Nachalo'
          DataSource = DM.ds_rabota
          DynProps = <>
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 3
          Visible = True
        end
        object DBDateTimeEditEh2: TDBDateTimeEditEh
          Left = 136
          Top = 133
          Width = 90
          Height = 21
          DataField = 'Okonchanie'
          DataSource = DM.ds_rabota
          DynProps = <>
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 4
          Visible = True
        end
        object DBDateTimeEditEh3: TDBDateTimeEditEh
          Left = 263
          Top = 133
          Width = 90
          Height = 21
          DataField = 'Prodlen_po'
          DataSource = DM.ds_rabota
          DynProps = <>
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 5
          Visible = True
        end
        object DBCheckBoxEh1: TDBCheckBoxEh
          Left = 389
          Top = 135
          Width = 83
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1074#1099#1087#1086#1083#1085#1077#1085#1072
          DataField = 'Vypolnena'
          DataSource = DM.ds_rabota
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          ExplicitLeft = 390
        end
        object DBCheckBoxEh2: TDBCheckBoxEh
          Left = 16
          Top = 171
          Width = 145
          Height = 17
          Caption = #1087#1086' '#1088#1072#1089#1087#1086#1088#1103#1078#1077#1085#1080#1102' '#8470
          DataField = 'Po_rasporiazheniu'
          DataSource = DM.ds_rabota
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBCheckBoxEh3: TDBCheckBoxEh
          Left = 242
          Top = 171
          Width = 151
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1087#1086' '#1085#1072#1088#1103#1076#1091'-'#1076#1086#1087#1091#1089#1082#1091' '#8470
          DataField = 'Po_nariadu_dopusku'
          DataSource = DM.ds_rabota
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          ExplicitLeft = 243
        end
        object DBMemoEh1: TDBMemoEh
          Left = 16
          Top = 224
          Width = 457
          Height = 17
          Anchors = [akLeft, akTop, akBottom]
          AutoSize = False
          DataField = 'Primechanie'
          DataSource = DM.ds_rabota
          DynProps = <>
          EditButtons = <>
          TabOrder = 9
          Visible = True
        end
        object DBEditEh2: TDBEditEh
          Left = 287
          Top = 75
          Width = 185
          Height = 21
          Alignment = taCenter
          Anchors = [akTop, akRight]
          DataField = 'Periodichnost'
          DataSource = DM.ds_rabota
          DynProps = <>
          EditButtons = <>
          TabOrder = 10
          Visible = True
          ExplicitLeft = 288
        end
        object DBEditEh3: TDBEditEh
          Left = 167
          Top = 169
          Width = 58
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Nomer_rasporiazhenie'
          DataSource = DM.ds_rabota
          DynProps = <>
          EditButtons = <>
          TabOrder = 11
          Visible = True
          ExplicitWidth = 59
        end
        object DBEditEh4: TDBEditEh
          Left = 399
          Top = 169
          Width = 73
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Nomer_nariad'
          DataSource = DM.ds_rabota
          DynProps = <>
          EditButtons = <>
          TabOrder = 12
          Visible = True
          ExplicitLeft = 400
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 248
        Width = 492
        Height = 39
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 224
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
    object Panel4: TPanel
      Left = 495
      Top = 1
      Width = 494
      Height = 288
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 264
      object GroupBox3: TGroupBox
        Left = 1
        Top = 1
        Width = 492
        Height = 32
        Align = alTop
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 5
          Top = 3
          Width = 25
          Height = 25
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 36
          Top = 3
          Width = 25
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
      object GroupBox4: TGroupBox
        Left = 1
        Top = 33
        Width = 492
        Height = 254
        Align = alClient
        Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitHeight = 230
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 15
          Width = 488
          Height = 237
          Align = alClient
          AutoFitColWidths = True
          DataSource = DM.ds_ispolnitel
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
          ReadOnly = True
          SortLocal = True
          TabOrder = 0
          VertScrollBar.VisibleMode = sbAlwaysShowEh
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_ispolnitel'
              Footers = <>
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = False
              Width = 150
            end
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
              Width = 150
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
              Visible = False
              Width = 150
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
              FieldName = 'ID_dolzhnost'
              Footers = <>
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = False
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
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 290
    Width = 990
    Height = 266
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 266
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 494
      Height = 264
      Align = alLeft
      TabOrder = 0
      object GroupBox5: TGroupBox
        Left = 1
        Top = 1
        Width = 492
        Height = 32
        Align = alTop
        TabOrder = 0
        object BitBtn5: TBitBtn
          Left = 10
          Top = 3
          Width = 25
          Height = 25
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 72
          Top = 4
          Width = 25
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn6Click
        end
        object BitBtn7: TBitBtn
          Left = 41
          Top = 4
          Width = 25
          Height = 25
          Caption = 'P'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn7Click
        end
      end
      object GroupBox6: TGroupBox
        Left = 1
        Top = 33
        Width = 492
        Height = 230
        Align = alClient
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 2
          Top = 15
          Width = 488
          Height = 213
          Align = alClient
          DataSource = DM.ds_rashod_MTO
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          IndicatorOptions = [gioShowRowIndicatorEh]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          ReadOnly = True
          SortLocal = True
          TabOrder = 0
          VertScrollBar.VisibleMode = sbAlwaysShowEh
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_rashod_MTO'
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
              FieldName = 'ID_MTO'
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
              FieldName = 'MTO'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1052#1058#1054
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 190
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'Data_vydano'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 100
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'Kolichestvo'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_EI'
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
              FieldName = 'EI'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1045#1076'. '#1080#1079#1084'.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 70
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'Vydano_komu'
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
              FieldName = 'Primechanie'
              Footers = <>
              Title.Alignment = taCenter
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
    end
    object Panel6: TPanel
      Left = 495
      Top = 1
      Width = 494
      Height = 264
      Align = alClient
      TabOrder = 1
      object GroupBox7: TGroupBox
        Left = 1
        Top = 1
        Width = 492
        Height = 32
        Align = alTop
        TabOrder = 0
        object BitBtn8: TBitBtn
          Left = 5
          Top = 3
          Width = 25
          Height = 25
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn8Click
        end
        object BitBtn9: TBitBtn
          Left = 67
          Top = 3
          Width = 25
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn9Click
        end
        object BitBtn10: TBitBtn
          Left = 36
          Top = 3
          Width = 25
          Height = 25
          Caption = 'P'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn10Click
        end
      end
      object GroupBox8: TGroupBox
        Left = 1
        Top = 33
        Width = 492
        Height = 230
        Align = alClient
        Caption = #1043#1057#1052
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object DBGridEh3: TDBGridEh
          Left = 2
          Top = 15
          Width = 488
          Height = 213
          Align = alClient
          AutoFitColWidths = True
          DataSource = DM.ds_rashod_GSM
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          IndicatorOptions = [gioShowRowIndicatorEh]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          VertScrollBar.VisibleMode = sbAlwaysShowEh
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_rashod_GSM'
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
              FieldName = 'ID_GSM'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'GSM'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Width = 190
            end
            item
              AutoFitColWidth = False
              DynProps = <>
              EditButtons = <>
              FieldName = 'Data_vydano'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
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
              FieldName = 'Kolichestvo'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Width = 90
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_EI'
              Footers = <>
              Visible = False
            end
            item
              AutoFitColWidth = False
              DynProps = <>
              EditButtons = <>
              FieldName = 'EI'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1045#1076'. '#1080#1079#1084'.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Width = 70
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'Primechanie'
              Footers = <>
              Visible = False
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
end
