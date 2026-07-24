object FormAbout: TFormAbout
  Left = 0
  Top = 0
  ClientHeight = 402
  ClientWidth = 605
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 144
  TextHeight = 25
  object lblProduct: TWebLabel
    Left = 8
    Top = 42
    Width = 539
    Height = 55
    Alignment = taCenter
    Caption = 'Multi-Form Demo Application'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -41
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object lblVersion: TWebLabel
    Left = 8
    Top = 99
    Width = 101
    Height = 25
    Alignment = taCenter
    Caption = 'Version 1.0.0'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblDescription: TWebLabel
    Left = 45
    Top = 150
    Width = 506
    Height = 50
    Alignment = taCenter
    Caption = 
      'A sample application with dynamically created child forms, used ' +
      'to demonstrate application localization.'
    HeightPercent = 100.000000000000000000
    WordWrap = True
    WidthPercent = 100.000000000000000000
  end
  object lblCopyright: TWebLabel
    Left = 8
    Top = 246
    Width = 329
    Height = 25
    Alignment = taCenter
    Caption = #169' 2026 TMS software. All rights reserved.'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object btnClose: TWebButton
    Left = 237
    Top = 306
    Width = 126
    Height = 45
    Caption = 'Close'
    Default = True
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnCloseClick
  end
end
