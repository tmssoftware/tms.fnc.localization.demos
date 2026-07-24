unit UInvShipments;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Rtti, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.Grid, FMX.Grid.Style,
  FMX.ScrollBox, FMX.Controls.Presentation, TMS.TMSFNCLocalizationForm;

type
  TFormShipments = class(TTMSFNCLocalizationForm)
    grdShipments: TStringGrid;
    colShipNo: TStringColumn;
    colShipCarrier: TStringColumn;
    colShipDate: TStringColumn;
    colShipStatus: TStringColumn;
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
    procedure AddShipment(const ANo, ACarrier, ADate, AStatus: string);
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

procedure TFormShipments.AddShipment(const ANo, ACarrier, ADate, AStatus: string);
var
  LRow: Integer;
begin
  LRow := grdShipments.RowCount;
  grdShipments.RowCount := LRow + 1;
  grdShipments.Cells[0, LRow] := ANo;
  grdShipments.Cells[1, LRow] := ACarrier;
  grdShipments.Cells[2, LRow] := ADate;
  grdShipments.Cells[3, LRow] := AStatus;
end;

procedure TFormShipments.FormCreate(Sender: TObject);
begin
  grdShipments.RowCount := 0;
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
