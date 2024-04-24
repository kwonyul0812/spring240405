package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyBean333 {
    private String title;
    private String name;
    private Integer age;
    private Double price;
    private LocalDate published;
    private LocalDateTime inserted;
}
