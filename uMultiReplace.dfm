object fMultiReplace: TfMultiReplace
  Left = 394
  Top = 224
  BorderStyle = bsDialog
  Caption = 'Seria zamian'
  ClientHeight = 354
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 6
    Top = 6
    Width = 379
    Height = 253
    Caption = 'Lista'
    TabOrder = 0
    object Label1: TLabel
      Left = 78
      Top = 184
      Width = 46
      Height = 13
      Caption = 'zmie'#324' na:'
    end
    object cRep: TEdit
      Left = 12
      Top = 180
      Width = 61
      Height = 21
      TabOrder = 0
    end
    object cRepTo: TEdit
      Left = 126
      Top = 180
      Width = 79
      Height = 21
      TabOrder = 1
    end
    object cAdd: TJvBitBtn
      Left = 215
      Top = 181
      Width = 75
      Height = 19
      Caption = 'Dodaj'
      TabOrder = 2
      OnClick = cAddClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object cDel: TJvBitBtn
      Left = 293
      Top = 181
      Width = 75
      Height = 19
      Caption = 'Usu'#324
      TabOrder = 3
      OnClick = cDelClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object cMultiList: TJvStringGrid
      Left = 6
      Top = 18
      Width = 367
      Height = 157
      ColCount = 2
      DefaultRowHeight = 18
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 4
      Alignment = taLeftJustify
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'MS Sans Serif'
      FixedFont.Style = []
      ColWidths = (
        181
        180)
    end
    object cCaseSensitive: TTBXCheckBox
      Left = 12
      Top = 210
      Width = 100
      Height = 17
      Caption = 'Wielko'#347#263' liter'
      State = cbChecked
      TabOrder = 5
    end
    object cPrompt: TTBXCheckBox
      Left = 12
      Top = 228
      Width = 100
      Height = 17
      Caption = 'Pytaj o zmiany'
      TabOrder = 6
    end
    object cSelOnly: TTBXCheckBox
      Left = 126
      Top = 210
      Width = 109
      Height = 17
      Caption = 'Tylko zaznaczenie'
      TabOrder = 7
    end
    object cFromCaret: TTBXCheckBox
      Left = 264
      Top = 210
      Width = 100
      Height = 17
      Caption = 'Od kursora'
      TabOrder = 8
      OnChange = cFromCaretChange
    end
    object cBackward: TTBXCheckBox
      Left = 264
      Top = 228
      Width = 100
      Height = 17
      Caption = 'Wstecz'
      Enabled = False
      TabOrder = 9
    end
  end
  object GroupBox2: TGroupBox
    Left = 6
    Top = 264
    Width = 379
    Height = 55
    Caption = 'Zapis / Odczyt'
    TabOrder = 1
    object btnSave: TJvBitBtn
      Left = 12
      Top = 18
      Width = 79
      Height = 25
      Caption = 'Zapisz'
      TabOrder = 0
      OnClick = btnSaveClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000D40E0000D40E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000BFBFBFBFBFBF000000
        008080008080000000000000000000000000000000000000C0C0C0C0C0C00000
        00008080000000BFBFBFBFBFBF00000000808000808000000000000000000000
        0000000000000000C0C0C0C0C0C0000000008080000000BFBFBFBFBFBF000000
        008080008080000000000000000000000000000000000000C0C0C0C0C0C00000
        00008080000000BFBFBFBFBFBF00000000808000808000000000000000000000
        0000000000000000000000000000000000008080000000BFBFBFBFBFBF000000
        0080800080800080800080800080800080800080800080800080800080800080
        80008080000000BFBFBFBFBFBF00000000808000808000000000000000000000
        0000000000000000000000000000008080008080000000BFBFBFBFBFBF000000
        008080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
        00008080000000BFBFBFBFBFBF000000008080000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000008080000000BFBFBFBFBFBF000000
        008080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
        00008080000000BFBFBFBFBFBF000000008080000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000008080000000BFBFBFBFBFBF000000
        008080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
        00000000000000BFBFBFBFBFBF000000008080000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000BFBFBFBFBFBF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object btnLoad: TJvBitBtn
      Left = 102
      Top = 18
      Width = 79
      Height = 25
      Caption = 'Odczytaj'
      TabOrder = 1
      OnClick = btnLoadClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000D40E0000D40E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000
        000000000000000000000000000000000000000000000000000000BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF00000000000000808000808000808000808000808000
        8080008080008080008080000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFF
        0000000080800080800080800080800080800080800080800080800080800000
        00BFBFBFBFBFBFBFBFBF000000FFFFFF00FFFF00000000808000808000808000
        8080008080008080008080008080008080000000BFBFBFBFBFBF00000000FFFF
        FFFFFF00FFFF0000000080800080800080800080800080800080800080800080
        80008080000000BFBFBF000000FFFFFF00FFFFFFFFFF00FFFF00000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF
        FFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000FFFF
        FFFFFF00FFFF000000000000000000000000000000000000000000BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF000000BFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object cSaveOpt: TTBXCheckBox
      Left = 204
      Top = 22
      Width = 127
      Height = 17
      Caption = 'Zachowaj ustawienia'
      TabOrder = 2
    end
  end
  object btnCancel: TJvImgBtn
    Left = 312
    Top = 324
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
    Left = 234
    Top = 324
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
  object dlgSave: TJvSaveDialog
    DefaultExt = 'csv'
    Filter = 'CSV|*.csv'
    Height = 0
    Width = 0
    Left = 198
    Top = 324
  end
  object dlgOpen: TJvOpenDialog
    DefaultExt = 'csv'
    Filter = 'CSV|*.csv'
    Height = 0
    Width = 0
    Left = 168
    Top = 324
  end
end
