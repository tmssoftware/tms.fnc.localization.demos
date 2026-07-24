object FormSettings: TFormSettings
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  BorderStyle = bsDialog
  Caption = 'Application Settings'
  ClientHeight = 495
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 144
  TextHeight = 25
  object PageControl1: TPageControl
    Left = 24
    Top = 24
    Width = 642
    Height = 378
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = tabGeneral
    TabOrder = 0
    object tabGeneral: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'General'
      object lblLanguage: TLabel
        Left = 24
        Top = 138
        Width = 204
        Height = 23
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        Caption = 'Interface language:'
      end
      object chkStartup: TCheckBox
        Left = 24
        Top = 24
        Width = 570
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Launch application at startup'
        TabOrder = 0
      end
      object chkUpdates: TCheckBox
        Left = 24
        Top = 72
        Width = 570
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Check for updates automatically'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox
        Left = 240
        Top = 132
        Width = 218
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Style = csDropDownList
        DropDownCount = 16
        TabOrder = 2
      end
    end
    object tabDisplay: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Display'
      object lblFontSize: TLabel
        Left = 24
        Top = 162
        Width = 204
        Height = 23
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        Caption = 'Editor font size:'
      end
      object grpTheme: TGroupBox
        Left = 24
        Top = 18
        Width = 570
        Height = 114
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Color theme'
        TabOrder = 0
        object rbLight: TRadioButton
          Left = 24
          Top = 48
          Width = 120
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Light'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rbDark: TRadioButton
          Left = 165
          Top = 48
          Width = 120
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Dark'
          TabOrder = 1
        end
        object rbSystem: TRadioButton
          Left = 306
          Top = 48
          Width = 240
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Use system setting'
          TabOrder = 2
        end
      end
      object trkFontSize: TTrackBar
        Left = 240
        Top = 156
        Width = 300
        Height = 45
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Max = 24
        Min = 8
        Position = 12
        TabOrder = 1
        ThumbLength = 30
      end
      object chkToolbar: TCheckBox
        Left = 24
        Top = 222
        Width = 570
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Show captions on toolbar buttons'
        TabOrder = 2
      end
    end
  end
  object btnSave: TButton
    Left = 402
    Top = 426
    Width = 126
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Save'
    Default = True
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 540
    Top = 426
    Width = 126
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
