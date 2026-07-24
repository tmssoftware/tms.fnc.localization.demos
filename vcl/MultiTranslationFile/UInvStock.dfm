object FormStock: TFormStock
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Stock Levels'
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
  object lblWarehouse: TLabel
    Left = 24
    Top = 27
    Width = 92
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Warehouse:'
  end
  object cmbWarehouse: TComboBox
    Left = 159
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
  object edtItemSearch: TEdit
    Left = 408
    Top = 18
    Width = 240
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 1
    TextHint = 'Search item...'
  end
  object chkBelowReorder: TCheckBox
    Left = 672
    Top = 24
    Width = 240
    Height = 30
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Below reorder level'
    TabOrder = 2
  end
  object grdStock: TStringGrid
    Left = 24
    Top = 78
    Width = 882
    Height = 450
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
  object btnRefreshStock: TButton
    Left = 24
    Top = 552
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Refresh'
    TabOrder = 4
    OnClick = btnRefreshStockClick
  end
  object btnClose: TButton
    Left = 786
    Top = 552
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
