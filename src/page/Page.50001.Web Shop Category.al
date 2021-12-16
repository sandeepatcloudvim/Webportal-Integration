page 50001 "Web Shop Category"
{
  // version DAXZ
  CaptionML = ENU='Web Shop Category', DES='Webshop Kategorie';
  PageType = List;
  SourceTable = 50001;

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
    area(processing)
    {
      action("Web Shop Sub Categories")
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Web Shop Sub Categories', ENC='Web Shop Sub Categories', DES='Web Shop Unterkategorie';
        Image = ItemGroup;
        RunObject = Page 50002;
      }
    }
  }
}
