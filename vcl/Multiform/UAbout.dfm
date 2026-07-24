object FormAbout: TFormAbout
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 390
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 144
  TextHeight = 25
  object lblProduct: TLabel
    Left = 0
    Top = 42
    Width = 600
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    AutoSize = False
    Caption = 'Multi-Form Demo Application'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -41
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblVersion: TLabel
    Left = 0
    Top = 99
    Width = 600
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    AutoSize = False
    Caption = 'Version 1.0.0'
  end
  object lblDescription: TLabel
    Left = 45
    Top = 150
    Width = 510
    Height = 78
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'A sample application with dynamically created child forms, used ' +
      'to demonstrate application localization.'
    WordWrap = True
  end
  object lblCopyright: TLabel
    Left = 0
    Top = 246
    Width = 600
    Height = 23
    Hint = 'Copyright'
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    AutoSize = False
    Caption = #169' 2026 TMS software. All rights reserved.'
    ParentShowHint = False
    ShowHint = True
  end
  object btnClose: TButton
    Left = 237
    Top = 306
    Width = 126
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Cancel = True
    Caption = 'Close'
    Default = True
    ModalResult = 2
    TabOrder = 0
  end
end
