tableextension 123456700 ResourceExt extends Resource
// CSD1.00 - 2018-03-21 - EVROCO
// Chapter 5 - Lab 1-1
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456701;"Resource Type";Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(123456702;"Maximum Participants";Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456703;"Quantity Per Day";Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }
}