package com.study.service;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import com.study.mapper.Mapper07;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class Service03 {
    private final Mapper07 mapper;

    public void insertData() {
        MyBean258Employee e = new MyBean258Employee();
        e.setLastName("박");
        e.setFirstName("지성");
        mapper.insert(e);

        System.out.println(e.getId()); // 0
    }

    public void insertData2() {
        MyBean254Customer c = new MyBean254Customer();
        c.setName("캡틴");
        c.setContactName("아메리카");
        mapper.insert2(c);
        // todo : 새 고객데이터 입력하고
        // 다음 출력 코드에서 새 고객의 키가 출력되도록
        // 코드 작성

        System.out.println(c.getId());
    }
}
