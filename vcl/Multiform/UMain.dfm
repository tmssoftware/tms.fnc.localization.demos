object FormMain: TFormMain
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Multi-Form Demo'
  ClientHeight = 630
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 144
  TextHeight = 25
  object lblTitle: TLabel
    Left = 36
    Top = 24
    Width = 768
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = 'Multi-Form Application Demo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -41
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblSubtitle: TLabel
    Left = 36
    Top = 78
    Width = 768
    Height = 57
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = 
      'This demo shows dynamically created child forms and localization' +
      ' via TTMSFNCLocalizationForm. Open each form below to explore the' +
      ' different controls.'
    WordWrap = True
  end
  object lblLog: TLabel
    Left = 432
    Top = 156
    Width = 372
    Height = 27
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = 'Activity log:'
  end
  object btnCustomer: TButton
    Left = 36
    Top = 156
    Width = 360
    Height = 54
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Customer Details...'
    TabOrder = 0
    OnClick = btnCustomerClick
  end
  object btnSettings: TButton
    Left = 36
    Top = 225
    Width = 360
    Height = 54
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Application Settings...'
    TabOrder = 1
    OnClick = btnSettingsClick
  end
  object btnFeedback: TButton
    Left = 36
    Top = 294
    Width = 360
    Height = 54
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Send Feedback...'
    TabOrder = 2
    OnClick = btnFeedbackClick
  end
  object btnAbout: TButton
    Left = 36
    Top = 363
    Width = 360
    Height = 54
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'About This Demo...'
    TabOrder = 3
    OnClick = btnAboutClick
  end
  object lstLog: TListBox
    Left = 432
    Top = 189
    Width = 372
    Height = 228
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ItemHeight = 25
    TabOrder = 4
  end
  object MainMenu1: TMainMenu
    Left = 400
    Top = 460
    object mnuFile: TMenuItem
      Caption = 'File'
      object mnuFileExit: TMenuItem
        Caption = 'Exit'
        OnClick = mnuFileExitClick
      end
    end
    object mnuForms: TMenuItem
      Caption = 'Forms'
      object mnuFormsCustomer: TMenuItem
        Caption = 'Customer Details...'
        OnClick = btnCustomerClick
      end
      object mnuFormsSettings: TMenuItem
        Caption = 'Application Settings...'
        OnClick = btnSettingsClick
      end
      object mnuFormsFeedback: TMenuItem
        Caption = 'Send Feedback...'
        OnClick = btnFeedbackClick
      end
    end
    object mnuHelp: TMenuItem
      Caption = 'Help'
      object mnuHelpAbout: TMenuItem
        Caption = 'About This Demo...'
        OnClick = btnAboutClick
      end
    end
  end
end
