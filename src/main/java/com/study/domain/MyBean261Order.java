package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyBean261Order {
    private int id;
    private int customerId;
    private int employeeId;
    private String date;
    private int shipperId;
}
