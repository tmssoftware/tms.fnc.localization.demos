unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ListBox, FMX.TMSFNCLocalizationComboBox,
  FMX.TMSFNCLocalizationForm;

type
  TSubFormClass = class of TTMSFNCLocalizationForm;

  TFormMain = class(TTMSFNCLocalizationForm)
    gbSales: TGroupBox;
    btnCustomers: TButton;
    btnOrders: TButton;
    btnInvoices: TButton;
    btnProducts: TButton;
    gbHR: TGroupBox;
    btnEmployees: TButton;
    btnDepartments: TButton;
    btnLeaveRequests: TButton;
    btnPayroll: TButton;
    gbInventory: TGroupBox;
    btnStock: TButton;
    btnSuppliers: TButton;
    btnPurchaseOrders: TButton;
    btnShipments: TButton;
    lblStatus: TLabel;
    TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox;
    lbLanguage: TLabel;
    procedure btnCustomersClick(Sender: TObject);
    procedure btnOrdersClick(Sender: TObject);
    procedure btnInvoicesClick(Sender: TObject);
    procedure btnProductsClick(Sender: TObject);
    procedure btnEmployeesClick(Sender: TObject);
    procedure btnDepartmentsClick(Sender: TObject);
    procedure btnLeaveRequestsClick(Sender: TObject);
    procedure btnPayrollClick(Sender: TObject);
    procedure btnStockClick(Sender: TObject);
    procedure btnSuppliersClick(Sender: TObject);
    procedure btnPurchaseOrdersClick(Sender: TObject);
    procedure btnShipmentsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure OpenForm(AFormClass: TSubFormClass);
    procedure SubFormClosed(Sender: TObject; var Action: TCloseAction);
  public
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses
  USalesCustomers, USalesOrders, USalesInvoices, USalesProducts,
  UHREmployees, UHRDepartments, UHRLeaveRequests, UHRPayroll,
  UInvStock, UInvSuppliers, UInvPurchaseOrders, UInvShipments, UDM;

procedure TFormMain.OpenForm(AFormClass: TSubFormClass);
var
  LForm: TForm;
begin
  LForm := AFormClass.Create(Self);
  LForm.OnClose := SubFormClosed;
  LForm.Show;
end;

procedure TFormMain.SubFormClosed(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TFormMain.btnCustomersClick(Sender: TObject);
begin
  OpenForm(TFormCustomers);
end;

procedure TFormMain.btnOrdersClick(Sender: TObject);
begin
  OpenForm(TFormOrders);
end;

procedure TFormMain.btnInvoicesClick(Sender: TObject);
begin
  OpenForm(TFormInvoices);
end;

procedure TFormMain.btnProductsClick(Sender: TObject);
begin
  OpenForm(TFormProducts);
end;

procedure TFormMain.btnEmployeesClick(Sender: TObject);
begin
  OpenForm(TFormEmployees);
end;

procedure TFormMain.btnDepartmentsClick(Sender: TObject);
begin
  OpenForm(TFormDepartments);
end;

procedure TFormMain.btnLeaveRequestsClick(Sender: TObject);
begin
  OpenForm(TFormLeaveRequests);
end;

procedure TFormMain.btnPayrollClick(Sender: TObject);
begin
  OpenForm(TFormPayroll);
end;

procedure TFormMain.btnStockClick(Sender: TObject);
begin
  OpenForm(TFormStock);
end;

procedure TFormMain.btnSuppliersClick(Sender: TObject);
begin
  OpenForm(TFormSuppliers);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  DM.Localizer.PerformLocalization;
end;

procedure TFormMain.btnPurchaseOrdersClick(Sender: TObject);
begin
  OpenForm(TFormPurchaseOrders);
end;

procedure TFormMain.btnShipmentsClick(Sender: TObject);
begin
  OpenForm(TFormShipments);
end;

end.
