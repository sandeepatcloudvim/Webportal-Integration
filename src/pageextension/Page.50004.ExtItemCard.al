pageextension 50004 pageextension50004 extends "Item Card"
{
  layout
  {
    //Unsupported feature: PropertyDeletion on "Control 168". Please convert manually.
    addlast(Item) //addafter("Control 60000")
    {
      field("Webshop title";"Webshop Item No.")
      {
        ApplicationArea = Basic, Suite; //FH
        MultiLine = true;
        CaptionML = ENU='Webshop title', ENC='Webshop title';
      }
      field("Webshop Description";"Webshop Description")
      {
        ApplicationArea = Basic, Suite;
        MultiLine = true;
        CaptionML = ENU='Webshop Description', ENC='Webshop Description';
      }
      //}
      //addafter("Control 135")
      //{
      field("Web Shop Category1";"Web Shop Category")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Web Shop Category1', ENC='Web Shop Category1';
      }
      //}
      //addafter(Control168)
      //{
      field("Web Shop Category2";"Web Shop Category2")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Web Shop Category2', ENC='Web Shop Category2';
      }
      field("Web Shop Category3";"Web Shop Category3")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Web Shop Category3', ENC='Web Shop Category3';
      }
      field("Web Shop Category4";"Web Shop Sub Category")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Web Shop Category4', ENC='Web Shop Category4';
      }
      field("Web Shop Enabled";"Web Shop Enabled")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Web Shop Enabled', ENC='Web Shop Enabled';
      }
    }
  }
//Unsupported feature: CodeModification on "Documentation". Please convert manually.
}
