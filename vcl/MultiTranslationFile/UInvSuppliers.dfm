object FormSuppliers: TFormSuppliers
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Suppliers'
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
  object lblSupplierName: TLabel
    Left = 324
    Top = 24
    Width = 130
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Company name:'
  end
  object lblContact: TLabel
    Left = 324
    Top = 114
    Width = 125
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Contact person:'
  end
  object lblPhone: TLabel
    Left = 324
    Top = 204
    Width = 54
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Phone:'
  end
  object lblEmail: TLabel
    Left = 324
    Top = 294
    Width = 53
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'E-mail:'
  end
  object lblSupplierNotes: TLabel
    Left = 324
    Top = 384
    Width = 51
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Notes:'
  end
  object lstSuppliers: TListBox
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
    OnClick = lstSuppliersChange
  end
  object edtSupplierName: TEdit
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
  object edtContact: TEdit
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
  object edtPhone: TEdit
    Left = 324
    Top = 234
    Width = 492
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 3
  end
  object edtEmail: TEdit
    Left = 324
    Top = 324
    Width = 492
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 4
  end
  object memSupplierNotes: TMemo
    Left = 324
    Top = 414
    Width = 492
    Height = 90
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 5
  end
  object btnSaveSupplier: TButton
    Left = 324
    Top = 528
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Save'
    TabOrder = 6
    OnClick = btnSaveSupplierClick
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
    TabOrder = 7
    OnClick = btnCloseClick
  end
end
