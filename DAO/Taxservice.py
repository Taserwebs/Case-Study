from Util.DBconn import DBConnection

class TaxService(DBConnection):

    def read_taxes(self):
        try:
            self.cursor.execute("SELECT * FROM Tax")
            taxes = self.cursor.fetchall()
            for tax in taxes:
                print(tax)
        except Exception as e:
            print(e)  

    def calculate_tax(self, employee_id, tax_year):
        # Your logic for calculating taxes goes here
        pass

    def get_tax_by_id(self, tax_id):
        try:
            self.cursor.execute("SELECT * FROM Tax WHERE TaxID = ?", (tax_id,))
            tax = self.cursor.fetchone()
            print(tax)
        except Exception as e:
            print(e)  

    def get_taxes_for_employee(self, employee_id):
        try:
            self.cursor.execute("SELECT * FROM Tax WHERE EmployeeID = ?", (employee_id,))
            taxes = self.cursor.fetchall()
            for tax in taxes:
                print(tax)
        except Exception as e:
            print(e)  

    def get_taxes_for_year(self, tax_year):
        try:
            self.cursor.execute("SELECT * FROM Tax WHERE TaxYear = ?", (tax_year,))
            taxes = self.cursor.fetchall()
            for tax in taxes:
                print(tax)
        except Exception as e:
            print(e)  