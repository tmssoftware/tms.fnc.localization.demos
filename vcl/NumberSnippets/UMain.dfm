object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Number Snippet Demo (VCL)'
  ClientHeight = 420
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblTitle: TLabel
    Left = 24
    Top = 16
    Width = 652
    Height = 30
    AutoSize = False
    Caption = 'Number snippet demo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblSubtitle: TLabel
    Left = 24
    Top = 52
    Width = 652
    Height = 69
    AutoSize = False
    Caption = 
      'This demo shows the usage of number snippets. Number snippets le' +
      't you retrieve the correct plural form of a localized string bas' +
      'ed on a number. For example, they can automatically choose betwe' +
      'en "1 file" and "2 files" according to the language'#39's pluralizat' +
      'ion rules.'
    WordWrap = True
  end
  object lblLanguage: TLabel
    Left = 396
    Top = 132
    Width = 68
    Height = 23
    AutoSize = False
    Caption = 'Language'
    Layout = tlCenter
  end
  object lblInstruction: TLabel
    Left = 24
    Top = 176
    Width = 652
    Height = 17
    AutoSize = False
    Caption = 'Change the number below:'
  end
  object lblItemCount: TLabel
    Left = 132
    Top = 202
    Width = 544
    Height = 23
    AutoSize = False
    Caption = '1 item in the order.'
    Layout = tlCenter
  end
  object sbCount: TSpinEdit
    Left = 24
    Top = 201
    Width = 96
    Height = 24
    MaxValue = 1000000
    MinValue = 0
    TabOrder = 2
    Value = 1
    OnChange = sbCountChange
  end
  object btnEditor: TButton
    Left = 24
    Top = 129
    Width = 193
    Height = 26
    Caption = 'Open localization editor'
    TabOrder = 0
    OnClick = btnEditorClick
  end
  object cbLanguage: TTMSFNCLocalizationComboBox
    Left = 472
    Top = 129
    Width = 204
    Height = 23
    Style = csDropDownList
    DropDownCount = 16
    TabOrder = 1
  end
  object LocalizationEditor: TTMSFNCLocalizationEditor
    Left = 248
    Top = 272
    Width = 26
    Height = 26
    Visible = True
  end
end
