unit UMain;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  Vcl.Menus, WEBLib.Menus, WEBLib.TMSFNCLocalizationForm,
  TMS.TMSFNCLocalizationLocalizer, TMS.TMSFNCLocalizationStringCatalog,
  WEBLib.TMSFNCLocalizationPlatformCore;

type
  TFormMain = class(TTMSFNCLocalizationForm)
    lblTitle: TWebLabel;
    lblSubtitle: TWebLabel;
    btnCustomer: TWebButton;
    btnSettings: TWebButton;
    btnFeedback: TWebButton;
    btnAbout: TWebButton;
    lblLog: TWebLabel;
    lstLog: TWebListBox;
    Localizer: TTMSFNCLocalizationLocalizer;
    StringCatalog: TTMSFNCLocalizationStringCatalog;
    [async]
    procedure btnCustomerClick(Sender: TObject);
    [async]
    procedure btnSettingsClick(Sender: TObject);
    [async]
    procedure btnFeedbackClick(Sender: TObject);
    [async]
    procedure btnAboutClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
  private
    procedure Log(const AMessage: string);
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
  UAbout, UCustomer, UFeedback, USettings;

procedure TFormMain.Log(const AMessage: string);
begin
  lstLog.Items.Insert(0, AMessage);
end;

procedure TFormMain.btnCustomerClick(Sender: TObject);
var
  frm: TFormCustomer;
  mr: TModalResult;
begin
  frm := TFormCustomer.Create(Self, True, fbDialog, 'Customer Details');
  frm.Width := 470;
  frm.Height := 368;
  try
    mr := await(TModalResult, frm.LoadAndExecute);
    if mr = mrOK then
      Log('Customer details saved')
    else
      Log('Customer form cancelled');
  finally
    frm.Free;
  end;
end;

procedure TFormMain.btnSettingsClick(Sender: TObject);
var
  frm: TFormSettings;
  mr: TModalResult;
begin
  frm := TFormSettings.Create(Self, True, fbDialog, 'Application Settings');
  frm.Width := 468;
  frm.Height := 329;
  try
    mr := await(TModalResult, frm.LoadAndExecute);
    if mr = mrOK then
      Log('Settings saved')
    else
      Log('Settings unchanged');
  finally
    frm.Free;
  end;
end;

procedure TFormMain.btnFeedbackClick(Sender: TObject);
var
  frm: TFormFeedback;
  mr: TModalResult;
begin
  frm := TFormFeedback.Create(Self, True, fbDialog, 'Send Feedback');
  frm.Width := 431;
  frm.Height := 353;
  try
    TAwait.ExecP<TFormFeedback>(frm.Load);
    mr := TAwait.ExecP<TModalResult>(frm.Execute);
    if mr = mrOK then
      Log('Feedback sent')
    else
      Log('Feedback form closed');
  finally
    frm.Free;
  end;
end;

procedure TFormMain.btnAboutClick(Sender: TObject);
var
  frm: TFormAbout;
begin
  frm := TFormAbout.Create(Self, True, fbDialog, 'About');
  frm.Width := 403;
  frm.Height := 268;
  try
    await(TModalResult, frm.LoadAndExecute);
    Log('About box shown');
  finally
    frm.Free;
  end;
end;

procedure TFormMain.mnuFileExitClick(Sender: TObject);
begin
  window.close;
end;

end.
