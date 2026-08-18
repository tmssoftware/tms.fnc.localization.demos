unit UDM;

interface

uses
  System.SysUtils, System.Classes, TMS.TMSFNCLocalizationSnippets,
  TMS.TMSFNCLocalizationCollector, TMS.TMSFNCLocalizationStringCatalog,
  TMS.TMSFNCLocalizationLocalizer;

type
  TDM = class(TDataModule)
    Localizer: TTMSFNCLocalizationLocalizer;
    Collector: TTMSFNCLocalizationCollector;
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
