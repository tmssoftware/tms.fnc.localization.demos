program Demo;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FormMain},
  UAbout in 'UAbout.pas' {FormAbout},
  UCustomer in 'UCustomer.pas' {FormCustomer},
  UFeedback in 'UFeedback.pas' {FormFeedback},
  USettings in 'USettings.pas' {FormSettings},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
