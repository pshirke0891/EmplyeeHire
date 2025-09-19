using EmpService as service from '../../srv/AdminService';
annotate service.EmployeeSet with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'emp_fname',
                Value : emp_fname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'emp_mname',
                Value : emp_mname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'emp_lname',
                Value : emp_lname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'joining_date',
                Value : joining_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'department_dept_code',
                Value : department_dept_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'position_pos_code',
                Value : position_pos_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'designation_design_code',
                Value : designation_design_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status_status_code',
                Value : status_status_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>EmployeePersonalDetails}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Contact Details',
            ID : 'ContactDetails',
            Target : '@UI.FieldGroup#ContactDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Caste Details',
            ID : 'CasteDetails',
            Target : '@UI.FieldGroup#CasteDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Goverment ID',
            ID : 'GovermentID',
            Target : '@UI.FieldGroup#GovermentID',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Language Details',
            ID : 'LanguageDetails',
            Target : '@UI.FieldGroup#LanguageDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Background Verification',
            ID : 'BackgroundVerification',
            Target : '@UI.FieldGroup#BackgroundVerification',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Address Details',
            ID : 'AddressDetails',
            Target : '@UI.FieldGroup#AddressDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Education Details',
            ID : 'EducationDetails',
            Target : '@UI.FieldGroup#EducationDetails',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Empfname}',
            Value : emp_fname,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Empmname}',
            Value : emp_mname,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Emplname}',
            Value : emp_lname,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Email}',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Mobile}',
            Value : mobile,
        },
        {
            $Type : 'UI.DataField',
            Value : joining_date,
            Label : '{i18n>Joiningdate}',
        },
        {
            $Type : 'UI.DataField',
            Value : department.dept_name,
            Label : '{i18n>Departmentdeptname}',
        },
        {
            $Type : 'UI.DataField',
            Value : designation.design_name,
            Label : '{i18n>Designationdesignname}',
        },
        {
            $Type : 'UI.DataField',
            Value : status.status_name,
            Label : '{i18n>Statusstatusname}',
        },
        {
            $Type : 'UI.DataField',
            Value : family_member.employee.emp_fname,
            Label : '{i18n>Empfname}',
        },
    ],
    UI.SelectionFields : [
        emp_fname,
        joining_date,
        department.dept_name,
        designation.design_name,
        status.status_name,
    ],
    UI.DataPoint #emp_fname : {
        $Type : 'UI.DataPointType',
        Value : emp_fname,
        Title : '{i18n>Empfname}',
    },
    UI.DataPoint #emp_lname : {
        $Type : 'UI.DataPointType',
        Value : emp_lname,
        Title : '{i18n>Empmname}',
    },
    UI.DataPoint #emp_mname : {
        $Type : 'UI.DataPointType',
        Value : emp_mname,
        Title : 'emp_mname',
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'emp_fname',
            Target : '@UI.DataPoint#emp_fname',
        },
    ],
    UI.HeaderInfo : {
        TypeName : '{i18n>CreateNewEmployee}',
        TypeNamePlural : '{i18n>CreateNewEmployee}',
        Title : {
            $Type : 'UI.DataField',
            Value : emp_fname,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : 'Create Employee',
        },
    },
    UI.FieldGroup #ContactDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : email,
                Label : 'email',
            },
            {
                $Type : 'UI.DataField',
                Value : mobile,
            },
        ],
    },
    UI.FieldGroup #CasteDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #GovermentID : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #LanguageDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #BackgroundVerification : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #AddressDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #EducationDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
);

annotate service.EmployeeSet with {
    department @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'DepartmentSet',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : department_dept_code,
                ValueListProperty : 'dept_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'dept_name',
            },
        ],
    }
};

annotate service.EmployeeSet with {
    position @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PositionSet',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : position_pos_code,
                ValueListProperty : 'pos_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'pos_name',
            },
        ],
    }
};

annotate service.EmployeeSet with {
    designation @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'DesignationSet',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : designation_design_code,
                ValueListProperty : 'design_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'design_name',
            },
        ],
    }
};

annotate service.EmployeeSet with {
    status @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'StatusSet',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : status_status_code,
                ValueListProperty : 'status_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'status_name',
            },
        ],
    }
};

annotate service.EmployeeSet with {
    emp_fname @Common.Label : '{i18n>Empfname}'
};

annotate service.EmployeeSet with {
    joining_date @Common.Label : '{i18n>Joiningdate}'
};

annotate service.DepartmentSet with {
    dept_name @(
        Common.Label : '{i18n>Departmentdeptname}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'DepartmentSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : dept_name,
                    ValueListProperty : 'dept_code',
                },
            ],
            Label : 'Department',
            PresentationVariantQualifier : 'vh_DepartmentSet_dept_name',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.DesignationSet with {
    design_name @(
        Common.Label : '{i18n>Designationdesignname}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'DesignationSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : design_name,
                    ValueListProperty : 'design_code',
                },
            ],
            Label : 'Designation',
            PresentationVariantQualifier : 'vh_DesignationSet_design_name',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.StatusSet with {
    status_name @(
        Common.Label : '{i18n>Statusstatusname}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'StatusSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : status_name,
                    ValueListProperty : 'status_code',
                },
            ],
            Label : 'Status',
            PresentationVariantQualifier : 'vh_StatusSet_status_name',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.DepartmentSet with @(
    UI.PresentationVariant #vh_DepartmentSet_dept_name : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : dept_code,
                Descending : false,
            },
        ],
    }
);

annotate service.DepartmentSet with {
    dept_code @(
        Common.Text : dept_name,
        Common.Text.@UI.TextArrangement : #TextFirst,
)};

annotate service.DesignationSet with @(
    UI.PresentationVariant #vh_DesignationSet_design_name : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : design_code,
                Descending : false,
            },
        ],
    }
);

annotate service.DesignationSet with {
    design_code @(
        Common.Text : design_name,
        Common.Text.@UI.TextArrangement : #TextFirst,
)};

annotate service.StatusSet with @(
    UI.PresentationVariant #vh_StatusSet_status_name : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : status_code,
                Descending : false,
            },
        ],
    }
);

annotate service.StatusSet with {
    status_code @(
        Common.Text : status_name,
        Common.Text.@UI.TextArrangement : #TextFirst,
)};

