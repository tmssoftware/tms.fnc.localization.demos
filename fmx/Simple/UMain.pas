unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.StdCtrls, FMX.ListBox,
  FMX.TMSFNCLocalizationComboBox, FMX.Edit, FMX.Controls.Presentation, FMX.Menus,
  TMS.TMSFNCLocalizationCollector, TMS.TMSFNCLocalizationLocalizer, FMX.TMSFNCLocalizationPlatformCore;

type
  TForm4 = class(TForm)
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
  Form4: TForm4;

implementation

{$R *.fmx}

procedure TForm4.FormCreate(Sender: TObject);
begin
  TMSFNCLocalizationLocalizer1.TrySetLocale('nl');
  //Alternatively, use this one to translate to the persisted selected language:
  //TMSFNCLocalizationLocalizer1.PerformLocalization;
end;

end.
