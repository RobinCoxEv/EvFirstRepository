pageextension 123456701 ResourceListExt extends "Resource List"
// CSD1.00 - 2018-03-22 - EVROCO
{
    layout
    {
        Modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("Resource Type";"Resource Type")
            {

            }
            field("Maximum Participants";"Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage();
    begin
        Filtergroup(3);
        Showtype := (GetFilter(Type)='');
        ShowMaxField := (getfilter(Type) = format(type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        Showtype: Boolean;
}