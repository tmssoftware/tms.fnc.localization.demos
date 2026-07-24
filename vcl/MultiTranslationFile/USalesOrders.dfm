object FormOrders: TFormOrders
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Orders'
  ClientHeight = 600
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
  object lblCustomer: TLabel
    Left = 24
    Top = 27
    Width = 81
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Customer:'
  end
  object lblFrom: TLabel
    Left = 390
    Top = 27
    Width = 46
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'From:'
  end
  object lblTo: TLabel
    Left = 630
    Top = 27
    Width = 22
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'To:'
  end
  object lblTotal: TLabel
    Left = 24
    Top = 537
    Width = 108
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Total amount:'
  end
  object lblTotalValue: TLabel
    Left = 174
    Top = 537
    Width = 180
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = '0.00'
  end
  object cmbCustomer: TComboBox
    Left = 138
    Top = 18
    Width = 225
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Style = csDropDownList
    TabOrder = 0
  end
  object dtFrom: TDateTimePicker
    Left = 456
    Top = 18
    Width = 150
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Date = 46225.000000000000000000
    Time = 46225.000000000000000000
    TabOrder = 1
  end
  object dtTo: TDateTimePicker
    Left = 678
    Top = 18
    Width = 150
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Date = 46225.000000000000000000
    Time = 46225.000000000000000000
    TabOrder = 2
  end
  object grdOrders: TStringGrid
    Left = 24
    Top = 78
    Width = 882
    Height = 426
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    DefaultColWidth = 96
    DefaultRowHeight = 33
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 3
  end
  object btnRefresh: TButton
    Left = 654
    Top = 528
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Refresh'
    TabOrder = 4
    OnClick = btnRefreshClick
  end
  object btnClose: TButton
    Left = 786
    Top = 528
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Close'
    TabOrder = 5
    OnClick = btnCloseClick
  end
end
