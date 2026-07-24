unit USalesProducts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Spin, TMS.TMSFNCLocalizationForm;

type
  TFormProducts = class(TTMSFNCLocalizationForm)
    tbcProduct: TPageControl;
    tabGeneral: TTabSheet;
    lblName: TLabel;
    edtName: TEdit;
    lblSKU: TLabel;
    edtSKU: TEdit;
    lblPrice: TLabel;
    spbPrice: TSpinEdit;
    lblCategory: TLabel;
    cmbCategory: TComboBox;
    chkActive: TCheckBox;
    tabDescription: TTabSheet;
    memDescription: TMemo;
    tabOptions: TTabSheet;
    chkTaxable: TCheckBox;
    chkTrackStock: TCheckBox;
    chkDiscount: TCheckBox;
    rbPhysical: TRadioButton;
    rbDigital: TRadioButton;
    btnSave: TButton;
    btnCancel: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
  public
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormProducts.FormCreate(Sender: TObject);
begin
  cmbCategory.Items.Add(DM.StringCatalog.GetByName('Sales.Beverages'));
  cmbCategory.Items.Add(DM.StringCatalog.GetByName('Sales.OfficeSupplies'));
  cmbCategory.Items.Add(DM.StringCatalog.GetByName('Sales.Hardware'));
  cmbCategory.Items.Add(DM.StringCatalog.GetByName('Sales.Software'));
  cmbCategory.ItemIndex := 0;
  edtName.Text := DM.StringCatalog.GetByName('Sales.Sample');
  edtSKU.Text := 'SKU-00123';
  memDescription.Text := DM.StringCatalog.GetByName('Sales.EnterDescription');
end;

procedure TFormProducts.btnSaveClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Sales.ProductSaved'));
  Close;
end;

procedure TFormProducts.btnCancelClick(Sender: TObject);
begin
  Close;
end;

end.
