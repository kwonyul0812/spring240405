package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyBean256Product {
    private int productId;
    private String productName;
    private int supplierID;
    private int categoryID;
    private String unit;
    private double price;
}
