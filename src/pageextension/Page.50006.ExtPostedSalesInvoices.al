pageextension 50006 pageextension50006 extends "Posted Sales Invoices"
{
    actions
    {
        modify(Print)
        {
            Promoted = true;
            ApplicationArea = All;
        }
    }

}
