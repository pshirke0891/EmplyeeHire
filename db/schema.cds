namespace EmpModel.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

//transaction table
entity employeeHire : cuid, managed {
    emp_fname     : String(50);
    emp_mname     : String(50);
    emp_lname     : String(50);
    email         : String(50);
    mobile        : String(11);
    office_mail   : String(50);
    address       : Association to addressData;
    joining_date  : Date;
    department    : Association to department;
    position      : Association to position;
    designation   : Association to designation;
    status        : Association to status;
    casteDetails  : Association to castedetail;
    family_member : Composition of many familyMember
                        on family_member.employee = $self;
    language      : Composition of many languagedetail
                        on language.employee = $self;
    govID         : Association to govID;
    bgvDetail     : Association to BGVdetails;
    educations    : Composition of many education
                        on educations.employee = $self;
}

//master table
entity department {
    key dept_code : String(10);
        dept_name : String(30)
}

//master table
entity position {
    key pos_code : String(10);
        pos_name : String(30);
}

//master table
entity designation {
    key design_code : String(10);
        design_name : String(30);
}

entity status {
    key status_code : String(10);
        status_name : String(30);
}

entity familyMember : cuid {
    name       : String(30);
    relation   : String(10);
    age        : String(10);
    occupation : String(20);
    contact    : String(11);
    employee   : Association to employeeHire;
}

entity addressData : cuid {
    city     : Association to City;
    district : Association to District;
    state    : Association to State;
    address1 : String(50);
    address2 : String(50);
    pincode  : String(10);
}

entity City {
    key city_code : String(10);
        city_name : String(20);
}

entity District {
    key dist_code : String(10);
        dist_name : String(20);
}

entity State {
    key state_code : String(10);
        state_name : String(20);
}

entity castedetail : cuid {
    mothertounge          : String(20);
    caste                 : String(20);
    subcaste              : String(20);
    castecertificate      : String(10);
    castecertificate_num  : String(20);
    casteverification     : String(10);
    casteverification_num : String(20);
}

entity languagedetail {
    key lang_code : String(10);
        lang_name : String(20);
        employee  : Association to employeeHire;
}

entity govID {
    key id_code : String(10);
        id_name : String(30);
}

entity BGVdetails : cuid {
    exp_certificate         : String(10);
    behavior_certificate    : String(10);
    residential_certificate : String(10);
}

entity education : cuid {
    edu_name     : String(50);
    branch       : String(30);
    university   : String(50);
    passing_date : Date;
    employee     : Association to employeeHire;
}
