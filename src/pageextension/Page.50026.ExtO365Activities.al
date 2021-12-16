pageextension 50026 pageextension50026 extends "O365 Activities"
{
    layout
    {
        modify("Ongoing Sales Orders")
        {
            ApplicationArea = All;
            DrillDownPageId = "Sales Order List";

        }
        addlast(Payments) //addafter("Control 13")
        {
            field("Sales quotes amount"; "Sales quotes amount")
            {
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'Quotes amount', ENC = 'Quotes amount', DES = 'Angebote Summe', ITS = 'Offerte somma', FRS = 'Devis somme';
                DecimalPlaces = 0 : 0;
                DrillDownPageID = "Sales Quotes";
                ToolTipML = ENU = 'Amount of open Sales quotes', ENC = 'Amount of open Sales quotes', DES = 'Summe der offnene Verkaufsaufträge';
            }
            field("Sales quotes expectation"; "Sales quotes expectation")
            {
                ApplicationArea = Basic, Suite;
                CaptionML = DEU = 'Offerten Erwartung', ENU = 'Quotes expectation', ENC = 'Quotes expectation';
                DecimalPlaces = 0 : 0;
                DrillDownPageID = "Sales Quotes";

                trigger OnDrillDown();
                var
                    ActivitiesMgt: Codeunit 50000;
                begin
                    //-102
                    ActivitiesMgt.DrillDownSalesQuoteExpectatin;
                    //+102
                end;
            }
            //addafter("Control 20")
            //{
            field("Sales orders amount"; "Sales orders amount")
            {
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'Orders amount', ENC = 'Orders amount', DES = 'Aufträge Summe', ITS = 'Ordini somma', FRS = 'Commandes somme';
                DecimalPlaces = 0 : 0;
                DrillDownPageID = "Sales Order List";
                ToolTipML = ENU = 'Amount of open sales orders', ENC = 'Amount of open sales orders', DES = 'Summe der offenen Verkaufsaufträge';
            }
            //}
            //addafter("Control 3")
            //{
            field("Sales This Year"; "Sales This Year")
            {
                ApplicationArea = Basic, Suite;
                DrillDownPageID = "Sales Invoice List";
                ToolTipML = ENU = 'Specifies the sum of sales in the current year.', ENC = 'Specifies the sum of sales in the current year.', DES = 'Gibt die Summe der Umsätze im aktuellen Jahr an.';

                trigger OnDrillDown();
                var
                    ActivitiesMgt: Codeunit 50000;
                begin
                    //-101
                    ActivitiesMgt.DrillDownSalesThisYear;
                    //+101
                end;
            }
        }
    }
    //Unsupported feature: CodeModification on "CalculateCueFieldValues(PROCEDURE 6)". Please convert manually.
    //procedure CalculateCueFieldValues();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
        IF FIELDACTIVE("Overdue Sales Invoice Amount") THEN
          "Overdue Sales Invoice Amount" := ActivitiesMgt.CalcOverdueSalesInvoiceAmount(FALSE);
        IF FIELDACTIVE("Overdue Purch. Invoice Amount") THEN
        #4..9
          "Average Collection Days" := ActivitiesMgt.CalcAverageCollectionDays;
        IF FIELDACTIVE("Uninvoiced Bookings") THEN
          "Uninvoiced Bookings" := ActivitiesMgt.CalcUninvoicedBookings;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
        #1..12
        //-101
        IF FIELDACTIVE("Sales This Month") THEN
          "Sales This Year" := ActivitiesMgt.CalcSalesThisMonthYear(FALSE);
        //+101
        //-102
        IF FIELDACTIVE("Sales quotes expectation") THEN
          "Sales quotes expectation" := ActivitiesMgt.CalcSalesQuoteExpectation;
        //+102
        */
    //end;
    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.
    //Unsupported feature: PropertyChange. Please convert manually.
}
