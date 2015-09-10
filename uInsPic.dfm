object fInsPic: TfInsPic
  Left = 409
  Top = 285
  BorderStyle = bsDialog
  Caption = 'Grafika'
  ClientHeight = 239
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = 'Plik:'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 25
    Height = 13
    Caption = 'Opis:'
  end
  object JvSpeedButton1: TJvSpeedButton
    Left = 296
    Top = 8
    Width = 23
    Height = 22
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
    OnClick = JvSpeedButton1Click
  end
  object Label7: TLabel
    Left = 32
    Top = 160
    Width = 70
    Height = 13
    Caption = 'Obramowanie:'
  end
  object Label8: TLabel
    Left = 40
    Top = 184
    Width = 64
    Height = 13
    Caption = 'Wyr'#243'wnanie:'
  end
  object Label9: TLabel
    Left = 8
    Top = 160
    Width = 16
    Height = 13
    Caption = 'D'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object cPicName: TEdit
    Left = 48
    Top = 8
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object cAltText: TEdit
    Left = 48
    Top = 32
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 64
    Width = 281
    Height = 81
    Caption = 'Wymiary'
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 52
      Height = 13
      Caption = 'Wysoko'#347#263':'
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 52
      Height = 13
      Caption = 'Szeroko'#347#263':'
    end
    object Label5: TLabel
      Left = 176
      Top = 32
      Width = 39
      Height = 13
      Caption = 'Odst'#281'p:'
    end
    object Label6: TLabel
      Left = 176
      Top = 56
      Width = 39
      Height = 13
      Caption = 'Odst'#281'p:'
    end
    object cHeight: TJvSpinEdit
      Left = 72
      Top = 24
      Width = 65
      Height = 21
      CheckMinValue = True
      TabOrder = 0
    end
    object cWidth: TJvSpinEdit
      Left = 72
      Top = 48
      Width = 65
      Height = 21
      CheckMinValue = True
      TabOrder = 1
    end
    object cVSpace: TJvSpinEdit
      Left = 216
      Top = 24
      Width = 57
      Height = 21
      CheckMinValue = True
      TabOrder = 2
    end
    object cHSpace: TJvSpinEdit
      Left = 216
      Top = 48
      Width = 57
      Height = 21
      CheckMinValue = True
      TabOrder = 3
    end
    object cHisDec: TTBXCheckBox
      Left = 136
      Top = 26
      Width = 33
      Height = 17
      Caption = '%'
      TabOrder = 4
    end
    object cWisDec: TTBXCheckBox
      Left = 136
      Top = 50
      Width = 33
      Height = 17
      Caption = '%'
      TabOrder = 5
    end
  end
  object cBorder: TJvSpinEdit
    Left = 104
    Top = 152
    Width = 121
    Height = 21
    CheckMinValue = True
    TabOrder = 3
  end
  object cAlign: TComboBox
    Left = 104
    Top = 176
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
    Items.Strings = (
      ''
      'top'
      'bottom'
      'middle'
      'left'
      'right')
  end
  object GroupBox2: TGroupBox
    Left = 296
    Top = 37
    Width = 169
    Height = 169
    Caption = 'Podgl'#261'd'
    TabOrder = 5
    object cImage: TImage
      Left = 8
      Top = 16
      Width = 153
      Height = 145
      Center = True
      Proportional = True
      Stretch = True
    end
  end
  object cFullPath: TTBXCheckBox
    Left = 324
    Top = 4
    Width = 100
    Height = 17
    Caption = 'Pe'#322'na scie'#380'ka'
    TabOrder = 6
  end
  object btnCancel: TJvImgBtn
    Left = 390
    Top = 209
    Width = 73
    Height = 25
    Caption = 'Anuluj'
    ModalResult = 2
    TabOrder = 7
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 35
  end
  object btnOK: TJvImgBtn
    Left = 312
    Top = 209
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 8
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 34
  end
  object cNameCh: TTBXCheckBox
    Left = 324
    Top = 19
    Width = 100
    Height = 17
    Caption = 'Zamie'#324' '#39'\'#39' na '#39'/'#39
    State = cbChecked
    TabOrder = 9
  end
  object dlgOpenPic: TOpenPictureDialog
    Left = 436
    Top = 8
  end
end
