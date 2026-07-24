unit UHRLeaveRequests;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ComCtrls, TMS.TMSFNCLocalizationForm;

type
  TFormLeaveRequests = class(TTMSFNCLocalizationForm)
    gbNewRequest: TGroupBox;
    lblEmployee: TLabel;
    cmbEmployee: TComboBox;
    lblLeaveType: TLabel;
    cmbLeaveType: TComboBox;
    lblFirstDay: TLabel;
    dtFirstDay: TDateTimePicker;
    lblLastDay: TLabel;
    dtLastDay: TDateTimePicker;
    rbFullDay: TRadioButton;
    rbHalfDay: TRadioButton;
    lblReason: TLabel;
    edtReason: TEdit;
    btnSubmit: TButton;
    grdRequests: TStringGrid;
    btnApprove: TButton;
    btnReject: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSubmitClick(Sender: TObject);
    procedure btnApproveClick(Sender: TObject);
    procedure btnRejectClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FRows: Integer;
    procedure SetupGrid;
    procedure AddRequest(const AEmployee, AType, AFrom, ATo, AStatus: string);
    procedure SetSelectedStatus(const AStatus: string);
  public
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormLeaveRequests.SetupGrid;
begin
  grdRequests.ColCount := 5;
  grdRequests.FixedCols := 0;
  grdRequests.FixedRows := 1;
  grdRequests.Cells[0, 0] := DM.StringCatalog.GetByName('HR.Employee');
  grdRequests.Cells[1, 0] := DM.StringCatalog.GetByName('HR.Type');
  grdRequests.Cells[2, 0] := DM.StringCatalog.GetByName('HR.From');
  grdRequests.Cells[3, 0] := DM.StringCatalog.GetByName('HR.To');
  grdRequests.Cells[4, 0] := DM.StringCatalog.GetByName('HR.Status');
  grdRequests.ColWidths[0] := 130;
  grdRequests.ColWidths[1] := 110;
  grdRequests.ColWidths[2] := 90;
  grdRequests.ColWidths[3] := 90;
  grdRequests.ColWidths[4] := 90;
end;

procedure TFormLeaveRequests.AddRequest(const AEmployee, AType, AFrom, ATo,
  AStatus: string);
begin
  Inc(FRows);
  grdRequests.RowCount := FRows + 1;
  grdRequests.Cells[0, FRows] := AEmployee;
  grdRequests.Cells[1, FRows] := AType;
  grdRequests.Cells[2, FRows] := AFrom;
  grdRequests.Cells[3, FRows] := ATo;
  grdRequests.Cells[4, FRows] := AStatus;
end;

procedure TFormLeaveRequests.SetSelectedStatus(const AStatus: string);
begin
  if (FRows > 0) and (grdRequests.Row >= 1) and (grdRequests.Row <= FRows) then
    grdRequests.Cells[4, grdRequests.Row] := AStatus
  else
    ShowMessage(DM.StringCatalog.GetByName('HR.SelectRequest'));
end;

procedure TFormLeaveRequests.FormCreate(Sender: TObject);
begin
  SetupGrid;
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

  FRows := 0;
  grdRequests.RowCount := 2;
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
