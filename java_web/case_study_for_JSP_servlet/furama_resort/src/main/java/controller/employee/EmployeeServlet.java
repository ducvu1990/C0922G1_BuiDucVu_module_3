package controller.employee;


import model.employee.Employee;
import service.employeeService.IEmployeeService;
import service.employeeService.impl.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", value = "/Employees")
public class EmployeeServlet extends HttpServlet {
    private final IEmployeeService employeeService = new EmployeeService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormCreateCustomer(request, response);
                break;
            case "edit":
                showFormEditCustomer(request,response);
                break;
            default:
                listEmployee(request, response);
        }
    }
    private void showFormEditCustomer(HttpServletRequest request, HttpServletResponse response) {
        
    }

    private void showFormCreateCustomer(HttpServletRequest request, HttpServletResponse response) {
       
    }

    private void listEmployee(HttpServletRequest request, HttpServletResponse response) {
        List<Employee> employees = this.employeeService.finAllEmployee();
        request.setAttribute("employees", employees);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/employee.jsp");
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
                CreateCustomer(request, response);
                break;
            case "edit":
                editCustomer(request,response);
                break;
            case "delete":
                deleteCustomer(request,response);
                break;
        }
    }
    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        
    }

    private void CreateCustomer(HttpServletRequest request, HttpServletResponse response) {
        
    }
}
