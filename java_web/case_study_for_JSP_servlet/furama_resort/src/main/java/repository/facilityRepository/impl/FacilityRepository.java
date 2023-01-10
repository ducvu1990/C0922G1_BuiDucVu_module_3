package repository.facilityRepository.impl;

import model.employee.Division;
import model.employee.EducationDegree;
import model.employee.Employee;
import model.employee.Position;
import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import repository.BaseRepository.BaseRepository;
import repository.facilityRepository.IFacilityRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    private final String SELECT_ALL_FACILITY = "select f.*, ft.name as facility_type_name, rt.name as rent_type_name " +
            "from facility f join facility_type ft on ft.id = f.facility_type_id join rent_type rt on rt.id = f.rent_type_id";

    @Override
    public List<Facility> finAllFacility() {
        List<Facility> facilities = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDB();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement(SELECT_ALL_FACILITY);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int area = rs.getInt("area");
                double cost = rs.getDouble("cost");
                int maxPeople = rs.getInt("max_people");

                int rentTypeId = rs.getInt("rent_type_id");
                String rentTypeName = rs.getString("rent_type_name");
                RentType rentType = new RentType(rentTypeId, rentTypeName);

                int facilityTypeId = rs.getInt("facility_type_id");
                String facilityTypeName = rs.getString("facility_type_name");
                FacilityType facilityType = new FacilityType(facilityTypeId, facilityTypeName);

                String standardRoom = rs.getString("standard_room");
                String descriptionOtherConvenience = rs.getString("description_other_convenience");
                double poolArea = rs.getDouble("pool_area");
                int numberOfFloors = rs.getInt("number_of_floors");
                String facilityFree = rs.getString("facility_free");

                facilities.add(new Facility(id, name, area, cost, maxPeople, rentType, facilityType, standardRoom,
                        descriptionOtherConvenience, poolArea,numberOfFloors,facilityFree));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilities;
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


// id                               int
//  name                            varchar(45)
//  area                            int,
//  cost                            double
//  max_people                      int,
//  rent_type_id                    int,
//  facility_type_id                int,
//  standard_room                   varchar(45),
//  description_other_convenience   varchar(45),
//  pool_area                       double,
//  number_of_floors                int,
//  facility_free                   text,

//id
//name
//area
//cost
//max_people
//rent_type_id
//facility_type_id
//standard_room
//description_other_convenience
//pool_area
//number_of_floors
//facility_free