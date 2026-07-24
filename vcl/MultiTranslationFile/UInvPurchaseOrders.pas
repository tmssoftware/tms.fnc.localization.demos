unit UInvPurchaseOrders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ComCtrls, TMS.TMSFNCLocalizationForm;

type
  TFormPurchaseOrders = class(TTMSFNCLocalizationForm)
    lblSupplier: TLabel;
    cmbSupplier: TComboBox;
    lblExpected: TLabel;
    dtExpected: TDateTimePicker;
    grdLines: TStringGrid;
    btnAddLine: TButton;
    btnRemoveLine: TButton;
    lblOrderTotal: TLabel;
    lblOrderTotalValue: TLabel;
    btnSubmitPO: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAddLineClick(Sender: TObject);
    procedure btnRemoveLineClick(Sender: TObject);
    procedure btnSubmitPOClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FRows: Integer;
    procedure SetupGrid;
    procedure AddLine(const AItem: string; AQty: Integer; APrice: Double);
    procedure UpdateTotal;
  public
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormPurchaseOrders.SetupGrid;
begin
  grdLines.ColCount := 4;
  grdLines.FixedCols := 0;
  grdLines.FixedRows := 1;
  grdLines.Cells[0, 0] := DM.StringCatalog.GetByName('Inv.Item');
  grdLines.Cells[1, 0] := DM.StringCatalog.GetByName('Inv.Quantity');
  grdLines.Cells[2, 0] := DM.StringCatalog.GetByName('Inv.UnitPrice');
  grdLines.Cells[3, 0] := DM.StringCatalog.GetByName('Inv.Total');
  grdLines.ColWidths[0] := 220;
  grdLines.ColWidths[1] := 80;
  grdLines.ColWidths[2] := 120;
  grdLines.ColWidths[3] := 120;
end;

procedure TFormPurchaseOrders.AddLine(const AItem: string; AQty: Integer;
  APrice: Double);
begin
  Inc(FRows);
  grdLines.RowCount := FRows + 1;
  grdLines.Cells[0, FRows] := AItem;
  grdLines.Cells[1, FRows] := IntToStr(AQty);
  grdLines.Cells[2, FRows] := FormatFloat('0.00', APrice);
  grdLines.Cells[3, FRows] := FormatFloat('0.00', AQty * APrice);
end;

procedure TFormPurchaseOrders.UpdateTotal;
var
  I: Integer;
  LTotal: Double;
begin
  LTotal := 0;
  for I := 1 to FRows do
    LTotal := LTotal + StrToFloatDef(grdLines.Cells[3, I], 0);
  lblOrderTotalValue.Caption := FormatFloat('#,##0.00', LTotal);
end;

procedure TFormPurchaseOrders.FormCreate(Sender: TObject);
begin
  SetupGrid;
  cmbSupplier.Items.Add('Litware Components');
  cmbSupplier.Items.Add('Wide World Importers');
  cmbSupplier.Items.Add('Trey Research');
  cmbSupplier.Items.Add('Lucerne Publishing');
  cmbSupplier.ItemIndex := 0;
  dtExpected.Date := Now + 14;

  FRows := 0;
  grdLines.RowCount := 2;
  AddLine(DM.StringCatalog.GetByName('Inv.Bolts'), 500, 0.12);
  AddLine(DM.StringCatalog.GetByName('Inv.Sheet'), 40, 18.50);
  AddLine(DM.StringCatalog.GetByName('Inv.Gasket'), 200, 0.85);
  UpdateTotal;
end;

procedure TFormPurchaseOrders.btnAddLineClick(Sender: TObject);
begin
  AddLine(DM.StringCatalog.GetByName('Inv.NewItem'), 1, 10.00);
  UpdateTotal;
end;

procedure TFormPurchaseOrders.btnRemoveLineClick(Sender: TObject);
var
  LRow, I, C: Integer;
begin
  LRow := grdLines.Row;
  if (FRows < 1) or (LRow < 1) or (LRow > FRows) then
  begin
    ShowMessage(DM.StringCatalog.GetByName('Inv.SelectLine'));
    Exit;
  end;
  for I := LRow to FRows - 1 do
    for C := 0 to grdLines.ColCount - 1 do
      grdLines.Cells[C, I] := grdLines.Cells[C, I + 1];
  Dec(FRows);
  if FRows < 1 then
  begin
    grdLines.RowCount := 2;
    for C := 0 to grdLines.ColCount - 1 do
      grdLines.Cells[C, 1] := '';
  end
  else
    grdLines.RowCount := FRows + 1;
  UpdateTotal;
end;

procedure TFormPurchaseOrders.btnSubmitPOClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Inv.PurchaseSubmitted'));
  Close;
end;

procedure TFormPurchaseOrders.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
