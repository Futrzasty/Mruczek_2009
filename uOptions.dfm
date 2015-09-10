object fOptions: TfOptions
  Left = 261
  Top = 319
  BorderStyle = bsDialog
  Caption = 'Opcje'
  ClientHeight = 344
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnHelp: TJvSpeedButton
    Left = 8
    Top = 312
    Width = 25
    Height = 25
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000130B0000130B00001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333366333
      33333333336446333333333333E6643333333333333E66333333333333333333
      333333333334463333333333336664333333333333E664333333333333E66643
      33333333333E6664333333333333E6664333333344333E6664333336664333E6
      6433333E6664446664333333E6666666663333333EE666666333}
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    OnClick = btnHelpClick
  end
  object JvImgBtn1: TJvImgBtn
    Left = 150
    Top = 312
    Width = 75
    Height = 25
    Caption = 'OK'
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
  object JvImgBtn2: TJvImgBtn
    Left = 232
    Top = 312
    Width = 75
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
  object JvPageControl1: TJvPageControl
    Left = 0
    Top = 0
    Width = 313
    Height = 305
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Globalne'
      object GroupBox3: TGroupBox
        Left = 8
        Top = 216
        Width = 289
        Height = 57
        Caption = 'Nawiasy'
        TabOrder = 0
        object cBrackMatch: TTBXCheckBox
          Left = 8
          Top = 16
          Width = 169
          Height = 17
          Caption = 'Zaznaczaj pasuj'#261'ce nawiasy'
          TabOrder = 0
        end
        object cAutoBracket: TTBXCheckBox
          Left = 8
          Top = 34
          Width = 221
          Height = 17
          Caption = 'Automatycznie domykaj nawiasy'
          TabOrder = 1
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 0
        Width = 289
        Height = 57
        Caption = 'Uruchamianie'
        TabOrder = 1
        object cNewDoc: TTBXCheckBox
          Left = 8
          Top = 34
          Width = 265
          Height = 17
          Caption = 'Tw'#243'rz nowy dokument podczas startu'
          TabOrder = 1
        end
        object cOneInstance: TTBXCheckBox
          Left = 8
          Top = 16
          Width = 269
          Height = 17
          Caption = 'Uruchamiaj tylko jedn'#261' kopi'#281' programu'
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 168
        Width = 289
        Height = 41
        Caption = 'Kolorowanie'
        TabOrder = 2
        object cMultiHigh: TTBXCheckBox
          Left = 8
          Top = 16
          Width = 241
          Height = 17
          Caption = 'MultiHighlight'
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 8
        Top = 64
        Width = 289
        Height = 97
        Caption = 'Interfejs'
        TabOrder = 3
        object cReadLists: TTBXCheckBox
          Left = 8
          Top = 16
          Width = 163
          Height = 17
          Caption = 'Zapisuj stan list CSS i HTML'
          TabOrder = 1
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 40
          Width = 273
          Height = 49
          Caption = 'Ostatnio u'#380'ywane'
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 20
            Width = 62
            Height = 13
            Caption = 'Ilo'#347#263' pozycji:'
          end
          object cRecentNum: TComboBox
            Left = 80
            Top = 16
            Width = 49
            Height = 21
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 0
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'HTML'
      ImageIndex = 2
      object cXHTML: TTBXCheckBox
        Left = 8
        Top = 8
        Width = 201
        Height = 17
        Caption = 'Zamykanie ka'#380'dego taga (XHTML)'
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Katalogi'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 8
        Top = 0
        Width = 289
        Height = 75
        Caption = 'Katalog tymczasowy'
        TabOrder = 0
        object Label2: TLabel
          Left = 12
          Top = 42
          Width = 235
          Height = 13
          Caption = 'Musisz mie'#263' pe'#322'ne prawa zapisu do tego katalogu'
        end
        object Label3: TLabel
          Left = 12
          Top = 56
          Width = 217
          Height = 13
          Caption = 'Zostaw puste by u'#380'ywa'#263' katalogu domy'#347'lego'
        end
        object cTempDir: TEdit
          Left = 6
          Top = 18
          Width = 275
          Height = 21
          TabOrder = 0
          Text = 'cTempDir'
        end
      end
    end
  end
end
