pageextension 60000 "EmployeeExt" extends "Employee Card"
{
    layout
    {
        modify("Job Title")
        {
            Caption = 'Designation';
        }
        modify("Phone No.")
        {
            Caption = 'Permanent Phone No.';
        }
        modify("Company E-Mail")
        {
            Caption = 'Email Id';
        }
        modify("Employment Date")
        {
            Visible = false;
        }
        addafter("Birth Date")
        {
            field(MaritalStatus; Rec.MaritalStatus)
            {
                Caption = 'Marital Status';
                ApplicationArea = All;
            }
            field(Nationality; Rec.Nationality)
            {
                Caption = 'Nationality';
                ApplicationArea = All;
            }
            field(EmergencyContactName; Rec.EmergencyContactName)
            {
                Caption = 'Emergency Contact Name';
                ApplicationArea = All;
            }
            field(EmergencyContactNo; Rec."Mobile Phone No.")
            {
                Caption = 'Emergency Contact No.';
                ApplicationArea = All;
            }
            field(DateofJoining; Rec."Employment Date")
            {
                Caption = 'Date of joining';
                ApplicationArea = All;
            }
            field(DepartmentId; Rec.DepartmentId)
            {
                Caption = 'Department';
                ApplicationArea = All;
            }
            field(SubDepartmentID; Rec.SubDepartmentID)
            {
                Caption = 'Sub Department';
                ApplicationArea = All;
            }
            field(EmployeeType; Rec.EmployeeType)
            {
                Caption = 'Employee Type';
                ApplicationArea = All;
            }
            field(Grade; Rec.Grade)
            {
                Caption = 'Grade';
                ApplicationArea = All;
            }
            field(DestinationCountry; Rec.DestinationCountry)
            {
                Caption = 'Destination Country';
                ApplicationArea = All;
            }
            field(DestinationCity; Rec.DestinationCity)
            {
                Caption = 'Destination City';
                ApplicationArea = All;
            }
            field(ReportingManager; Rec.ReportingManager)
            {
                Caption = 'Reporting Manager';
                ApplicationArea = All;
            }
            field(EmployeeStatus; Rec.EmployeeStatus)
            {
                Caption = 'Employee Status';
                ApplicationArea = All;
            }
            field(ProbationCompleteDate; Rec.ProbationCompleteDate)
            {
                Caption = 'Probation Complete Date';
                ApplicationArea = All;
            }

            field(Religion; Rec.Religion)
            {
                Caption = 'Religion';
                ApplicationArea = All;
            }
            field(IsExcludePayroll; Rec.IsExcludePayroll)
            {
                Caption = 'Exclude Payroll';
                ApplicationArea = All;
            }

            field(MarriageDate; Rec.MarriageDate)
            {
                Caption = 'Marriage Date';
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}