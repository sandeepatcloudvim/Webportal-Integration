pageextension 50001 pageextension50001 extends "Posted Sales Invoice"
{
    actions
    {
        modify(Print)
        {
            Promoted = true;
            ApplicationArea = All;
        }
    }
    //Unsupported feature: CodeModification on "Documentation". Please convert manually.
    //Unsupported feature: PropertyChange. Please convert manually.
}
