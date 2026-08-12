object Form1: TForm1
  Width = 821
  Height = 1004
  Menu = WebMainMenu1
  PixelsPerInch = 144
  object WebLabel1: TWebLabel
    Left = 10
    Top = 480
    Width = 92
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Instructions'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebGroupBox1: TWebGroupBox
    Left = 10
    Top = 46
    Width = 759
    Height = 183
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    BorderColor = clSilver
    Caption = 'Application settings'
    object WebLabel2: TWebLabel
      Left = 24
      Top = 36
      Width = 107
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Display name'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebLabel3: TWebLabel
      Left = 24
      Top = 79
      Width = 77
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Language'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebEdit1: TWebEdit
      Left = 204
      Top = 33
      Width = 529
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ChildOrder = 2
      HeightPercent = 100.000000000000000000
      TextHint = 'Enter your display name'
      WidthPercent = 100.000000000000000000
    end
    object WebCheckBox1: TWebCheckBox
      Left = 24
      Top = 132
      Width = 397
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Update automatically'
      ChildOrder = 4
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox
      Left = 204
      Top = 76
      Width = 529
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Style = csDropDownList
      TabOrder = 2
    end
  end
  object WebGroupBox2: TWebGroupBox
    Left = 10
    Top = 263
    Width = 759
    Height = 194
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    BorderColor = clSilver
    Caption = 'Sample controls'
    ChildOrder = 1
    object WebRadioButton1: TWebRadioButton
      Left = 24
      Top = 51
      Width = 397
      Height = 23
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Phone call'
      Checked = False
      Color = clNone
      GroupName = 'contact'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebRadioButton2: TWebRadioButton
      Left = 24
      Top = 84
      Width = 397
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Text message'
      Checked = False
      ChildOrder = 1
      Color = clNone
      GroupName = 'contact'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebComboBox2: TWebComboBox
      Left = 456
      Top = 40
      Width = 277
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      HeightPercent = 100.000000000000000000
      Text = 'Weekly'
      WidthPercent = 100.000000000000000000
      ItemIndex = 2
      Items.Strings = (
        'Hourly'
        'Daily'
        'Weekly'
        'Monthly'
        'Yearly')
    end
    object WebButton1: TWebButton
      Left = 24
      Top = 127
      Width = 709
      Height = 42
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Apply changes'
      ChildOrder = 3
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
  end
  object WebMemo1: TWebMemo
    Left = 10
    Top = 516
    Width = 759
    Height = 373
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    HeightPercent = 100.000000000000000000
    Lines.Strings = (
      'This is a TMemo that won'#39't get translated per rules.'
      ''
      'To create the localization file: '
      '1. Drop a TTMSFNCLocalizationCollector on the form.'
      '2. Double-click the collector to open the editor.'
      
        '3. Edit the values or fill in your preferred AI credentials and ' +
        'let it do the localization. You'#39'll need '
      'to do this per langauge.'
      '4. Close the editor if you are finished.'
      '5. Build the application.'
      
        '6. Copy the translation.json from the Win32 output folder to the' +
        ' TMSWeb output folder.'
      ''
      'Run the application:'
      'Change language with the combobox.'
      '')
    SelLength = 0
    SelStart = 543
    WidthPercent = 100.000000000000000000
  end
  object WebMainMenu1: TWebMainMenu
    Appearance.HamburgerMenu.Caption = 'Menu'
    Appearance.SubmenuIndicator = '&#9658;'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 552
    Top = 168
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object Aboutthisapplication1: TMenuItem
        Caption = 'About this application'
      end
    end
  end
  object TMSFNCLocalizationLocalizer1: TTMSFNCLocalizationLocalizer
    LocalizationFolder = '.'
    Left = 324
    Top = 216
  end
end
