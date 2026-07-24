unit UFeedback;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation;

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

{$R *.fmx}

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
