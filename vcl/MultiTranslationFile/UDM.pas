unit UDM;

interface

uses
  System.SysUtils, System.Classes, TMS.TMSFNCLocalizationCollector,
  TMS.TMSFNCLocalizationStringCatalog, TMS.TMSFNCLocalizationLocalizer;

type
  TDM = class(TDataModule)
    Collector: TTMSFNCLocalizationCollector;
    Localizer: TTMSFNCLocalizationLocalizer;
    StringCatalog: TTMSFNCLocalizationStringCatalog;
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
