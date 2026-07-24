object FormDepartments: TFormDepartments
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Departments'
  ClientHeight = 600
  ClientWidth = 849
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
  object lblDeptName: TLabel
    Left = 324
    Top = 24
    Width = 148
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Department name:'
  end
  object lblManager: TLabel
    Left = 324
    Top = 114
    Width = 74
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Manager:'
  end
  object lblBudget: TLabel
    Left = 324
    Top = 204
    Width = 122
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Annual budget:'
  end
  object lblNotes: TLabel
    Left = 324
    Top = 294
    Width = 51
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Notes:'
  end
  object lstDepartments: TListBox
    Left = 24
    Top = 24
    Width = 270
    Height = 480
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ItemHeight = 25
    TabOrder = 0
    OnClick = lstDepartmentsChange
  end
  object edtDeptName: TEdit
    Left = 324
    Top = 54
    Width = 492
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 1
  end
  object edtManager: TEdit
    Left = 324
    Top = 144
    Width = 492
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 2
  end
  object spbBudget: TSpinEdit
    Left = 324
    Top = 234
    Width = 240
    Height = 36
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Increment = 1000
    MaxValue = 10000000
    MinValue = 0
    TabOrder = 3
    Value = 150000
  end
  object memDeptNotes: TMemo
    Left = 324
    Top = 324
    Width = 492
    Height = 180
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 4
  end
  object btnAddDept: TButton
    Left = 24
    Top = 528
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Add'
    TabOrder = 5
    OnClick = btnAddDeptClick
  end
  object btnRemoveDept: TButton
    Left = 156
    Top = 528
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Remove'
    TabOrder = 6
    OnClick = btnRemoveDeptClick
  end
  object btnSaveDept: TButton
    Left = 324
    Top = 528
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Save'
    TabOrder = 7
    OnClick = btnSaveDeptClick
  end
  object btnClose: TButton
    Left = 696
    Top = 528
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Close'
    TabOrder = 8
    OnClick = btnCloseClick
  end
end
