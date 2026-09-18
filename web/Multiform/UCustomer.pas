unit UCustomer;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls, WEBLib.ExtCtrls,
  WEBLib.TMSFNCLocalizationForm;

type
  TFormCustomer = class(TTMSFNCLocalizationForm)
    lblName: TWebLabel;
    edtName: TWebEdit;
    lblEmail: TWebLabel;
    edtEmail: TWebEdit;
    lblPhone: TWebLabel;
    edtPhone: TWebEdit;
    lblCountry: TWebLabel;
    cmbCountry: TWebComboBox;
    grpContact: TWebGroupBox;
    rbEmail: TWebRadioButton;
    rbPhone: TWebRadioButton;
    rbPost: TWebRadioButton;
    chkNewsletter: TWebCheckBox;
    btnOK: TWebButton;
    btnCancel: TWebButton;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  end;

var
  FormCustomer: TFormCustomer;

implementation

{$R *.dfm}

procedure TFormCustomer.btnOKClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFormCustomer.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
