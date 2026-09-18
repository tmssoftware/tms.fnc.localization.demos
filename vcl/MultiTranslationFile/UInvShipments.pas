unit UInvShipments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ComCtrls, VCL.TMSFNCLocalizationForm;

type
  TFormShipments = class(TTMSFNCLocalizationForm)
    grdShipments: TStringGrid;
    gbShipDetails: TGroupBox;
    lblTracking: TLabel;
    edtTracking: TEdit;
    lblCarrier: TLabel;
    cmbCarrier: TComboBox;
    lblShipStatus: TLabel;
    cmbShipStatus: TComboBox;
    lblProgress: TLabel;
    trkProgress: TTrackBar;
    btnTrack: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTrackClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    FRows: Integer;
    procedure SetupGrid;
    procedure AddShipment(const ANo, ACarrier, ADate, AStatus: string);
  public
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormShipments.SetupGrid;
begin
  grdShipments.ColCount := 4;
  grdShipments.FixedCols := 0;
  grdShipments.FixedRows := 1;
  grdShipments.Cells[0, 0] := DM.StringCatalog.GetByName('Inv.Shipment');
  grdShipments.Cells[1, 0] := DM.StringCatalog.GetByName('Inv.Carrier');
  grdShipments.Cells[2, 0] := DM.StringCatalog.GetByName('Inv.ShipDate');
  grdShipments.Cells[3, 0] := DM.StringCatalog.GetByName('Inv.Status');
  grdShipments.ColWidths[0] := 130;
  grdShipments.ColWidths[1] := 130;
  grdShipments.ColWidths[2] := 120;
  grdShipments.ColWidths[3] := 130;
end;

procedure TFormShipments.AddShipment(const ANo, ACarrier, ADate, AStatus: string);
begin
  Inc(FRows);
  grdShipments.RowCount := FRows + 1;
  grdShipments.Cells[0, FRows] := ANo;
  grdShipments.Cells[1, FRows] := ACarrier;
  grdShipments.Cells[2, FRows] := ADate;
  grdShipments.Cells[3, FRows] := AStatus;
end;

procedure TFormShipments.FormCreate(Sender: TObject);
begin
  SetupGrid;
  FRows := 0;
  grdShipments.RowCount := 2;
  AddShipment('SHP-2026-0871', 'DHL Express', '2026-07-10', DM.StringCatalog.GetByName('Inv.InTransit'));
  AddShipment('SHP-2026-0872', 'UPS', '2026-07-11', DM.StringCatalog.GetByName('Inv.OutForDelivery'));
  AddShipment('SHP-2026-0873', 'FedEx', '2026-07-12', DM.StringCatalog.GetByName('Inv.Registered'));
  AddShipment('SHP-2026-0874', 'PostNL', '2026-07-08', DM.StringCatalog.GetByName('Inv.Delivered'));

  cmbCarrier.Items.Add('DHL Express');
  cmbCarrier.Items.Add('UPS');
  cmbCarrier.Items.Add('FedEx');
  cmbCarrier.Items.Add('PostNL');
  cmbCarrier.ItemIndex := 0;

  cmbShipStatus.Items.Add(DM.StringCatalog.GetByName('Inv.Registered'));
  cmbShipStatus.Items.Add(DM.StringCatalog.GetByName('Inv.PickedUp'));
  cmbShipStatus.Items.Add(DM.StringCatalog.GetByName('Inv.InTransit'));
  cmbShipStatus.Items.Add(DM.StringCatalog.GetByName('Inv.OutForDelivery'));
  cmbShipStatus.Items.Add(DM.StringCatalog.GetByName('Inv.Delivered'));
  cmbShipStatus.ItemIndex := 2;

  edtTracking.Text := 'JD014600003RT7124';
end;

procedure TFormShipments.btnTrackClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Inv.OnlineTrack'));
end;

procedure TFormShipments.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
