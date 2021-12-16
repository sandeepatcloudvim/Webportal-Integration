tableextension 50014 tableextension50014 extends Item
{
  fields
  {
    field(50000;"Web Shop Enabled";Boolean)
    {
      CaptionML = ENU='Web Shop Enabled', ENC='Web Shop Enabled', DES='Web Shop Aktiviert';
      Description = 'DEAZ';
    }
    field(50001;"Web Shop Category";Code[10])
    {
      CaptionML = ENU='Web Shop Category1', ENC='Web Shop Category1', DES='Web Shop Kategorie1';
      Description = 'DEAZ';
      TableRelation = "Web Shop Category";
    // trigger OnValidate();
    // begin
    //     //26/10/2015 MAPE ADDED FUNCTIONALITY FOR WEB SHOP
    //     IF "Web Shop Category" <> xRec."Web Shop Category" THEN BEGIN
    //         IF NOT rclWebShopSubCategory.GET("Web Shop Category", "Web Shop Sub Category") THEN
    //             VALIDATE("Web Shop Sub Category", '')
    //         ELSE
    //             VALIDATE("Web Shop Sub Category");
    //     END;
    // end;
    }
    field(50002;"Web Shop Sub Category";Code[10])
    {
      CaptionML = ENU='Web Shop Category4', ENC='Web Shop Category4', DES='Web Shop Kategorie4';
      Description = 'DEAZ';
      //TableRelation = "Web Shop Sub Category".Code; //WHERE ("Product Group Code"=FIELD("Product Group Code"));
      //TableRelation = "Web Shop Sub Category".Code WHERE("Product Group Code" = FIELD("Item Category Code"));
      TableRelation = "Web Shop Category4";
    }
    field(50005;"Webshop Item No.";Text[250])
    {
      CaptionML = ENU='Webshop Title', ENC='Webshop Title', DES='Webshop Title';
      DataClassification = ToBeClassified;
    }
    field(50010;"Webshop Description";Text[250])
    {
      CaptionML = ENU='Webshop Description', ENC='Webshop Description', DES='Webshop Beschribung';
      DataClassification = ToBeClassified;
    }
    field(50011;"Web Shop Category2";Code[10])
    {
      CaptionML = ENU='Web Shop Category2', ENC='Web Shop Category2', DES='Web Shop Kategorie2';
      Description = 'DEAZ';
      TableRelation = "Web Shop Category2";
    }
    field(50012;"Web Shop Category3";Code[10])
    {
      CaptionML = ENU='Web Shop Category3', ENC='Web Shop Category3', DES='Web Shop Kategorie3';
      Description = 'DEAZ';
      TableRelation = "Web Shop Category3";
    }
  }
  //Unsupported feature: CodeModification on "Documentation". Please convert manually.
  //Unsupported feature: PropertyChange. Please convert manually.
  var rcWebShopCategory: Record 50001;
  rclWebShopSubCategory: Record 50002;
}
