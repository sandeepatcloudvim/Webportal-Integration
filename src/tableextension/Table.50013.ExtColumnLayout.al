tableextension 50013 tableextension50013 extends "Column Layout"
{
    fields
    {
        modify("Ledger Entry Type")
        {
           
            CaptionML = ENU = 'Ledger Entry Type', ENC = 'Ledger Entry Type', ITS = 'Tipo mov. contabile', FRS = 'Type ‚criture compta.';
            //Unsupported feature: Change OptionString on ""Ledger Entry Type"(Field 6)". Please convert manually.
        }
        field(50001; "Ledger Entry TypeNew"; Option)
        {
            DataClassification = ToBeClassified;
            //FieldPropertyName = FieldPropertyValue;
            OptionMembers = Entries,"Budget Entries",,,"Entries (FCY)";
            OptionCaptionML = ENU = 'Entries,Budget Entries,,,Entries (FCY)', ENC = 'Entries,Budget Entries,,,Entries (FCY)', DES = 'Posten,Budgetposten,,,Posten (FW)', ITS = 'Movimenti,Movimenti budget,,,Movimenti (VE)', FRS = 'Écritures,Écritures budget,,,Écritures (DE)';
            CaptionML = ENU = 'Ledger Entry Type', ENC = 'Ledger Entry Type', ITS = 'Tipo mov. contabile', FRS = 'Type ‚criture compta.';
        }
    }
    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.
    //Unsupported feature: PropertyChange. Please convert manually.
}
