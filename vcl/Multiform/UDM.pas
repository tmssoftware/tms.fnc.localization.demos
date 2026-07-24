unit UDM;

interface

uses
  System.SysUtils, System.Classes, TMS.TMSFNCLocalizationSnippets,
  TMS.TMSFNCLocalizationCollector, TMS.TMSFNCLocalizationStringCatalog,
  TMS.TMSFNCLocalizationLocalizer;

type
  TDM = class(TDataModule)
    StringCatalog: TTMSFNCLocalizationStringCatalog;
    Localizer: TTMSFNCLocalizationLocalizer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
