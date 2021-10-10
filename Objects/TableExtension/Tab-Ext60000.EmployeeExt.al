tableextension 60000 "Employee-Ext" extends Employee
{
    fields
    {
        field(60000; MaritalStatus; Enum "Employee Gender")
        {
            Caption = 'MaritalStatus';
            DataClassification = ToBeClassified;
        }
        field(60001; SpouseDOB; Date)
        {
            Caption = 'SpouseDOB';
            DataClassification = ToBeClassified;
        }
        field(60002; EmployeeStatus; Enum "Employment Status")
        {
            Caption = 'Employee Status';
            DataClassification = ToBeClassified;
        }
        field(60003; DepartmentId; Code[20])
        {
            Caption = 'DepartmentId';
            DataClassification = ToBeClassified;
            TableRelation = "Employee Department";
        }
        field(60004; Nationality; Code[20])
        {
            Caption = 'Nationality';
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }
        field(60005; EmergencyContactName; Text[50])
        {
            Caption = 'EmergencyContactName';
            DataClassification = ToBeClassified;
        }
        field(60006; IsActive; Boolean)
        {
            Caption = 'IsActive';
            DataClassification = ToBeClassified;
        }
        field(60007; OtherInformation; Text[250])
        {
            Caption = 'OtherInformation';
            DataClassification = ToBeClassified;
        }
        field(60008; Remarks; Text[250])
        {
            Caption = 'Remarks';
            DataClassification = ToBeClassified;
        }
        field(60009; PassportExpiryDate; Date)
        {
            Caption = 'PassportExpiryDate';
            DataClassification = ToBeClassified;
        }
        field(60010; VisaExpiryDate; Date)
        {
            Caption = 'VisaExpiryDate';
            DataClassification = ToBeClassified;
        }
        field(60011; VisaUnderCompany; Text[100])
        {
            Caption = 'VisaUnderCompany';
            DataClassification = ToBeClassified;
        }
        field(60012; LabourCardNumber; Code[20])
        {
            Caption = 'LabourCardNumber';
            DataClassification = ToBeClassified;
        }
        field(60013; ReportingManager; Text[30])
        {
            Caption = 'Reporting Manager';
            DataClassification = ToBeClassified;
            TableRelation = Employee."First Name";
        }
        field(60014; TotalLeaves; Decimal)
        {
            Caption = 'TotalLeaves';
            DataClassification = ToBeClassified;
        }
        field(60015; ReqApprovalLevel; Integer)
        {
            Caption = 'ReqApprovalLevel';
            DataClassification = ToBeClassified;
        }
        field(60016; IsProbationPeriod; Boolean)
        {
            Caption = 'IsProbationPeriod';
            DataClassification = ToBeClassified;
        }
        field(60017; PassportNumber; Text[50])
        {
            Caption = 'PassportNumber';
            DataClassification = ToBeClassified;
        }
        field(60018; VisaNumber; Text[50])
        {
            Caption = 'VisaNumber';
            DataClassification = ToBeClassified;
        }
        field(60019; LastEmployedCompany; Text[50])
        {
            Caption = 'LastEmployedCompany';
            DataClassification = ToBeClassified;
        }
        field(60020; lastEmployedJobTitle; Text[150])
        {
            Caption = 'lastEmployedJobTitle';
            DataClassification = ToBeClassified;
        }
        field(60021; LastExpStartDate; Date)
        {
            Caption = 'LastExpStartDate';
            DataClassification = ToBeClassified;
        }
        field(60022; LastExpEndDate; Date)
        {
            Caption = 'LastExpEndDate';
            DataClassification = ToBeClassified;
        }

        field(60028; PersonalId; Code[50])
        {
            Caption = 'PersonalId';
            DataClassification = ToBeClassified;
        }
        field(60029; LabourCardExpiryDate; Date)
        {
            Caption = 'LabourCardExpiryDate';
            DataClassification = ToBeClassified;
        }
        field(60030; UIDNo; Code[20])
        {
            Caption = 'UIDNo';
            DataClassification = ToBeClassified;
        }
        field(60031; AccessCardNo; Code[20])
        {
            Caption = 'AccessCardNo';
            DataClassification = ToBeClassified;
        }
        field(60032; Grade; Code[10])
        {
            Caption = 'Grade';
            DataClassification = ToBeClassified;
            TableRelation = "Employee Grade";
        }
        field(60033; EmployeeType; Enum "Employee Type")
        {
            Caption = 'EmployeeType';
            DataClassification = ToBeClassified;
        }
        field(60034; PensionCategoryId; Code[20])
        {
            Caption = 'PensionCategoryId';
            DataClassification = ToBeClassified;
        }
        field(60035; SubDepartmentID; Code[20])
        {
            Caption = 'SubDepartmentID';
            DataClassification = ToBeClassified;
            TableRelation = "Employee SubDepartment";
        }
        field(60036; SalaryEffectiveDate; Date)
        {
            Caption = 'SalaryEffectiveDate';
            DataClassification = ToBeClassified;
        }
        field(60037; DestinationCountry; Code[10])
        {
            Caption = 'DestinationCountry';
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
            trigger OnValidate()
            begin
                PostCode.CheckClearPostCodeCityCounty(DestinationCity, "Post Code", County, DestinationCountry, xRec.DestinationCountry);
            end;
        }
        field(60038; DestinationCity; Text[30])
        {
            Caption = 'DestinationCity';
            DataClassification = ToBeClassified;
            TableRelation = IF (DestinationCountry = CONST('')) "Post Code".City
            ELSE
            IF (DestinationCountry = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD(DestinationCountry));
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode.LookupPostCode(DestinationCity, "Post Code", County, DestinationCountry);
            end;

            trigger OnValidate()
            begin
                PostCode.ValidateCity(DestinationCity, "Post Code", County, DestinationCountry, (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(60039; ContractDateFrom; Date)
        {
            Caption = 'ContractDateFrom';
            DataClassification = ToBeClassified;
        }
        field(60040; ContractDateTo; Date)
        {
            Caption = 'ContractDateTo';
            DataClassification = ToBeClassified;
        }
        field(60041; EmployeePercentage; Decimal)
        {
            Caption = 'EmployeePercentage';
            DataClassification = ToBeClassified;
        }
        field(60042; EmployerPercentage; Decimal)
        {
            Caption = 'EmployerPercentage';
            DataClassification = ToBeClassified;
        }
        field(60043; EmiratesID; Code[50])
        {
            Caption = 'EmiratesID';
            DataClassification = ToBeClassified;
        }
        field(60044; EmirateExpireDate; Date)
        {
            Caption = 'EmirateExpireDate';
            DataClassification = ToBeClassified;
        }
        field(60045; CountryCode; Code[20])
        {
            Caption = 'CountryCode';
            DataClassification = ToBeClassified;
        }
        field(60046; ProbationCompleteDate; Date)
        {
            Caption = 'ProbationCompleteDate';
            DataClassification = ToBeClassified;
        }
        field(60047; IsGCC; Boolean)
        {
            Caption = 'IsGCC';
            DataClassification = ToBeClassified;
        }
        field(60048; AccessCardExpDate; Date)
        {
            Caption = 'AccessCardExpDate';
            DataClassification = ToBeClassified;
        }
        field(60049; IsExcludePayroll; Boolean)
        {
            Caption = 'IsExcludePayroll';
            DataClassification = ToBeClassified;
        }
        field(60050; MarriageDate; Date)
        {
            Caption = 'MarriageDate';
            DataClassification = ToBeClassified;
        }
        field(60051; ArabicFirstName; Text[250])
        {
            Caption = 'ArabicFirstName';
            DataClassification = ToBeClassified;
        }
        field(60052; ArabicMidName; Text[250])
        {
            Caption = 'ArabicMidName';
            DataClassification = ToBeClassified;
        }
        field(60053; ArabicLastName; Text[250])
        {
            Caption = 'ArabicLastName';
            DataClassification = ToBeClassified;
        }
        field(60054; PensionID; Text[150])
        {
            Caption = 'PensionID';
            DataClassification = ToBeClassified;
        }
        field(60055; FinancialNumber; Text[150])
        {
            Caption = 'FinancialNumber';
            DataClassification = ToBeClassified;
        }
        field(60056; EmployerID; Code[20])
        {
            Caption = 'EmployerID';
            DataClassification = ToBeClassified;
        }
        field(60057; MemberType; Text[150])
        {
            Caption = 'MemberType';
            DataClassification = ToBeClassified;
        }
        field(60058; DIFC; Text[20])
        {
            Caption = 'DIFC';
            DataClassification = ToBeClassified;
        }
        field(60059; DIFCNumber; Text[20])
        {
            Caption = 'DIFCNumber';
            DataClassification = ToBeClassified;
        }
        field(60060; Religion; Enum Religion)
        {
            Caption = 'Religion';
            DataClassification = ToBeClassified;
        }

        field(60061; PaymentModeCode; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PaymentModeCode';
        }
        field(60062; ChequeNo; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'ChequeNo';
        }
        field(60063; CurrencyCode; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
    }

    var
        PostCode: Record "Post Code";
}
