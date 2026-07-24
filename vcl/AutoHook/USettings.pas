unit USettings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  VCL.TMSFNCLocalizationComboBox;

type
  TFormSettings = class(TForm)
    PageControl1: TPageControl;
    tabGeneral: TTabSheet;
    chkStartup: TCheckBox;
    chkUpdates: TCheckBox;
    lblLanguage: TLabel;
    TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox;
    tabDisplay: TTabSheet;
    grpTheme: TGroupBox;
    rbLight: TRadioButton;
    rbDark: TRadioButton;
    rbSystem: TRadioButton;
    lblFontSize: TLabel;
    trkFontSize: TTrackBar;
    chkToolbar: TCheckBox;
    btnSave: TButton;
    btnCancel: TButton;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFormSettings.btnSaveClick(Sender: TObject);
begin
  ShowMessage(DM.StringCatalog.Strings.FindByName('SettingsSaved').Value);
  ModalResult := mrOk;
end;

end.
