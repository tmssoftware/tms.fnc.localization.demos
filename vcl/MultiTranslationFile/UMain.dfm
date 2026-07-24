object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Business Suite Demo'
  ClientHeight = 316
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object lblStatus: TLabel
    Left = 24
    Top = 18
    Width = 528
    Height = 17
    AutoSize = False
    Caption = 'All forms in this application are created dynamically at runtime.'
  end
  object lbLanguage: TLabel
    Left = 24
    Top = 254
    Width = 528
    Height = 17
    AutoSize = False
    Caption = 'Language selector'
  end
  object gbSales: TGroupBox
    Left = 16
    Top = 48
    Width = 168
    Height = 184
    Caption = 'Sales'
    TabOrder = 0
    object btnCustomers: TButton
      Left = 16
      Top = 28
      Width = 136
      Height = 28
      Caption = 'Customers'
      TabOrder = 0
      OnClick = btnCustomersClick
    end
    object btnOrders: TButton
      Left = 16
      Top = 66
      Width = 136
      Height = 28
      Caption = 'Orders'
      TabOrder = 1
      OnClick = btnOrdersClick
    end
    object btnInvoices: TButton
      Left = 16
      Top = 104
      Width = 136
      Height = 28
      Caption = 'Invoices'
      TabOrder = 2
      OnClick = btnInvoicesClick
    end
    object btnProducts: TButton
      Left = 16
      Top = 142
      Width = 136
      Height = 28
      Caption = 'Products'
      TabOrder = 3
      OnClick = btnProductsClick
    end
  end
  object gbHR: TGroupBox
    Left = 196
    Top = 48
    Width = 168
    Height = 184
    Caption = 'Human Resources'
    TabOrder = 1
    object btnEmployees: TButton
      Left = 16
      Top = 28
      Width = 136
      Height = 28
      Caption = 'Employees'
      TabOrder = 0
      OnClick = btnEmployeesClick
    end
    object btnDepartments: TButton
      Left = 16
      Top = 66
      Width = 136
      Height = 28
      Caption = 'Departments'
      TabOrder = 1
      OnClick = btnDepartmentsClick
    end
    object btnLeaveRequests: TButton
      Left = 16
      Top = 104
      Width = 136
      Height = 28
      Caption = 'Leave Requests'
      TabOrder = 2
      OnClick = btnLeaveRequestsClick
    end
    object btnPayroll: TButton
      Left = 16
      Top = 142
      Width = 136
      Height = 28
      Caption = 'Payroll'
      TabOrder = 3
      OnClick = btnPayrollClick
    end
  end
  object gbInventory: TGroupBox
    Left = 376
    Top = 48
    Width = 168
    Height = 184
    Caption = 'Inventory'
    TabOrder = 2
    object btnStock: TButton
      Left = 16
      Top = 28
      Width = 136
      Height = 28
      Caption = 'Stock Levels'
      TabOrder = 0
      OnClick = btnStockClick
    end
    object btnSuppliers: TButton
      Left = 16
      Top = 66
      Width = 136
      Height = 28
      Caption = 'Suppliers'
      TabOrder = 1
      OnClick = btnSuppliersClick
    end
    object btnPurchaseOrders: TButton
      Left = 16
      Top = 104
      Width = 136
      Height = 28
      Caption = 'Purchase Orders'
      TabOrder = 2
      OnClick = btnPurchaseOrdersClick
    end
    object btnShipments: TButton
      Left = 16
      Top = 142
      Width = 136
      Height = 28
      Caption = 'Shipments'
      TabOrder = 3
      OnClick = btnShipmentsClick
    end
  end
  object TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox
    Left = 24
    Top = 279
    Width = 144
    Height = 23
    Style = csDropDownList
    DropDownCount = 16
    TabOrder = 3
  end
end
