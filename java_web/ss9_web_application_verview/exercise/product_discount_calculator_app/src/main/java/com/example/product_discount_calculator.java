package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "product_discount_calculator", value = "/display-discount")
public class product_discount_calculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription = request.getParameter("product_description");
        float listPrice = Float.parseFloat(request.getParameter("list_price"));
        float discountPercent = Float.parseFloat(request.getParameter("discount_percent"));

        float discountAmount = listPrice * discountPercent *0.01f;
        float discountPrice = listPrice - discountAmount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>" + productDescription + "</h1>");
        writer.println("<h1>" + listPrice + "</h1>");
        writer.println("<h1>" + discountPercent + "</h1>");
        writer.println("<h1>" + discountAmount + "</h1>");
        writer.println("<h1>" + discountPrice + "</h1>");
        writer.println("</html>");
    }
}
