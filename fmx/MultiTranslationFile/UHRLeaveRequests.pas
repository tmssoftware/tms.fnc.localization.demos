unit UHRLeaveRequests;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Rtti, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.Grid, FMX.Grid.Style, FMX.ScrollBox, FMX.Controls.Presentation,
  TMS.TMSFNCLocalizationForm;

type
  TFormLeaveRequests = class(TTMSFNCLocalizationForm)
    gbNewRequest: TGroupBox;
    lblEmployee: TLabel;
    cmbEmployee: TComboBox;
    lblLeaveType: TLabel;
    cmbLeaveType: TComboBox;
    lblFirstDay: TLabel;
    dtFirstDay: TDateEdit;
    lblLastDay: TLabel;
    dtLastDay: TDateEdit;
    rbFullDay: TRadioButton;
    rbHalfDay: TRadioButton;
    lblReason: TLabel;
    edtReason: TEdit;
    btnSubmit: TButton;
    grdRequests: TStringGrid;
    colReqEmp: TStringColumn;
    colReqType: TStringColumn;
    colReqFrom: TStringColumn;
    colReqTo: TStringColumn;
    colReqStatus: TStringColumn;
    btnApprove: TButton;
    btnReject: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSubmitClick(Sender: TObject);
    procedure btnApproveClick(Sender: TObject);
    procedure btnRejectClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    procedure AddRequest(const AEmployee, AType, AFrom, ATo, AStatus: string);
    procedure SetSelectedStatus(const AStatus: string);
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

procedure TFormLeaveRequests.AddRequest(const AEmployee, AType, AFrom, ATo,
  AStatus: string);
var
  LRow: Integer;
begin
  LRow := grdRequests.RowCount;
  grdRequests.RowCount := LRow + 1;
  grdRequests.Cells[0, LRow] := AEmployee;
  grdRequests.Cells[1, LRow] := AType;
  grdRequests.Cells[2, LRow] := AFrom;
  grdRequests.Cells[3, LRow] := ATo;
  grdRequests.Cells[4, LRow] := AStatus;
end;

procedure TFormLeaveRequests.SetSelectedStatus(const AStatus: string);
begin
  if grdRequests.Selected >= 0 then
    grdRequests.Cells[4, grdRequests.Selected] := AStatus
  else
    ShowMessage(DM.StringCatalog.GetByName('HR.SelectRequest'));
end;

procedure TFormLeaveRequests.FormCreate(Sender: TObject);
begin
  cmbEmployee.Items.Add('Anna Johnson');
  cmbEmployee.Items.Add('Peter Novak');
  cmbEmployee.Items.Add('Maria Garcia');
  cmbEmployee.Items.Add('John Smith');
  cmbEmployee.Items.Add('Sofie Peeters');
  cmbEmployee.ItemIndex := 0;

  cmbLeaveType.Items.Add(DM.StringCatalog.GetByName('HR.Vacation'));
  cmbLeaveType.Items.Add(DM.StringCatalog.GetByName('HR.SickLeave'));
  cmbLeaveType.Items.Add(DM.StringCatalog.GetByName('HR.UnpaidLeave'));
  cmbLeaveType.Items.Add(DM.StringCatalog.GetByName('HR.ParentalLeave'));
  cmbLeaveType.ItemIndex := 0;

  dtFirstDay.Date := Now + 7;
  dtLastDay.Date := Now + 11;

  grdRequests.RowCount := 0;
  AddRequest('Peter Novak', DM.StringCatalog.GetByName('HR.Vacation'), '2026-08-03', '2026-08-14', DM.StringCatalog.GetByName('HR.Approved'));
  AddRequest('Maria Garcia', DM.StringCatalog.GetByName('HR.SickLeave'), '2026-07-06', '2026-07-08', DM.StringCatalog.GetByName('HR.Approved'));
  AddRequest('Sofie Peeters', DM.StringCatalog.GetByName('HR.Vacation'), '2026-09-21', '2026-09-25', DM.StringCatalog.GetByName('HR.Pending'));
  AddRequest('John Smith', DM.StringCatalog.GetByName('HR.UnpaidLeave'), '2026-10-01', '2026-10-02', DM.StringCatalog.GetByName('HR.Pending'));
end;

procedure TFormLeaveRequests.btnSubmitClick(Sender: TObject);
begin
  if (cmbEmployee.ItemIndex < 0) or (cmbLeaveType.ItemIndex < 0) then
  begin
    ShowMessage(DM.StringCatalog.GetByName('HR.SelectEmployee'));
    Exit;
  end;
  AddRequest(cmbEmployee.Items[cmbEmployee.ItemIndex],
    cmbLeaveType.Items[cmbLeaveType.ItemIndex],
    FormatDateTime('yyyy-mm-dd', dtFirstDay.Date),
    FormatDateTime('yyyy-mm-dd', dtLastDay.Date), DM.StringCatalog.GetByName('HR.Pending'));
end;

procedure TFormLeaveRequests.btnApproveClick(Sender: TObject);
begin
  SetSelectedStatus(DM.StringCatalog.GetByName('HR.Approved'));
end;

procedure TFormLeaveRequests.btnRejectClick(Sender: TObject);
begin
  SetSelectedStatus(DM.StringCatalog.GetByName('HR.Rejected'));
end;

procedure TFormLeaveRequests.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
