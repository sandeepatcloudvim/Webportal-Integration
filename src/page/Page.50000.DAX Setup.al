page 50000 "DAX Setup"
{
    // version DAXZ
    CaptionML = ENU = 'DAX Setup', ENC = 'DAX Setup', DES = 'DAX Einrichtung';
    PageType = Card;
    SourceTable = "KUND Setup";
    UsageCategory = Administration;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            group(Allgemein)
            {
                field("Webshop Customer DOM"; "Webshop Customer DOM")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Webshop Customer DOM', ENC = 'Webshop Customer DOM';
                }
                field("Webshop Customer INT"; "Webshop Customer INT")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Webshop Customer INT', ENC = 'Webshop Customer INT';
                }
                field("Webshop CreditCard Code"; "Webshop CreditCard Code")
                {
                    ApplicationArea = Basic, Suite;
                    CaptionML = ENU = 'Webshop CreditCard Code', ENC = 'Webshop CreditCard Code';
                }
            }
        }
    }
    actions
    {
    }
}
