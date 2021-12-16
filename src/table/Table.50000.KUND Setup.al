table 50000 "KUND Setup"
{
  // version DAXZ
  CaptionML = ENU='KUND Setup', DES='KUND Einrichtung';

  fields
  {
    field(1;"Primary Key";Code[10])
    {
      DataClassification = ToBeClassified;
    }
    field(10;"Webshop Customer DOM";Code[20])
    {
      CaptionML = ENU='Webshop Customer Domicil', DES='Webshop Debitor Inland';
      DataClassification = ToBeClassified;
      TableRelation = Customer;
    }
    field(20;"Webshop Customer INT";Code[20])
    {
      CaptionML = ENU='Webshop Customer International', DES='Webshop Debitor International';
      DataClassification = ToBeClassified;
      TableRelation = Customer;
    }
    field(30;"Webshop CreditCard Code";Code[20])
    {
      CaptionML = ENU='Webshop CreditCard Code', DES='Webshop Kredit Karte Code';
      DataClassification = ToBeClassified;
      TableRelation = "Payment Method";
    }
  }
  keys
  {
    key(Key1;"Primary Key")
    {
    }
  }
  fieldgroups
  {
  }
}
