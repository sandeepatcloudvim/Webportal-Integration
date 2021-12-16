tableextension 50011 tableextension50011 extends "Activities Cue"
{
  fields
  {
    field(50031;"Sales This Year";Decimal)
    {
      CaptionML = ENU='Sales This Year', DES='Umsatz dieses Jahr', ENC='Sales This Year';
      DataClassification = ToBeClassified;
      DecimalPlaces = 0: 0;
    }
    field(50032;"Sales orders amount";Decimal)
    {
      CalcFormula = Sum("Sales Line".Amount WHERE("Document Type"=CONST(Order)));
      CaptionML = ENU='Ongoing Sales Orders - Amount', ENC='Ongoing Sales Orders - Amount', DES='Laufende Verkaufsaufträge - Betrag', ITS='Ordini di vendita in corso - somma', FRS='Commandes vente en cours - somme';
      FieldClass = FlowField;
    }
    field(50033;"Sales quotes amount";Decimal)
    {
      CalcFormula = Sum("Sales Line".Amount WHERE("Document Type"=CONST(Quote)));
      CaptionML = ENU='Ongoing Sales Quotes - amount', ENC='Ongoing Sales Quotes - amount', DES='Laufende Verkaufsofferten - Betrag', ITS='Offerte vendita in corso - somma', FRS='Devis en cours - somme';
      FieldClass = FlowField;
    }
    field(50034;"Sales quotes expectation";Decimal)
    {
      CaptionML = DEU='Verkaufofferten Erwartung', ENU='Sales quotes expectation', ENC='Sales quotes expectation';
      DataClassification = ToBeClassified;
    }
  }
//Unsupported feature: InsertAfter on "Documentation". Please convert manually.
//Unsupported feature: PropertyChange. Please convert manually.
}
