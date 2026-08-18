program Demo;



{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  UMain in 'UMain.pas' {FormMain: TWebForm} {*.html},
  UAppSnippets in 'UAppSnippets.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
