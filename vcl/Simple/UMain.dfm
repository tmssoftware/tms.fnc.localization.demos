object Form2: TForm2
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Simple translation demo'
  ClientHeight = 830
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  PixelsPerInch = 144
  DesignSize = (
    774
    830)
  TextHeight = 25
  object lblNotes: TLabel
    Left = 12
    Top = 420
    Width = 92
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Instructions'
  end
  object gbSettings: TGroupBox
    Left = 12
    Top = 12
    Width = 750
    Height = 182
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Application settings'
    TabOrder = 0
    DesignSize = (
      750
      182)
    object lblName: TLabel
      Left = 12
      Top = 39
      Width = 107
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Display name'
    end
    object lblLang: TLabel
      Left = 12
      Top = 86
      Width = 77
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Language'
    end
    object edtName: TEdit
      Left = 180
      Top = 36
      Width = 558
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      TextHint = 'Enter your display name'
    end
    object cbLanguage: TTMSFNCLocalizationComboBox
      Left = 180
      Top = 81
      Width = 558
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      DropDownCount = 16
      TabOrder = 1
    end
    object chkUpdate: TCheckBox
      Left = 12
      Top = 129
      Width = 726
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Update automatically'
      TabOrder = 2
    end
  end
  object gbControls: TGroupBox
    Left = 12
    Top = 218
    Width = 750
    Height = 168
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Sample controls'
    TabOrder = 1
    DesignSize = (
      750
      168)
    object rbPhone: TRadioButton
      Left = 26
      Top = 36
      Width = 324
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Phone call'
      TabOrder = 0
    end
    object rbText: TRadioButton
      Left = 26
      Top = 77
      Width = 324
      Height = 28
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Text message'
      TabOrder = 1
    end
    object btnApply: TButton
      Left = 26
      Top = 117
      Width = 712
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Apply changes'
      TabOrder = 3
    end
    object cbFreq: TComboBox
      Left = 362
      Top = 36
      Width = 376
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemIndex = 2
      TabOrder = 2
      Text = 'Weekly'
      Items.Strings = (
        'Hourly'
        'Daily'
        'Weekly'
        'Monthly'
        'Yearly')
    end
  end
  object memNotes: TMemo
    Left = 12
    Top = 446
    Width = 750
    Height = 372
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'This is a TMemo that won'#39't get translated per rules.'
      ''
      'To create the translation file: '
      
        '1. Drop a TTMSFNCLocalizationCollector on the form & set Translat' +
        'ionFolder to ".".'
      '2. Double-click the collector to open the editor.'
      
        '3. Edit the values or fill in your preferred AI credentials and ' +
        'let it do the translation. You'#39'll '
      'need '
      'to do this per langauge.'
      '4. Close the editor if you are finished.'
      ''
      'Run the application:'
      'Change language with the combobox.')
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 360
    Top = 144
    object MenuItem1: TMenuItem
      Caption = 'File'
      object MenuItem3: TMenuItem
        Caption = 'Exit'
      end
    end
    object MenuItem2: TMenuItem
      Caption = 'Help'
      object MenuItem4: TMenuItem
        Caption = 'About this application'
      end
    end
  end
  object TMSFNCLocalizationLocalizer1: TTMSFNCLocalizationLocalizer
    TranslationFolder = '.'
    TranslationFiles = <>
    Left = 239
    Top = 168
  end
end
