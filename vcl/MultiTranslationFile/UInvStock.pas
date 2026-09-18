unit UInvStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  VCL.TMSFNCLocalizationForm;

type
  TFormStock = class(TTMSFNCLocalizationForm)
    lblWarehouse: TLabel;
    cmbWarehouse: TComboBox;
    edtItemSearch: TEdit;
    chkBelowReorder: TCheckBox;
    grdStock: TStringGrid;
    btnRefreshStock: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshStockClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FRows: Integer;
    procedure SetupGrid;
    procedure AddStockItem(const AItem, AWarehouse: string; AOnHand, AReserved,
      AReorderLevel: Integer);
    procedure LoadStock;
  public
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormStock.SetupGrid;
begin
  grdStock.ColCount := 5;
  grdStock.FixedCols := 0;
  grdStock.FixedRows := 1;
  grdStock.Cells[0, 0] := DM.StringCatalog.GetByName('Inv.Item');
  grdStock.Cells[1, 0] := DM.StringCatalog.GetByName('Inv.Warehouse');
  grdStock.Cells[2, 0] := DM.StringCatalog.GetByName('Inv.OnHand');
  grdStock.Cells[3, 0] := DM.StringCatalog.GetByName('Inv.Reserved');
  grdStock.Cells[4, 0] := DM.StringCatalog.GetByName('Inv.ReorderLevel');
  grdStock.ColWidths[0] := 180;
  grdStock.ColWidths[1] := 120;
  grdStock.ColWidths[2] := 80;
  grdStock.ColWidths[3] := 80;
  grdStock.ColWidths[4] := 110;
end;

procedure TFormStock.AddStockItem(const AItem, AWarehouse: string; AOnHand,
  AReserved, AReorderLevel: Integer);
begin
  if chkBelowReorder.Checked and (AOnHand >= AReorderLevel) then
    Exit;
  Inc(FRows);
  grdStock.RowCount := FRows + 1;
  grdStock.Cells[0, FRows] := AItem;
  grdStock.Cells[1, FRows] := AWarehouse;
  grdStock.Cells[2, FRows] := IntToStr(AOnHand);
  grdStock.Cells[3, FRows] := IntToStr(AReserved);
  grdStock.Cells[4, FRows] := IntToStr(AReorderLevel);
end;

procedure TFormStock.LoadStock;
var
  C: Integer;
begin
  FRows := 0;
  grdStock.RowCount := 2;
  for C := 0 to grdStock.ColCount - 1 do
    grdStock.Cells[C, 1] := '';
  AddStockItem(DM.StringCatalog.GetByName('Inv.Bolts'), DM.StringCatalog.GetByName('Inv.MainWarehouse'), 1250, 100, 500);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Sheet'), DM.StringCatalog.GetByName('Inv.MainWarehouse'), 85, 20, 150);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Wire'), DM.StringCatalog.GetByName('Inv.NorthDepot'), 3400, 250, 1000);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Gasket'), DM.StringCatalog.GetByName('Inv.MainWarehouse'), 45, 0, 200);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Bearing'), DM.StringCatalog.GetByName('Inv.SouthDepot'), 620, 60, 300);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Pump'), DM.StringCatalog.GetByName('Inv.NorthDepot'), 8, 2, 10);
end;

procedure TFormStock.FormCreate(Sender: TObject);
begin
  SetupGrid;
  cmbWarehouse.Items.Add(DM.StringCatalog.GetByName('Inv.AllWarehouses'));
  cmbWarehouse.Items.Add(DM.StringCatalog.GetByName('Inv.MainWarehouse'));
  cmbWarehouse.Items.Add(DM.StringCatalog.GetByName('Inv.NorthDepot'));
  cmbWarehouse.Items.Add(DM.StringCatalog.GetByName('Inv.SouthDepot'));
  cmbWarehouse.ItemIndex := 0;
  LoadStock;
end;

procedure TFormStock.btnRefreshStockClick(Sender: TObject);
begin
  LoadStock;
end;

procedure TFormStock.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
