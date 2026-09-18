unit UCustomer;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.ListBox, FMX.Controls.Presentation, FMX.TMSFNCLocalizationForm;

type
  TFormCustomer = class(TTMSFNCLocalizationForm)
    lblName: TLabel;
    edtName: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblPhone: TLabel;
    edtPhone: TEdit;
    lblCountry: TLabel;
    cmbCountry: TComboBox;
    grpContact: TGroupBox;
    rbEmail: TRadioButton;
    rbPhone: TRadioButton;
    rbPost: TRadioButton;
    chkNewsletter: TCheckBox;
    btnOK: TButton;
    btnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
