object FormPayroll: TFormPayroll
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Payroll'
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
  object lblPeriod: TLabel
    Left = 24
    Top = 27
    Width = 54
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Period:'
  end
  object cmbMonth: TComboBox
    Left = 120
    Top = 18
    Width = 210
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Style = csDropDownList
    TabOrder = 0
  end
  object spbYear: TSpinEdit
    Left = 354
    Top = 18
    Width = 150
    Height = 36
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    MaxValue = 2035
    MinValue = 2020
    TabOrder = 1
    Value = 2026
  end
  object btnCalculate: TButton
    Left = 528
    Top = 18
    Width = 150
    Height = 39
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Calculate'
    TabOrder = 2
    OnClick = btnCalculateClick
  end
  object grdPayroll: TStringGrid
    Left = 24
    Top = 78
    Width = 882
    Height = 360
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
    TabOrder = 3
  end
  object gbSummary: TGroupBox
    Left = 24
    Top = 456
    Width = 882
    Height = 108
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Summary'
    TabOrder = 4
    object lblTotalGross: TLabel
      Left = 24
      Top = 51
      Width = 90
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Total gross:'
    end
    object lblTotalGrossValue: TLabel
      Left = 165
      Top = 51
      Width = 180
      Height = 23
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      AutoSize = False
      Caption = '0.00'
    end
    object lblTotalNet: TLabel
      Left = 450
      Top = 51
      Width = 71
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Total net:'
    end
    object lblTotalNetValue: TLabel
      Left = 585
      Top = 51
      Width = 180
      Height = 23
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      AutoSize = False
      Caption = '0.00'
    end
  end
  object btnExport: TButton
    Left = 24
    Top = 582
    Width = 165
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Export to file'
    TabOrder = 5
    OnClick = btnExportClick
  end
  object btnClose: TButton
    Left = 786
    Top = 582
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
