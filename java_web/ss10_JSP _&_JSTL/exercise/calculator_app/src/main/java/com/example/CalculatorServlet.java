package com.example;

import model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        char operator = request.getParameter("browser").charAt(0);
        float firstOperand = Float.parseFloat(request.getParameter("firstOperand"));
        float secondOperand = Float.parseFloat(request.getParameter("secondOperand"));

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Resul: </h1>");
        try {
            float result = Calculator.calculate(firstOperand,secondOperand,operator);
            writer.println(firstOperand + " " + " " + operator + " " +secondOperand + " = " + result);
        }catch (Exception e){
            writer.println("Error" + e.getMessage());
        }
        writer.println("</html>");
    }
}
