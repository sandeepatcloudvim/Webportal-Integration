pageextension 50025 pageextension50025 extends "O365 Sales Activities RC"
{
    actions
    {
        addafter(CustomersHomeItem) //"Action 13")
        {

            action("Sales Quotes")
            {
                ApplicationArea = Basic, Suite; //FH
                CaptionML = ENU = 'xSales Quotes', ENC = 'xSales Quotes', DES = 'Verkaufsofferten', ITS = 'Offerte vendita', FRS = 'Devis';
                RunObject = Page 9300;
            }
            action("Sales Orders")
            {
                ApplicationArea = Basic, Suite; //FH
                CaptionML = ENU = 'xSales Orders', ENC = 'xSales Orders', DES = 'Verkaufsaufträge', ITS = 'Ordini vendita', FRS = 'Commandes vente';
                RunObject = Page 9305;
            }
        }
    }
    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.
    //Unsupported feature: PropertyChange. Please convert manually.
}
