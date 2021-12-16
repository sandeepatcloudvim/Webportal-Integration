pageextension 50015 pageextension50015 extends "General Journal"
{
  layout
  {
    addafter("Gen. Prod. Posting Group") //("Control 38")
    {
      field("FA Posting Type";"FA Posting Type")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='FA Posting Type', ENC='FA Posting Type';
      }
      field("FA Posting Date";"FA Posting Date")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='FA Posting Date', ENC='FA Posting Date';
      }
    }
  }
//Unsupported feature: CodeModification on "Documentation". Please convert manually.
//Unsupported feature: PropertyChange. Please convert manually.
}
