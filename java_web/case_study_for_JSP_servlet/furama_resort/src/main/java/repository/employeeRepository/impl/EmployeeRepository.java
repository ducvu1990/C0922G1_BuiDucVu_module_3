package repository.employeeRepository.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import model.employee.Division;
import model.employee.EducationDegree;
import model.employee.Employee;
import model.employee.Position;
import repository.BaseRepository.BaseRepository;
import repository.employeeRepository.IEmployeeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    private final String SELECT_ALL_EMPLOYEE = "select e.*, d.name as division_name, ed.name as education_degree_name, " +
            "pe.name as position_name from employee e join division d on e.division_id = d.id " +
            "join education_degree ed on e.education_degree_id = ed.id join position_emp pe on e.position_id = pe.id";
    @Override
    public List<Employee> finAllEmployee() {
        List<Employee> employees = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDB();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEE);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                java.sql.Date dateOfBirth = rs.getDate("birthday");
                String idCard = rs.getString("id_card");

                String phoneNumber = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");

                int educationDegreeId = rs.getInt("education_degree_id");
                String educationDegreeName = rs.getString("education_degree_name");
                EducationDegree educationDegree = new EducationDegree(educationDegreeId, educationDegreeName);

                int positionId = rs.getInt("position_id");
                String positionName = rs.getString("position_name");
                Position position = new Position(positionId, positionName);

                double salary = rs.getDouble("salary");

                int divisionId = rs.getInt("division_id");
                String divisionName = rs.getString("division_name");
                Division division = new Division(divisionId, divisionName);

                employees.add(new Employee(id, name, dateOfBirth, idCard, phoneNumber, email, educationDegree, position, salary, division));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
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
