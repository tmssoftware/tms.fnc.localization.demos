object FormPurchaseOrders: TFormPurchaseOrders
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Purchase Orders'
  ClientHeight = 615
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
  object lblSupplier: TLabel
    Left = 24
    Top = 27
    Width = 69
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Supplier:'
  end
  object lblExpected: TLabel
    Left = 438
    Top = 27
    Width = 141
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Expected delivery:'
  end
  object lblOrderTotal: TLabel
    Left = 540
    Top = 486
    Width = 91
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Order total:'
  end
  object lblOrderTotalValue: TLabel
    Left = 681
    Top = 486
    Width = 180
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    AutoSize = False
    Caption = '0.00'
  end
  object cmbSupplier: TComboBox
    Left = 138
    Top = 18
    Width = 270
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Style = csDropDownList
    TabOrder = 0
  end
  object dtExpected: TDateTimePicker
    Left = 642
    Top = 18
    Width = 180
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Date = 46225.000000000000000000
    Time = 46225.000000000000000000
    TabOrder = 1
  end
  object grdLines: TStringGrid
    Left = 24
    Top = 78
    Width = 882
    Height = 375
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ColCount = 4
    DefaultColWidth = 96
    DefaultRowHeight = 33
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 2
  end
  object btnAddLine: TButton
    Left = 24
    Top = 477
    Width = 135
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Add line'
    TabOrder = 3
    OnClick = btnAddLineClick
  end
  object btnRemoveLine: TButton
    Left = 171
    Top = 477
    Width = 165
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Remove line'
    TabOrder = 4
    OnClick = btnRemoveLineClick
  end
  object btnSubmitPO: TButton
    Left = 24
    Top = 549
    Width = 180
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Submit order'
    TabOrder = 5
    OnClick = btnSubmitPOClick
  end
  object btnClose: TButton
    Left = 786
    Top = 549
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Close'
    TabOrder = 6
    OnClick = btnCloseClick
  end
end
