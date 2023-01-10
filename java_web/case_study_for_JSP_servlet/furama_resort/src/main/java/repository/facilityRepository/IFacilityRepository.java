package repository.facilityRepository;

import model.employee.Division;
import model.employee.EducationDegree;
import model.employee.Employee;
import model.employee.Position;
import model.facility.Facility;

import java.util.List;

public interface IFacilityRepository {
    List<Facility> finAllFacility();

    List<Division> finAllEmployeeDivision();
    List<EducationDegree> finAllEmployeeEducationDegree();
    List<Position> finAllEmployeePosition();

    boolean createEmployee(Employee employee);
    Employee finEmployee(int id);
    boolean updateEmployye(Employee employee);
    boolean deleteEmployee(int id);
}
