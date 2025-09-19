sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'sap.emp.emphire',
            componentId: 'familyMemberObjectPage',
            contextPath: '/EmployeeSet/family_member'
        },
        CustomPageDefinitions
    );
});