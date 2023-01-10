package service.employeeService.impl;

import model.employee.Division;
import model.employee.EducationDegree;
import model.employee.Employee;
import model.employee.Position;
import repository.employeeRepository.IEmployeeRepository;
import repository.employeeRepository.impl.EmployeeRepository;
import service.employeeService.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    private final IEmployeeRepository employeeRepository = new EmployeeRepository();
    @Override
    public List<Employee> finAllEmployee() {
        return employeeRepository.finAllEmployee();
    }

    @Override
    public List<Division> finAllEmployeeDivision() {
        return null;
    }

    @Override
    public List<EducationDegree> finAllEmployeeEducationDegree() {
        return null;
    }

    @Override
    public List<Position> finAllEmployeePosition() {
        return null;
    }

    @Override
    public boolean createEmployee(Employee employee) {
        return false;
    }

    @Override
    public Employee finEmployee(int id) {
        return null;
    }

    @Override
    public boolean updateEmployye(Employee employee) {
        return false;
    }

    @Override
    public boolean deleteEmployee(int id) {
        return false;
    }
}
