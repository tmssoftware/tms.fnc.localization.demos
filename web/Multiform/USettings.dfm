object FormSettings: TFormSettings
  Left = 0
  Top = 0
  ClientHeight = 493
  ClientWidth = 702
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 144
  TextHeight = 25
  object PageControl1: TWebPageControl
    Left = 24
    Top = 24
    Width = 642
    Height = 378
    TabIndex = 0
    TabOrder = 0
    object tabGeneral: TWebTabSheet
      Left = 0
      Top = 20
      Width = 642
      Height = 358
      Caption = 'General'
      object lblLanguage: TWebLabel
        Left = 24
        Top = 138
        Width = 150
        Height = 25
        Caption = 'Interface language:'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object chkStartup: TWebCheckBox
        Left = 24
        Top = 24
        Width = 570
        Height = 26
        Caption = 'Launch application at startup'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object chkUpdates: TWebCheckBox
        Left = 24
        Top = 72
        Width = 570
        Height = 26
        Caption = 'Check for updates automatically'
        Checked = True
        HeightPercent = 100.000000000000000000
        State = cbChecked
        WidthPercent = 100.000000000000000000
      end
      object TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox
        Left = 240
        Top = 132
        Width = 218
        Height = 33
        Style = csDropDownList
        TabOrder = 2
      end
    end
    object tabDisplay: TWebTabSheet
      Left = 0
      Top = 20
      Width = 642
      Height = 358
      Caption = 'Display'
      object lblFontSize: TWebLabel
        Left = 24
        Top = 162
        Width = 123
        Height = 25
        Caption = 'Editor font size:'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object grpTheme: TWebGroupBox
        Left = 24
        Top = 18
        Width = 570
        Height = 114
        BorderColor = clSilver
        Caption = 'Color theme'
        object rbLight: TWebRadioButton
          Left = 24
          Top = 48
          Width = 120
          Height = 26
          Caption = 'Light'
          Checked = True
          Color = clNone
          GroupName = 'theme'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object rbDark: TWebRadioButton
          Left = 165
          Top = 48
          Width = 120
          Height = 26
          Caption = 'Dark'
          Checked = False
          Color = clNone
          GroupName = 'theme'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object rbSystem: TWebRadioButton
          Left = 306
          Top = 48
          Width = 240
          Height = 26
          Caption = 'Use system setting'
          Checked = False
          Color = clNone
          GroupName = 'theme'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
      end
      object trkFontSize: TWebTrackBar
        Left = 240
        Top = 156
        Width = 300
        Height = 24
        Max = 24
        Min = 8
        Position = 12
        Role = ''
      end
      object chkToolbar: TWebCheckBox
        Left = 24
        Top = 222
        Width = 570
        Height = 26
        Caption = 'Show captions on toolbar buttons'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
    end
  end
  object btnSave: TWebButton
    Left = 402
    Top = 426
    Width = 126
    Height = 45
    Caption = 'Save'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnSaveClick
  end
  object btnCancel: TWebButton
    Left = 540
    Top = 426
    Width = 126
    Height = 45
    Caption = 'Cancel'
    Default = True
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnCancelClick
  end
end
