object FormInvoices: TFormInvoices
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Invoices'
  ClientHeight = 630
  ClientWidth = 939
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 144
  TextHeight = 25
  object lstInvoices: TListBox
    Left = 24
    Top = 24
    Width = 300
    Height = 510
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ItemHeight = 25
    TabOrder = 0
    OnClick = lstInvoicesChange
  end
  object gbDetails: TGroupBox
    Left = 348
    Top = 24
    Width = 558
    Height = 390
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Invoice details'
    TabOrder = 1
    object lblInvNo: TLabel
      Left = 24
      Top = 51
      Width = 127
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Invoice number:'
    end
    object lblInvCustomer: TLabel
      Left = 24
      Top = 105
      Width = 81
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Customer:'
    end
    object lblInvAmount: TLabel
      Left = 24
      Top = 159
      Width = 69
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Amount:'
    end
    object lblInvDue: TLabel
      Left = 24
      Top = 213
      Width = 76
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Due date:'
    end
    object edtInvNo: TEdit
      Left = 225
      Top = 42
      Width = 300
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 0
    end
    object edtInvCustomer: TEdit
      Left = 225
      Top = 96
      Width = 300
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 1
    end
    object edtInvAmount: TEdit
      Left = 225
      Top = 150
      Width = 180
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 2
    end
    object dtInvDue: TDateTimePicker
      Left = 225
      Top = 204
      Width = 180
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Date = 46225.000000000000000000
      Time = 46225.000000000000000000
      TabOrder = 3
    end
    object chkPaid: TCheckBox
      Left = 225
      Top = 264
      Width = 270
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Invoice is paid'
      TabOrder = 4
    end
  end
  object btnPrint: TButton
    Left = 348
    Top = 450
    Width = 150
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Print'
    TabOrder = 2
    OnClick = btnPrintClick
  end
  object btnEmail: TButton
    Left = 516
    Top = 450
    Width = 195
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Send by e-mail'
    TabOrder = 3
    OnClick = btnEmailClick
  end
  object btnClose: TButton
    Left = 786
    Top = 564
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Close'
    TabOrder = 4
    OnClick = btnCloseClick
  end
end
