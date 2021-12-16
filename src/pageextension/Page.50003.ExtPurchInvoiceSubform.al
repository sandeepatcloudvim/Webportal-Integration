pageextension 50003 pageextension50003 extends "Purch. Invoice Subform"
{
    layout
    {
        addafter("VAT Prod. Posting Group") // 14")
        {
            field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
            {
                ApplicationArea = Basic, Suite; //FH
                CaptionML = ENC = 'Gen. Prod. Posting Group', ENU = 'Gen. Prod. Posting Group';
            }
        }
    }

}
