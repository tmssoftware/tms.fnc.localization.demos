object FormCustomer: TFormCustomer
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  BorderStyle = bsDialog
  Caption = 'Customer Details'
  ClientHeight = 552
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 144
  TextHeight = 25
  object lblName: TLabel
    Left = 36
    Top = 36
    Width = 162
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = 'Full name:'
  end
  object lblEmail: TLabel
    Left = 36
    Top = 84
    Width = 162
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = 'Email address:'
  end
  object lblPhone: TLabel
    Left = 36
    Top = 132
    Width = 162
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = 'Phone number:'
  end
  object lblCountry: TLabel
    Left = 36
    Top = 180
    Width = 162
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = 'Country:'
  end
  object edtName: TEdit
    Left = 210
    Top = 30
    Width = 450
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 0
    TextHint = 'e.g. John Smith'
  end
  object edtEmail: TEdit
    Left = 210
    Top = 78
    Width = 450
    Height = 33
    Hint = 'We will never share your email address'
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TextHint = 'name@company.com'
  end
  object edtPhone: TEdit
    Left = 210
    Top = 126
    Width = 450
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 2
    TextHint = 'Include the country code'
  end
  object cmbCountry: TComboBox
    Left = 210
    Top = 174
    Width = 300
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = 'Belgium'
    Items.Strings = (
      'Belgium'
      'France'
      'Germany'
      'Netherlands'
      'United Kingdom'
      'United States')
  end
  object grpContact: TGroupBox
    Left = 36
    Top = 234
    Width = 624
    Height = 114
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Preferred contact method'
    TabOrder = 4
    object rbEmail: TRadioButton
      Left = 24
      Top = 48
      Width = 165
      Height = 26
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'By email'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbPhone: TRadioButton
      Left = 225
      Top = 48
      Width = 165
      Height = 26
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'By phone'
      TabOrder = 1
    end
    object rbPost: TRadioButton
      Left = 426
      Top = 48
      Width = 165
      Height = 26
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'By post'
      TabOrder = 2
    end
  end
  object chkNewsletter: TCheckBox
    Left = 36
    Top = 378
    Width = 480
    Height = 26
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Subscribe to the monthly newsletter'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object btnOK: TButton
    Left = 396
    Top = 480
    Width = 126
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 6
  end
  object btnCancel: TButton
    Left = 534
    Top = 480
    Width = 126
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
  end
end
