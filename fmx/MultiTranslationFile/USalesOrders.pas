unit USalesOrders;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Rtti, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.Grid, FMX.Grid.Style, FMX.ScrollBox, FMX.Controls.Presentation,
  TMS.TMSFNCLocalizationForm;

type
  TFormOrders = class(TTMSFNCLocalizationForm)
    lblCustomer: TLabel;
    cmbCustomer: TComboBox;
    lblFrom: TLabel;
    dtFrom: TDateEdit;
    lblTo: TLabel;
    dtTo: TDateEdit;
    grdOrders: TStringGrid;
    colOrderNo: TStringColumn;
    colOrderDate: TStringColumn;
    colOrderCustomer: TStringColumn;
    colOrderTotal: TStringColumn;
    colOrderStatus: TStringColumn;
    lblTotal: TLabel;
    lblTotalValue: TLabel;
    btnRefresh: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FTotal: Double;
    procedure AddOrder(const AOrderNo, ADate, ACustomer: string; ATotal: Double;
      const AStatus: string);
    procedure LoadOrders;
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

procedure TFormOrders.AddOrder(const AOrderNo, ADate, ACustomer: string;
  ATotal: Double; const AStatus: string);
var
  LRow: Integer;
begin
  LRow := grdOrders.RowCount;
  grdOrders.RowCount := LRow + 1;
  grdOrders.Cells[0, LRow] := AOrderNo;
  grdOrders.Cells[1, LRow] := ADate;
  grdOrders.Cells[2, LRow] := ACustomer;
  grdOrders.Cells[3, LRow] := FormatFloat('#,##0.00', ATotal);
  grdOrders.Cells[4, LRow] := AStatus;
  FTotal := FTotal + ATotal;
end;

procedure TFormOrders.LoadOrders;
begin
  FTotal := 0;
  grdOrders.RowCount := 0;
  AddOrder('SO-2026-1041', '2026-06-18', 'Fabrikam Trading', 2450.00, DM.StringCatalog.GetByName('Sales.Shipped'));
  AddOrder('SO-2026-1042', '2026-06-21', 'Contoso Retail', 890.50, DM.StringCatalog.GetByName('Sales.Open'));
  AddOrder('SO-2026-1043', '2026-06-25', 'Northwind Foods', 5120.75, DM.StringCatalog.GetByName('Sales.Paid'));
  AddOrder('SO-2026-1044', '2026-07-02', 'Tailspin Toys', 340.00, DM.StringCatalog.GetByName('Sales.Open'));
  AddOrder('SO-2026-1045', '2026-07-08', 'Proseware Systems', 1799.90, DM.StringCatalog.GetByName('Sales.Shipped'));
  AddOrder('SO-2026-1046', '2026-07-12', 'Fabrikam Trading', 675.25, DM.StringCatalog.GetByName('Sales.Open'));
  lblTotalValue.Text := FormatFloat('#,##0.00', FTotal);
end;

procedure TFormOrders.FormCreate(Sender: TObject);
begin
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
