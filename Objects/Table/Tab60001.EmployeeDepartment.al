table 60001 "Employee Department"
{
    Caption = 'Employee Department';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Name; Code[20])
        {
            Caption = 'Department Name';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }

}
