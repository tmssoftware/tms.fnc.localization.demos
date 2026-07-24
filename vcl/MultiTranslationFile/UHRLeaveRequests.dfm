object FormLeaveRequests: TFormLeaveRequests
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Leave Requests'
  ClientHeight = 645
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
  object gbNewRequest: TGroupBox
    Left = 24
    Top = 24
    Width = 882
    Height = 246
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'New leave request'
    TabOrder = 0
    object lblEmployee: TLabel
      Left = 24
      Top = 51
      Width = 82
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Employee:'
    end
    object lblLeaveType: TLabel
      Left = 465
      Top = 51
      Width = 88
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Leave type:'
    end
    object lblFirstDay: TLabel
      Left = 24
      Top = 105
      Width = 71
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'First day:'
    end
    object lblLastDay: TLabel
      Left = 465
      Top = 105
      Width = 69
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Last day:'
    end
    object lblReason: TLabel
      Left = 24
      Top = 195
      Width = 61
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Reason:'
    end
    object cmbEmployee: TComboBox
      Left = 165
      Top = 42
      Width = 270
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Style = csDropDownList
      TabOrder = 0
    end
    object cmbLeaveType: TComboBox
      Left = 600
      Top = 42
      Width = 255
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Style = csDropDownList
      TabOrder = 1
    end
    object dtFirstDay: TDateTimePicker
      Left = 165
      Top = 96
      Width = 180
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Date = 46225.000000000000000000
      Time = 46225.000000000000000000
      TabOrder = 2
    end
    object dtLastDay: TDateTimePicker
      Left = 600
      Top = 96
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
    object rbFullDay: TRadioButton
      Left = 165
      Top = 150
      Width = 150
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Full day'
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object rbHalfDay: TRadioButton
      Left = 330
      Top = 150
      Width = 150
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Half day'
      TabOrder = 5
    end
    object edtReason: TEdit
      Left = 165
      Top = 186
      Width = 450
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 6
    end
    object btnSubmit: TButton
      Left = 675
      Top = 186
      Width = 180
      Height = 42
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Submit request'
      TabOrder = 7
      OnClick = btnSubmitClick
    end
  end
  object grdRequests: TStringGrid
    Left = 24
    Top = 288
    Width = 882
    Height = 264
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    DefaultColWidth = 96
    DefaultRowHeight = 33
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 1
  end
  object btnApprove: TButton
    Left = 24
    Top = 576
    Width = 135
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Approve'
    TabOrder = 2
    OnClick = btnApproveClick
  end
  object btnReject: TButton
    Left = 171
    Top = 576
    Width = 135
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Reject'
    TabOrder = 3
    OnClick = btnRejectClick
  end
  object btnClose: TButton
    Left = 786
    Top = 576
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
