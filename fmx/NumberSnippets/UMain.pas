unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Menus, FMX.Layouts, FMX.Controls.Presentation,
  TMS.TMSFNCLocalizationLocalizer, TMS.TMSFNCLocalizationCollector, TMS.TMSFNCLocalizationForm,
  FMX.Edit, FMX.EditBox, FMX.SpinBox, FMX.TMSFNCCustomComponent,
  FMX.TMSFNCLocalizationEditor, FMX.TMSFNCLocalizationComboBox;

type
  TFormMain = class(TTMSFNCLocalizationForm)
    lblTitle: TLabel;
    lblSubtitle: TLabel;
    sbCount: TSpinBox;
    lblItemCount: TLabel;
    btnEditor: TButton;
    lblInstruction: TLabel;
    LocalizationEditor: TTMSFNCLocalizationEditor;
    TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox;
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

{$R *.fmx}

uses
  UDM, TMS.TMSFNCLocalizationSnippets, UAppSnippets;

procedure TFormMain.btnEditorClick(Sender: TObject);
begin
  LocalizationEditor.Execute;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  DM.Collector.AutoSaveOnDestroy := True;
  //Needs a single initial call, automatic mode does not trigger for main form
  DM.Localizer.PerformLocalization;
end;

procedure TFormMain.UpdateItemCount;
begin
  lblItemCount.Text := TranslateNumberSnippetFormat(SnippetItemCount, Round(sbCount.Value));
end;

procedure TFormMain.sbCountChange(Sender: TObject);
begin
  UpdateItemCount;
end;

procedure TFormMain.LanguageChange(Sender: TObject);
begin
  inherited;          // let the base class localize the form first
  UpdateItemCount;    // then restore text we own ourselves
end;

end.
