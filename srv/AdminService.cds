
using {EmpModel.db as EmpModel} from '../db/schema';

service EmpService {

    entity EmployeeSet    as projection on EmpModel.employeeHire;
    entity DepartmentSet  as projection on EmpModel.department;
    entity PositionSet    as projection on EmpModel.position;
    entity DesignationSet as projection on EmpModel.designation;
    entity StatusSet      as projection on EmpModel.status;
    entity CastedetailSet as projection on EmpModel.castedetail;
    entity AddressSet     as projection on EmpModel.addressData;
    entity LanguageSet    as projection on EmpModel.languagedetail;
    entity GovIdSet       as projection on EmpModel.govID;
    entity BGVSet         as projection on EmpModel.BGVdetails;
}
