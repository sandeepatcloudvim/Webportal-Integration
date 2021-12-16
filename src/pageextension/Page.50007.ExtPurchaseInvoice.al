pageextension 50007 pageextension50007 extends "Purchase Invoice"
{
  layout
  {
    addafter("VAT Bus. Posting Group") //("Control 138")
    {
      field("Gen. Bus. Posting Group";"Gen. Bus. Posting Group")
      {
        ApplicationArea = Basic, Suite;
        ToolTipML = ENU='Specifies the VAT specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the VAT posting setup.', DES='Gibt die MWST-Erklärung des beteiligten Debitors oder Kreditors an, um Transaktionen für diesen Datensatz mit dem entsprechenden Fibukonto entsprechend der MWST-Buchungsmatrix Einrichtung zu verknüpfen.', ITS='Indica la specifica IVA del cliente o del fornitore interessato per collegare le transazioni eseguite per questo record al conto di contabilità generale appropriato in base al setup registrazioni IVA.', FRS='Spécifie le détail TVA du client ou du fournisseur concerné pour lier les transactions effectuées pour cet enregistrement au compte général approprié en fonction des paramètres de comptabilisation TVA.';

        trigger OnValidate();
        var ApplicationAreaSetup: Record 9178;
        PurchCalcDiscByType: Codeunit 66;
        begin
          CurrPage.SAVERECORD;
          IF ApplicationAreaSetup.IsFoundationEnabled THEN PurchCalcDiscByType.ApplyDefaultInvoiceDiscount(0, Rec);
        end;
      }
    }
  }
//Unsupported feature: CodeModification on "Documentation". Please convert manually.
//Unsupported feature: PropertyChange. Please convert manually.
}
