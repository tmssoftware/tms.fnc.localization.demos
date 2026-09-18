unit USalesInvoices;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.Controls.Presentation, FMX.TMSFNCLocalizationForm;

type
  TFormInvoices = class(TTMSFNCLocalizationForm)
    lstInvoices: TListBox;
    gbDetails: TGroupBox;
    lblInvNo: TLabel;
    edtInvNo: TEdit;
    lblInvCustomer: TLabel;
    edtInvCustomer: TEdit;
    lblInvAmount: TLabel;
    edtInvAmount: TEdit;
    lblInvDue: TLabel;
    dtInvDue: TDateEdit;
    chkPaid: TCheckBox;
    btnPrint: TButton;
    btnEmail: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure lstInvoicesChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

const
  CCustomers: array[0..4] of string = ('Fabrikam Trading', 'Contoso Retail',
    'Northwind Foods', 'Tailspin Toys', 'Proseware Systems');
  CAmounts: array[0..4] of Double = (1250.00, 890.50, 5120.75, 340.00, 1799.90);

procedure TFormInvoices.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 5 do
    lstInvoices.Items.Add(Format('INV-2026-%.4d', [I]));
  lstInvoices.ItemIndex := 0;
  lstInvoicesChange(nil);
end;

procedure TFormInvoices.lstInvoicesChange(Sender: TObject);
var
  LIndex: Integer;
begin
  LIndex := lstInvoices.ItemIndex;
  if (LIndex < 0) or (LIndex > High(CCustomers)) then
    Exit;
  edtInvNo.Text := lstInvoices.Items[LIndex];
  edtInvCustomer.Text := CCustomers[LIndex];
  edtInvAmount.Text := FormatFloat('#,##0.00', CAmounts[LIndex]);
  dtInvDue.Date := Now + (LIndex * 7) - 14;
  chkPaid.IsChecked := LIndex mod 2 = 0;
end;

procedure TFormInvoices.btnPrintClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Sales.Print'));
end;

procedure TFormInvoices.btnEmailClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Sales.SendEmail'));
end;

procedure TFormInvoices.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
