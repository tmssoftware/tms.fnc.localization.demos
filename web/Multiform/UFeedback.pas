unit UFeedback;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  WEBLib.TMSFNCLocalizationForm;

type
  TFormFeedback = class(TTMSFNCLocalizationForm)
    lblCategory: TWebLabel;
    cmbCategory: TWebComboBox;
    lblMessage: TWebLabel;
    memMessage: TWebMemo;
    chkCopy: TWebCheckBox;
    btnSend: TWebButton;
    btnClose: TWebButton;
    procedure btnSendClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  end;

var
  FormFeedback: TFormFeedback;

implementation

{$R *.dfm}

uses
  UMain;

procedure TFormFeedback.btnSendClick(Sender: TObject);
begin
  if Trim(memMessage.Text) = '' then
  begin
    ShowMessage(FormMain.StringCatalog.Strings.FindByName('EnterMessage').Value);
    Exit;
  end;
  ShowMessage(FormMain.StringCatalog.Strings.FindByName('Feedback').Value);
  ModalResult := mrOK;
end;

procedure TFormFeedback.btnCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
