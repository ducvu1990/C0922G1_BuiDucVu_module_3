package com.example;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();
    static {
        customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20","Hà Nội",
                "https://smilemedia.vn/wp-content/uploads/2022/09/cach-chup-hinh-the-dep.jpeg" ));
        customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21","Bắc Giang",
                "https://toplist.vn/images/800px/nice-studio-915688.jpg" ));
        customerList.add(new Customer("Nguyễn Thái Hòa", "1983-08-22","Nam Định",
                "https://sohanews.sohacdn.com/thumb_w/660/160588918557773824/2020/6/17/img0096-1592366363868430058761.jpeg" ));
        customerList.add(new Customer("Trần Đăng Khoa", "1983-08-17","Hà Tây",
                "https://image.kkday.com/v2/image/get/w_960%2Cc_fit%2Cq_55%2Ct_webp/s1.kkday.com/product_12804/20191225013959_Tj19Y/jpg" ));
        customerList.add(new Customer("Nguyễn Đình Thi", "1983-08-19","Hà Nội",
                "https://dichvuphotoshop.net/wp-content/uploads/2021/03/anh-the-dien-thoai.jpg" ));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
