package repository.contractRepository;

import model.contract.Contract;

import java.util.List;

public interface IContracRepository {
    List<Contract> finAllContract();

    boolean createContract(Contract contract);
    Contract finContract(int id);
    boolean updateContract(Contract contract);
    boolean deleteContract(int id);
}
