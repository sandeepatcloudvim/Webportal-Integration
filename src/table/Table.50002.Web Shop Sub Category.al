table 50002 "Web Shop Sub Category"
{
  // version DAX000
  LookupPageID = 50002;

  fields
  {
    field(1;"Product Group Code";Code[10])
    {
      TableRelation = "Item Category".Code; // "Product Group".Code;
    }
    field(2;"Code";Code[10])
    {
    }
    field(3;Description;Text[50])
    {
    }
  }
  keys
  {
    key(Key1;"Product Group Code", "Code")
    {
    }
  }
  fieldgroups
  {
  }
}
