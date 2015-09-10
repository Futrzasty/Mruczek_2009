object fSplash: TfSplash
  Left = 192
  Top = 114
  BorderStyle = bsNone
  Caption = 'fSplash'
  ClientHeight = 321
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 529
    Height = 321
    Align = alClient
    AutoSize = True
  end
  object cProgress: TXiProgressBar
    Left = 6
    Top = 300
    Width = 265
    Height = 16
    ColorBorder = 11753728
    BackColorFace = 16771797
    BackColorGrad = clWhite
    ForeColorFace = 16772829
    ForeColorGrad = 16756318
    ColorScheme = csSky
    Max = 2
    Min = 0
    Position = 0
    Step = 10
    Orientation = pbHorizontal
    ShowText = stsNone
  end
end
