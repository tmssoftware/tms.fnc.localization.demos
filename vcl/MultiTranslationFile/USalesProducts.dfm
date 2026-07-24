object FormProducts: TFormProducts
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Product Editor'
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
  object tbcProduct: TPageControl
    Left = 24
    Top = 24
    Width = 792
    Height = 480
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = tabGeneral
    TabOrder = 0
    object tabGeneral: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'General'
      object lblName: TLabel
        Left = 24
        Top = 39
        Width = 115
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Product name:'
      end
      object lblSKU: TLabel
        Left = 24
        Top = 93
        Width = 36
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'SKU:'
      end
      object lblPrice: TLabel
        Left = 24
        Top = 147
        Width = 79
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Unit price:'
      end
      object lblCategory: TLabel
        Left = 24
        Top = 201
        Width = 76
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Category:'
      end
      object edtName: TEdit
        Left = 210
        Top = 30
        Width = 360
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        TabOrder = 0
      end
      object edtSKU: TEdit
        Left = 210
        Top = 84
        Width = 210
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        TabOrder = 1
      end
      object spbPrice: TSpinEdit
        Left = 210
        Top = 138
        Width = 180
        Height = 36
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        MaxValue = 100000
        MinValue = 0
        TabOrder = 2
        Value = 50
      end
      object cmbCategory: TComboBox
        Left = 210
        Top = 192
        Width = 270
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Style = csDropDownList
        TabOrder = 3
      end
      object chkActive: TCheckBox
        Left = 210
        Top = 252
        Width = 300
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Product is active'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
    end
    object tabDescription: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Description'
      ImageIndex = 1
      object memDescription: TMemo
        Left = 24
        Top = 24
        Width = 744
        Height = 360
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        TabOrder = 0
      end
    end
    object tabOptions: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Options'
      ImageIndex = 2
      object chkTaxable: TCheckBox
        Left = 24
        Top = 36
        Width = 360
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Subject to VAT'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object chkTrackStock: TCheckBox
        Left = 24
        Top = 84
        Width = 360
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Track stock levels'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object chkDiscount: TCheckBox
        Left = 24
        Top = 132
        Width = 360
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Allow discounts'
        TabOrder = 2
      end
      object rbPhysical: TRadioButton
        Left = 24
        Top = 204
        Width = 360
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Physical product'
        Checked = True
        TabOrder = 3
        TabStop = True
      end
      object rbDigital: TRadioButton
        Left = 24
        Top = 252
        Width = 360
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Digital product'
        TabOrder = 4
      end
    end
  end
  object btnSave: TButton
    Left = 552
    Top = 528
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Save'
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 684
    Top = 528
    Width = 132
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btnCancelClick
  end
end
