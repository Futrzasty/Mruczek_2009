object fInsTable: TfInsTable
  Left = 422
  Top = 309
  BorderStyle = bsDialog
  Caption = 'Tabela'
  ClientHeight = 199
  ClientWidth = 207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 2
    Width = 201
    Height = 73
    Caption = 'Wymiary'
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 22
      Width = 52
      Height = 13
      Caption = 'Wysoko'#347#263':'
    end
    object Label2: TLabel
      Left = 14
      Top = 46
      Width = 52
      Height = 13
      Caption = 'Szeroko'#347#263':'
    end
    object cHeight: TJvSpinEdit
      Left = 72
      Top = 16
      Width = 121
      Height = 21
      CheckMaxValue = False
      MinValue = 1.000000000000000000
      Value = 2.000000000000000000
      TabOrder = 0
    end
    object cWidth: TJvSpinEdit
      Left = 72
      Top = 40
      Width = 121
      Height = 21
      CheckMaxValue = False
      MinValue = 1.000000000000000000
      Value = 2.000000000000000000
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 76
    Width = 201
    Height = 93
    Caption = 'Wygl'#261'd'
    TabOrder = 1
    object Label3: TLabel
      Left = 28
      Top = 22
      Width = 36
      Height = 13
      Caption = 'Border:'
    end
    object Label4: TLabel
      Left = 5
      Top = 47
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cellpadding:'
    end
    object Label5: TLabel
      Left = 8
      Top = 72
      Width = 57
      Height = 13
      Caption = 'Cellspacing:'
    end
    object cBorder: TJvSpinEdit
      Left = 72
      Top = 16
      Width = 121
      Height = 21
      CheckMinValue = True
      TabOrder = 0
    end
    object cCPad: TJvSpinEdit
      Left = 72
      Top = 42
      Width = 121
      Height = 21
      CheckMinValue = True
      TabOrder = 1
    end
    object cCSpac: TJvSpinEdit
      Left = 72
      Top = 66
      Width = 121
      Height = 21
      CheckMinValue = True
      TabOrder = 2
    end
  end
  object btnCancel: TJvImgBtn
    Left = 127
    Top = 171
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
    Left = 49
    Top = 171
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
end
