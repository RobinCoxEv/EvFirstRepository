pageextension 123456700 ResourceCardExt extends "Resource Card"
// CSD1.00 - 2018-03-22 - EVROCO
// Chapter 5 - Lab 1-2
// Added new fields:
// - Internal/External
// - New participants
// Added new FastTab
// Added code to OnOpenPage trigger 
{
    layout
    {
        addlast(General)
        {
            field("Resource Type";"Resource Type")
            {

            }
            field("Quantity Per Day";"Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("room")
            {
                Visible = ShowMaxField;
                field("Maximum Participants";"Maximum Participants")
                {
                    
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}