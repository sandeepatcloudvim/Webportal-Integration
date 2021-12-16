pageextension 50022 pageextension50022 extends "Sales Order List"
{
  actions
  {
    addfirst("F&unctions") //("Action 1102601053")
    {
      action("Import Orders from Magento")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Import Orders from Magento', DES='Import Aufträgen von Magento', ENC='Import Orders from Magento';
        Image = Import;
        Promoted = true;
        PromotedCategory = Process;
        PromotedIsBig = true;
        RunObject = XMLport 50001;
      }
    }
    addlast("&Order Confirmation")
    {
      //action("Order Confirmation DA")
      action("DA Print Confirmation")
      {
        ApplicationArea = Basic, Suite;
        Caption = 'DA Print Confirmation';
        Ellipsis = true;
        Image = Print;
        Promoted = true;
        PromotedCategory = Category8;
        ToolTip = 'Print an order confirmation. A report request window opens where you can specify what to include on the print-out.';

        //Visible = NOT IsOfficeAddin;
        trigger OnAction()var DocPrint1: Codeunit "Document-Print";
        Usage1: Option "Order Confirmation", "Work Order", "Pick Instruction";
        begin
          DocPrint1.PrintSalesOrder(Rec, Usage1::"Order Confirmation");
        end;
      }
    }
  }
//Unsupported feature: CodeModification on "Documentation". Please convert manually.
}
