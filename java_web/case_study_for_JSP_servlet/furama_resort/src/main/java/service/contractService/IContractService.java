package service.contractService;

import model.contract.Contract;

import java.util.List;

public interface IContractService {
    List<Contract> finAllContract();

    boolean createContract(Contract contract);
    Contract finContract(int id);
    boolean updateContract(Contract contract);
    boolean deleteContract(int id);
}
