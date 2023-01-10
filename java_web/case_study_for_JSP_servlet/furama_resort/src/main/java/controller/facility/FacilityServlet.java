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
                showFormCreateFacility(request, response);
                break;
            case "edit":
                showFormEditFacility(request,response);
                break;
            default:
                listFacility(request, response);
        }
    }
    private void showFormEditFacility(HttpServletRequest request, HttpServletResponse response) {

    }

    private void showFormCreateFacility(HttpServletRequest request, HttpServletResponse response) {

    }

    private void listFacility(HttpServletRequest request, HttpServletResponse response) {
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
                CreateFacility(request, response);
                break;
            case "edit":
                editFacility(request,response);
                break;
            case "delete":
                deleteFacility(request,response);
                break;
        }
    }
    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) {

    }

    private void editFacility(HttpServletRequest request, HttpServletResponse response) {

    }

    private void CreateFacility(HttpServletRequest request, HttpServletResponse response) {

    }
}
