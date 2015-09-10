object fWebBrowser: TfWebBrowser
  Left = 192
  Top = 114
  Width = 866
  Height = 665
  Caption = 'Podgl'#261'd HTML'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  DesignSize = (
    858
    631)
  PixelsPerInch = 96
  TextHeight = 13
  object cWebBrowser: TWebBrowser
    Left = 72
    Top = 108
    Width = 289
    Height = 193
    Anchors = []
    TabOrder = 0
    OnStatusTextChange = cWebBrowserStatusTextChange
    OnProgressChange = cWebBrowserProgressChange
    OnCommandStateChange = cWebBrowserCommandStateChange
    OnNavigateComplete2 = cWebBrowserNavigateComplete2
    ControlData = {
      4C000000DE1D0000F21300000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object cStatusBar: TTBXStatusBar
    Left = 0
    Top = 609
    Width = 858
    Panels = <
      item
        MaxSize = 2000
        StretchPriority = 1
        Tag = 0
        TextTruncation = twEndEllipsis
      end
      item
        Control = cProgress
        Size = 130
        Tag = 0
      end
      item
        Size = 17
        Tag = 0
      end>
    UseSystemFont = True
    object cProgress: TXiProgressBar
      Left = 711
      Top = 4
      Width = 128
      Height = 16
      ColorBorder = 11753728
      BackColorFace = 16771797
      BackColorGrad = clWhite
      ForeColorFace = 16772829
      ForeColorGrad = 16756318
      ColorScheme = csSky
      Max = 100
      Min = 0
      Position = 0
      Step = 10
      Orientation = pbHorizontal
      ShowText = stsNone
      Align = alBottom
    end
  end
  object dockTop: TTBDock
    Left = 0
    Top = 0
    Width = 858
    Height = 51
    OnResize = FormResize
    object tNavigate: TTBXToolbar
      Left = 0
      Top = 0
      Caption = 'tNavigate'
      Images = fMain.cImageList
      TabOrder = 0
      object tBack: TTBXItem
        Caption = 'Wstecz'
        DisplayMode = nbdmImageAndText
        ImageIndex = 48
        OnClick = tBackClick
      end
      object tForward: TTBXItem
        Caption = 'Dalej'
        DisplayMode = nbdmImageAndText
        ImageIndex = 49
        OnClick = tForwardClick
      end
      object tStop: TTBXItem
        Caption = 'Stop'
        DisplayMode = nbdmImageAndText
        ImageIndex = 52
        OnClick = tStopClick
      end
      object tReload: TTBXItem
        Caption = 'Od'#347'wie'#380
        DisplayMode = nbdmImageAndText
        ImageIndex = 50
        OnClick = tReloadClick
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tClose: TTBXItem
        Caption = 'Zamknij'
        DisplayMode = nbdmImageAndText
        ImageIndex = 9
        OnClick = tCloseClick
      end
    end
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 26
      Caption = 'TBXToolbar1'
      DockPos = 0
      DockRow = 1
      TabOrder = 1
      object TBXLabelItem1: TTBXLabelItem
        Caption = 'URL:'
      end
      object tAddress: TTBXEditItem
        Caption = 'Adres'
        EditWidth = 400
        OnAcceptText = tAddressAcceptText
      end
    end
  end
  object dockBottom: TTBDock
    Left = 0
    Top = 600
    Width = 858
    Height = 9
    Position = dpBottom
    OnResize = FormResize
  end
  object dockLeft: TTBDock
    Left = 0
    Top = 51
    Width = 9
    Height = 549
    Position = dpLeft
    OnResize = FormResize
  end
  object dockRight: TTBDock
    Left = 849
    Top = 51
    Width = 9
    Height = 549
    Position = dpRight
    OnResize = FormResize
  end
end
