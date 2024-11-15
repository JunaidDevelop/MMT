table 70000 Student_Enrollment_Record_ITC
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Batch; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Batch-01","Batch-o2";

        }
        field(3; CourseName; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "App Development","Frontend Development","Dot Net Development";

        }
        field(4; TrainingShift; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "11:00am to 12:00pm","12:00pm to 3:00pm","3:00pm to 6:00pm";

        }
        field(5; Prefix; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Mr.","Mrs","Miss";

        }
        field(6; FirstName; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(7; LastName; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(8; DOB; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(9; MobNo1; Text[20])
        {
            ExtendedDatatype = PhoneNo;
            DataClassification = ToBeClassified;

        }
        field(10; MobNo2; Code[20])
        {
            ExtendedDatatype = PhoneNo;
            DataClassification = ToBeClassified;

        }
        field(11; StudentEmail; Text[30])
        {
            ExtendedDatatype = EMail;
            DataClassification = ToBeClassified;

        }
        field(12; Gender; Option)
        {
            OptionMembers = "Male","Female","Transgender";
            DataClassification = ToBeClassified;

        }
        field(13; Religion; Option)
        {
            OptionMembers = "Muslim","Non-Muslim";
            DataClassification = ToBeClassified;

        }
        field(14; "StudentB-form/CNIC/SmartCard"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(15; RefrenceType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Social Media","Expo Event","Social Media Ads";

        }
        field(16; Refrence; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(17; PlanCreated; Boolean)
        {
            DataClassification = ToBeClassified;

        }

        //Guardian detail

        field(18; "Father/GuardianName"; Code[30])
        {
            DataClassification = ToBeClassified;

        }
        field(19; "Father/GuardianMobumber"; Code[30])
        {
            ExtendedDatatype = PhoneNo;
            DataClassification = ToBeClassified;

        }
        field(20; "FatherCNIC/SmartCard"; Code[30])
        {
            DataClassification = ToBeClassified;

        }
        field(21; Address; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(22; "State/province"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(23; City; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(24; StreetAddress; Text[100])
        {
            DataClassification = ToBeClassified;

        }


        //Course Detail 

        field(25; TrainingStartDat; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(26; TrainingEndDat; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(27; InternshipIncl; Boolean)
        {
            DataClassification = ToBeClassified;


        }
        field(28; JoinDat; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(29; EndDat; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(30; Result; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Cleared,Freez,Failed;

        }
        field(31; CertIssue; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Yes,No;

        }
        field(32; StdScore; Decimal)
        {
            DataClassification = ToBeClassified;

        }




    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}