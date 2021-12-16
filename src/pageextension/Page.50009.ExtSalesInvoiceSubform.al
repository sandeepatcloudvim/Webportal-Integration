pageextension 50009 pageextension50009 extends "Sales Invoice Subform"
{
  layout
  {
    //Unsupported feature: PropertyDeletion on "Control 1900000001". Please convert manually.
    addafter("VAT Prod. Posting Group") //"Control 14")
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
