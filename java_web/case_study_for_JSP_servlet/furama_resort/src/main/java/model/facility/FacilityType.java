package model.facility;

public class FacilityType {
    private int id;
    private String facilityTypeName;

    public FacilityType() {
    }

    public FacilityType(int id, String facilityTypeName) {
        this.id = id;
        this.facilityTypeName = facilityTypeName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFacilityTypeName() {
        return facilityTypeName;
    }

    public void setFacilityTypeName(String facilityTypeName) {
        this.facilityTypeName = facilityTypeName;
    }
}
