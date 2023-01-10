package service.contractService.impl;

import model.contract.Contract;
import repository.contractRepository.IContracRepository;
import repository.contractRepository.impl.ContractRepository;
import service.contractService.IContractService;

import java.util.List;

public class ContractService implements IContractService {
    private final IContracRepository contracRepository = new ContractRepository();
    @Override
    public List<Contract> finAllContract() {
        return contracRepository.finAllContract();
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
