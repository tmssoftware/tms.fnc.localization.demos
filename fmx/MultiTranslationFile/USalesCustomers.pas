unit USalesCustomers;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Rtti, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Edit, FMX.Grid, FMX.Grid.Style, FMX.ScrollBox,
  FMX.Controls.Presentation, TMS.TMSFNCLocalizationForm;

type
  TFormCustomers = class(TTMSFNCLocalizationForm)
    lblSearch: TLabel;
    edtSearch: TEdit;
    btnSearch: TButton;
    chkShowInactive: TCheckBox;
    grdCustomers: TStringGrid;
    colName: TStringColumn;
    colCity: TStringColumn;
    colCountry: TStringColumn;
    colPhone: TStringColumn;
    colStatus: TStringColumn;
    pnlButtons: TPanel;
    btnAdd: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    procedure AddCustomer(const AName, ACity, ACountry, APhone, AStatus: string);
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

procedure TFormCustomers.AddCustomer(const AName, ACity, ACountry, APhone, AStatus: string);
var
  LRow: Integer;
begin
  LRow := grdCustomers.RowCount;
  grdCustomers.RowCount := LRow + 1;
  grdCustomers.Cells[0, LRow] := AName;
  grdCustomers.Cells[1, LRow] := ACity;
  grdCustomers.Cells[2, LRow] := ACountry;
  grdCustomers.Cells[3, LRow] := APhone;
  grdCustomers.Cells[4, LRow] := AStatus;
end;

procedure TFormCustomers.FormCreate(Sender: TObject);
begin
  grdCustomers.RowCount := 0;
  AddCustomer('Fabrikam Trading', DM.StringCatalog.GetByName('Sales.Berlin'), DM.StringCatalog.GetByName('Sales.Germany'), '+49 30 555 0101', DM.StringCatalog.GetByName('Sales.Active'));
  AddCustomer('Contoso Retail', DM.StringCatalog.GetByName('Sales.Paris'), DM.StringCatalog.GetByName('Sales.France'), '+33 1 55 55 0102', DM.StringCatalog.GetByName('Sales.Active'));
  AddCustomer('Northwind Foods', DM.StringCatalog.GetByName('Sales.London'), DM.StringCatalog.GetByName('Sales.UK'), '+44 20 7555 0103', DM.StringCatalog.GetByName('Sales.Active'));
  AddCustomer('Adventure Works', DM.StringCatalog.GetByName('Sales.Seattle'), DM.StringCatalog.GetByName('Sales.US'), '+1 206 555 0104', DM.StringCatalog.GetByName('Sales.Inactive'));
  AddCustomer('Tailspin Toys', DM.StringCatalog.GetByName('Sales.Amsterdam'), DM.StringCatalog.GetByName('Sales.Netherlands'), '+31 20 555 0105', DM.StringCatalog.GetByName('Sales.Active'));
  AddCustomer('Proseware Systems', DM.StringCatalog.GetByName('Sales.Madrid'), DM.StringCatalog.GetByName('Sales.Spain'), '+34 91 555 0106', DM.StringCatalog.GetByName('Sales.Active'));
end;

procedure TFormCustomers.btnSearchClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Sales.Search'));
end;

procedure TFormCustomers.btnAddClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Sales.AddCustomer'));
end;

procedure TFormCustomers.btnEditClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Sales.EditCustomer'));
end;

procedure TFormCustomers.btnDeleteClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Sales.DeleteCustomer'));
end;

procedure TFormCustomers.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
