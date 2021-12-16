report 50025 "Income StatementNew"
{
  // version NAVAPAC9.00.00.45480,DAXZ
  DefaultLayout = RDLC;
  RDLCLayout = './Income Statement.rdlc';
  CaptionML = ENU='Income Statement', ENA='Income Statement';
  PreviewMode = PrintLayout;

  dataset
  {
  dataitem("G/L Account";
  15)
  {
  DataItemTableView = SORTING("No.")WHERE("Income/Balance"=CONST("Income Statement"));
  RequestFilterFields = "No.", "Account Type", "Date Filter", "Global Dimension 1 Filter", "Global Dimension 2 Filter";

  column(FORMAT_TODAY_0_4_;
  FORMAT(TODAY, 0, 4))
  {
  }
  column(LongText_1____LongText_2____LongText_3____LongText_4_;
  LongText[1] + LongText[2] + LongText[3] + LongText[4])
  {
  }
  //column(CurrReport_PAGENO; CurrReport.PAGENO)
  //{
  //}
  column(COMPANYNAME;
  COMPANYNAME)
  {
  }
  column(USERID;
  USERID)
  {
  }
  column(TotalLongText;
  TotalLongText)
  {
  }
  column(HeaderText;
  HeaderText)
  {
  }
  column(TotalHeaderText;
  TotalHeaderText)
  {
  }
  column(G_L_Account__TABLENAME__________GLFilter;
  "G/L Account".TABLENAME + ': ' + GLFilter)
  {
  }
  column(GLFilter;
  GLFilter)
  {
  }
  column(RoundFactorText;
  RoundFactorText)
  {
  }
  column(EmptyString;
  '')
  {
  }
  column(PageGroupNo;
  PageGroupNo)
  {
  }
  column(NextPageGroupNo;
  NextPageGroupNo)
  {
  }
  column(G_L_Account_No_;
  "No.")
  {
  }
  column(Income_StatementCaption;
  Income_StatementCaptionLbl)
  {
  }
  column(CurrReport_PAGENOCaption;
  CurrReport_PAGENOCaptionLbl)
  {
  }
  column(Current_PeriodCaption;
  Current_PeriodCaptionLbl)
  {
  }
  column(No_Caption;
  No_CaptionLbl)
  {
  }
  column(PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name_Control1500023Caption;
  PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name_Control1500023CaptionLbl)
  {
  }
  column(CurrentPeriodNetChangeCaption;
  CurrentPeriodNetChangeCaptionLbl)
  {
  }
  column(CurrentPeriodNetChange_Control1500025Caption;
  CurrentPeriodNetChange_Control1500025CaptionLbl)
  {
  }
  column(Current_Period_Last_YearCaption;
  Current_Period_Last_YearCaptionLbl)
  {
  }
  column(Current_YTDCaption;
  Current_YTDCaptionLbl)
  {
  }
  column(Last_YTDCaption;
  Last_YTDCaptionLbl)
  {
  }
  dataitem(BlankLineCounter;
  2000000026)
  {
  DataItemTableView = SORTING(Number);

  column(G_L_Account___No__of_Blank_Lines_;
  "G/L Account"."No. of Blank Lines")
  {
  }
  column(BlankLineCounter_Number;
  Number)
  {
  }
  trigger OnPreDataItem();
  begin
    SETRANGE(Number, 1, "G/L Account"."No. of Blank Lines");
  end;
  }
  dataitem(DataItem5444;
  2000000026)
  {
  DataItemTableView = SORTING(Number)WHERE(Number=CONST(1));

  column(G_L_Account___No__;
  "G/L Account"."No.")
  {
  }
  column(PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name;
  PADSTR('', "G/L Account".Indentation * 2) + "G/L Account".Name)
  {
  }
  column(ShowAccType;
  ShowAccType)
  {
  }
  column(G_L_Account___No___Control1500022;
  "G/L Account"."No.")
  {
  }
  column(PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name_Control1500023;
  PADSTR('', "G/L Account".Indentation * 2) + "G/L Account".Name)
  {
  }
  column(CurrentPeriodNetChange;
  CurrentPeriodNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(CurrentPeriodNetChange_Control1500025;
  -CurrentPeriodNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(LastYrCurrPeriodNetChange;
  LastYrCurrPeriodNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(CurrentYTDNetChange;
  CurrentYTDNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(LastYTDNetChange;
  LastYTDNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(G_L_Account___No___Control1500029;
  "G/L Account"."No.")
  {
  }
  column(PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name_Control1500030;
  PADSTR('', "G/L Account".Indentation * 2) + "G/L Account".Name)
  {
  }
  column(LastYTDNetChange_Control1500031;
  LastYTDNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(LastYrCurrPeriodNetChange_Control1500032;
  LastYrCurrPeriodNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(CurrentYTDNetChange_Control1500033;
  CurrentYTDNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(CurrentPeriodNetChange_Control1500034;
  -CurrentPeriodNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(CurrentPeriodNetChange_Control1500035;
  CurrentPeriodNetChange)
  {
  DecimalPlaces = 2: 2;
  }
  column(G_L_Account___Account_Type_;
  "G/L Account"."Account Type")
  {
  }
  column(Integer_Number;
  Number)
  {
  }
  }
  trigger OnAfterGetRecord();
  begin
    IF NOT AddCurr THEN BEGIN
      SETRANGE("Date Filter", CurrentPeriodStart, CurrentPeriodEnd);
      CALCFIELDS("Net Change");
      CurrentPeriodNetChange:=RoundAmount("Net Change", RoundingFactor);
      SETRANGE("Date Filter", CurrentYearStart, CurrentPeriodEnd);
      CALCFIELDS("Net Change");
      CurrentYTDNetChange:=RoundAmount("Net Change", RoundingFactor);
      SETRANGE("Date Filter", LastYearCurrentPeriodStart, LastYearCurrentPeriodEnd);
      CALCFIELDS("Net Change");
      LastYrCurrPeriodNetChange:=RoundAmount("Net Change", RoundingFactor);
      SETRANGE("Date Filter", LastYearStart, LastYearCurrentPeriodEnd);
      CALCFIELDS("Net Change");
      LastYTDNetChange:=RoundAmount("Net Change", RoundingFactor);
      IF(CurrentPeriodNetChange = 0) AND (CurrentYTDNetChange = 0) AND (LastYrCurrPeriodNetChange = 0) AND (LastYTDNetChange = 0) AND ("Account Type" = "Account Type"::Posting)THEN CurrReport.SKIP;
    END
    ELSE
    BEGIN
      SETRANGE("Date Filter", CurrentPeriodStart, CurrentPeriodEnd);
      CALCFIELDS("Additional-Currency Net Change");
      CurrentPeriodNetChange:=RoundAmount("Additional-Currency Net Change", RoundingFactor);
      SETRANGE("Date Filter", CurrentYearStart, CurrentPeriodEnd);
      CALCFIELDS("Additional-Currency Net Change");
      CurrentYTDNetChange:=RoundAmount("Additional-Currency Net Change", RoundingFactor);
      SETRANGE("Date Filter", LastYearCurrentPeriodStart, LastYearCurrentPeriodEnd);
      CALCFIELDS("Additional-Currency Net Change");
      LastYrCurrPeriodNetChange:=RoundAmount("Additional-Currency Net Change", RoundingFactor);
      SETRANGE("Date Filter", LastYearStart, LastYearCurrentPeriodEnd);
      CALCFIELDS("Net Change");
      LastYTDNetChange:=RoundAmount("Additional-Currency Net Change", RoundingFactor);
      IF(CurrentPeriodNetChange = 0) AND (CurrentYTDNetChange = 0) AND (LastYrCurrPeriodNetChange = 0) AND (LastYTDNetChange = 0) AND ("Account Type" = "Account Type"::Posting)THEN CurrReport.SKIP;
    END;
    PageGroupNo:=NextPageGroupNo;
    ShowAccType:="G/L Account"."Account Type";
    IF "G/L Account"."New Page" THEN NextPageGroupNo:=PageGroupNo + 1;
    IF PageGroupNo = NextPageGroupNo THEN PageGroupNo:=NextPageGroupNo - 1;
  end;
  trigger OnPreDataItem();
  begin
    // Add TotalLongText,TotalHeaderText.Begin,COMMENTS
    TotalLongText:=STRSUBSTNO('Period: %1..%2 versus %3..%4', CurrentPeriodStart, CurrentPeriodEnd, LastYearCurrentPeriodStart, LastYearCurrentPeriodEnd) + '' + '' + '';
    GLSetupNNC.GET;
    IF AddCurr THEN TotalHeaderText:=STRSUBSTNO(Text1450000, GLSetupNNC."Additional Reporting Currency")
    ELSE
    BEGIN
      GLSetupNNC.TESTFIELD("LCY Code");
      TotalHeaderText:=STRSUBSTNO(Text1450000, GLSetupNNC."LCY Code");
    END;
    // Add TotalLongText,TotalHeaderText.End
    PageGroupNo:=1;
    NextPageGroupNo:=1;
  end;
  }
  }
  requestpage
  {
    layout
    {
      area(content)
      {
        group(Options)
        {
          CaptionML = ENU='Options', ENA='Options';

          field(AmountsInWhole;RoundingFactor)
          {
            ApplicationArea = Basic, Suite; //FH
            CaptionML = ENU='Amounts in whole', ENA='Amounts in whole';
          }
          field(ShowAmountsInAddReportingCurrency;AddCurr)
          {
            ApplicationArea = Basic, Suite; //FH
            CaptionML = ENU='Show Amounts in Add. Reporting Currency', ENA='Show Amounts in Add. Reporting Currency';
            MultiLine = true;
          }
        }
      }
    }
    actions
    {
    }
  }
  labels
  {
  }
  trigger OnPreReport();
  begin
    GLFilter:="G/L Account".GETFILTERS;
    RoundFactorText:=RoundDescription(RoundingFactor);
    CurrentPeriodStart:="G/L Account".GETRANGEMIN("Date Filter");
    CurrentPeriodEnd:="G/L Account".GETRANGEMAX("Date Filter");
    LastYearCurrentPeriodStart:=CALCDATE('<-1Y>', NORMALDATE(CurrentPeriodStart) + 1) - 1;
    LastYearCurrentPeriodEnd:=CALCDATE('<-1Y>', NORMALDATE(CurrentPeriodEnd) + 1) - 1;
    IF CurrentPeriodStart <> NORMALDATE(CurrentPeriodStart)THEN LastYearCurrentPeriodStart:=CLOSINGDATE(LastYearCurrentPeriodStart);
    IF CurrentPeriodEnd <> NORMALDATE(CurrentPeriodEnd)THEN LastYearCurrentPeriodEnd:=CLOSINGDATE(LastYearCurrentPeriodEnd);
    AccPeriod.RESET;
    AccPeriod.SETRANGE("New Fiscal Year", TRUE, TRUE);
    AccPeriod.SETFILTER("Starting Date", '..%1', CurrentPeriodEnd);
    AccPeriod.FINDLAST;
    CurrentYearStart:=AccPeriod."Starting Date";
    AccPeriod.SETFILTER("Starting Date", '..%1', LastYearCurrentPeriodEnd);
    IF AccPeriod.FINDLAST THEN LastYearStart:=AccPeriod."Starting Date";
  end;
  var AccPeriod: Record 50;
  GLFilter: Text[250];
  LongText: array[4]of Text[132];
  CurrentPeriodStart: Date;
  CurrentPeriodEnd: Date;
  LastYearCurrentPeriodStart: Date;
  LastYearCurrentPeriodEnd: Date;
  CurrentYearStart: Date;
  LastYearStart: Date;
  CurrentPeriodNetChange: Decimal;
  CurrentYTDNetChange: Decimal;
  LastYrCurrPeriodNetChange: Decimal;
  LastYTDNetChange: Decimal;
  AddCurr: Boolean;
  RoundingFactor: Option " ", Tens, Hundreds, Thousands, "Hundred Thousands", Millions;
  HeaderText: Text[50];
  RoundFactorText: Text[50];
  Text1450000: TextConst ENU='All amounts are in %1.', ENA='All amounts are in %1.';
  PageGroupNo: Integer;
  TotalLongText: Text[250];
  TotalHeaderText: Text[250];
  GLSetupNNC: Record 98;
  ShowAccType: Integer;
  NextPageGroupNo: Integer;
  Income_StatementCaptionLbl: TextConst ENU='Income Statement', ENA='Income Statement';
  CurrReport_PAGENOCaptionLbl: TextConst ENU='Page', ENA='Page';
  Current_PeriodCaptionLbl: TextConst ENU='Current Period', ENA='Current Period';
  No_CaptionLbl: TextConst ENU='No.', ENA='No.';
  PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name_Control1500023CaptionLbl: TextConst ENU='Name', ENA='Name';
  CurrentPeriodNetChangeCaptionLbl: TextConst ENU='Debit', ENA='Debit';
  CurrentPeriodNetChange_Control1500025CaptionLbl: TextConst ENU='Credit', ENA='Credit';
  Current_Period_Last_YearCaptionLbl: TextConst ENU='Current Period Last Year', ENA='Current Period Last Year';
  Current_YTDCaptionLbl: TextConst ENU='Current YTD', ENA='Current YTD';
  Last_YTDCaptionLbl: TextConst ENU='Last YTD', ENA='Last YTD';
  Text001: TextConst ENU='Amounts are in whole 10s', ENA='Amounts are in whole 10s';
  Text002: TextConst ENU='Amounts are in whole 100s', ENA='Amounts are in whole 100s';
  Text003: TextConst ENU='Amounts are in whole 1,000s', ENA='Amounts are in whole 1,000s';
  Text004: TextConst ENU='Amounts are in whole 100,000s', ENA='Amounts are in whole 100,000s';
  Text005: TextConst ENU='Amounts are in whole 1,000,000s', ENA='Amounts are in whole 1,000,000s';
  Text006: TextConst ENU='Amounts are not rounded', ENA='Amounts are not rounded';
  procedure RoundAmount(Amount: Decimal;
  Rounding: Option " ", Tens, Hundreds, Thousands, "Hundred Thousands", Millions): Decimal;
  begin
    CASE Rounding OF Rounding::" ": EXIT(Amount);
    Rounding::Tens: EXIT(ROUND(Amount / 10, 0.1));
    Rounding::Hundreds: EXIT(ROUND(Amount / 100, 0.1));
    Rounding::Thousands: EXIT(ROUND(Amount / 1000, 0.1));
    Rounding::"Hundred Thousands": EXIT(ROUND(Amount / 100000, 0.1));
    Rounding::Millions: EXIT(ROUND(Amount / 1000000, 0.1));
    END;
  end;
  procedure RoundDescription(Rounding: Option " ", Tens, Hundreds, Thousands, "Hundred Thousands", Millions): Text[50];
  begin
    CASE Rounding OF Rounding::" ": EXIT(Text006);
    Rounding::Tens: EXIT(Text001);
    Rounding::Hundreds: EXIT(Text002);
    Rounding::Thousands: EXIT(Text003);
    Rounding::"Hundred Thousands": EXIT(Text004);
    Rounding::Millions: EXIT(Text005);
    END;
  end;
}
