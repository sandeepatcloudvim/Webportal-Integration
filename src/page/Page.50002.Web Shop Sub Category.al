page 50002 "Web Shop Sub Category"
{
  // version DAXZ
  CaptionML = ENU='Web Shop Sub Category', DES='Webshop Unterkategorie';
  PageType = List;
  SourceTable = 50002;

  layout
  {
    area(content)
    {
      repeater(Group)
      {
        field("Product Group Code";"Product Group Code")
        {
          ApplicationArea = Basic, Suite; //Fh
          Visible = false;
        }
        field(Code;Code)
        {
          ApplicationArea = Basic, Suite; //Fh
        }
        field(Description;Description)
        {
          ApplicationArea = Basic, Suite; //FH
        }
      }
    }
  }
  actions
  {
  }
}
