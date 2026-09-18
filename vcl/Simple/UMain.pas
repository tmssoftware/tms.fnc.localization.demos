unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  TMS.TMSFNCLocalizationLocalizer, VCL.TMSFNCLocalizationComboBox, TMS.TMSFNCLocalizationCollector,
  VCL.TMSFNCLocalizationPlatformCore;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    gbSettings: TGroupBox;
    lblName: TLabel;
    edtName: TEdit;
    lblLang: TLabel;
    cbLanguage: TTMSFNCLocalizationComboBox;
    chkUpdate: TCheckBox;
    gbControls: TGroupBox;
    rbPhone: TRadioButton;
    btnApply: TButton;
    rbText: TRadioButton;
    cbFreq: TComboBox;
    lblNotes: TLabel;
    memNotes: TMemo;
    TMSFNCLocalizationLocalizer1: TTMSFNCLocalizationLocalizer;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  TMSFNCLocalizationLocalizer1.PerformLocalization;
end;

end.
