package service.facilityService;

import model.employee.Division;
import model.employee.EducationDegree;
import model.employee.Employee;
import model.employee.Position;
import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;

import java.util.List;

public interface IFacilityService {
    List<Facility> finAllFacility();

    List<FacilityType> finAllEmployeeDivision();
    List<RentType> finAllEmployeeEducationDegree();


    boolean createFacility(Facility facility);
    Employee finFacility(int id);
    boolean updateFacility(Facility facility);
    boolean deleteFacility(int id);
}
