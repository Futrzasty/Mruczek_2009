object fForm: TfForm
  Left = 388
  Top = 371
  BorderStyle = bsDialog
  Caption = 'Formularz'
  ClientHeight = 474
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 2
    Width = 441
    Height = 95
    Caption = 'Og'#243'lne'
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 30
      Height = 13
      Caption = 'Akcja:'
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 40
      Height = 13
      Caption = 'Metoda:'
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 56
      Height = 13
      Caption = 'Kodowanie:'
    end
    object cAction: TComboBox
      Left = 72
      Top = 16
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'http://'
        'mailto:')
    end
    object cMethod: TComboBox
      Left = 72
      Top = 40
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        ''
        'GET'
        'POST')
    end
    object cEncoding: TComboBox
      Left = 72
      Top = 64
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'text/plain'
        'application/x-www-form-urlencoded'
        'multipart/form-data')
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 102
    Width = 441
    Height = 337
    Caption = 'Pola formularza'
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 8
      Top = 176
      Width = 425
      Height = 155
      Caption = 'Podgl'#261'd (zawarto'#347#263' znajdzie si'#281' mi'#281'dzy <FORM> a </FORM>)'
      TabOrder = 0
      object cPreview: TSynMemo
        Left = 8
        Top = 16
        Width = 409
        Height = 97
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        TabOrder = 0
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Terminal'
        Gutter.Font.Style = []
        Gutter.Visible = False
        Highlighter = fMain.hlHTML
        Options = [eoAutoIndent, eoDragDropEditing, eoGroupUndo, eoHideShowScrollbars, eoScrollPastEol, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTabsToSpaces, eoTrimTrailingSpaces]
      end
      object cClear: TJvBitBtn
        Left = 342
        Top = 122
        Width = 75
        Height = 25
        Caption = 'Wyczy'#347#263
        TabOrder = 1
        OnClick = cClearClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
    end
    object cField: TComboBox
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Pole tekstowe (text)'
      OnChange = cFieldChange
      Items.Strings = (
        'Pole tekstowe (text)'
        'Pole has'#322'a (password)'
        'Pole ukryte (hidden)'
        'Checkbox (checkbox)'
        'Radio button(radio)'
        'Plik (file)'
        'Przycisk (button)'
        'Obrazek (image)'
        'Wy'#347'lij (submit)'
        'Wyczy'#347#263' (reset)')
    end
    object btnAdd: TJvBitBtn
      Left = 160
      Top = 16
      Width = 75
      Height = 21
      Caption = 'Dodaj pole'
      TabOrder = 2
      OnClick = btnAddClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 42
      Width = 425
      Height = 129
      Caption = 'Warto'#347'ci'
      TabOrder = 3
      object Label4: TLabel
        Left = 16
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Nazwa:'
      end
      object Label5: TLabel
        Left = 8
        Top = 48
        Width = 44
        Height = 13
        Caption = 'Warto'#347#263':'
      end
      object Label6: TLabel
        Left = 32
        Top = 72
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object Label7: TLabel
        Left = 336
        Top = 8
        Width = 64
        Height = 13
        Caption = 'Wyr'#243'wnanie:'
      end
      object Label8: TLabel
        Left = 336
        Top = 48
        Width = 60
        Height = 13
        Caption = 'Typy plik'#243'w:'
      end
      object Label9: TLabel
        Left = 8
        Top = 96
        Width = 39
        Height = 13
        Caption = #346'cie'#380'ka:'
      end
      object cName: TEdit
        Left = 56
        Top = 16
        Width = 97
        Height = 21
        TabOrder = 0
      end
      object cValue: TEdit
        Left = 56
        Top = 40
        Width = 97
        Height = 21
        TabOrder = 1
      end
      object cID: TEdit
        Left = 56
        Top = 64
        Width = 97
        Height = 21
        TabOrder = 2
      end
      object cReadOnly: TTBXCheckBox
        Left = 168
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Tylko-do-odczytu'
        TabOrder = 3
      end
      object cDisabled: TTBXCheckBox
        Left = 168
        Top = 32
        Width = 105
        Height = 17
        Caption = 'Pole nieaktywne'
        TabOrder = 4
      end
      object cChecked: TTBXCheckBox
        Left = 168
        Top = 48
        Width = 100
        Height = 17
        Caption = 'Zaznaczone'
        TabOrder = 5
      end
      object cLength: TTBXCheckBox
        Left = 208
        Top = 80
        Width = 65
        Height = 17
        Caption = 'Rozmiar:'
        TabOrder = 6
        OnChange = cLengthChange
      end
      object cMaxLength: TTBXCheckBox
        Left = 208
        Top = 104
        Width = 65
        Height = 17
        Caption = 'Limit do:'
        TabOrder = 7
        OnChange = cLengthChange
      end
      object cAlign: TComboBox
        Left = 336
        Top = 24
        Width = 81
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 8
        Items.Strings = (
          ''
          'left'
          'right'
          'top'
          'texttop'
          'middle'
          'absmiddle'
          'baseline'
          'bottom'
          'absbottom')
      end
      object cFileTypes: TComboBox
        Left = 336
        Top = 64
        Width = 81
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 9
        Items.Strings = (
          ''
          'image/gif'
          'image/jpeg'
          'audio/basic'
          'audio/mpeg')
      end
      object cFileName: TEdit
        Left = 56
        Top = 88
        Width = 137
        Height = 21
        TabOrder = 10
      end
      object cLengthVal: TJvSpinEdit
        Left = 272
        Top = 80
        Width = 49
        Height = 21
        CheckMinValue = True
        Enabled = False
        TabOrder = 11
      end
      object cMaxLengthVal: TJvSpinEdit
        Left = 272
        Top = 104
        Width = 49
        Height = 21
        CheckMinValue = True
        Enabled = False
        TabOrder = 12
      end
    end
  end
  object btnCancel: TJvImgBtn
    Left = 372
    Top = 444
    Width = 73
    Height = 25
    Caption = 'Anuluj'
    ModalResult = 2
    TabOrder = 2
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 35
  end
  object btnOK: TJvImgBtn
    Left = 294
    Top = 444
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 3
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 34
  end
end
