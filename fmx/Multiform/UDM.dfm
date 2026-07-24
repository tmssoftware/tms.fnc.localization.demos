object DM: TDM
  Height = 255
  Width = 425
  PixelsPerInch = 144
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
    Left = 112
    Top = 80
  end
  object Localizer: TTMSFNCLocalizationLocalizer
    TranslationFolder = '.'
    TranslationFiles = <>
    Left = 280
    Top = 80
  end
end
