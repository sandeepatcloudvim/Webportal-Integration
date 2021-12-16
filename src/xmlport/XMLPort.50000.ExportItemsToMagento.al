xmlport 50000 "Export Items to Magento"
{
    // version DAX000,DAXCH101
    // Export Items to Magento
    // Date: 26/10/2015
    // Developer: Magnus Perri
    // Description: This XML Port exports data to an XML file that can then be imported into Magento Web Shop.
    // 101/19.09.19/PM - Set Filter, Item:Web Shop Enabled=CONST(Yes)
    // 102/31.01.20/PM - Export Item Description and Item Vendor No.
    Direction = Export;
    FormatEvaluate = Xml;
    UseRequestPage = false;

    schema
    {
        textelement(products)
        {
            tableelement(Item;
            27)
            {
                RequestFilterFields = "No.", "Web Shop Enabled", "Web Shop Category";
                XmlName = 'item';
                SourceTableView = SORTING("No.") ORDER(Ascending) WHERE("Web Shop Enabled" = CONST(true));

                fieldelement(sku;
                Item."No.")
                {
                }
                fieldelement(product_name;
                item."Webshop Item No.")
                {
                }
                fieldelement(price;
                Item."Unit Price")
                {
                }
                textelement(category_1)
                {
                    trigger OnBeforePassVariable();
                    begin
                        //rcWebShopCategory.SETRANGE(Code, item."Web Shop Category");
                        category_1 := '';
                        IF Item."Web Shop Category" <> '' THEN BEGIN
                            IF rcWebShopCategory.GET(Item."Web Shop Category") THEN category_1 := rcWebShopCategory.Description;
                        END;
                    end;
                }
                textelement(category_2)
                {
                    trigger OnBeforePassVariable();
                    begin
                        //rcItemCategory
                        category_2 := '';
                        // IF Item."Item Category Code" <> '' THEN BEGIN
                        //     IF rcItemCategory.GET(Item."Item Category Code") THEN
                        //         category_2 := rcItemCategory.Description;
                        // END;
                        IF Item."Web Shop Category2" <> '' THEN BEGIN
                            IF rcWebShopCategory2.GET(Item."Web Shop Category2") THEN category_2 := rcWebShopCategory2.Description;
                        END;
                    end;
                }
                textelement(category_3)
                {
                    trigger OnBeforePassVariable();
                    begin
                        //ProductGroup
                        category_3 := '';
                        //IF Item."Product Group Code" <> '' THEN BEGIN
                        //  IF rcProductGroup.GET(Item."Item Category Code", Item."Product Group Code") THEN
                        //    category_3 := rcProductGroup.Description;
                        //END;
                        IF Item."Web Shop Category3" <> '' THEN BEGIN
                            IF rcWebShopCategory3.GET(Item."Web Shop Category3") THEN category_3 := rcWebShopCategory3.Description;
                        END;
                    end;
                }
                textelement(category_4)
                {
                    trigger OnBeforePassVariable();
                    begin
                        //rcWebShopSubCategory
                        //If item field has no value, skip this section
                        category_4 := '';
                        IF Item."Web Shop Sub Category" <> '' THEN BEGIN
                            //IF rcWebShopSubCategory.GET(Item."Product Group Code", Item."Web Shop Sub Category") THEN
                            //IF rcWebShopSubCategory.GET(Item."Item Category Code", Item."Web Shop Sub Category") THEN
                            //    category_4 := rcWebShopSubCategory.Description;
                            IF rcWebShopCategory4.GET(Item."Web Shop Sub Category") THEN
                                category_4 := rcWebShopCategory4.Description;
                        END;
                    end;
                }
                textelement(image)
                {
                }
                textelement(small_image)
                {
                }
                textelement(thumbnail)
                {
                }
                fieldelement(weight;
                Item."Gross Weight")
                {
                }
                textelement(type)
                {
                    trigger OnBeforePassVariable();
                    begin
                        type := 'simple';
                    end;
                }
                textelement(status)
                {
                    trigger OnBeforePassVariable();
                    begin
                        if item."Web Shop Enabled" then
                            status := 'Enabled'
                        else
                            status := 'Not Enabled';
                    end;
                }
                textelement(description)
                {
                    trigger OnBeforePassVariable();
                    begin
                        //-102
                        description := Item."Webshop Description";
                        //+102
                    end;
                }
                textelement(short_description)
                {
                    trigger OnBeforePassVariable();
                    begin
                        //-102
                        short_description := item."Vendor Item No.";
                        //+102
                    end;
                }
                fieldelement(web_enabled;
                Item."Web Shop Enabled")
                {
                }
                trigger OnAfterGetRecord();
                begin
                    itNoOfRecords := itNoOfRecords + 1;
                end;
            }
        }
    }
    requestpage
    {
        SaveValues = true;

        layout
        {
        }
        actions
        {
        }
    }
    trigger OnInitXmlPort();
    begin
        itNoOfRecords := 0;
    end;

    trigger OnPostXmlPort();
    begin
        MESSAGE('Exported %1 item(s).', itNoOfRecords);
    end;

    var
        itNoOfRecords: Integer;
        rcItemCategory: Record 5722;
        //rcProductGroup : Record 5723;
        rcWebShopCategory: Record 50001;
        rcWebShopSubCategory: Record 50002;
        rcWebShopCategory2: Record 50003;
        rcWebShopCategory3: Record 50004;
        rcWebShopCategory4: Record 50005;
}
