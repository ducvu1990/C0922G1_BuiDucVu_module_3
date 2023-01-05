package controller;

import model.User;
import service.IUserService;
import service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/Users")
public class UserServlet extends HttpServlet {
    private final IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                showCreateFormUser(request,response);
                break;
            case "edit":
                showEditFormUser(request,response);
                break;
            case "delete":
                showDeleteFormUsetr(request,response);
                break;
            default:
                listUser(request,response);
                break;
        }
    }

    private void searchCountryName(HttpServletRequest request, HttpServletResponse response) {

        String countryName = request.getParameter("country");
        List<User> users = this.userService.finAllCountryName(countryName);
        RequestDispatcher dispatcher;
        if (users.size() == 0){
            request.setAttribute("message", "No data found for this country");
            dispatcher = request.getRequestDispatcher("view/countryName.jsp");
        }else {
            request.setAttribute("users", users);
            dispatcher = request.getRequestDispatcher("view/countryName.jsp");
        }
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeleteFormUsetr(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        User users = this.userService.finUser(id);
        request.setAttribute("users", users);
        request.setAttribute("message","are you sure you want to delete this ");
        RequestDispatcher dispatcher =request.getRequestDispatcher("view/delete.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditFormUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        User users = this.userService.finUser(id);
        request.setAttribute("users", users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/edit.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateFormUser(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/create.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) {
        List<User> users = userService.finAllUser();
        request.setAttribute("users",users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                createUser(request,response);
                break;
            case "edit":
                editUser(request,response);
                break;
            case "delete":
                deleteUser(request,response);
                break;
            case "searchCountry":
                searchCountryName(request,response);
                break;
            default:
                sortUser(request,response);
        }
    }

    private void sortUser(HttpServletRequest request, HttpServletResponse response) {
        List<User> users = userService.finAllOrderUser();
        request.setAttribute("users",users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher dispatcher;
        if (this.userService.deleteUser(id)){
            request.setAttribute("message","delete successfully");
            dispatcher = request.getRequestDispatcher("view/delete.jsp");
        }else {
            request.setAttribute("message","delete failed");
            dispatcher = request.getRequestDispatcher("view/delete.jsp");
        }
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name =request.getParameter("name");
        String email =request.getParameter("email");
        String country =request.getParameter("country");
        User user = new User(id,name,email,country);
        RequestDispatcher dispatcher;
        if (this.userService.updateUser(user)){
            request.setAttribute("message","Update successful");
            dispatcher = request.getRequestDispatcher("view/edit.jsp");
        }else {
            request.setAttribute("message","Update failed");
            dispatcher = request.getRequestDispatcher("view/edit.jsp");
        }
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createUser(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name,email,country);
        RequestDispatcher dispatcher;
        if (this.userService.saveUser(user)){
            request.setAttribute("message", "New User was created");
            dispatcher = request.getRequestDispatcher("view/create.jsp");
        }else {
            request.setAttribute("message", "New user not created yet");
            dispatcher = request.getRequestDispatcher("view/create.jsp");
        }
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
