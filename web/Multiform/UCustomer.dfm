object FormCustomer: TFormCustomer
  Left = 0
  Top = 0
  ClientHeight = 538
  ClientWidth = 683
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 144
  TextHeight = 25
  object lblName: TWebLabel
    Left = 36
    Top = 36
    Width = 80
    Height = 25
    Caption = 'Full name:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblEmail: TWebLabel
    Left = 36
    Top = 84
    Width = 113
    Height = 25
    Caption = 'Email address:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblPhone: TWebLabel
    Left = 36
    Top = 132
    Width = 121
    Height = 25
    Caption = 'Phone number:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblCountry: TWebLabel
    Left = 36
    Top = 180
    Width = 67
    Height = 25
    Caption = 'Country:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object edtName: TWebEdit
    Left = 210
    Top = 30
    Width = 450
    Height = 33
    HeightPercent = 100.000000000000000000
    TextHint = 'e.g. John Smith'
    WidthPercent = 100.000000000000000000
  end
  object edtEmail: TWebEdit
    Left = 210
    Top = 78
    Width = 450
    Height = 33
    HeightPercent = 100.000000000000000000
    TextHint = 'name@company.com'
    WidthPercent = 100.000000000000000000
  end
  object edtPhone: TWebEdit
    Left = 210
    Top = 126
    Width = 450
    Height = 33
    HeightPercent = 100.000000000000000000
    TextHint = 'Include the country code'
    WidthPercent = 100.000000000000000000
  end
  object cmbCountry: TWebComboBox
    Left = 210
    Top = 174
    Width = 300
    Height = 33
    HeightPercent = 100.000000000000000000
    Text = 'Belgium'
    WidthPercent = 100.000000000000000000
    ItemIndex = 0
    Items.Strings = (
      'Belgium'
      'France'
      'Germany'
      'Netherlands'
      'United Kingdom'
      'United States')
  end
  object grpContact: TWebGroupBox
    Left = 36
    Top = 234
    Width = 624
    Height = 114
    BorderColor = clSilver
    Caption = 'Preferred contact method'
    object rbEmail: TWebRadioButton
      Left = 24
      Top = 48
      Width = 165
      Height = 26
      Caption = 'By email'
      Checked = True
      Color = clNone
      GroupName = 'contact'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object rbPhone: TWebRadioButton
      Left = 225
      Top = 48
      Width = 165
      Height = 26
      Caption = 'By phone'
      Checked = False
      Color = clNone
      GroupName = 'contact'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object rbPost: TWebRadioButton
      Left = 426
      Top = 48
      Width = 165
      Height = 26
      Caption = 'By post'
      Checked = False
      Color = clNone
      GroupName = 'contact'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
  end
  object chkNewsletter: TWebCheckBox
    Left = 36
    Top = 378
    Width = 480
    Height = 26
    Caption = 'Subscribe to the monthly newsletter'
    Checked = True
    HeightPercent = 100.000000000000000000
    State = cbChecked
    WidthPercent = 100.000000000000000000
  end
  object btnOK: TWebButton
    Left = 396
    Top = 480
    Width = 126
    Height = 45
    Caption = 'OK'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnOKClick
  end
  object btnCancel: TWebButton
    Left = 534
    Top = 480
    Width = 126
    Height = 45
    Caption = 'Cancel'
    Default = True
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnCancelClick
  end
end
