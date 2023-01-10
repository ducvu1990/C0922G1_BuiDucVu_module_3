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
                showFormCreateEmployee(request, response);
                break;
            case "edit":
                showFormEditEmployee(request,response);
                break;
            default:
                listEmployee(request, response);
        }
    }
    private void showFormEditEmployee(HttpServletRequest request, HttpServletResponse response) {
        
    }

    private void showFormCreateEmployee(HttpServletRequest request, HttpServletResponse response) {
       
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
                CreateEmployee(request, response);
                break;
            case "edit":
                editEmployee(request,response);
                break;
            case "delete":
                deleteEmployee(request,response);
                break;
        }
    }
    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
        
    }

    private void editEmployee(HttpServletRequest request, HttpServletResponse response) {
        
    }

    private void CreateEmployee(HttpServletRequest request, HttpServletResponse response) {
        
    }
}
