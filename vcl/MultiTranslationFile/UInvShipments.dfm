object FormShipments: TFormShipments
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Shipments'
  ClientHeight = 660
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
  object grdShipments: TStringGrid
    Left = 24
    Top = 24
    Width = 882
    Height = 300
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
    TabOrder = 0
  end
  object gbShipDetails: TGroupBox
    Left = 24
    Top = 348
    Width = 882
    Height = 225
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Shipment details'
    TabOrder = 1
    object lblTracking: TLabel
      Left = 24
      Top = 51
      Width = 135
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Tracking number:'
    end
    object lblCarrier: TLabel
      Left = 525
      Top = 51
      Width = 55
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Carrier:'
    end
    object lblShipStatus: TLabel
      Left = 24
      Top = 111
      Width = 52
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Status:'
    end
    object lblProgress: TLabel
      Left = 24
      Top = 168
      Width = 142
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Delivery progress:'
    end
    object edtTracking: TEdit
      Left = 225
      Top = 42
      Width = 270
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 0
    end
    object cmbCarrier: TComboBox
      Left = 630
      Top = 42
      Width = 225
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Style = csDropDownList
      TabOrder = 1
    end
    object cmbShipStatus: TComboBox
      Left = 225
      Top = 102
      Width = 270
      Height = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Style = csDropDownList
      TabOrder = 2
    end
    object trkProgress: TTrackBar
      Left = 225
      Top = 165
      Width = 450
      Height = 50
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Max = 100
      Frequency = 10
      Position = 65
      TabOrder = 3
      ThumbLength = 30
    end
  end
  object btnTrack: TButton
    Left = 24
    Top = 597
    Width = 165
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Track online'
    TabOrder = 2
    OnClick = btnTrackClick
  end
  object btnClose: TButton
    Left = 786
    Top = 597
    Width = 120
    Height = 42
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
end
