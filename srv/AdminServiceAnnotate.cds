using EmpService as service from '../srv/AdminService';

annotate service.EmployeeSet with{
   emp_fname @title : '{i18n>Empfname}';
   mobile @title : '{i18n>Mobile}'
}

//enable draft feature and create & edit button on fiori app

annotate service.EmployeeSet with @fiori.draft.enabled;
annotate service.EmployeeSet with @odata.draft.enabled;



