object fColEdit: TfColEdit
  Left = 300
  Top = 256
  BorderStyle = bsDialog
  Caption = 'Kolorowanie sk'#322'adni'
  ClientHeight = 384
  ClientWidth = 599
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
  object JvLabel1: TJvLabel
    Left = 48
    Top = 349
    Width = 337
    Height = 30
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Niezapisanie zmian nie powoduje powrotu do poprzednich ustawie'#324'.' +
      ' By cofn'#261#263' zmiany zrestartuj program.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
    AutoOpenURL = False
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object cLangs: TComboBox
    Left = 8
    Top = 8
    Width = 201
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnSelect = cLangsSelect
  end
  object cAttributes: TListBox
    Left = 8
    Top = 40
    Width = 201
    Height = 273
    ItemHeight = 13
    TabOrder = 1
    OnClick = cAttributesClick
  end
  object cPreview: TSynMemo
    Left = 216
    Top = 8
    Width = 377
    Height = 329
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    TabOrder = 2
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Terminal'
    Gutter.Font.Style = []
    Gutter.Visible = False
  end
  object TBXToolbar1: TTBXToolbar
    Left = 16
    Top = 320
    Width = 190
    Height = 22
    Caption = 'TBXToolbar1'
    Images = fMain.cImageList
    TabOrder = 3
    object btnBold: TTBXItem
      AutoCheck = True
      ImageIndex = 3
      OnClick = btnBoldClick
    end
    object btnItalic: TTBXItem
      AutoCheck = True
      ImageIndex = 13
      OnClick = btnItalicClick
    end
    object btnUnder: TTBXItem
      AutoCheck = True
      ImageIndex = 28
      OnClick = btnUnderClick
    end
    object btnStrike: TTBXItem
      AutoCheck = True
      ImageIndex = 25
      OnClick = btnStrikeClick
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXLabelItem1: TTBXLabelItem
      Caption = 'Znaki:'
    end
    object btnForground: TTBXColorItem
      Color = clBlack
      OnClick = btnForgroundClick
    end
    object TBXSeparatorItem2: TTBXSeparatorItem
    end
    object TBXLabelItem2: TTBXLabelItem
      Caption = 'T'#322'o:'
    end
    object btnBackground: TTBXColorItem
      Color = clBlack
      OnClick = btnBackgroundClick
    end
    object TBXEditItem1: TTBXEditItem
      Enabled = False
      Visible = False
    end
    object TBXItem5: TTBXItem
      Caption = 'OK'
      DisplayMode = nbdmTextOnly
      Enabled = False
      Visible = False
    end
  end
  object btnOK: TJvImgBtn
    Left = 420
    Top = 354
    Width = 85
    Height = 25
    Caption = 'Zapisz'
    ModalResult = 1
    TabOrder = 4
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 34
  end
  object btnCancel: TJvImgBtn
    Left = 510
    Top = 354
    Width = 85
    Height = 25
    Caption = 'Nie zapisuj'
    ModalResult = 2
    TabOrder = 5
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 35
  end
  object dlgColor: TColorDialog
    Left = 536
    Top = 16
  end
end
