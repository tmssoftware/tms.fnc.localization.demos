object FormFeedback: TFormFeedback
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  BorderStyle = bsDialog
  Caption = 'Send Feedback'
  ClientHeight = 534
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 144
  TextHeight = 25
  object lblCategory: TLabel
    Left = 36
    Top = 30
    Width = 132
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = 'Category:'
  end
  object lblMessage: TLabel
    Left = 36
    Top = 84
    Width = 300
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = 'Your message:'
  end
  object cmbCategory: TComboBox
    Left = 180
    Top = 24
    Width = 330
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 0
    Text = 'Bug report'
    Items.Strings = (
      'Bug report'
      'Feature request'
      'General question'
      'Compliment'
      'Other')
  end
  object memMessage: TMemo
    Left = 36
    Top = 120
    Width = 588
    Height = 270
    Hint = 'Describe your issue or suggestion in a few sentences'
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ParentShowHint = False
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 1
  end
  object chkCopy: TCheckBox
    Left = 36
    Top = 408
    Width = 420
    Height = 26
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Send me a copy by email'
    TabOrder = 2
  end
  object btnSend: TButton
    Left = 360
    Top = 468
    Width = 126
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Send'
    Default = True
    TabOrder = 3
    OnClick = btnSendClick
  end
  object btnClose: TButton
    Left = 498
    Top = 468
    Width = 126
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Cancel = True
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 4
  end
end
