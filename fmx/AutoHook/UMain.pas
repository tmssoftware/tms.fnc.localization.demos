unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Menus, FMX.Layouts, FMX.Controls.Presentation, 
  FMX.TMSFNCLocalizationPlatformCore, TMS.TMSFNCLocalizationLocalizer, 
  TMS.TMSFNCLocalizationCollector;

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    mnuFile: TMenuItem;
    mnuFileExit: TMenuItem;
    mnuForms: TMenuItem;
    mnuFormsCustomer: TMenuItem;
    mnuFormsSettings: TMenuItem;
    mnuFormsFeedback: TMenuItem;
    mnuHelp: TMenuItem;
    mnuHelpAbout: TMenuItem;
    lblTitle: TLabel;
    lblSubtitle: TLabel;
    btnCustomer: TButton;
    btnSettings: TButton;
    btnFeedback: TButton;
    btnAbout: TButton;
    lblLog: TLabel;
    lstLog: TListBox;
    procedure btnCustomerClick(Sender: TObject);
    procedure btnSettingsClick(Sender: TObject);
    procedure btnFeedbackClick(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Log(const AMessage: string);
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses
  UCustomer, USettings, UFeedback, UAbout, UDM;

procedure TFormMain.Log(const AMessage: string);
begin
  lstLog.Items.Insert(0, AMessage);
end;

procedure TFormMain.btnCustomerClick(Sender: TObject);
var
  frm: TFormCustomer;
begin
  frm := TFormCustomer.Create(nil);
  try
    if frm.ShowModal = mrOk then
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
begin
  frm := TFormSettings.Create(nil);
  try
    if frm.ShowModal = mrOk then
      Log('Settings saved')
    else
      Log('Settings unchanged');
  finally
    frm.Free;
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  //Needs a single initial call, automatic mode does not trigger for main form
  DM.Localizer.PerformLocalization;
end;

procedure TFormMain.btnFeedbackClick(Sender: TObject);
var
  frm: TFormFeedback;
begin
  frm := TFormFeedback.Create(nil);
  try
    if frm.ShowModal = mrOk then
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
  frm := TFormAbout.Create(nil);
  try
    frm.ShowModal;
    Log('About box shown');
  finally
    frm.Free;
  end;
end;

procedure TFormMain.mnuFileExitClick(Sender: TObject);
begin
  Close;
end;

end.
