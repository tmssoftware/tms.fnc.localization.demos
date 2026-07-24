unit UHRDepartments;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.EditBox, FMX.SpinBox, FMX.ListBox, FMX.Layouts, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, TMS.TMSFNCLocalizationForm;

type
  TFormDepartments = class(TTMSFNCLocalizationForm)
    lstDepartments: TListBox;
    lblDeptName: TLabel;
    edtDeptName: TEdit;
    lblManager: TLabel;
    edtManager: TEdit;
    lblBudget: TLabel;
    spbBudget: TSpinBox;
    lblNotes: TLabel;
    memDeptNotes: TMemo;
    btnAddDept: TButton;
    btnRemoveDept: TButton;
    btnSaveDept: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure lstDepartmentsChange(Sender: TObject);
    procedure btnAddDeptClick(Sender: TObject);
    procedure btnRemoveDeptClick(Sender: TObject);
    procedure btnSaveDeptClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

const
  CManagers: array[0..4] of string = ('Anna Johnson', 'Peter Novak',
    'Maria Garcia', 'John Smith', 'Laura Rossi');

procedure TFormDepartments.FormCreate(Sender: TObject);
begin
  lstDepartments.Items.Add(DM.StringCatalog.GetByName('HR.Sales'));
  lstDepartments.Items.Add(DM.StringCatalog.GetByName('HR.Engineering'));
  lstDepartments.Items.Add(DM.StringCatalog.GetByName('HR.Finance'));
  lstDepartments.Items.Add(DM.StringCatalog.GetByName('HR.Support'));
  lstDepartments.Items.Add(DM.StringCatalog.GetByName('HR.Marketing'));
  lstDepartments.ItemIndex := 0;
  lstDepartmentsChange(nil);
end;

procedure TFormDepartments.lstDepartmentsChange(Sender: TObject);
var
  LIndex: Integer;
begin
  LIndex := lstDepartments.ItemIndex;
  if (LIndex < 0) or (LIndex > High(CManagers)) then
    Exit;
  edtDeptName.Text := lstDepartments.Items[LIndex];
  edtManager.Text := CManagers[LIndex];
  spbBudget.Value := 150000 + (LIndex * 50000);
  memDeptNotes.Text := '';
end;

procedure TFormDepartments.btnAddDeptClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('HR.AddDepartment'));
end;

procedure TFormDepartments.btnRemoveDeptClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('HR.RemoveDepartment'));
end;

procedure TFormDepartments.btnSaveDeptClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('HR.SaveDepartments'));
end;

procedure TFormDepartments.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
