unit USettings;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  WEBLib.ExtCtrls, WEBLib.ComCtrls, WEBLib.TMSFNCLocalizationComboBox,
  VCL.TMSFNCLocalizationComboBox, WEBLib.TMSFNCLocalizationForm;

type
  TFormSettings = class(TTMSFNCLocalizationForm)
    PageControl1: TWebPageControl;
    tabGeneral: TWebTabSheet;
    chkStartup: TWebCheckBox;
    chkUpdates: TWebCheckBox;
    lblLanguage: TWebLabel;
    TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox;
    tabDisplay: TWebTabSheet;
    grpTheme: TWebGroupBox;
    rbLight: TWebRadioButton;
    rbDark: TWebRadioButton;
    rbSystem: TWebRadioButton;
    lblFontSize: TWebLabel;
    trkFontSize: TWebTrackBar;
    chkToolbar: TWebCheckBox;
    btnSave: TWebButton;
    btnCancel: TWebButton;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  end;

var
  FormSettings: TFormSettings;

implementation

{$R *.dfm}

uses
  UMain;

procedure TFormSettings.btnSaveClick(Sender: TObject);
begin
  ShowMessage(FormMain.StringCatalog.Strings.FindByName('SettingsSaved').Value);
  ModalResult := mrOK;
end;

procedure TFormSettings.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.

