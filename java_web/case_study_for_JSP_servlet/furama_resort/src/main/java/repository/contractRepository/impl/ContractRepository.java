package repository.contractRepository.impl;

import model.contract.Contract;
import repository.BaseRepository.BaseRepository;
import repository.contractRepository.IContracRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContractRepository implements IContracRepository {
    private final String SELECT_ALL_CONTRAC = "SELECT hd.id, dv.name, kh.name as customer_name, hd.start_date, hd.end_date, hd.deposit, " +
            "ifnull(dv.cost, 0) + sum(ifnull(dvdk.cost, 0) * ifnull(hdct.quantity, 0)) as total_money from customer kh " +
            "join contract hd on kh.id = hd.customer_id left  join facility dv on hd.facility_id = dv.id left " +
            "join contract_detail hdct on hd.id = hdct.contract_id left join attach_facility dvdk on " +
            "hdct.attach_facilty_id = dvdk.id group by hd.id, kh.id";

    @Override
    public List<Contract> finAllContract() {
        List<Contract> contracts = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDB();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement(SELECT_ALL_CONTRAC);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {

                 int id = rs.getInt("id");
                 String name = rs.getString("name");
                 String customerName = rs.getString("customer_name");
                 java.sql.Date start_date = rs.getDate("start_date");
                 java.sql.Date end_date = rs.getDate("end_date");
                 double deposit = rs.getDouble("deposit");
                 double total_money = rs.getDouble("total_money");

                contracts.add(new Contract(id,name,customerName,start_date,end_date,deposit,total_money));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return contracts;
    }

    @Override
    public boolean createContract(Contract contract) {
        return false;
    }

    @Override
    public Contract finContract(int id) {
        return null;
    }

    @Override
    public boolean updateContract(Contract contract) {
        return false;
    }

    @Override
    public boolean deleteContract(int id) {
        return false;
    }
}
