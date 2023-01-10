package service.facilityService.impl;

import model.employee.Division;
import model.employee.EducationDegree;
import model.employee.Employee;
import model.employee.Position;
import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import repository.facilityRepository.IFacilityRepository;
import repository.facilityRepository.impl.FacilityRepository;
import service.facilityService.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    private final IFacilityRepository facilityRepository = new FacilityRepository();
    @Override
    public List<Facility> finAllFacility() {
        return facilityRepository.finAllFacility();
    }

    @Override
    public List<FacilityType> finAllEmployeeDivision() {
        return null;
    }

    @Override
    public List<RentType> finAllEmployeeEducationDegree() {
        return null;
    }

    @Override
    public boolean createFacility(Facility facility) {
        return false;
    }

    @Override
    public Employee finFacility(int id) {
        return null;
    }

    @Override
    public boolean updateFacility(Facility facility) {
        return false;
    }

    @Override
    public boolean deleteFacility(int id) {
        return false;
    }


}
