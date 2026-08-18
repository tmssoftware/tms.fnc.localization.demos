object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Number Snippet Demo (WEB)'
  ClientHeight = 480
  ClientWidth = 840
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 144
  TextHeight = 25
  object lblTitle: TWebLabel
    Left = 36
    Top = 24
    Width = 302
    Height = 41
    Caption = 'Number snippet demo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
  end
  object lblSubtitle: TWebLabel
    Left = 36
    Top = 78
    Width = 765
    Height = 75
    Caption = 
      'This demo shows the usage of number snippets. Number snippets le' +
      't you retrieve the correct plural form of a localized string bas' +
      'ed on a number. For example, they can automatically choose betwe' +
      'en '#8220'1 file'#8221' and '#8220'2 files'#8221' according to the language'#39's pluralizat' +
      'ion rules.'
    HeightPercent = 100.000000000000000000
    WordWrap = True
    WidthPercent = 100.000000000000000000
  end
  object lblLanguage: TWebLabel
    Left = 456
    Top = 195
    Width = 77
    Height = 25
    Caption = 'Language'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblInstruction: TWebLabel
    Left = 36
    Top = 270
    Width = 214
    Height = 25
    Caption = 'Change the number below:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblItemCount: TWebLabel
    Left = 198
    Top = 306
    Width = 151
    Height = 25
    Caption = '1 item in the order.'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object sbCount: TWebSpinEdit
    Left = 36
    Top = 303
    Width = 144
    Height = 42
    AutoSize = False
    BorderStyle = bsSingle
    Color = clWhite
    Increment = 1
    MaxValue = 1000000
    MinValue = 0
    Role = ''
    TabOrder = 2
    Value = 1
    OnChange = sbCountChange
  end
  object btnEditor: TWebButton
    Left = 36
    Top = 190
    Width = 290
    Height = 42
    Caption = 'Open localization editor'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnEditorClick
  end
  object cbLanguage: TTMSFNCLocalizationComboBox
    Left = 576
    Top = 190
    Width = 228
    Height = 33
    Style = csDropDownList
    TabOrder = 1
  end
  object LocalizationEditor: TTMSFNCLocalizationEditor
    Left = 396
    Top = 384
    Width = 39
    Height = 39
    Visible = True
  end
  object Localizer: TTMSFNCLocalizationLocalizer
    LocalizationFolder = '.'
    Left = 660
    Top = 384
  end
  object Collector: TTMSFNCLocalizationCollector
    Left = 528
    Top = 384
  end
end
