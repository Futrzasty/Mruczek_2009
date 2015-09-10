object TextSearchDialog: TTextSearchDialog
  Left = 187
  Top = 182
  BorderStyle = bsDialog
  Caption = 'Znajd'#378' tekst'
  ClientHeight = 180
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 12
    Width = 36
    Height = 13
    Caption = '&Znajd'#378':'
  end
  object cbSearchText: TComboBox
    Left = 96
    Top = 8
    Width = 228
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object gbSearchOptions: TGroupBox
    Left = 8
    Top = 40
    Width = 154
    Height = 127
    Caption = 'Opcje'
    TabOrder = 1
    object cbSearchCaseSensitive: TCheckBox
      Left = 8
      Top = 17
      Width = 140
      Height = 17
      Caption = 'Uwzgl'#281'dnij wielko'#347#263' liter'
      TabOrder = 0
    end
    object cbSearchWholeWords: TCheckBox
      Left = 8
      Top = 39
      Width = 140
      Height = 17
      Caption = 'Uwzgl'#281'dnij ca'#322'e wyrazy'
      TabOrder = 1
    end
    object cbSearchFromCursor: TCheckBox
      Left = 8
      Top = 61
      Width = 140
      Height = 17
      Caption = 'Szukaj od kursora'
      TabOrder = 2
    end
    object cbSearchSelectedOnly: TCheckBox
      Left = 8
      Top = 83
      Width = 140
      Height = 17
      Caption = 'Tylko zaznaczony tekst'
      TabOrder = 3
    end
    object cbRegularExpression: TCheckBox
      Left = 8
      Top = 104
      Width = 140
      Height = 17
      Caption = 'Wyra'#380'enie regularne'
      TabOrder = 4
    end
  end
  object rgSearchDirection: TRadioGroup
    Left = 170
    Top = 40
    Width = 154
    Height = 65
    Caption = 'Kierunek szukania'
    ItemIndex = 0
    Items.Strings = (
      'W prz'#243'd'
      'W ty'#322)
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 170
    Top = 149
    Width = 75
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object btnCancel: TButton
    Left = 249
    Top = 149
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Anuluj'
    ModalResult = 2
    TabOrder = 4
  end
end
