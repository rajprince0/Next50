table 60003 "Employee Grade"
{
    Caption = 'Employee Grade';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; GradeID; Code[10])
        {
            Caption = 'GradeID';
            DataClassification = ToBeClassified;
        }
        field(2; LevelName; Text[250])
        {
            Caption = 'LevelName';
            DataClassification = ToBeClassified;
        }
        field(3; GradeName; Text[250])
        {
            Caption = 'GradeName';
            DataClassification = ToBeClassified;
        }
        field(4; IsActive; Boolean)
        {
            Caption = 'IsActive';
            DataClassification = ToBeClassified;
        }
        field(5; IsEligibleForTicketAllowance; Boolean)
        {
            Caption = 'IsEligibleForTicketAllowance';
            DataClassification = ToBeClassified;
        }
        field(6; IsEligibleForEductnAllowance; Boolean)
        {
            Caption = 'IsEligibleForEducationAllowance';
            DataClassification = ToBeClassified;
        }
        field(7; IsEligibleForOvertimeAllowance; Boolean)
        {
            Caption = 'IsEligibleForOvertimeAllowance';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; GradeID)
        {
            Clustered = true;
        }
    }

}
