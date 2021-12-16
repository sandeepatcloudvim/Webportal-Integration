page 50004 "Web Shop Category3"
{
  // version DAXZ
  CaptionML = ENU='Web Shop Category3', DES='Webshop Kategorie3';
  PageType = List;
  SourceTable = 50004;

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
