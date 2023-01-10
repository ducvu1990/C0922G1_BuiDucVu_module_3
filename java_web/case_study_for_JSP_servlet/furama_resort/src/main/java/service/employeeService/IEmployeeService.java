package service.employeeService;

import model.employee.Division;
import model.employee.EducationDegree;
import model.employee.Employee;
import model.employee.Position;

import java.util.List;

public interface IEmployeeService {
    List<Employee> finAllEmployee();

    List<Division> finAllEmployeeDivision();
    List<EducationDegree> finAllEmployeeEducationDegree();
    List<Position> finAllEmployeePosition();

    boolean createEmployee(Employee employee);
    Employee finEmployee(int id);
    boolean updateEmployye(Employee employee);
    boolean deleteEmployee(int id);
}
