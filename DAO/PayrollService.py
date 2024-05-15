from Util.DBconn import DBConnection

class PayrollService(DBConnection):

    def read_payrolls(self):
        try:
            self.cursor.execute("SELECT * FROM Payroll")
            payrolls = self.cursor.fetchall()
            for payroll in payrolls:
                print(payroll)
        except Exception as e:
            print(e)  

    def generate_payroll(self, employee_id, start_date, end_date):
        # Your logic for generating payroll goes here
        pass

    def get_payroll_by_id(self, payroll_id):
        try:
            self.cursor.execute("SELECT * FROM Payroll WHERE PayrollID = ?", (payroll_id,))
            payroll = self.cursor.fetchone()
            print(payroll)
        except Exception as e:
            print(e)  

    def get_payrolls_for_employee(self, employee_id):
        try:
            self.cursor.execute("SELECT * FROM Payroll WHERE EmployeeID = ?", (employee_id,))
            payrolls = self.cursor.fetchall()
            for payroll in payrolls:
                print(payroll)
        except Exception as e:
            print(e)  

    def get_payrolls_for_period(self, start_date, end_date):
        try:
            self.cursor.execute(
            "SELECT * FROM Payroll WHERE PayPeriodStartDate >= ? AND PayPeriodEndDate <= ?",
            (start_date, end_date),
        )
            payrolls = self.cursor.fetchall()
            for payroll in payrolls:
                print(payroll)
        except Exception as e:
            print(e)  