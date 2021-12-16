pageextension 50020 pageextension50020 extends "Service Contract Subform"
{
  layout
  {
    addafter("New Line") //"Control 18")
    {
      field("Invoiced to Date";"Invoiced to Date")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Invoiced to Date', ENC='Invoiced to Date';
        Editable = true;
      }
    }
  }
}
