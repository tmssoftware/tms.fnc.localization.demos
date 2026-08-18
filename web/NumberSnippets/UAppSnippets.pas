unit UAppSnippets;

interface

uses
  TMS.TMSFNCLocalizationSnippets;

var
  SnippetItemCount: TTMSFNCNumberSnippetRec;

implementation

initialization
  // Pas2JS does not support Delphi's named-field record constants. The
  // helper initializes the same One/Other slots at run time instead.
  SnippetItemCount := TTMSFNCNumberSnippetRec.CreateOneOther(
    'Sales.ItemCount', '%d item in the order.', '%d items in the order.');
  CollectNumberSnippet(SnippetItemCount);

end.
