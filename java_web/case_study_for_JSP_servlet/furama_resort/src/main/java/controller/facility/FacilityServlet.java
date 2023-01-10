package controller.facility;

import model.facility.Facility;
import service.facilityService.IFacilityService;
import service.facilityService.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FacilityServlet", value = "/Facilitys")
public class FacilityServlet extends HttpServlet {
    private final IFacilityService facilityService = new FacilityService();
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
        List<Facility> facilities = this.facilityService.finAllFacility();
        request.setAttribute("facilities", facilities);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/service/service.jsp");
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
