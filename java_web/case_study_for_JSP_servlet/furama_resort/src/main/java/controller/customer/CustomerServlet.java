package controller.customer;

import model.customer.Customer;
import model.customer.CustomerType;
import service.customerService.ICustomerService;
import service.customerService.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/Customers")
public class CustomerServlet extends HttpServlet {
    private final ICustomerService customerService = new CustomerService();

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
                listCustomer(request, response);
        }
    }

    private void showFormEditCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customers = customerService.finCustomer(id);
        request.setAttribute("customers",customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/customerEdit.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormCreateCustomer(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/customerCreate.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customers = this.customerService.finAllCustomer();
        request.setAttribute("customers", customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/customer.jsp");
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
        int id = Integer.parseInt(request.getParameter("deleteId"));
        List<Customer> customers = this.customerService.finAllCustomer();
        request.setAttribute("customers", customers);
        RequestDispatcher dispatcher;
        if (this.customerService.deleteCustomer(id)) {
            request.setAttribute("message", "delete successfully");
            dispatcher = request.getRequestDispatcher("view/customer/customer.jsp");
        } else {
            request.setAttribute("message", "delete failed");
            dispatcher = request.getRequestDispatcher("view/customer/customer.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        java.sql.Date birthday = Date.valueOf(request.getParameter("birthday"));
        String genderString = request.getParameter("gender");
        boolean gender;
        if (genderString.equals("Nam")) {
            gender = true;
        } else {
            gender = false;
        }
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String customerTypeString = request.getParameter("customerType");
        CustomerType customerTypes = null;
        List<CustomerType> customerTypeList = this.customerService.finAllCustomerType();
        for (CustomerType item : customerTypeList) {
            if (customerTypeString.equals(item.getNameType())) {
                int idType = item.getId();
                String customerType = item.getNameType();
                customerTypes = new CustomerType(idType, customerType);
            }
        }
        String address = request.getParameter("address");
        Customer customer = new Customer(id,name, birthday, gender, idCard, phone, email, customerTypes, address);
        RequestDispatcher dispatcher;
        if (this.customerService.updateCustomer(customer)) {
            request.setAttribute("message", "edit successfully");
            dispatcher = request.getRequestDispatcher("view/customer/customerEdit.jsp");
        } else {
            request.setAttribute("message", "edit failed");
            dispatcher = request.getRequestDispatcher("view/customer/customerEdit.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void CreateCustomer(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        java.sql.Date birthday = Date.valueOf(request.getParameter("birthday"));
        String genderString = request.getParameter("gender");
        boolean gender;
        if (genderString.equals("Nam")) {
            gender = true;
        } else {
            gender = false;
        }
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String customerTypeString = request.getParameter("customerType");
        CustomerType customerTypes = null;
        List<CustomerType> customerTypeList = this.customerService.finAllCustomerType();
        for (CustomerType item : customerTypeList) {
            if (customerTypeString.equals(item.getNameType())) {
                int id = item.getId();
                String customerType = item.getNameType();
                customerTypes = new CustomerType(id, customerType);
            }
        }
        String address = request.getParameter("address");
        Customer customer = new Customer(name, birthday, gender, idCard, phone, email, customerTypes, address);
        RequestDispatcher dispatcher;
        if (this.customerService.createCustomer(customer)) {
            request.setAttribute("message", "Successfully added new");
            dispatcher = request.getRequestDispatcher("view/customer/customerCreate.jsp");
        } else {
            request.setAttribute("message", "new add failed");
            dispatcher = request.getRequestDispatcher("view/customer/customerCreate.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
