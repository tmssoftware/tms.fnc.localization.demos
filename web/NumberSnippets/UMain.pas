unit UMain;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls,
  WEBLib.StdCtrls, TMS.TMSFNCLocalizationForm,
  TMS.TMSFNCLocalizationLocalizer, TMS.TMSFNCLocalizationCollector,
  WEBLib.TMSFNCLocalizationEditor, WEBLib.TMSFNCLocalizationComboBox,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCLocalizationEditor,
  VCL.TMSFNCLocalizationComboBox;

type
  TFormMain = class(TTMSFNCLocalizationForm)
    lblTitle: TWebLabel;
    lblSubtitle: TWebLabel;
    sbCount: TWebSpinEdit;
    lblItemCount: TWebLabel;
    btnEditor: TWebButton;
    lblInstruction: TWebLabel;
    LocalizationEditor: TTMSFNCLocalizationEditor;
    cbLanguage: TTMSFNCLocalizationComboBox;
    lblLanguage: TWebLabel;
    Localizer: TTMSFNCLocalizationLocalizer;
    Collector: TTMSFNCLocalizationCollector;
    procedure FormCreate(Sender: TObject);
    procedure sbCountChange(Sender: TObject);
    procedure btnEditorClick(Sender: TObject);
  private
    procedure UpdateItemCount;
  protected
    procedure LanguageChange(Sender: TObject); override;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
  TMS.TMSFNCLocalizationSnippets, UAppSnippets;

procedure TFormMain.btnEditorClick(Sender: TObject);
begin
  LocalizationEditor.Execute;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  LocalizationEditor.Collector := Collector;
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
