pageextension 50050 ExtensionPage5702 extends "Item Categories"
{
  actions
  {
    // Add changes to page actions here
    addfirst(Processing)
    {
      action("Web Shop Category") //Action50000)
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Web Shop Category', //Prod. Groups',
 ENC='Web Shop Category'; //'Prod. Groups';
        //RunObject=Page "Product Groups";
        //RunPageLink="Item Category Code"=FIELD(Code);
        RunObject = Page "Web Shop Category";
        RunPageLink = Code=FIELD(Code);
        Promoted = true;
        Image = ItemGroup;
        PromotedCategory = Process;
      }
    }
  }
  var myInt: Integer;
}
