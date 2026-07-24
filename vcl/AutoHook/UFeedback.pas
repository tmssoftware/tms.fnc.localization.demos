unit UFeedback;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormFeedback = class(TForm)
    lblCategory: TLabel;
    cmbCategory: TComboBox;
    lblMessage: TLabel;
    memMessage: TMemo;
    chkCopy: TCheckBox;
    btnSend: TButton;
    btnClose: TButton;
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormFeedback.btnSendClick(Sender: TObject);
begin
  if Trim(memMessage.Text) = '' then
  begin
    ShowMessage(DM.StringCatalog.Strings.FindByName('EnterMessage').Value);
    Exit;
  end;
  ShowMessage(DM.StringCatalog.Strings.FindByName('Feedback').Value);
  ModalResult := mrOk;
end;

end.
