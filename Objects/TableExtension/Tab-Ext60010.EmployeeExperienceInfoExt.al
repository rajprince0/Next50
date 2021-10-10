tableextension 60010 "EmployeeExperienceInfo-Ext" extends "Employee Qualification"
{
    fields
    {
        field(60000; PreviousCompanyCTC; Code[20])
        {
            Caption = 'PreviousCompany CTC';
            DataClassification = ToBeClassified;
        }
    }
}
