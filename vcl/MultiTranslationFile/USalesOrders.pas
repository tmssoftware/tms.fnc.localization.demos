unit USalesOrders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ComCtrls, VCL.TMSFNCLocalizationForm;

type
  TFormOrders = class(TTMSFNCLocalizationForm)
    lblCustomer: TLabel;
    cmbCustomer: TComboBox;
    lblFrom: TLabel;
    dtFrom: TDateTimePicker;
    lblTo: TLabel;
    dtTo: TDateTimePicker;
    grdOrders: TStringGrid;
    lblTotal: TLabel;
    lblTotalValue: TLabel;
    btnRefresh: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FTotal: Double;
    FRows: Integer;
    procedure SetupGrid;
    procedure AddOrder(const AOrderNo, ADate, ACustomer: string; ATotal: Double;
      const AStatus: string);
    procedure LoadOrders;
  public
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormOrders.SetupGrid;
begin
  grdOrders.ColCount := 5;
  grdOrders.FixedCols := 0;
  grdOrders.FixedRows := 1;
  grdOrders.Cells[0, 0] := DM.StringCatalog.GetByName('Sales.OrderNo');
  grdOrders.Cells[1, 0] := DM.StringCatalog.GetByName('Sales.Date');
  grdOrders.Cells[2, 0] := DM.StringCatalog.GetByName('Sales.Customer');
  grdOrders.Cells[3, 0] := DM.StringCatalog.GetByName('Sales.Total');
  grdOrders.Cells[4, 0] := DM.StringCatalog.GetByName('Sales.Status');
  grdOrders.ColWidths[0] := 110;
  grdOrders.ColWidths[1] := 90;
  grdOrders.ColWidths[2] := 180;
  grdOrders.ColWidths[3] := 90;
  grdOrders.ColWidths[4] := 110;
end;

procedure TFormOrders.AddOrder(const AOrderNo, ADate, ACustomer: string;
  ATotal: Double; const AStatus: string);
begin
  Inc(FRows);
  grdOrders.RowCount := FRows + 1;
  grdOrders.Cells[0, FRows] := AOrderNo;
  grdOrders.Cells[1, FRows] := ADate;
  grdOrders.Cells[2, FRows] := ACustomer;
  grdOrders.Cells[3, FRows] := FormatFloat('#,##0.00', ATotal);
  grdOrders.Cells[4, FRows] := AStatus;
  FTotal := FTotal + ATotal;
end;

procedure TFormOrders.LoadOrders;
begin
  FTotal := 0;
  FRows := 0;
  grdOrders.RowCount := 2;
  AddOrder('SO-2026-1041', '2026-06-18', 'Fabrikam Trading', 2450.00, DM.StringCatalog.GetByName('Sales.Shipped'));
  AddOrder('SO-2026-1042', '2026-06-21', 'Contoso Retail', 890.50, DM.StringCatalog.GetByName('Sales.Open'));
  AddOrder('SO-2026-1043', '2026-06-25', 'Northwind Foods', 5120.75, DM.StringCatalog.GetByName('Sales.Paid'));
  AddOrder('SO-2026-1044', '2026-07-02', 'Tailspin Toys', 340.00, DM.StringCatalog.GetByName('Sales.Open'));
  AddOrder('SO-2026-1045', '2026-07-08', 'Proseware Systems', 1799.90, DM.StringCatalog.GetByName('Sales.Shipped'));
  AddOrder('SO-2026-1046', '2026-07-12', 'Fabrikam Trading', 675.25, DM.StringCatalog.GetByName('Sales.Open'));
  lblTotalValue.Caption := FormatFloat('#,##0.00', FTotal);
end;

procedure TFormOrders.FormCreate(Sender: TObject);
begin
  SetupGrid;
  cmbCustomer.Items.Add(DM.StringCatalog.GetByName('Sales.AllCustomers'));
  cmbCustomer.Items.Add('Fabrikam Trading');
  cmbCustomer.Items.Add('Contoso Retail');
  cmbCustomer.Items.Add('Northwind Foods');
  cmbCustomer.Items.Add('Tailspin Toys');
  cmbCustomer.Items.Add('Proseware Systems');
  cmbCustomer.ItemIndex := 0;
  dtFrom.Date := Now - 30;
  dtTo.Date := Now;
  LoadOrders;
end;

procedure TFormOrders.btnRefreshClick(Sender: TObject);
begin
  LoadOrders;
end;

procedure TFormOrders.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
