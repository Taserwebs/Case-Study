from Util.DBconn import DBConnection
class EmployeeService(DBConnection):
    def read_employees(self):
        try:
            self.cursor.execute("SELECT * FROM Employee")
            employees = self.cursor.fetchall()
            for employee in employees:
                print(employee)
        except Exception as e:
            print(e)  

    def create_employee(self, employee_data):
        try:
            self.cursor.execute(
            "INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, Position, JoiningDate, TerminationDate) VALUES(?,?,?,?,?,?,?,?,?,?)",
            employee_data,
        )
        except Exception as e:
            print(e)  
        self.conn.commit()
        print("Employee inserted successfully.")

    def delete_employee(self, employee_id):
        try:
            self.cursor.execute("DELETE FROM Employee WHERE EmployeeID = ?", (employee_id,))
        except Exception as e:
            print(e)     
        self.conn.commit()
        print("Employee deleted successfully.")

    def update_employee(self, employee_data):
        try:
            self.cursor.execute(
            "UPDATE Employee SET FirstName = ?, LastName = ?, DateOfBirth = ?, Gender = ?, Email = ?, PhoneNumber = ?, Address = ?, Position = ?, JoiningDate = ?, TerminationDate = ?WHERE EmployeeID = ?"
            ,employee_data,
        )
        except Exception as e:
            print(e)  
        self.conn.commit()
        print("Employee updated successfully.")