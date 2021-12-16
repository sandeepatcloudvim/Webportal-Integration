pageextension 50021 pageextension50021 extends "Sales Quote"
{
    layout
    {
        addafter("Currency Code") //"Control 97")
        {

            //Field with name 'Language Code' is already defined in Page 'Sales Order' by the extension 'Base Application by Microsoft (18.1.24822.25738)
            // field("Language Code"; "Language Code")
            // {
            //     ApplicationArea = Basic, Suite; //FH
            //     CaptionML = ENU = 'Language Code', ENC = 'Language Code';
            // }
        }
    }
}
