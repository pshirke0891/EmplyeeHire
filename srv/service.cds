using { EmpModel.db as EmpModel } from '../db/schema';

service EmpService {

    entity EmployeeSet as projection on EmpModel.employeeHire;
    entity DepartmentSet as projection on EmpModel.department;
    entity PositionSet as projection on EmpModel.position;
    entity DesignationSet as projection on EmpModel.designation;
    entity StatusSet as projection on EmpModel.status;
}

