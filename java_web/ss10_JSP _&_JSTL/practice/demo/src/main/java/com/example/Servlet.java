package com.example;

import model.demoa;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Servlet", value = "/calculator1")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        char operator = request.getParameter("browser").charAt(0);
        float firstOperand = Float.parseFloat(request.getParameter("firstOperand"));
        float secondOperand = Float.parseFloat(request.getParameter("secondOperand"));


        String aa;


        try {
            float result = demoa.calculate(firstOperand,secondOperand,operator);
            aa = String.valueOf(firstOperand) + " " + String.valueOf(operator) + " " + String.valueOf(secondOperand) +
                    " = " + String.valueOf(result);
            request.setAttribute("stringList",aa);
            request.getRequestDispatcher("list.jsp").forward(request,response);
        }catch (Exception e){
            aa = e.getMessage();
            request.setAttribute("stringList",aa);
            request.getRequestDispatcher("list.jsp").forward(request,response);
        }
    }
}
