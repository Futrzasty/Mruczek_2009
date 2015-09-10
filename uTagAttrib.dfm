object fTagAttrib: TfTagAttrib
  Left = 447
  Top = 272
  BorderStyle = bsDialog
  Caption = 'Parametry tag-u'
  ClientHeight = 242
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cList: TMemo
    Left = 2
    Top = 2
    Width = 321
    Height = 201
    Lines.Strings = (
      'cList')
    ReadOnly = True
    TabOrder = 0
  end
  object btnCancel: TJvImgBtn
    Left = 246
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Zamknij'
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
end
