namespace EmpModel.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

//transaction table
entity employeeHire : cuid, managed {
    emp_fname    : String(50);
    emp_mname    : String(50);
    emp_lname    : String(50);
    email        : String(50);
    mobile       : String(11);
    address      : String(100);
    joining_date : Date;
    department   : Association to department;
    position     : Association to position;
    designation  : Association to designation;
    status       : Association to status;
    family_member : Composition of many familyMember on family_member.employee=$self;
}

//master table
entity department {
    dept_code : String(10);
    dept_name : String(30)
}

//master table
entity position {
    pos_code : String(10);
    pos_name : String(30);
}

//master table
entity designation {
    design_code : String(10);
    design_name : String(30);
}

entity status {
    status_code : String(10);
    status_name : String(30);
}

entity familyMember:cuid{
    name:String(30);
    relation:String(10);
    age:String(10);
    occupation:String(20);
    contact:String(11);
    employee:Association to employeeHire;
}
