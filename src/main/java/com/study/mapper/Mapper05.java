package com.study.mapper;

import lombok.Data;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper05 {

    @Data
    static class CustomerPaid {
        private Integer customerId;
        private String customerName;
        private Double paid;
    }

    @Data
    static class EmployeeIncome {
        private Integer employeeId;
        private String lastName;
        private String firstName;
        private Double income;
    }

    @Select("""
            SELECT e.EmployeeId,
                   e.LastName,
                   e.FirstName,
                   SUM(od.Quantity * p.Price) AS income
            FROM Orders o JOIN Employees e ON o.EmployeeId = e.EmployeeId
                          JOIN OrderDetails od ON o.OrderId = od.OrderId
                          JOIN Products p ON od.ProductId = p.ProductId
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
            GROUP BY e.EmployeeId
            ORDER BY income DESC
            """)
    List<EmployeeIncome> selectIncomeList(String from, String to);


    @Select("""
            SELECT c.CustomerId,
                   c.CustomerName,
                   SUM(p.Price * od.Quantity) AS paid
            FROM Customers c JOIN Orders o ON c.CustomerId = o.CustomerId
                             JOIN OrderDetails od ON o.OrderId = od.OrderId
                             JOIN Products p ON od.ProductId = p.ProductId
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
            GROUP BY c.CustomerId
            ORDER BY paid DESC;
            """)
    List<CustomerPaid> selectPaidList(String from, String to);


}
