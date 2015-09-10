object fPassNum: TfPassNum
  Left = 598
  Top = 357
  BorderStyle = bsDialog
  Caption = 'Podaj has'#322'o'
  ClientHeight = 70
  ClientWidth = 216
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object cPassNum: TJvValidateEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    CheckChars = '01234567890'
    CriticalPoints.CheckPoints = cpNone
    CriticalPoints.ColorAbove = clBlue
    CriticalPoints.ColorBelow = clRed
    EditText = '0'
    PasswordChar = #0
    ReadOnly = False
    TabOrder = 0
    Text = '0'
    Value = 0
  end
  object btnCancel: TJvImgBtn
    Left = 138
    Top = 39
    Width = 73
    Height = 25
    Caption = 'Anuluj'
    ModalResult = 2
    TabOrder = 1
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 35
  end
  object btnOK: TJvImgBtn
    Left = 138
    Top = 9
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 34
  end
end
