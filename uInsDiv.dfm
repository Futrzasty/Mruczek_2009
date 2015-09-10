object fInsDiv: TfInsDiv
  Left = 435
  Top = 377
  BorderStyle = bsDialog
  Caption = 'Wstaw blok'
  ClientHeight = 180
  ClientWidth = 234
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
    Top = 78
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 6
    Top = 102
    Width = 35
    Height = 13
    Caption = 'CLASS:'
  end
  object Label3: TLabel
    Left = 6
    Top = 126
    Width = 33
    Height = 13
    Caption = 'STYLE:'
  end
  object btnCancel: TJvImgBtn
    Left = 156
    Top = 150
    Width = 73
    Height = 25
    Caption = 'Anuluj'
    ModalResult = 2
    TabOrder = 0
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 35
  end
  object btnOK: TJvImgBtn
    Left = 78
    Top = 150
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 34
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 6
    Width = 127
    Height = 61
    Caption = 'Typ bloku'
    TabOrder = 2
    object TBXRadioButton1: TTBXRadioButton
      Left = 12
      Top = 18
      Width = 100
      Height = 17
      Caption = 'DIV'
      Checked = True
      TabOrder = 0
    end
    object TBXRadioButton2: TTBXRadioButton
      Left = 12
      Top = 36
      Width = 100
      Height = 17
      Caption = 'SPAN'
      TabOrder = 1
    end
  end
  object cId: TEdit
    Left = 48
    Top = 72
    Width = 175
    Height = 21
    TabOrder = 3
  end
  object cClass: TEdit
    Left = 48
    Top = 96
    Width = 175
    Height = 21
    TabOrder = 4
  end
  object cStyle: TEdit
    Left = 48
    Top = 120
    Width = 175
    Height = 21
    TabOrder = 5
  end
end
