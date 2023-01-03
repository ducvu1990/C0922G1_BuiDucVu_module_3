package com.example.calculator_app;

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

        String resultString;


        try {
            float result = Calculator.calculate(firstOperand,secondOperand,operator);
            resultString = String.valueOf(firstOperand) + " " + String.valueOf(operator) + " " + String.valueOf(secondOperand) +
                    " = " + String.valueOf(result);
            request.setAttribute("resultString",resultString);
            request.getRequestDispatcher("result.jsp").forward(request,response);
        }catch (Exception e){
            resultString = e.getMessage();
            request.setAttribute("resultString",resultString);
            request.getRequestDispatcher("result.jsp").forward(request,response);
        }
    }
}
