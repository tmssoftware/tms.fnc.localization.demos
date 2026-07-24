object FormEmployees: TFormEmployees
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Employees'
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
  object lblFilter: TLabel
    Left = 24
    Top = 27
    Width = 42
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Filter:'
  end
  object lblDept: TLabel
    Left = 375
    Top = 27
    Width = 99
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Department:'
  end
  object edtFilter: TEdit
    Left = 105
    Top = 18
    Width = 240
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 0
  end
  object cmbDeptFilter: TComboBox
    Left = 510
    Top = 18
    Width = 225
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Style = csDropDownList
    TabOrder = 1
  end
  object grdEmployees: TStringGrid
    Left = 24
    Top = 78
    Width = 882
    Height = 432
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    DefaultColWidth = 96
    DefaultRowHeight = 33
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 2
  end
  object btnNewEmployee: TButton
    Left = 24
    Top = 534
    Width = 180
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'New employee'
    TabOrder = 3
    OnClick = btnNewEmployeeClick
  end
  object btnClose: TButton
    Left = 786
    Top = 534
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
