unit USalesCustomers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ExtCtrls, TMS.TMSFNCLocalizationForm;

type
  TFormCustomers = class(TTMSFNCLocalizationForm)
    lblSearch: TLabel;
    edtSearch: TEdit;
    btnSearch: TButton;
    chkShowInactive: TCheckBox;
    grdCustomers: TStringGrid;
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
    FRows: Integer;
    procedure SetupGrid;
    procedure AddCustomer(const AName, ACity, ACountry, APhone, AStatus: string);
  public
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormCustomers.SetupGrid;
begin
  grdCustomers.ColCount := 5;
  grdCustomers.FixedCols := 0;
  grdCustomers.FixedRows := 1;
  grdCustomers.Cells[0, 0] := DM.StringCatalog.GetByName('Sales.Name');
  grdCustomers.Cells[1, 0] := DM.StringCatalog.GetByName('Sales.City');
  grdCustomers.Cells[2, 0] := DM.StringCatalog.GetByName('Sales.Country');
  grdCustomers.Cells[3, 0] := DM.StringCatalog.GetByName('Sales.Phone');
  grdCustomers.Cells[4, 0] := DM.StringCatalog.GetByName('Sales.Status');
  grdCustomers.ColWidths[0] := 160;
  grdCustomers.ColWidths[1] := 100;
  grdCustomers.ColWidths[2] := 110;
  grdCustomers.ColWidths[3] := 120;
  grdCustomers.ColWidths[4] := 80;
end;

procedure TFormCustomers.AddCustomer(const AName, ACity, ACountry, APhone, AStatus: string);
begin
  Inc(FRows);
  grdCustomers.RowCount := FRows + 1;
  grdCustomers.Cells[0, FRows] := AName;
  grdCustomers.Cells[1, FRows] := ACity;
  grdCustomers.Cells[2, FRows] := ACountry;
  grdCustomers.Cells[3, FRows] := APhone;
  grdCustomers.Cells[4, FRows] := AStatus;
end;

procedure TFormCustomers.FormCreate(Sender: TObject);
begin
  SetupGrid;
  FRows := 0;
  grdCustomers.RowCount := 2;
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
