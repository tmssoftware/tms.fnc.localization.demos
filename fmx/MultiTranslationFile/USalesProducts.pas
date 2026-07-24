unit USalesProducts;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.EditBox, FMX.SpinBox, FMX.ListBox, FMX.Layouts, FMX.TabControl,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, 
  TMS.TMSFNCLocalizationForm;

type
  TFormProducts = class(TTMSFNCLocalizationForm)
    tbcProduct: TTabControl;
    tabGeneral: TTabItem;
    lblName: TLabel;
    edtName: TEdit;
    lblSKU: TLabel;
    edtSKU: TEdit;
    lblPrice: TLabel;
    spbPrice: TSpinBox;
    lblCategory: TLabel;
    cmbCategory: TComboBox;
    chkActive: TCheckBox;
    tabDescription: TTabItem;
    memDescription: TMemo;
    tabOptions: TTabItem;
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

{$R *.fmx}

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
