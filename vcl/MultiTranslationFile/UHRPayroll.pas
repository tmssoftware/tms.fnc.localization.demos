unit UHRPayroll;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.DateUtils, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Grids, Vcl.Samples.Spin, VCL.TMSFNCLocalizationForm;

type
  TFormPayroll = class(TTMSFNCLocalizationForm)
    lblPeriod: TLabel;
    cmbMonth: TComboBox;
    spbYear: TSpinEdit;
    btnCalculate: TButton;
    grdPayroll: TStringGrid;
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
    procedure SetupGrid;
  public
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormPayroll.SetupGrid;
begin
  grdPayroll.ColCount := 4;
  grdPayroll.FixedCols := 0;
  grdPayroll.FixedRows := 1;
  grdPayroll.Cells[0, 0] := DM.StringCatalog.GetByName('HR.Employee');
  grdPayroll.Cells[1, 0] := DM.StringCatalog.GetByName('HR.GrossSalary');
  grdPayroll.Cells[2, 0] := DM.StringCatalog.GetByName('HR.Tax');
  grdPayroll.Cells[3, 0] := DM.StringCatalog.GetByName('HR.NetSalary');
  grdPayroll.ColWidths[0] := 180;
  grdPayroll.ColWidths[1] := 120;
  grdPayroll.ColWidths[2] := 110;
  grdPayroll.ColWidths[3] := 120;
end;

procedure TFormPayroll.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  SetupGrid;
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
  grdPayroll.RowCount := Length(CNames) + 1;
  LTotalGross := 0;
  LTotalNet := 0;
  for I := 0 to High(CNames) do
  begin
    LTax := CGross[I] * 0.30;
    LNet := CGross[I] - LTax;
    grdPayroll.Cells[0, I + 1] := CNames[I];
    grdPayroll.Cells[1, I + 1] := FormatFloat('#,##0.00', CGross[I]);
    grdPayroll.Cells[2, I + 1] := FormatFloat('#,##0.00', LTax);
    grdPayroll.Cells[3, I + 1] := FormatFloat('#,##0.00', LNet);
    LTotalGross := LTotalGross + CGross[I];
    LTotalNet := LTotalNet + LNet;
  end;
  lblTotalGrossValue.Caption := FormatFloat('#,##0.00', LTotalGross);
  lblTotalNetValue.Caption := FormatFloat('#,##0.00', LTotalNet);
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
