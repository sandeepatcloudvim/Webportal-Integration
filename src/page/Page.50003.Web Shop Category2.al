page 50003 "Web Shop Category2"
{
  // version DAXZ
  CaptionML = ENU='Web Shop Category2', DES='Webshop Kategorie2';
  PageType = List;
  SourceTable = 50003;

  layout
  {
    area(content)
    {
      repeater(Group)
      {
        field(Code;Code)
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='Code', ENC='Code';
        }
        field(Description;Description)
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='Description', ENC='Description';
        }
      }
    }
  }
  actions
  {
  }
}
