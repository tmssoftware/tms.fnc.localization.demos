unit UCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  TMS.TMSFNCLocalizationForm;

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

{$R *.dfm}

end.
