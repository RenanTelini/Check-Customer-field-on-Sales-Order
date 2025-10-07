tableextension 50100 "Customer - Ext." extends Customer
{
    fields
    {
        field(50000; "Use this customer"; Boolean)
        {
            Caption = 'Use this customer?';
        }
    }
}