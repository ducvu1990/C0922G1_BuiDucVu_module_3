package controller.contract;

import model.contract.Contract;
import model.employee.Employee;
import service.contractService.IContractService;
import service.contractService.impl.ContractService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ContractServlet", value = "/Contracts")
public class ContractServlet extends HttpServlet {
    private final IContractService contractService = new ContractService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormCreateContract(request, response);
                break;
            case "edit":
                showFormEditContract(request,response);
                break;
            default:
                listContract(request, response);
        }
    }
    private void showFormEditContract(HttpServletRequest request, HttpServletResponse response) {

    }

    private void showFormCreateContract(HttpServletRequest request, HttpServletResponse response) {

    }

    private void listContract(HttpServletRequest request, HttpServletResponse response) {
        List<Contract> contracts = this.contractService.finAllContract();
        request.setAttribute("contracts", contracts);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/contract/contract.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                CreateContract(request, response);
                break;
            case "edit":
                editContract(request,response);
                break;
            case "delete":
                deleteContract(request,response);
                break;
        }
    }
    private void deleteContract(HttpServletRequest request, HttpServletResponse response) {

    }

    private void editContract(HttpServletRequest request, HttpServletResponse response) {

    }

    private void CreateContract(HttpServletRequest request, HttpServletResponse response) {

    }
}
