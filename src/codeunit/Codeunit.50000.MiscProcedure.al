codeunit 50000 MiscProcedure
{
  procedure DrillDownSalesThisYear()var CustLedgerEntry: Record 21;
  begin
    CustLedgerEntry.SETFILTER("Document Type", '%1|%2', CustLedgerEntry."Document Type"::Invoice, CustLedgerEntry."Document Type"::"Credit Memo");
    CustLedgerEntry.SETRANGE("Posting Date", CALCDATE('<-CY>', WORKDATE), WORKDATE);
    PAGE.RUN(PAGE::"Customer Ledger Entries", CustLedgerEntry);
  end;
  PROCEDURE CalcSalesThisMonthYear(CalledFromWebService: Boolean)Amount: Decimal;
  VAR CustLedgerEntry: Record 21;
  CustLedgEntrySales: Query 1310;
  BEGIN
    CustLedgEntrySales.SETFILTER(Document_Type, '%1|%2', CustLedgerEntry."Document Type"::Invoice, CustLedgerEntry."Document Type"::"Credit Memo");
    IF CalledFromWebService THEN CustLedgEntrySales.SETRANGE(Posting_Date, CALCDATE('<-CY>', TODAY), TODAY)
    ELSE
      CustLedgEntrySales.SETRANGE(Posting_Date, CALCDATE('<-CY>', WORKDATE), WORKDATE);
    CustLedgEntrySales.OPEN;
    IF CustLedgEntrySales.READ THEN Amount:=CustLedgEntrySales.Sum_Sales_LCY;
  END;
  LOCAL PROCEDURE DrillDownSalesAmount();
  BEGIN
  END;
  LOCAL PROCEDURE DrillDownQuoteAmount();
  BEGIN
  END;
  PROCEDURE CalcSalesQuoteExpectation()Amount: Decimal;
  VAR rclSalesQuotes: Record 36;
  BEGIN
    //-102
    rclSalesQuotes.SETRANGE("Document Type", rclSalesQuotes."Document Type"::Quote);
    //rclSalesQuotes.SETFILTER("Probability %", '>%1', 0);
    IF rclSalesQuotes.FINDFIRST THEN REPEAT rclSalesQuotes.CALCFIELDS(Amount);
      //Amount += rclSalesQuotes.Amount / 100 * rclSalesQuotes."Probability %";
      UNTIL rclSalesQuotes.NEXT = 0;
  //+102
  END;
  PROCEDURE DrillDownSalesQuoteExpectatin();
  VAR rclSalesQuotes: Record 36;
  BEGIN
    //-102
    rclSalesQuotes.SETRANGE("Document Type", rclSalesQuotes."Document Type"::Quote);
    //rclSalesQuotes.SETFILTER("Probability %", '>%1', 0);
    PAGE.RUN(PAGE::"Sales Quotes", rclSalesQuotes);
  //+102
  END;
  trigger OnRun()begin
  end;
  var myInt: Integer;
}
