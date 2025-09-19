sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"sap/emp/emphire/test/integration/pages/EmployeeSetList",
	"sap/emp/emphire/test/integration/pages/EmployeeSetObjectPage",
	"sap/emp/emphire/test/integration/pages/familyMemberObjectPage"
], function (JourneyRunner, EmployeeSetList, EmployeeSetObjectPage, familyMemberObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('sap/emp/emphire') + '/test/flp.html#app-preview',
        pages: {
			onTheEmployeeSetList: EmployeeSetList,
			onTheEmployeeSetObjectPage: EmployeeSetObjectPage,
			onThefamilyMemberObjectPage: familyMemberObjectPage
        },
        async: true
    });

    return runner;
});

