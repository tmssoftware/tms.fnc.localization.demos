object FormMain: TFormMain
  Left = 0
  Top = 0
  ClientHeight = 574
  ClientWidth = 818
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 144
  TextHeight = 25
  object lblTitle: TWebLabel
    Left = 36
    Top = 36
    Width = 539
    Height = 55
    Caption = 'Multi-Form Application Demo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -41
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object lblSubtitle: TWebLabel
    Left = 36
    Top = 90
    Width = 662
    Height = 50
    Caption = 
      'This demo shows dynamically created child forms and localization' +
      ' via TTMSFNCLocalizationForm. Open each form below to explore th' +
      'e different controls.'
    HeightPercent = 100.000000000000000000
    WordWrap = True
    WidthPercent = 100.000000000000000000
  end
  object lblLog: TWebLabel
    Left = 432
    Top = 174
    Width = 93
    Height = 25
    Caption = 'Activity log:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object btnCustomer: TWebButton
    Left = 36
    Top = 174
    Width = 360
    Height = 54
    Caption = 'Customer Details...'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnCustomerClick
  end
  object btnSettings: TWebButton
    Left = 36
    Top = 243
    Width = 360
    Height = 54
    Caption = 'Application Settings...'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnSettingsClick
  end
  object btnFeedback: TWebButton
    Left = 36
    Top = 312
    Width = 360
    Height = 54
    Caption = 'Send Feedback...'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnFeedbackClick
  end
  object btnAbout: TWebButton
    Left = 36
    Top = 381
    Width = 360
    Height = 54
    Caption = 'About This Demo...'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnAboutClick
  end
  object lstLog: TWebListBox
    Left = 432
    Top = 207
    Width = 372
    Height = 228
    HeightPercent = 100.000000000000000000
    ItemHeight = 25
    WidthPercent = 100.000000000000000000
    ItemIndex = -1
  end
  object Localizer: TTMSFNCLocalizationLocalizer
    LocalizationFolder = '.'
    Left = 420
    Top = 456
  end
  object StringCatalog: TTMSFNCLocalizationStringCatalog
    Strings = <
      item
        Name = 'SettingsSaved'
        Value = 'Your settings have been saved.'
      end
      item
        Name = 'EnterMessage'
        Value = 'Please enter a message before sending.'
      end
      item
        Name = 'Feedback'
        Value = 'Thank you for your feedback!'
      end>
    Left = 288
    Top = 456
  end
end
