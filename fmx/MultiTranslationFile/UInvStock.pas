unit UInvStock;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Rtti, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.Grid, FMX.Grid.Style,
  FMX.ScrollBox, FMX.Controls.Presentation, TMS.TMSFNCLocalizationForm;

type
  TFormStock = class(TTMSFNCLocalizationForm)
    lblWarehouse: TLabel;
    cmbWarehouse: TComboBox;
    edtItemSearch: TEdit;
    chkBelowReorder: TCheckBox;
    grdStock: TStringGrid;
    colStockItem: TStringColumn;
    colStockWarehouse: TStringColumn;
    colOnHand: TStringColumn;
    colReserved: TStringColumn;
    colReorderLevel: TStringColumn;
    btnRefreshStock: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshStockClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    procedure AddStockItem(const AItem, AWarehouse: string; AOnHand, AReserved,
      AReorderLevel: Integer);
    procedure LoadStock;
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

procedure TFormStock.AddStockItem(const AItem, AWarehouse: string; AOnHand,
  AReserved, AReorderLevel: Integer);
var
  LRow: Integer;
begin
  if chkBelowReorder.IsChecked and (AOnHand >= AReorderLevel) then
    Exit;
  LRow := grdStock.RowCount;
  grdStock.RowCount := LRow + 1;
  grdStock.Cells[0, LRow] := AItem;
  grdStock.Cells[1, LRow] := AWarehouse;
  grdStock.Cells[2, LRow] := IntToStr(AOnHand);
  grdStock.Cells[3, LRow] := IntToStr(AReserved);
  grdStock.Cells[4, LRow] := IntToStr(AReorderLevel);
end;

procedure TFormStock.LoadStock;
begin
  grdStock.RowCount := 0;
  AddStockItem(DM.StringCatalog.GetByName('Inv.Bolts'), DM.StringCatalog.GetByName('Inv.MainWarehouse'), 1250, 100, 500);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Sheet'), DM.StringCatalog.GetByName('Inv.MainWarehouse'), 85, 20, 150);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Wire'), DM.StringCatalog.GetByName('Inv.NorthDepot'), 3400, 250, 1000);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Gasket'), DM.StringCatalog.GetByName('Inv.MainWarehouse'), 45, 0, 200);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Bearing'), DM.StringCatalog.GetByName('Inv.SouthDepot'), 620, 60, 300);
  AddStockItem(DM.StringCatalog.GetByName('Inv.Pump'), DM.StringCatalog.GetByName('Inv.NorthDepot'), 8, 2, 10);
end;

procedure TFormStock.FormCreate(Sender: TObject);
begin
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
