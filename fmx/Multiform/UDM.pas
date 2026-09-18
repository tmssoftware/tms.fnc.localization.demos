unit UDM;

interface

uses
  System.SysUtils, System.Classes, TMS.TMSFNCLocalizationSnippets,
  TMS.TMSFNCLocalizationCollector, TMS.TMSFNCLocalizationStringCatalog,
  TMS.TMSFNCLocalizationLocalizer, FMX.TMSFNCLocalizationPlatformCore,;

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

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
