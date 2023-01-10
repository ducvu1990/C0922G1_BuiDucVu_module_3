package model.facility;

public class RentType {
    private int id;
    private String rentTypeName;

    public RentType() {
    }

    public RentType(int id, String rentTypeName) {
        this.id = id;
        this.rentTypeName = rentTypeName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRentTypeName() {
        return rentTypeName;
    }

    public void setRentTypeName(String rentTypeName) {
        this.rentTypeName = rentTypeName;
    }
}
