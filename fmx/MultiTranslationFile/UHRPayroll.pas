unit UHRPayroll;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Rtti, System.DateUtils, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Edit, FMX.EditBox, FMX.SpinBox, FMX.ListBox, FMX.Layouts,
  FMX.Grid, FMX.Grid.Style, FMX.ScrollBox, FMX.Controls.Presentation,
  TMS.TMSFNCLocalizationForm;

type
  TFormPayroll = class(TTMSFNCLocalizationForm)
    lblPeriod: TLabel;
    cmbMonth: TComboBox;
    spbYear: TSpinBox;
    btnCalculate: TButton;
    grdPayroll: TStringGrid;
    colPayEmp: TStringColumn;
    colPayGross: TStringColumn;
    colPayTax: TStringColumn;
    colPayNet: TStringColumn;
    gbSummary: TGroupBox;
    lblTotalGross: TLabel;
    lblTotalGrossValue: TLabel;
    lblTotalNet: TLabel;
    lblTotalNetValue: TLabel;
    btnExport: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

procedure TFormPayroll.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 12 do
    cmbMonth.Items.Add(FormatSettings.LongMonthNames[I]);
  cmbMonth.ItemIndex := MonthOf(Now) - 1;
end;

procedure TFormPayroll.btnCalculateClick(Sender: TObject);
const
  CNames: array[0..4] of string = ('Anna Johnson', 'Peter Novak',
    'Maria Garcia', 'John Smith', 'Sofie Peeters');
  CGross: array[0..4] of Double = (4200.00, 5100.00, 3800.00, 3350.00, 4650.00);
var
  I: Integer;
  LTax, LNet, LTotalGross, LTotalNet: Double;
begin
  grdPayroll.RowCount := 0;
  LTotalGross := 0;
  LTotalNet := 0;
  for I := 0 to High(CNames) do
  begin
    LTax := CGross[I] * 0.30;
    LNet := CGross[I] - LTax;
    grdPayroll.RowCount := I + 1;
    grdPayroll.Cells[0, I] := CNames[I];
    grdPayroll.Cells[1, I] := FormatFloat('#,##0.00', CGross[I]);
    grdPayroll.Cells[2, I] := FormatFloat('#,##0.00', LTax);
    grdPayroll.Cells[3, I] := FormatFloat('#,##0.00', LNet);
    LTotalGross := LTotalGross + CGross[I];
    LTotalNet := LTotalNet + LNet;
  end;
  lblTotalGrossValue.Text := FormatFloat('#,##0.00', LTotalGross);
  lblTotalNetValue.Text := FormatFloat('#,##0.00', LTotalNet);
end;

procedure TFormPayroll.btnExportClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('HR.Export'));
end;

procedure TFormPayroll.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
