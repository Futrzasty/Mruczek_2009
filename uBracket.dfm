object fBracket: TfBracket
  Left = 403
  Top = 201
  BorderStyle = bsDialog
  Caption = 'Ujmij'
  ClientHeight = 162
  ClientWidth = 206
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
    Left = 6
    Top = 54
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Wstaw przed:'
  end
  object Label2: TLabel
    Left = 21
    Top = 84
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'Wstaw po:'
  end
  object Label3: TLabel
    Left = 6
    Top = 18
    Width = 67
    Height = 13
    Caption = 'Szybki wyb'#243'r:'
  end
  object Bevel1: TBevel
    Left = 6
    Top = 42
    Width = 193
    Height = 13
    Shape = bsTopLine
  end
  object cNewLine: TTBXCheckBox
    Left = 12
    Top = 108
    Width = 157
    Height = 17
    Caption = 'Wstaw w osobnych liniach'
    TabOrder = 2
  end
  object cBefore: TEdit
    Left = 78
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object cAfter: TEdit
    Left = 78
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnOK: TJvImgBtn
    Left = 48
    Top = 132
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
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
  object btnCancel: TJvImgBtn
    Left = 126
    Top = 132
    Width = 73
    Height = 25
    Caption = 'Anuluj'
    ModalResult = 2
    TabOrder = 4
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 35
  end
  object cChoose: TComboBox
    Left = 78
    Top = 12
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    OnChange = cChooseChange
    Items.Strings = (
      ''
      #39
      '"'
      '()'
      '[]'
      '{}'
      '<>')
  end
end
