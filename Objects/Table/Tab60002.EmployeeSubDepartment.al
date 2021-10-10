table 60002 "Employee SubDepartment"
{
    Caption = 'Employee SubDepartment';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; SubDeptName; Code[20])
        {
            Caption = 'SubDepartment Name';
            DataClassification = ToBeClassified;
        }
        field(2; DeptName; Code[20])
        {
            Caption = 'Department Name';
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; DeptName, SubDeptName)
        {
            Clustered = true;
        }
    }

}
