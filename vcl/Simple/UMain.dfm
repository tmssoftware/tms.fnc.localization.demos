object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Simple localization demo'
  ClientHeight = 553
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  DesignSize = (
    516
    553)
  TextHeight = 15
  object lblNotes: TLabel
    Left = 8
    Top = 280
    Width = 62
    Height = 15
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Instructions'
  end
  object gbSettings: TGroupBox
    Left = 8
    Top = 8
    Width = 500
    Height = 121
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Application settings'
    TabOrder = 0
    ExplicitWidth = 494
    DesignSize = (
      500
      121)
    object lblName: TLabel
      Left = 8
      Top = 26
      Width = 71
      Height = 15
      Caption = 'Display name'
    end
    object lblLang: TLabel
      Left = 8
      Top = 57
      Width = 52
      Height = 15
      Caption = 'Language'
    end
    object edtName: TEdit
      Left = 120
      Top = 24
      Width = 372
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      TextHint = 'Enter your display name'
      ExplicitWidth = 366
    end
    object cbLanguage: TTMSFNCLocalizationComboBox
      Left = 120
      Top = 54
      Width = 372
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      DropDownCount = 16
      TabOrder = 1
      ExplicitWidth = 366
    end
    object chkUpdate: TCheckBox
      Left = 8
      Top = 86
      Width = 484
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Update automatically'
      TabOrder = 2
      ExplicitWidth = 478
    end
  end
  object gbControls: TGroupBox
    Left = 8
    Top = 145
    Width = 500
    Height = 112
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Sample controls'
    TabOrder = 1
    ExplicitWidth = 494
    DesignSize = (
      500
      112)
    object rbPhone: TRadioButton
      Left = 17
      Top = 24
      Width = 216
      Height = 19
      Caption = 'Phone call'
      TabOrder = 0
    end
    object rbText: TRadioButton
      Left = 17
      Top = 51
      Width = 216
      Height = 19
      Caption = 'Text message'
      TabOrder = 1
    end
    object btnApply: TButton
      Left = 17
      Top = 78
      Width = 475
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Apply changes'
      TabOrder = 3
      ExplicitWidth = 469
    end
    object cbFreq: TComboBox
      Left = 241
      Top = 24
      Width = 251
      Height = 23
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
      ExplicitWidth = 245
    end
  end
  object memNotes: TMemo
    Left = 8
    Top = 297
    Width = 500
    Height = 248
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'This is a TMemo that won'#39't get translated per rules.'
      ''
      'To create the localization file: '
      
        '1. Drop a TTMSFNCLocalizationCollector on the form & set Transla' +
        'tionFolder to ".".'
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
    ExplicitWidth = 494
    ExplicitHeight = 231
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
    LocalizationFolder = '.'
    Left = 239
    Top = 168
  end
end
