object fInsAnchor: TfInsAnchor
  Left = 398
  Top = 361
  BorderStyle = bsDialog
  Caption = 'Odno'#347'nik'
  ClientHeight = 126
  ClientWidth = 265
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
    Caption = 'Cel:'
  end
  object Label2: TLabel
    Left = 128
    Top = 72
    Width = 36
    Height = 13
    Caption = 'Ramka:'
  end
  object Label3: TLabel
    Left = 8
    Top = 40
    Width = 36
    Height = 13
    Caption = 'Nazwa:'
  end
  object cHref: TEdit
    Left = 48
    Top = 8
    Width = 209
    Height = 21
    TabOrder = 0
    Text = 'http://'
  end
  object cFrame: TComboBox
    Left = 168
    Top = 64
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      '_parent'
      '_top'
      '_self'
      '_blank')
  end
  object cName: TEdit
    Left = 48
    Top = 32
    Width = 209
    Height = 21
    TabOrder = 2
  end
  object btnCancel: TJvImgBtn
    Left = 186
    Top = 96
    Width = 73
    Height = 25
    Caption = 'Anuluj'
    ModalResult = 2
    TabOrder = 3
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 35
  end
  object btnOK: TJvImgBtn
    Left = 108
    Top = 96
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
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
end
