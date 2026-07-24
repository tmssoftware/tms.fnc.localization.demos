program Demo;

{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  UMain in 'UMain.pas' {FormMain: TWebForm} {*.html},
  UAbout in 'UAbout.pas' {FormAbout: TWebForm} {*.html},
  UCustomer in 'UCustomer.pas' {FormCustomer: TWebForm} {*.html},
  UFeedback in 'UFeedback.pas' {FormFeedback: TWebForm} {*.html},
  USettings in 'USettings.pas' {FormSettings: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
