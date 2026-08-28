unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Samples.Spin, TMS.TMSFNCLocalizationLocalizer,
  TMS.TMSFNCLocalizationCollector, TMS.TMSFNCLocalizationForm,
  VCL.TMSFNCLocalizationEditor, VCL.TMSFNCLocalizationComboBox,
  VCL.TMSFNCCustomComponent;

type
  TFormMain = class(TTMSFNCLocalizationForm)
    lblTitle: TLabel;
    lblSubtitle: TLabel;
    sbCount: TSpinEdit;
    lblItemCount: TLabel;
    btnEditor: TButton;
    lblInstruction: TLabel;
    LocalizationEditor: TTMSFNCLocalizationEditor;
    cbLanguage: TTMSFNCLocalizationComboBox;
    lblLanguage: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure sbCountChange(Sender: TObject);
    procedure btnEditorClick(Sender: TObject);
  private
    procedure UpdateItemCount;
  protected
    procedure LanguageChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
  UDM, TMS.TMSFNCLocalizationSnippets, UAppSnippets;

procedure TFormMain.btnEditorClick(Sender: TObject);
begin
  LocalizationEditor.Execute;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  DM.Collector.AutoSaveOnDestroy := True;
  // Needs a single initial call; automatic mode does not trigger for the main form.
  DM.Localizer.PerformLocalization;
  UpdateItemCount;
end;

procedure TFormMain.UpdateItemCount;
begin
  lblItemCount.Caption := TranslateNumberSnippetFormat(SnippetItemCount,
    sbCount.Value);
end;

procedure TFormMain.sbCountChange(Sender: TObject);
begin
  UpdateItemCount;
end;

procedure TFormMain.LanguageChange(Sender: TObject);
begin
  inherited;       // Let the base class localize the form first.
  UpdateItemCount; // Then restore the text owned by this form.
end;

end.
