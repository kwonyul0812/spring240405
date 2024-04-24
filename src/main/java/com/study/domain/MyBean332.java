package com.study.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@Getter
@Setter
public class MyBean332 {
    private String stringCol; // VARCHAR
    private Integer intCol; // INT
    private Double decCol; // DEC
    private LocalDate dateCol; // DATE
    private LocalDateTime dateTimeCol; // DATETIME
}
