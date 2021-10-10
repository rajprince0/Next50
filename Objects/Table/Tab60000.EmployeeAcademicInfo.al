table 60000 "Employee Academic Info"
{
    Caption = 'Employee Academic Info';
    DataCaptionFields = "Employee No.";
    // DrillDownPageID = "Qualified Employees";
    // LookupPageID = "Employee Qualifications";

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = Employee;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }

        field(3; HighestDegree; Text[20])
        {
            Caption = 'HighestDegree';
            DataClassification = ToBeClassified;
        }
        field(4; UniversityName; Text[30])
        {
            Caption = 'UniversityName';
            DataClassification = ToBeClassified;
        }
        field(5; CompletedYear; Text[10])
        {
            Caption = 'Completed Year';
            DataClassification = ToBeClassified;
        }
        field(6; FieldOfDegree; Text[20])
        {
            Caption = 'FieldOfDegree';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Employee No.", "Line No.")
        {
            Clustered = true;
        }

    }

    fieldgroups
    {
    }

    var

}

