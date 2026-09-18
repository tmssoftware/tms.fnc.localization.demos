unit UInvPurchaseOrders;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Rtti, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.Grid, FMX.Grid.Style, FMX.ScrollBox, FMX.Controls.Presentation,
  FMX.TMSFNCLocalizationForm;

type
  TFormPurchaseOrders = class(TTMSFNCLocalizationForm)
    lblSupplier: TLabel;
    cmbSupplier: TComboBox;
    lblExpected: TLabel;
    dtExpected: TDateEdit;
    grdLines: TStringGrid;
    colLineItem: TStringColumn;
    colLineQty: TStringColumn;
    colLinePrice: TStringColumn;
    colLineTotal: TStringColumn;
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
    procedure AddLine(const AItem: string; AQty: Integer; APrice: Double);
    procedure UpdateTotal;
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

procedure TFormPurchaseOrders.AddLine(const AItem: string; AQty: Integer;
  APrice: Double);
var
  LRow: Integer;
begin
  LRow := grdLines.RowCount;
  grdLines.RowCount := LRow + 1;
  grdLines.Cells[0, LRow] := AItem;
  grdLines.Cells[1, LRow] := IntToStr(AQty);
  grdLines.Cells[2, LRow] := FormatFloat('0.00', APrice);
  grdLines.Cells[3, LRow] := FormatFloat('0.00', AQty * APrice);
end;

procedure TFormPurchaseOrders.UpdateTotal;
var
  I: Integer;
  LTotal: Double;
begin
  LTotal := 0;
  for I := 0 to grdLines.RowCount - 1 do
    LTotal := LTotal + StrToFloatDef(grdLines.Cells[3, I], 0);
  lblOrderTotalValue.Text := FormatFloat('#,##0.00', LTotal);
end;

procedure TFormPurchaseOrders.FormCreate(Sender: TObject);
begin
  cmbSupplier.Items.Add('Litware Components');
  cmbSupplier.Items.Add('Wide World Importers');
  cmbSupplier.Items.Add('Trey Research');
  cmbSupplier.Items.Add('Lucerne Publishing');
  cmbSupplier.ItemIndex := 0;
  dtExpected.Date := Now + 14;

  grdLines.RowCount := 0;
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
  LRow := grdLines.Selected;
  if LRow < 0 then
  begin
    ShowMessage(DM.StringCatalog.GetByName('Inv.SelectLine'));
    Exit;
  end;
  for I := LRow to grdLines.RowCount - 2 do
    for C := 0 to grdLines.ColumnCount - 1 do
      grdLines.Cells[C, I] := grdLines.Cells[C, I + 1];
  grdLines.RowCount := grdLines.RowCount - 1;
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
