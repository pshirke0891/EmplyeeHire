const cds = require('@sap/cds');

class EmpService extends cds.ApplicationService {
    init() {
        const { EmployeeSet } = this.entities;
        this.before('UPDATE', EmployeeSet.drafts, async (req) => {
            if (req.data?.mobile) {

            } else {
                req.reject(400, "Enter Mobile Number");
            }
        });
        return super.init();
    }
}

module.exports = EmpService;