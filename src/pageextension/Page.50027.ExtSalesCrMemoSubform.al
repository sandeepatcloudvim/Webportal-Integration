pageextension 50027 pageextension50027 extends "Sales Cr. Memo Subform"
{
  layout
  {
    addafter("VAT Prod. Posting Group") //"Control 58")
    {
      field("Gen. Prod. Posting Group";"Gen. Prod. Posting Group")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Gen. Prod. Posting Group', ENC='Gen. Prod. Posting Group';
      }
    }
  }
//Unsupported feature: CodeModification on "Documentation". Please convert manually.
//Unsupported feature: PropertyChange. Please convert manually.
}
