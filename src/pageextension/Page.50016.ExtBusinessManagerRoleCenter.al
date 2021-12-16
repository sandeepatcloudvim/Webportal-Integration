pageextension 50016 pageextension50016 extends "Business Manager Role Center"
{
    actions
    {
        //Unsupported feature: Change Visible on "Action 82". Please convert manually.
        modify("Balance Sheet")
        {
            Visible = false;
            ApplicationArea = All;
        }
        //Unsupported feature: Change Visible on "Action 81". Please convert manually.
        modify("Income Statement")
        {
            Visible = false;
            ApplicationArea = All;
        }
        //Unsupported feature: Change Visible on "Action 80". Please convert manually.
        modify("Statement of Cash Flows")
        {
            Visible = false;
            ApplicationArea = All;
        }
        //Unsupported feature: Change Visible on "Action 78". Please convert manually.
        modify("Statement of Retained Earnings")
        {
            Visible = false;
            ApplicationArea = All;
        }
        addfirst("Financial Statements") //"Action 83")
        {
            action("Trial Balance")
            {
                Image = Report;
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'Trial Balance', ENC = 'Trial Balance', DES = 'Saldenbilanz', ITS = 'Bilancio di verifica di chiusura', FRS = 'Balance de clôture';
                RunObject = Report 6;  //10003
            }
            action("Income StatementNew")
            {
                Image = Report;
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'Income Statement', ENC = 'Income Statement', ENA = 'Income Statement';
                RunObject = Report 50025; //28025;
            }
        }
        addfirst(Setup)
        {
            action("DEX/KUND Setup")
            {
                Image = Setup;
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'DEX/KUND Setup', ENC = 'DEX/KUND Setup';
                Promoted = true;
                PromotedIsBig = true;
                RunObject = page "DAX Setup";
            }
        }
    }
    //Unsupported feature: CodeModification on "Documentation". Please convert manually.
    //Unsupported feature: PropertyChange. Please convert manually.
}
