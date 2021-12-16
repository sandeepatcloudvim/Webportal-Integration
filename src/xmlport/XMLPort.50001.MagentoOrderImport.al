xmlport 50001 "Magento Order Import"
{
    // version DAX000,DAXCH101
    // 100/20.09.19/PM - Run from Page 42 Webshop Import, Copy from Australia Database
    // 101/20.09.19/PM - Change AU->CH
    FileName = 'C:\Users\Magnus\Desktop\EXP_001.xml';
    Format = Xml;
    UseRequestPage = false;

    schema
    {
        textelement(orders)
        {
            tableelement(sheader; 36)
            {
                AutoReplace = false;
                AutoSave = true;
                AutoUpdate = false;
                XmlName = 'order';

                textelement(order_nbr)
                {
                }
                textelement(bill_custno)
                {
                    MaxOccurs = Once;
                    MinOccurs = Zero;

                    trigger OnAfterAssignVariable();
                    begin
                        CustomerNo := bill_custno;
                    end;
                }
                textelement(ord_dt)
                {
                    trigger OnAfterAssignVariable();
                    begin
                        //IF EVALUATE(OrderDate, ord_dt) THEN
                        OrderDate := fcToDate(ord_dt);
                    end;
                }
                textelement(frt_amt)
                {
                }
                textelement(pmt_terms)
                {
                }
                textelement(bill_company)
                {
                    trigger OnAfterAssignVariable();
                    begin
                        BillCompany := bill_company;
                    end;
                }
                textelement(bill_firstname)
                {
                }
                textelement(bill_lastname)
                {
                }
                textelement(bill_adr1)
                {
                }
                textelement(bill_adr2)
                {
                }
                textelement(bill_city)
                {
                }
                textelement(bill_st)
                {
                }
                textelement(bill_zip)
                {
                }
                textelement(bill_cntry)
                {
                    trigger OnAfterAssignVariable();
                    begin
                        Cntry := bill_cntry;
                    end;
                }
                textelement(bill_attn)
                {
                }
                textelement(bill_ph)
                {
                }
                textelement(order_lines)
                {
                    tableelement(sline;
                    37)
                    {
                        LinkFields = "Document No." = FIELD("No.");
                        LinkTable = SHeader;
                        LinkTableForceInsert = true;
                        XmlName = 'order_line';

                        textelement(line_nbr)
                        {
                        }
                        textelement(item_nbr)
                        {
                            trigger OnAfterAssignVariable();
                            begin
                                ItemNo := item_nbr;
                                IF Item.GET(ItemNo) THEN BEGIN
                                    SLine.Type := SLine.Type::Item;
                                    EVALUATE(ItemNo, item_nbr);
                                    SLine.VALIDATE("No.", ItemNo);
                                END
                                ELSE BEGIN
                                    SLine.Type := SLine.Type::"G/L Account";
                                    ItemNo := '4018';
                                    SLine.VALIDATE("No.", ItemNo);
                                END;
                            end;
                        }
                        textelement(item_desc1)
                        {
                            trigger OnAfterAssignVariable();
                            begin
                                SLine.Description := item_desc1;
                            end;
                        }
                        textelement(qty_ord)
                        {
                            trigger OnAfterAssignVariable();
                            begin
                                EVALUATE(Quantity, qty_ord);
                                SLine.VALIDATE(Quantity, Quantity);

                            end;
                        }
                        textelement(unit_price)
                        {
                            trigger OnAfterAssignVariable();
                            begin
                                EVALUATE(Price, unit_price);
                                SLine.VALIDATE("Unit Price", Price);
                            end;
                        }
                        textelement("<product_type>")
                        {
                            XmlName = 'product_type';
                        }
                        textelement(participants)
                        {
                        }
                        trigger OnAfterInitRecord();
                        begin
                            //First
                            SLine.INIT;
                            SLine."Document Type" := SLine."Document Type"::Order;
                            SLine."Document No." := SHeader."No.";
                            OrderNo := SHeader."No.";
                            //SLine.Type := SLine.Type::Item;
                            SLine."Bill-to Customer No." := SHeader."Bill-to Customer No.";
                            SLine."Line No." := LineNo;
                            SLine.VALIDATE("Line No.", LineNo);
                        end;

                        trigger OnAfterInsertRecord();
                        begin
                            //Third
                            //Update the Sales Line Line number for next record.
                            LineNo := LineNo + 10000;
                        end;

                        trigger OnBeforeInsertRecord();
                        begin
                            //Second
                        end;
                    }
                    trigger OnAfterAssignVariable();
                    begin
                        //Only used for DA Academy and if there are participants
                        IF participants <> '' THEN BEGIN
                            //Insert Participant Info
                            //Participant0:: Name: Magnus Perri,Phone: 0291254900,Email: deepika.verma@dentalaxess.com&#13;
                            //Participant1:: Name: Rebecca Shonk,Phone: 02,Email: deepika.verma@dentalaxess.com
                            ParticipantInfo := participants;
                            Separator := ':';
                            ParticipantValues := ParticipantInfo.Split(Separator);
                            ParticipantNo := 1;
                            i := 0;
                            FOREACH Value IN ParticipantValues DO BEGIN
                                IF Value = ' Name' THEN BEGIN
                                    //MESSAGE('Value is: %1', ParticipantValues.GetValue(i+1));
                                    SLine."Document Type" := SHeader."Document Type";
                                    SLine."Document No." := SHeader."No.";
                                    LineNo := LineNo + 10000;
                                    SLine."Line No." := LineNo;
                                    SLine.VALIDATE("Line No.", LineNo);
                                    //MESSAGE('Value at Position %1: %2', i, value);
                                    SLine.Description := 'Participant ' + FORMAT(ParticipantNo) + ': ' + SELECTSTR(1, ParticipantValues.Get(i + 1));
                                    //SLine.Description := 'Participant ' + FORMAT(ParticipantNo) + ': ' + SELECTSTR(1, ParticipantValues[i + 1]);
                                    SLine.INSERT;
                                    ParticipantNo += 1;
                                END;
                                i += 1;
                            END;
                        END;
                        LineNo := 0;
                    end;
                }
                trigger OnAfterInitRecord();
                begin
                    //This is the first trigger to run
                    SHeader."Document Type" := SHeader."Document Type"::Order;
                    SHeader.InitInsert;
                end;

                trigger OnAfterInsertRecord();
                begin
                    //Capture Order No. so we can assign it to the lines.
                    //OrderNo := "Sales Header"."No.";
                    //LineNo := 10000;
                    //Modify Dates
                    IF OrderDate = 0D THEN OrderDate := WORKDATE;
                    SHeader.VALIDATE("Document Date", OrderDate);
                    SHeader."Posting Date" := WORKDATE;
                    SHeader."Order Date" := OrderDate;
                    //Save all changes
                    SHeader.MODIFY;
                    //Check for Pre-Payment Invoices that should to be posted
                    //SalesHeader.SETRANGE("Document Type", SalesHeader."Document Type"::Order);
                    //SalesHeader.SETRANGE("No.", OrderNo);
                    //SalesHeader.SETRANGE("Prepayment %", 1, 100);
                    //IF SalesHeader.FIND('-') THEN
                    //  SalesPostPrepmt.Invoice(SalesHeader);
                    SHeader."Posting Description" := order_nbr;
                    SHeader.Status := SHeader.Status::Open;
                    //Update number of orders
                    NoOfOrders := NoOfOrders + 1;
                end;

                trigger OnBeforeInsertRecord();
                begin
                    //This is the second trigger to run
                    SHeader."Document Type" := SHeader."Document Type"::Order;
                    //ADD Header Data if it's a guest checkout
                    //-101
                    rcKUNDSetup.GET;
                    //+101
                    /*
                                    IF BillCompany = 'Null' THEN BEGIN
                                      CustomerNo := fcSearchCustoNo(bill_firstname + ' ' + bill_lastname);
                                    END ELSE BEGIN
                                      CustomerNo := fcSearchCustoNo(BillCompany);
                                    END;
                                    */
                    IF NOT Customer.GET(CustomerNo) THEN BEGIN
                        IF Cntry = 'CH' THEN //CustomerNo := 'DA_ACADEMY-DOM'
                            CustomerNo := rcKUNDSetup."Webshop Customer DOM"
                        ELSE
                            //CustomerNo := 'DA_ACADEMY-INT';
                            CustomerNo := rcKUNDSetup."Webshop Customer INT";
                        Customer.GET(CustomerNo);
                        Customer.Blocked := Customer.Blocked::" ";
                        Customer.MODIFY;
                        SHeader.VALIDATE("Sell-to Customer No.", CustomerNo);
                        Customer.GET(CustomerNo);
                        Customer.Blocked := Customer.Blocked::All;
                        Customer.MODIFY;
                    END
                    ELSE BEGIN
                        SHeader.VALIDATE("Sell-to Customer No.", CustomerNo);
                    END;
                    CASE SHeader."Sell-to Customer No." OF
                        rcKUNDSetup."Webshop Customer DOM":
                            BEGIN
                                IF BillCompany = 'Null' THEN BEGIN
                                    SHeader."Sell-to Customer Name" := bill_firstname + ' ' + bill_lastname;
                                    SHeader."Bill-to Name" := bill_firstname + ' ' + bill_lastname;
                                    SHeader."Ship-to Name" := bill_firstname + ' ' + bill_lastname;
                                END
                                ELSE BEGIN
                                    SHeader."Sell-to Customer Name" := BillCompany;
                                    SHeader."Bill-to Name" := BillCompany;
                                    SHeader."Ship-to Name" := BillCompany;
                                    SHeader."Sell-to Contact" := bill_firstname + ' ' + bill_lastname;
                                END;
                                SHeader."Sell-to Address" := bill_adr1;
                                SHeader."Sell-to Address 2" := bill_adr2;
                                SHeader."Sell-to County" := bill_st;
                                SHeader."Sell-to City" := bill_city;
                                SHeader."Sell-to Country/Region Code" := bill_cntry;
                                SHeader."Sell-to Post Code" := bill_zip;
                                SHeader."Bill-to Address" := bill_adr1;
                                SHeader."Bill-to Address 2" := bill_adr2;
                                SHeader."Bill-to County" := bill_st;
                                SHeader."Bill-to City" := bill_city;
                                SHeader."Bill-to Country/Region Code" := bill_cntry;
                                SHeader."Bill-to Post Code" := bill_zip;
                                SHeader."Ship-to Address" := bill_adr1;
                                SHeader."Ship-to Address 2" := bill_adr2;
                                SHeader."Ship-to County" := bill_st;
                                SHeader."Ship-to City" := bill_city;
                                SHeader."Ship-to Country/Region Code" := bill_cntry;
                                SHeader."Ship-to Post Code" := bill_zip;
                            END;
                        rcKUNDSetup."Webshop Customer INT":
                            BEGIN
                                IF BillCompany = 'Null' THEN BEGIN
                                    SHeader."Sell-to Customer Name" := bill_firstname + ' ' + bill_lastname;
                                    SHeader."Bill-to Name" := bill_firstname + ' ' + bill_lastname;
                                    SHeader."Ship-to Name" := bill_firstname + ' ' + bill_lastname;
                                END
                                ELSE BEGIN
                                    SHeader."Sell-to Customer Name" := BillCompany;
                                    SHeader."Bill-to Name" := BillCompany;
                                    SHeader."Ship-to Name" := BillCompany;
                                    SHeader."Sell-to Contact" := bill_firstname + ' ' + bill_lastname;
                                END;
                                SHeader."Sell-to Address" := bill_adr1;
                                SHeader."Sell-to Address 2" := bill_adr2;
                                SHeader."Sell-to County" := bill_st;
                                SHeader."Sell-to City" := bill_city;
                                SHeader."Sell-to Country/Region Code" := bill_cntry;
                                SHeader."Sell-to Post Code" := bill_zip;
                                SHeader."Bill-to Address" := bill_adr1;
                                SHeader."Bill-to Address 2" := bill_adr2;
                                SHeader."Bill-to County" := bill_st;
                                SHeader."Bill-to City" := bill_city;
                                SHeader."Bill-to Country/Region Code" := bill_cntry;
                                SHeader."Bill-to Post Code" := bill_zip;
                                SHeader."Ship-to Address" := bill_adr1;
                                SHeader."Ship-to Address 2" := bill_adr2;
                                SHeader."Ship-to County" := bill_st;
                                SHeader."Ship-to City" := bill_city;
                                SHeader."Ship-to Country/Region Code" := bill_cntry;
                                SHeader."Ship-to Post Code" := bill_zip;
                            END;
                    END;
                    SHeader."External Document No." := order_nbr;
                    //Add posting description
                    SHeader."Posting Description" := order_nbr;
                    //-101
                    rcKUNDSetup.GET;
                    //+101
                    //Customer is paying by credit card
                    IF pmt_terms = 'Credit Card (No surcharge applies)' THEN BEGIN
                        //SHeader.VALIDATE("Payment Method Code", 'CC');
                        //-101
                        SHeader.VALIDATE("Payment Method Code", rcKUNDSetup."Webshop CreditCard Code");
                        //+101
                        //SHeader."Prepayment %" := 0;
                    END;
                    //ADD MORE PAYMENT TERMS HERE>>>
                end;
            }
        }
    }
    requestpage
    {
        layout
        {
        }
        actions
        {
        }
    }
    trigger OnInitXmlPort();
    begin
        NoOfOrders := 1;
    end;

    trigger OnPostXmlPort();
    begin
        MESSAGE('Finished importing %1 order(s)', NoOfOrders - 1);
        //If there are any Pre-Payment Invoices, post them
        //FOR i := 1 TO NoOfOrders - 1 DO BEGIN
        //  SalesHeader.SETRANGE("Document Type", SalesHeader."Document Type"::Order);
        //  SalesHeader.Setrange("No.", OrderNo[i]);
        //  IF SalesHeader.FIND('-') THEN BEGIN
        //    IF SalesHeader."Prepayment %" > 0 THEN
        //      SalesPostPrepmt.Invoice(SalesHeader);
        //  END;
        //END;
    end;

    var
        FreightAmount: Decimal;
        LineNo: Decimal;
        NoOfOrders: Decimal;
        OrderNo: Code[20];
        OrderDate: Date;
        SalesPostPrepmt: Codeunit 442;
        SalesHeader: Record 36;
        i: Integer;
        CustomerNo: Code[20];
        Customer: Record 18;
        ItemNo: Code[10];
        Item: Record 27;
        Quantity: Integer;
        Price: Decimal;
        Cntry: Code[10];
        //ParticipantInfo: DotNet "'mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.String";
        //ParticipantValues: DotNet "'mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Array";
        //Separator: DotNet "'mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.String";
        ParticipantInfo: Text;
        ParticipantValues: List of [Text];
        Separator: Text;
        Value: Text;
        ParticipantNo: Integer;
        BillCompany: Text;
        rcKUNDSetup: Record 50000;

    local procedure fcSearchCustoNo(_txCustomerName: Text) cdReturn: Code[20];
    var
        rclCustomer: Record 18;
    begin
        rclCustomer.SETRANGE(Name, _txCustomerName);
        IF rclCustomer.COUNT = 1 THEN BEGIN
            rclCustomer.FINDFIRST;
            EXIT(rclCustomer."No.");
        END;
    end;

    local procedure fcToDate(_txDate: Text) dtReturn: Date;
    var
        itlDay: Integer;
        itlMonth: Integer;
        itlYear: Integer;
    begin
        IF STRPOS(_txDate, '-') > 0 THEN BEGIN
            IF EVALUATE(itlDay, COPYSTR(_txDate, STRPOS(_txDate, '-') - 1)) THEN;
            _txDate := COPYSTR(_txDate, STRPOS(_txDate, '-') + 1);
        END;
        IF STRPOS(_txDate, '-') > 0 THEN BEGIN
            IF EVALUATE(itlMonth, COPYSTR(_txDate, STRPOS(_txDate, '-') - 1)) THEN;
            _txDate := COPYSTR(_txDate, STRPOS(_txDate, '-') + 1);
        END;
        IF EVALUATE(itlYear, _txDate) THEN;
        IF itlDay > 0 THEN dtReturn := DMY2DATE(itlDay, itlMonth, itlYear)
    end;
}
