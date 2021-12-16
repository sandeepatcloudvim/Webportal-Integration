pageextension 50017 pageextension50017 extends "Purchase Order Subform"
{
  layout
  {
    addafter("No.") //"Control 4")
    {
      field("Vendor Item No.";"Vendor Item No.")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Vendor Item No.', ENC='Vendor Item No.';
      }
      field("Sales Order No.";"Sales Order No.")
      {
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Sales Order No.', ENC='Sales Order No.';
      }
    }
  }
  actions
  {
    addlast("F&unctions")
    {
      action(SetQtyRcdNotInvToZero)
      {
        //ApplicationArea = All;
        ApplicationArea = Basic, Suite; //FH
        CaptionML = ENU='Set Qty. Rcd. Not Invoiced to 0', DES='Set Qty. Rcd. Not Invoiced to 0', ENC='Set Qty. Rcd. Not Invoiced to 0';

        //Image = Import;
        //Promoted = true;
        //PromotedCategory = Process;
        //PromotedIsBig = true;
        trigger OnAction()var lrecPL: Record "Purchase Line";
        begin
          //Message('Hi %1 %2 %3', rec."Document No.", rec."Line No.","Qty. Rcd. Not Invoiced");
          if lrecPL.get(rec."Document Type", rec."Document No.", rec."Line No.")then begin
            //Message('Hi2 %1 %2 %3', lrecPL."Document No.", lrecPL."Line No.", lrecpl."Qty. Rcd. Not Invoiced");
            if lrecPL."Qty. Rcd. Not Invoiced" <> 0 then begin
              if not Confirm(StrSubstNo('This will set the field %1 to Zero. \Are you confirm?', lrecPL.FieldCaption("Qty. Rcd. Not Invoiced")), false)then error('Nothing has been changed!');
              lrecPL."Qty. Rcd. Not Invoiced":=0;
              lrecPL.Modify(true);
            end;
          end;
        end;
      }
    }
  }
//Unsupported feature: CodeModification on "Documentation". Please convert manually.
//Unsupported feature: PropertyChange. Please convert manually.
}
