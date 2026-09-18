unit UAbout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.TMSFNCLocalizationForm;

type
  TFormAbout = class(TTMSFNCLocalizationForm)
    lblProduct: TLabel;
    lblVersion: TLabel;
    lblDescription: TLabel;
    lblCopyright: TLabel;
    btnClose: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
