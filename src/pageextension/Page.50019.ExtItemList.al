pageextension 50019 pageextension70000019 extends "Item List"
{
  layout
  {
    addlast(Control1) //addafter("Control 4")
    {
      field("Webshop title";"Webshop Item No.")
      {
        ApplicationArea = Base, Suite; //FH
        CaptionML = ENU='Webshop title', ENC='Webshop title';
      }
      //addafter("Control 66004")
      //{
      field("Web Shop Category1";"Web Shop Category")
      {
        ApplicationArea = Base, Suite; //FH
        CaptionML = ENU='Web Shop Category1', ENC='Web Shop Category1';
      }
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
        ApplicationArea = Base, Suite; //FH
        CaptionML = ENU='Web Shop Category4', ENC='Web Shop Category4';
      }
      field("Web Shop Enabled";"Web Shop Enabled")
      {
        ApplicationArea = Base, Suite; //FH
        CaptionML = ENU='Web Shop Enabled', ENC='Web Shop Enabled';
      }
    }
  }
  actions
  {
    addlast(Functions) //addafter("Action 7380")
    {
      action("Export Items to Magento")
      {
        ApplicationArea = Base, Suite;
        CaptionML = ENU='Export Items to Magento', ENC='Export Items to Magento', DES='Exportiert Artikeln to Magento';
        Image = Export;
        Promoted = true;
        PromotedCategory = Process;
        PromotedIsBig = true;

        trigger OnAction();
        var xpExportItemstoMagento: XMLport 50000;
        rclItem: Record 27;
        begin
          //-102
          IF CURRENTCLIENTTYPE = CLIENTTYPE::Windows THEN XMLPORT.RUN(XMLPORT::"Export Items to Magento", TRUE, FALSE, Rec)
          ELSE
            XMLPORT.RUN(XMLPORT::"Export Items to Magento", FALSE, FALSE, Rec)//-102
        end;
      }
    }
  }
  var boIsWindowClient: Boolean;
  boIsWebClient: Boolean;
//Unsupported feature: CodeModification on "Documentation". Please convert manually.
}
