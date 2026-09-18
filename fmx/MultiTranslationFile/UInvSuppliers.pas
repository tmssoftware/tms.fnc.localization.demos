unit UInvSuppliers;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.Controls.Presentation, FMX.TMSFNCLocalizationForm;

type
  TFormSuppliers = class(TTMSFNCLocalizationForm)
    lstSuppliers: TListBox;
    lblSupplierName: TLabel;
    edtSupplierName: TEdit;
    lblContact: TLabel;
    edtContact: TEdit;
    lblPhone: TLabel;
    edtPhone: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblSupplierNotes: TLabel;
    memSupplierNotes: TMemo;
    btnSaveSupplier: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure lstSuppliersChange(Sender: TObject);
    procedure btnSaveSupplierClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
  public
  end;

implementation

uses
  UDM;

{$R *.fmx}

const
  CContacts: array[0..3] of string = ('Erik Andersen', 'Yuki Tanaka',
    'Claire Dubois', 'Marco Bianchi');
  CPhones: array[0..3] of string = ('+45 33 555 0201', '+81 3 5555 0202',
    '+33 1 5555 0203', '+39 02 555 0204');

procedure TFormSuppliers.FormCreate(Sender: TObject);
begin
  lstSuppliers.Items.Add('Litware Components');
  lstSuppliers.Items.Add('Wide World Importers');
  lstSuppliers.Items.Add('Trey Research');
  lstSuppliers.Items.Add('Lucerne Publishing');
  lstSuppliers.ItemIndex := 0;
  lstSuppliersChange(nil);
end;

procedure TFormSuppliers.lstSuppliersChange(Sender: TObject);
var
  LIndex: Integer;
begin
  LIndex := lstSuppliers.ItemIndex;
  if (LIndex < 0) or (LIndex > High(CContacts)) then
    Exit;
  edtSupplierName.Text := lstSuppliers.Items[LIndex];
  edtContact.Text := CContacts[LIndex];
  edtPhone.Text := CPhones[LIndex];
  edtEmail.Text := LowerCase(StringReplace(CContacts[LIndex], ' ', '.', [rfReplaceAll])) + '@example.com';
  memSupplierNotes.Text := '';
end;

procedure TFormSuppliers.btnSaveSupplierClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.GetByName('Inv.SupplierSaved'));
end;

procedure TFormSuppliers.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
