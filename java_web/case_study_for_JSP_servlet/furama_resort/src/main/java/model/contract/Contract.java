package model.contract;

import java.sql.Date;

public class Contract {
    private int id;
    private String name;
    private String customerName;
    private java.sql.Date start_date;
    private java.sql.Date end_date;
    private double deposit;
    private double total_money;

    public Contract() {
    }

    public Contract(int id, String name, String customerName, Date start_date, Date end_date, double deposit, double total_money) {
        this.id = id;
        this.name = name;
        this.customerName = customerName;
        this.start_date = start_date;
        this.end_date = end_date;
        this.deposit = deposit;
        this.total_money = total_money;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public double getDeposit() {
        return deposit;
    }

    public void setDeposit(double deposit) {
        this.deposit = deposit;
    }

    public double getTotal_money() {
        return total_money;
    }

    public void setTotal_money(double total_money) {
        this.total_money = total_money;
    }
}
//hd.id, dv.name, kh.name, hd.start_date, hd.end_date, hd.deposit,
//ifnull(dv.cost, 0) + sum(ifnull(dvdk.cost, 0) * ifnull(hdct.quantity, 0)) as total_money