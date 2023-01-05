package controller;

import model.User;
import service.IUserService;
import service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
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
                break;
            default:
                listUser(request,response);
                break;
        }
    }

    private void showEditFormUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        User users = this.userService.selectUser(id);
        if (users == null){
            request.setAttribute("message","id does not exist");
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/edit.jsp");
            try {
                dispatcher.forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else {
            request.setAttribute("users",users);
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/edit.jsp");
            try {
                dispatcher.forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
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
        List<User> users = userService.selectAllUser();
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
                CreateUser(request,response);
                break;
            case "edit":
                updateUser(request,response);
                break;
            case "delete":
                break;
            default:

                break;
        }
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(id,name,email,country);
        RequestDispatcher dispatcher;
        if (this.userService.updateUser(user)){
            request.setAttribute("message", "Update successful");
            dispatcher = request.getRequestDispatcher("view/edit.jsp");
        }else {
            request.setAttribute("message", "update failed");
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
    private void CreateUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User users = new User(id,name,email,country);
        RequestDispatcher dispatcher;
        if (this.userService.createtUser(users)){
            dispatcher = request.getRequestDispatcher("view/create.jsp");
            request.setAttribute("message","New User was created");

        }else {
            dispatcher = request.getRequestDispatcher("view/create.jsp");
            request.setAttribute("message","New user not created yet");
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
