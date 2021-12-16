pageextension 50023 pageextension50023 extends "Purch. Cr. Memo Subform"
{
  layout
  {
    addafter("Gen. Prod. Posting Group") // 14")
    {
      field("Gen. Prod. Posting GroupNew";"Gen. Prod. Posting Group")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENC='Gen. Prod. Posting Group', ENU='Gen. Prod. Posting Group';
      }
    }
  }
//Unsupported feature: InsertAfter on "Documentation". Please convert manually.
//Unsupported feature: PropertyChange. Please convert manually.
}
