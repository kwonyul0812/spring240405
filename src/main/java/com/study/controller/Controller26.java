package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Product;
import com.study.domain.MyBean261Order;
import com.study.domain.MyBean263Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
@RequestMapping("main26")
public class Controller26 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public String sub1(String start, String end, Model model) throws Exception {
        // todo : 메소드 작성하세요.
        //  between 활용

        String sql = """
                SELECT *
                FROM Orders
                WHERE OrderDate Between ? AND ?
                """;

        PreparedStatement pstmt = dataSource.getConnection().prepareStatement(sql);
        pstmt.setString(1, start);
        pstmt.setString(2, end);
        ResultSet rs = pstmt.executeQuery();

        var list = new ArrayList<MyBean261Order>();

        try (pstmt; rs) {
            while (rs.next()) {
                MyBean261Order orders = new MyBean261Order();

                orders.setId(rs.getInt(1));
                orders.setCustomerId(rs.getInt(2));
                orders.setEmployeeId(rs.getInt(3));
                orders.setDate(rs.getString(4));
                orders.setShipperId(rs.getInt(5));

                list.add(orders);
            }
        }

        model.addAttribute("orderList", list);
        model.addAttribute("prevStart", start);
        model.addAttribute("prevEnd", end);

        return "main26/sub10OrderList";
    }

    @GetMapping("sub2")
    public String method2(String[] country, Model model) throws Exception {
        Connection conn = dataSource.getConnection();

        if (country != null && country.length > 0) {
            String questionMarks = "";
            for (int i = 0; i < country.length; i++) {
                questionMarks = questionMarks + "?";
                if (i != country.length - 1) {
                    questionMarks = questionMarks + ",";
                }
            }
            String customerSql = STR."""
                SELECT *
                FROM Customers
                WHERE Country IN (\{questionMarks})
                """;

            var customerList = new ArrayList<MyBean254Customer>();
            PreparedStatement pstmt = conn.prepareStatement(customerSql);
            for (int i = 0; i < country.length; i++) {
                pstmt.setString((i + 1), country[0]);
            }
            ResultSet resultSet = pstmt.executeQuery();
            try (pstmt; resultSet) {

                while (resultSet.next()) {
                    MyBean254Customer data = new MyBean254Customer();
                    data.setId(resultSet.getInt(1));
                    data.setName(resultSet.getString(2));
                    data.setContactName(resultSet.getString(3));
                    data.setAddress(resultSet.getString(4));
                    data.setCity(resultSet.getString(5));
                    data.setPostalCode(resultSet.getString(6));
                    data.setCountry(resultSet.getString(7));
                    customerList.add(data);
                }
                model.addAttribute("customerList", customerList);
            }
        }

        String sql = """
                SELECT DISTINCT Country
                FROM Customers
                """;
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        var countryList = new ArrayList<String>();
        try (stmt; rs; conn) {
            while (rs.next()) {
                countryList.add(rs.getString(1));
            }
            model.addAttribute("countryList", countryList);
        }

        return "main25/sub4CustomerList";
    }

    // todo : 상품 조회 결과가 카테고리, 가격순으로 조회 되도록 코드 수정
    @GetMapping("sub3")
    public String method3(String[] category, Model model) throws Exception {
        Connection conn = dataSource.getConnection();

        String sql = " SELECT * FROM Categories";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        var categories = new ArrayList<MyBean263Category>();
        try (stmt; rs) {
            while (rs.next()) {
                MyBean263Category categoryBean = new MyBean263Category();

                categoryBean.setId(rs.getInt(1));
                categoryBean.setName(rs.getString(2));

                categories.add(categoryBean);
            }
        }

        model.addAttribute("categoryList", categories);


        if (category != null && category.length > 0) {
            String questionMarks = "";

            for (int i = 0; i < category.length; i++) {
                questionMarks = questionMarks + "?";
                if (i != category.length - 1) {
                    questionMarks += ",";
                }
            }

            String selectSql = STR."""
                SELECT *
                FROM Products
                WHERE CategoryID IN (\{questionMarks})
                ORDER BY CategoryID, Price
                """;

            PreparedStatement pstmt = conn.prepareStatement(selectSql);

            for (int i = 0; i < category.length; i++) {
                pstmt.setString(i + 1, category[i]);
            }
            ResultSet resultSet = pstmt.executeQuery();

            var productList = new ArrayList<MyBean256Product>();
            try (conn; pstmt; resultSet) {
                while (resultSet.next()) {
                    MyBean256Product product = new MyBean256Product();

                    product.setProductId(resultSet.getInt(1));
                    product.setProductName(resultSet.getString(2));
                    product.setSupplierID(resultSet.getInt(3));
                    product.setCategoryID(resultSet.getInt(4));
                    product.setUnit(resultSet.getString(5));
                    product.setPrice(resultSet.getDouble(6));

                    productList.add(product);
                }
            }
            model.addAttribute("prevCategorySelect", category);
            model.addAttribute("productList", productList);
        }
        return "main25/sub6ProductList";
    }
}
