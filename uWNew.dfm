object fWNew: TfWNew
  Left = 412
  Top = 221
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Co nowego'
  ClientHeight = 346
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TJvImgBtn
    Left = 291
    Top = 315
    Width = 75
    Height = 25
    Caption = 'Zamknij'
    ModalResult = 1
    TabOrder = 0
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Images = fMain.cImageList
    ImageIndex = 32
  end
  object JvScrollText1: TJvScrollText
    Left = 0
    Top = 228
    Width = 377
    Height = 79
    Alignment = taCenter
    Items.Strings = (
      'Podzi'#281'kowania dla:'
      '- autor'#243'w wszystkich komponent'#243'w u'#380'ytych w tym programie'
      '- autor'#243'w wszelkiej grafiki w nim zawartej'
      '- Betatester'#243'w :-D'
      '- grupy dyskusyjnej: pl.comp.lang.delphi'
      ''
      '...i wszystkich innych, kt'#243'rzy pomagali...')
    Active = True
    Delay = 90
    BackgroundColor = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    WordWrap = False
  end
  object JvPageControl1: TJvPageControl
    Left = 0
    Top = 0
    Width = 377
    Height = 225
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Co nowego'
      object cList: TMemo
        Left = 0
        Top = 0
        Width = 369
        Height = 197
        Align = alClient
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Znane b'#322#281'dy'
      ImageIndex = 1
      object cList1: TMemo
        Left = 0
        Top = 0
        Width = 369
        Height = 197
        Align = alClient
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
