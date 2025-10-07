pageextension 50102 "Customer Card - Ext." extends "Customer Card"
{
    layout
    {
        addafter("Priority")
        {
            field("Use this customer"; Rec."Use this customer")
            {
                ApplicationArea = All;
                ToolTip = 'Field created to test porpose of learning AL language';
                Importance = Promoted;
            }
        }
    }
}