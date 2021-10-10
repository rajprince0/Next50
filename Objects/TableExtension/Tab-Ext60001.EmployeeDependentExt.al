tableextension 60001 EmployeeDependentExt extends "Employee Relative"
{
    fields
    {
        field(60000; DependentID; Code[20])
        {
            Caption = 'Dependent ID';
            DataClassification = ToBeClassified;
        }
        field(60001; IsActive; Boolean)
        {
            Caption = 'IsActive';
            DataClassification = ToBeClassified;
        }
        field(60002; GenderID; Enum "Employee Gender")
        {
            Caption = 'Gender ID';
            DataClassification = ToBeClassified;
        }
        field(60003; CompanyVisa; Boolean)
        {
            Caption = 'Company Visa';
            DataClassification = ToBeClassified;
        }
        field(60004; PassportNumber; Text[50])
        {
            Caption = 'Passport No.';
            DataClassification = ToBeClassified;
        }
        field(60005; PassportExpireDate; DateTime)
        {
            Caption = 'Passport Expiry Date';
            DataClassification = ToBeClassified;
        }
        field(60006; VisaNumber; Text[100])
        {
            Caption = 'Visa Number';
            DataClassification = ToBeClassified;
        }
        field(60007; VisaExpireDate; DateTime)
        {
            Caption = 'Visa Expiry Date';
            DataClassification = ToBeClassified;
        }
        field(60008; VisaUnderCompany; Text[100])
        {
            Caption = 'Visa Under Company';
            DataClassification = ToBeClassified;
        }
        field(60009; IsEligibleForEductnAllowance; Boolean)
        {
            Caption = 'IsEligibleForEducationAllowance';
            DataClassification = ToBeClassified;
        }
        field(600010; IsEligibleForTicketAllowance; Boolean)
        {
            Caption = 'IsEligibleForTicketAllowance';
            DataClassification = ToBeClassified;
        }
        field(60011; RelationShipID; Code[20])
        {
            Caption = 'RelationShip ID';
            DataClassification = ToBeClassified;
        }
    }
}
