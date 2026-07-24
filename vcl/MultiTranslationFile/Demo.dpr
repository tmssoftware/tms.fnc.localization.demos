program Demo;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FormMain},
  USalesCustomers in 'USalesCustomers.pas' {FormCustomers},
  USalesOrders in 'USalesOrders.pas' {FormOrders},
  USalesInvoices in 'USalesInvoices.pas' {FormInvoices},
  USalesProducts in 'USalesProducts.pas' {FormProducts},
  UHREmployees in 'UHREmployees.pas' {FormEmployees},
  UHRDepartments in 'UHRDepartments.pas' {FormDepartments},
  UHRLeaveRequests in 'UHRLeaveRequests.pas' {FormLeaveRequests},
  UHRPayroll in 'UHRPayroll.pas' {FormPayroll},
  UInvStock in 'UInvStock.pas' {FormStock},
  UInvSuppliers in 'UInvSuppliers.pas' {FormSuppliers},
  UInvPurchaseOrders in 'UInvPurchaseOrders.pas' {FormPurchaseOrders},
  UInvShipments in 'UInvShipments.pas' {FormShipments},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
