page 60001 "Employee SubDepartment List"
{

    ApplicationArea = All;
    Caption = 'Employee SubDepartment List';
    PageType = List;
    SourceTable = "Employee SubDepartment";
    DataCaptionFields = DeptName;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(SubDeptName; Rec.SubDeptName)
                {
                    ToolTip = 'Specifies the value of the SubDepartment Name field.';
                    ApplicationArea = All;
                }
                field(DeptName; Rec.DeptName)
                {
                    ToolTip = 'Specifies the value of the Department Name field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    Caption = 'Created By';
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'CreatedDate';
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        DepartmentName: Code[20];
    begin
        IF Rec.GETFILTER(DeptName) <> '' THEN
            DepartmentName := Rec.GETRANGEMIN(DeptName);
        IF DepartmentName <> '' THEN BEGIN
            Rec.FILTERGROUP(2);
            Rec.SETRANGE(DeptName, DepartmentName);
            Rec.FILTERGROUP(0);
        END;
    end;

}
