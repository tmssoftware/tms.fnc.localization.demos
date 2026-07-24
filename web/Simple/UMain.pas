unit UMain;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Menus, WEBLib.Menus, Vcl.Controls,
  WEBLib.ExtCtrls, Vcl.StdCtrls, WEBLib.StdCtrls, WEBLib.TMSFNCLocalizationComboBox,
  TMS.TMSFNCLocalizationCollector, VCL.TMSFNCLocalizationComboBox,
  TMS.TMSFNCLocalizationLocalizer;

type
  TForm1 = class(TWebForm)
    WebMainMenu1: TWebMainMenu;
    WebGroupBox1: TWebGroupBox;
    File1: TMenuItem;
    Help1: TMenuItem;
    Aboutthisapplication1: TMenuItem;
    Exit1: TMenuItem;
    WebGroupBox2: TWebGroupBox;
    WebLabel1: TWebLabel;
    WebMemo1: TWebMemo;
    WebLabel2: TWebLabel;
    WebLabel3: TWebLabel;
    WebEdit1: TWebEdit;
    WebCheckBox1: TWebCheckBox;
    WebRadioButton1: TWebRadioButton;
    WebRadioButton2: TWebRadioButton;
    WebComboBox2: TWebComboBox;
    WebButton1: TWebButton;
    TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox;
    TMSFNCLocalizationLocalizer1: TTMSFNCLocalizationLocalizer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.