unit USettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.TabControl, FMX.ListBox, FMX.Controls.Presentation,
  FMX.TMSFNCLocalizationComboBox, TMS.TMSFNCLocalizationCollector,
  FMX.TMSFNCLocalizationPlatformCore;

type
  TFormSettings = class(TForm)
    TabControl1: TTabControl;
    tabGeneral: TTabItem;
    chkStartup: TCheckBox;
    chkUpdates: TCheckBox;
    lblLanguage: TLabel;
    tabDisplay: TTabItem;
    grpTheme: TGroupBox;
    rbLight: TRadioButton;
    rbDark: TRadioButton;
    rbSystem: TRadioButton;
    lblFontSize: TLabel;
    trkFontSize: TTrackBar;
    chkToolbar: TCheckBox;
    btnSave: TButton;
    btnCancel: TButton;
    TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  UDM;

{$R *.fmx}

procedure TFormSettings.btnSaveClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.Strings.FindByName('SettingsSaved').Value);
  ModalResult := mrOk;
end;

end.
