page 50005 "Web Shop Category4"
{
  // version DAXZ
  CaptionML = ENU='Web Shop Category4', DES='Webshop Kategorie4';
  PageType = List;
  SourceTable = 50005;

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
