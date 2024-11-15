page 70000 Student_Enrollment_ITC
{
    Caption = 'Student_Enrollment_ITC';
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = Student_Enrollment_Record_ITC;

    layout
    {
        area(Content)
        {
            group("Student Info")
            {
                Caption = 'Student Info';


                field(Batch; Rec.Batch)
                {
                    Caption = 'Batch';
                    ApplicationArea = All;
                }

                field(CourseName; Rec.CourseName)
                {
                    Caption = 'Course Name';
                    ApplicationArea = All;
                }
                field(TrainingShift; Rec.TrainingShift)
                {
                    Caption = 'Training Shift';
                    ApplicationArea = All;
                }
                field(Prefix; Rec.Prefix)
                {
                    Caption = 'Prefix';
                    ApplicationArea = All;
                }
                field(FirstName; Rec.FirstName)
                {
                    Caption = 'First Name';
                    ApplicationArea = All;
                }
                field(LastName; Rec.LastName)
                {
                    Caption = 'Last Name';
                    ApplicationArea = All;
                }
                field(DOB; Rec.DOB)
                {
                    Caption = 'Date Of Birth';
                    ApplicationArea = All;
                }
                field(MobNo1; Rec.MobNo1)
                {
                    Caption = 'Mobile Number 1';
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        IsValid: Boolean;
                    begin
                        IsValid := ValidateMobNo(Rec.MobNo1);

                        if IsValid = true then
                            Message('The Mobile No is valid.')
                        else
                            Error('Invalid phone number. It should be in the format +92 followed by 10 digits.');
                    end;




                }
                field(MobNo2; Rec.MobNo2)
                {
                    ApplicationArea = All;
                    Caption = 'Mobile Number 2';
                    trigger OnValidate()
                    var
                        IsValid: Boolean;
                    begin
                        IsValid := ValidateMobNo(Rec.MobNo2);

                        if IsValid = true then
                            Message('The Mobile Number is valid.')
                        else
                            Error('Invalid Mobile Number. It should be in the format +92 followed by 10 digits. Like +923002777727');
                    end;
                }
                field(StudentEmail; Rec.StudentEmail)
                {
                    ApplicationArea = All;
                    Caption = 'Student Email';
                }

                field(Gender; Rec.Gender)
                {
                    Caption = 'Gender';
                    ApplicationArea = All;
                }

                field(Religion; Rec.Religion)
                {
                    ApplicationArea = All;
                    Caption = 'Religion';
                }
                field("StudentB-form/CNIC/SmartCard"; Rec."StudentB-form/CNIC/SmartCard")
                {
                    ApplicationArea = All;
                    Caption = 'Student B-form / CNIC / Smart Card';
                    trigger OnValidate()
                    var
                        ValidCNIC: Boolean;
                    begin
                        ValidCNIC := ValidateMobNo(Rec."StudentB-form/CNIC/SmartCard");

                        if ValidCNIC = true then
                            Message('The CNIC is valid.')
                        else
                            Error('Invalid CNIC. It should be in the format 31301-1346-846-9');


                    end;
                }


                field(RefrenceType; Rec.RefrenceType)
                {
                    ApplicationArea = All;
                    Caption = 'Reference Type';
                }
                field(Refrence; Rec.Refrence)
                {
                    ApplicationArea = All;
                    Caption = 'Reference';
                }
                field(PlanCreated; Rec.PlanCreated)
                {
                    ApplicationArea = All;
                    Caption = 'Plan Created';
                }


            }
            Group("Guardian Detail")
            {

                field("Father/GuardianName"; Rec."Father/GuardianName")
                {
                    Caption = 'Father/Guardian Name';
                    ApplicationArea = All;
                }
                field("Father/GuardianMobumber"; Rec."Father/GuardianMobumber")
                {
                    Caption = 'Father/Guardian Mobile Number';
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        IsValid: Boolean;
                    begin
                        IsValid := ValidateMobNo(Rec.MobNo2);

                        if IsValid = true then
                            Message('The Mobile Number is valid.')
                        else
                            Error('Invalid Mobile Number. It should be in the format +92 followed by 10 digits. Like +923002777727');
                    end;
                }
                field("FatherCNIC/SmartCard"; Rec."FatherCNIC/SmartCard")
                {
                    Caption = 'CNIC/SmartCard';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Address';
                    ApplicationArea = All;
                }

                field("State/province"; Rec."State/province")
                {
                    ApplicationArea = All;
                    Caption = 'State/Province';
                }
                field(City; Rec.City)
                {
                    Caption = 'City';
                    ApplicationArea = All;
                }


                field(StreetAddress; Rec.StreetAddress)
                {
                    ApplicationArea = All;
                    Caption = 'Street Address';
                }

            }
            Group("Course Details:")
            {
                field(TrainingStartDat; Rec.TrainingStartDat)
                {
                    ApplicationArea = All;
                    Caption = 'Training Start Date';
                }
                field(TrainingEndDat; Rec.TrainingEndDat)
                {
                    ApplicationArea = All;
                    Caption = 'Training End Date';
                }
                field(JoinDat; Rec.JoinDat)
                {
                    Caption = 'Joining Date';
                    ApplicationArea = All;
                }
                field(EndDat; Rec.EndDat)
                {
                    Caption = 'End Date';
                    ApplicationArea = All;
                }
                field(InternshipIncl; Rec.InternshipIncl)
                {
                    Caption = 'Internship included';
                    ApplicationArea = All;
                }
                field(Result; Rec.Result)
                {
                    Caption = 'Result';
                    ApplicationArea = All;
                }
                field(CertIssue; Rec.CertIssue)
                {
                    Caption = 'Certificate Issued';
                    ApplicationArea = All;
                }
                field(StdScore; Rec.StdScore)
                {
                    ApplicationArea = All;
                    Caption = 'Score';
                }

            }

        }

    }
    procedure ValidateMobNo(MobileNumber: Text[20]): Boolean
    var
        IsValidFormat: Boolean;
        RemainingDigits: Text[20];
        i: Integer;
    begin
        IsValidFormat := (StrLen(MobileNumber) = 13) and (CopyStr(MobileNumber, 1, 3) = '+92');
        if IsValidFormat then begin
            RemainingDigits := CopyStr(MobileNumber, 4, 10);

            for i := 1 to StrLen(RemainingDigits) do begin
                if not (RemainingDigits[i] in ['0' .. '9']) then
                    exit(false);
            end;

            exit(true);
        end;

        exit(false);
    end;

    procedure ValidateCNIC(CNIC: Text[20]): Boolean
    var
        IsValidFormat: Boolean;
        RemainingDigits: Text[20];
        i: Integer;
    begin
        IsValidFormat := (StrLen(CNIC) = 13);
        if IsValidFormat then begin
            RemainingDigits := CopyStr(CNIC, 1, 13);

            for i := 1 to StrLen(RemainingDigits) do begin
                if not (RemainingDigits[i] in ['0' .. '9']) then
                    exit(false);
            end;

            exit(true);
        end;

        exit(false);
    end;




}




