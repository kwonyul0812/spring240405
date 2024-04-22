package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
@RequestMapping("main29")
public class Controller29 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(Integer id, Model model) throws Exception {
        if (id != null) {
            String sql = """
                    SELECT *
                    FROM Customers
                    WHERE CustomerID = ?
                    """;
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            try (conn; pstmt; rs) {
                if (rs.next()) {
                    MyBean254Customer c = new MyBean254Customer();
                    c.setId(rs.getInt(1));
                    c.setName(rs.getString(2));
                    c.setContactName(rs.getString(3));
                    c.setAddress(rs.getString(4));
                    c.setCity(rs.getString(5));
                    c.setPostalCode(rs.getString(6));
                    c.setCountry(rs.getString(7));

                    model.addAttribute("customer", c);
                }
            }
        }
    }

    @PostMapping("sub1/delete")
    public String method2(Integer id, RedirectAttributes rttr) throws SQLException {
        String sql = """
                DELETE FROM Customers
                WHERE CustomerId = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, id);
        int rowCount = pstmt.executeUpdate();
        try (conn; pstmt) {
            if (rowCount > 0) {
                rttr.addFlashAttribute("message", id + "번 고객이 삭제 되었습니다.");
            } else {
                rttr.addFlashAttribute("message", "삭제되지 않았습니다.");
            }
        }
        return "redirect:/main29/sub1";
    }


    // 직원 지우기
    @GetMapping("sub2")
    public void method3(Integer id, Model model) throws SQLException {
        if (id != null) {
            String sql = """
                    SELECT * 
                    FROM Employees
                    WHERE EmployeeID = ?
                    """;

            // db연결 및 쿼리 실행
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            try (conn; pstmt; rs) {
                if (rs.next()) {
                    MyBean258Employee employee = new MyBean258Employee();

                    employee.setId(rs.getInt(1));
                    employee.setLastName(rs.getString(2));
                    employee.setFirstName(rs.getString(3));
                    employee.setBirthDate(rs.getString(4));
                    employee.setPhoto(rs.getString(5));
                    employee.setNotes(rs.getString(6));

                    model.addAttribute("employee", employee);
                }
            }
        }
    }

    @PostMapping("sub2/delete")
    public String method4(Integer id, RedirectAttributes rttr) throws SQLException {
        String sql = """
                DELETE FROM Employees
                WHERE EmployeeID = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, id);

        int rowCount = pstmt.executeUpdate();

        if (rowCount > 0) {
            rttr.addFlashAttribute("message", id + " 번 직원의 정보 삭제완료");
        } else {
            rttr.addFlashAttribute("message", "삭제 되지 않았습니다.");
        }

        return "redirect:/main29/sub2";
    }
}
