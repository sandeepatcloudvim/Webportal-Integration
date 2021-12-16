pageextension 50002 pageextension50002 extends Reconciliation
{
    layout
    {
        addbefore("Net Change in Jnl.") //("Control 9")
        {
            field("Currency Code"; Rec."Currency Code")
            {
                ApplicationArea = Basic, Suite; //FH
                CaptionML = ENU = 'Currency Code', ENC = 'Currency Code';
            }
        }
    }
    //Unsupported feature: CodeModification on "SetGenJnlLine(PROCEDURE 1)". Please convert manually.
    //procedure SetGenJnlLine();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
        GenJnlLine.COPY(NewGenJnlLine);
        Heading := GenJnlLine."Journal Batch Name";
        DELETEALL;
        #4..11
          REPEAT
            SaveNetChange(
              GenJnlLine."Account Type",GenJnlLine."Account No.",
              ROUND(GenJnlLine."Amount (LCY)" / (1 + GenJnlLine."VAT %" / 100)));
            SaveNetChange(
              GenJnlLine."Bal. Account Type",GenJnlLine."Bal. Account No.",
              -ROUND(GenJnlLine."Amount (LCY)" / (1 + GenJnlLine."Bal. VAT %" / 100)));
          UNTIL GenJnlLine.NEXT = 0;
        IF FIND('-') THEN;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
        #1..14
              //-101
              //ROUND(GenJnlLine."Amount (LCY)" / (1 + GenJnlLine."VAT %" / 100)));
              ROUND(GenJnlLine."Amount (LCY)" / (1 + GenJnlLine."VAT %" / 100)),
              ROUND(GenJnlLine.Amount / (1 + GenJnlLine."VAT %" / 100)));
              //+101
            SaveNetChange(
              GenJnlLine."Bal. Account Type",GenJnlLine."Bal. Account No.",
              //-101
              //-ROUND(GenJnlLine."Amount (LCY)" / (1 + GenJnlLine."Bal. VAT %" / 100)));
              -ROUND(GenJnlLine."Amount (LCY)" / (1 + GenJnlLine."Bal. VAT %" / 100)),
              -ROUND(GenJnlLine.Amount / (1 + GenJnlLine."Bal. VAT %" / 100)));
              //-101
          UNTIL GenJnlLine.NEXT = 0;
        IF FIND('-') THEN;
        */
    //end;
    //procedure _dcNetChangeFC();
    //begin
    //end;//FH - These changes cannot be brough in***
    //Unsupported feature: CodeModification on "SaveNetChange(PROCEDURE 2)". Please convert manually.
    //procedure SaveNetChange();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
        IF AccNo = '' THEN
          EXIT;
        CASE  AccType OF
        #4..21
            EXIT;
        END;

        "Net Change in Jnl." := "Net Change in Jnl." + NetChange;
        "Balance after Posting" := "Balance after Posting" + NetChange;
        MODIFY;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
        #1..24
        //-101
        IF GLAcc.GET(AccNo) AND (GLAcc."Currency Code" <> '' ) THEN BEGIN
          "Net Change in Jnl." := "Net Change in Jnl." + _dcNetChangeFC;
          "Balance after Posting" := "Balance after Posting" + _dcNetChangeFC;
        END ELSE BEGIN
        //+101
          "Net Change in Jnl." := "Net Change in Jnl." + NetChange;
          "Balance after Posting" := "Balance after Posting" + NetChange;
        //-101
        END;
        //+101

        MODIFY;
        */
    //end;
    //Unsupported feature: CodeModification on "InsertGLAccNetChange(PROCEDURE 6)". Please convert manually.
    //procedure InsertGLAccNetChange();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
        GLAcc.CALCFIELDS("Balance at Date");
        INIT;
        "No." := GLAcc."No.";
        Name := GLAcc.Name;
        "Balance after Posting" := GLAcc."Balance at Date";
        INSERT;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
        #1..5
        //-101
        IF GLAcc."Currency Code" <> '' THEN BEGIN
          GLAcc.CALCFIELDS("Balance at Date (FCY)");
          "Balance after Posting" := GLAcc."Balance at Date (FCY)";
          "Currency Code" := GLAcc."Currency Code";
        END;
        //+101
        INSERT;
        */
    //end;
    //Unsupported feature: CodeModification on "Documentation". Please convert manually.
    //Unsupported feature: PropertyChange. Please convert manually.
}
