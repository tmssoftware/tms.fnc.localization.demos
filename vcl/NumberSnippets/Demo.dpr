program Demo;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FormMain},
  UDM in 'UDM.pas' {DM: TDataModule},
  UAppSnippets in 'UAppSnippets.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
