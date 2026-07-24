object FormFeedback: TFormFeedback
  Left = 0
  Top = 0
  ClientHeight = 529
  ClientWidth = 647
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 144
  TextHeight = 25
  object lblCategory: TWebLabel
    Left = 36
    Top = 30
    Width = 76
    Height = 25
    Caption = 'Category:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblMessage: TWebLabel
    Left = 36
    Top = 84
    Width = 114
    Height = 25
    Caption = 'Your message:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object cmbCategory: TWebComboBox
    Left = 180
    Top = 24
    Width = 330
    Height = 33
    HeightPercent = 100.000000000000000000
    Text = 'Bug report'
    WidthPercent = 100.000000000000000000
    ItemIndex = 0
    Items.Strings = (
      'Bug report'
      'Feature request'
      'General question'
      'Compliment'
      'Other')
  end
  object memMessage: TWebMemo
    Left = 36
    Top = 120
    Width = 588
    Height = 270
    HeightPercent = 100.000000000000000000
    SelLength = 0
    SelStart = 0
    WidthPercent = 100.000000000000000000
  end
  object chkCopy: TWebCheckBox
    Left = 36
    Top = 408
    Width = 420
    Height = 26
    Caption = 'Send me a copy by email'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object btnSend: TWebButton
    Left = 360
    Top = 468
    Width = 126
    Height = 45
    Caption = 'Send'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnSendClick
  end
  object btnClose: TWebButton
    Left = 498
    Top = 468
    Width = 126
    Height = 45
    Caption = 'Close'
    Default = True
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnCloseClick
  end
end
