unit UAbout;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  TMS.TMSFNCLocalizationForm;

type
  TFormAbout = class(TTMSFNCLocalizationForm)
    lblProduct: TWebLabel;
    lblVersion: TWebLabel;
    lblDescription: TWebLabel;
    lblCopyright: TWebLabel;
    btnClose: TWebButton;
    procedure btnCloseClick(Sender: TObject);
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.dfm}

procedure TFormAbout.btnCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
