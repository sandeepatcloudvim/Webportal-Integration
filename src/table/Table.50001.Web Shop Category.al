table 50001 "Web Shop Category"
{
  // version DAX000
  LookupPageID = 50001;

  fields
  {
    field(1;"Code";Code[10])
    {
    }
    field(2;Description;Text[50])
    {
    }
  }
  keys
  {
    key(Key1;"Code")
    {
    }
  }
  fieldgroups
  {
  }
  var WebShopSubCategory: Record 50001;
}
