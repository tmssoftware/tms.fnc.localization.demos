unit UHREmployees;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  TMS.TMSFNCLocalizationForm;

type
  TFormEmployees = class(TTMSFNCLocalizationForm)
    lblFilter: TLabel;
    edtFilter: TEdit;
    lblDept: TLabel;
    cmbDeptFilter: TComboBox;
    grdEmployees: TStringGrid;
    btnNewEmployee: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnNewEmployeeClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FRows: Integer;
    procedure SetupGrid;
    procedure AddEmployee(const AName, ADept, APosition, AHireDate, AEmail: string);
  public
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormEmployees.SetupGrid;
begin
  grdEmployees.ColCount := 5;
  grdEmployees.FixedCols := 0;
  grdEmployees.FixedRows := 1;
  grdEmployees.Cells[0, 0] := DM.StringCatalog.GetByName('HR.Name');
  grdEmployees.Cells[1, 0] := DM.StringCatalog.GetByName('HR.Department');
  grdEmployees.Cells[2, 0] := DM.StringCatalog.GetByName('HR.Position');
  grdEmployees.Cells[3, 0] := DM.StringCatalog.GetByName('HR.HireDate');
  grdEmployees.Cells[4, 0] := DM.StringCatalog.GetByName('HR.Email');
  grdEmployees.ColWidths[0] := 140;
  grdEmployees.ColWidths[1] := 110;
  grdEmployees.ColWidths[2] := 130;
  grdEmployees.ColWidths[3] := 90;
  grdEmployees.ColWidths[4] := 170;
end;

procedure TFormEmployees.AddEmployee(const AName, ADept, APosition, AHireDate,
  AEmail: string);
begin
  Inc(FRows);
  grdEmployees.RowCount := FRows + 1;
  grdEmployees.Cells[0, FRows] := AName;
  grdEmployees.Cells[1, FRows] := ADept;
  grdEmployees.Cells[2, FRows] := APosition;
  grdEmployees.Cells[3, FRows] := AHireDate;
  grdEmployees.Cells[4, FRows] := AEmail;
end;

procedure TFormEmployees.FormCreate(Sender: TObject);
begin
  SetupGrid;
  cmbDeptFilter.Items.Add(DM.StringCatalog.GetByName('HR.AllDepartments'));
  cmbDeptFilter.Items.Add(DM.StringCatalog.GetByName('HR.Sales'));
  cmbDeptFilter.Items.Add(DM.StringCatalog.GetByName('HR.Engineering'));
  cmbDeptFilter.Items.Add(DM.StringCatalog.GetByName('HR.Finance'));
  cmbDeptFilter.Items.Add(DM.StringCatalog.GetByName('HR.Support'));
  cmbDeptFilter.ItemIndex := 0;

  FRows := 0;
  grdEmployees.RowCount := 2;
  AddEmployee('Anna Johnson', DM.StringCatalog.GetByName('HR.Sales'), DM.StringCatalog.GetByName('HR.AccountManager'), '2018-03-12', 'anna.johnson@example.com');
  AddEmployee('Peter Novak', DM.StringCatalog.GetByName('HR.Engineering'), DM.StringCatalog.GetByName('HR.SoftwareDeveloper'), '2020-09-01', 'peter.novak@example.com');
  AddEmployee('Maria Garcia', DM.StringCatalog.GetByName('HR.Finance'), DM.StringCatalog.GetByName('HR.Controller'), '2016-01-15', 'maria.garcia@example.com');
  AddEmployee('John Smith', DM.StringCatalog.GetByName('HR.Support'), DM.StringCatalog.GetByName('HR.SupportEngineer'), '2021-06-07', 'john.smith@example.com');
  AddEmployee('Sofie Peeters', DM.StringCatalog.GetByName('HR.Sales'), DM.StringCatalog.GetByName('HR.SalesRep'), '2019-11-23', 'sofie.peeters@example.com');
  AddEmployee('Tomas Kovacs', DM.StringCatalog.GetByName('HR.Engineering'), DM.StringCatalog.GetByName('HR.QA'), '2022-02-28', 'tomas.kovacs@example.com');
end;

procedure TFormEmployees.btnNewEmployeeClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('HR.AddEmployee'));
end;

procedure TFormEmployees.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
