pageextension 50005 pageextension50005 extends "Sales Order Subform"
{
    layout
    {
        addafter("VAT Prod. Posting Group") //"Control 78")
        {
            field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
            {
                ApplicationArea = Basic, Suite; //FH
                CaptionML = ENU = 'Gen. Prod. Posting Group', ENC = 'Gen. Prod. Posting Group';
            }
            field("Purchase Order No."; "Purchase Order No.")
            {
                ApplicationArea = Basic, Suite; //FH
                CaptionML = ENU = 'Purchase Order No.', ENC = 'Purchase Order No.';
            }
        }
    }

}
