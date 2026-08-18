unit UAppSnippets;

interface

uses
  TMS.TMSFNCLocalizationSnippets;

const
  // English is Form2a, so only One and Other are filled. Slots the target
  // languages need are created by the back-fill, not declared here.
  SnippetItemCount: TTMSFNCNumberSnippetRec = (
    Name: 'Sales.ItemCount';
    One: '%d item in the order.';
    Other: '%d items in the order.'
  );

implementation

initialization
  CollectNumberSnippet(SnippetItemCount);

end.
