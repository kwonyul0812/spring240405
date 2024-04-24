package com.study.controller;

import com.study.domain.MyBean331;
import com.study.domain.MyBean332;
import com.study.domain.MyBean333;
import com.study.mapper.Mapper04;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("main33")
@RequiredArgsConstructor
public class Controller33 {

    private final Mapper04 mapper;

    @GetMapping("sub1")
    public void method1() {
        List<MyBean331> obj = mapper.select1();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub2")
    public void method2() {
        List<MyBean332> obj = mapper.select2();
        obj.forEach(System.out::println);
    }

    // todo: 세번째 메소드 작성
    //    mapper.select3() 호출한 결과
    //    List<MyBean333> 타입으로 받아서 출력
    //    SELECT * FROM my_table10
    @GetMapping("sub3")
    public void method3() {
        List<MyBean333> obj = mapper.select3();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub4")
    public void method4() {
        mapper.insert1("hello world", "54321", "876.54", "2024-01-01", "2024-02-02 14:14:14");

    }

    @GetMapping("sub5")
    public void method5() {
        String strVal = "hello mybatis";
        Integer intVal = 7890;
        Double doubleVal = 3.14;
        LocalDate dateVal = LocalDate.parse("1988-01-08");
        LocalDateTime dateTimeVal = LocalDateTime.parse("1977-07-07T12:14:14");
        mapper.insert2(strVal, intVal, doubleVal, dateVal, dateTimeVal);
    }

    // todo : 6번째 메소드 만들어서
    // my_table10 에 레코드 추가하기

    @GetMapping("sub6")
    public void method6() {
        String title = "보고 따라하는 C언어";
        String name = "김강찬";
        Integer age = 47;
        Double price = 99.98;
        LocalDate published = LocalDate.parse("2024-04-24");
        LocalDateTime inserted = LocalDateTime.parse("2024-04-24T14:28:30");
        mapper.insert3(title, name, age, price, published, inserted);
    }

    @GetMapping("sub7")
    public void method7() {
        MyBean332 obj = new MyBean332();
        obj.setStringCol("hello 🙌");
        obj.setIntCol(7890);
        obj.setDateCol(LocalDate.parse("2020-09-09"));
        obj.setDateTimeCol(LocalDateTime.parse("2020-09-09T09:09:09"));
        obj.setDecCol(99.78);

        mapper.insert4(obj);
    }

    // todo : 8번째 메소드 작성
    // my_table10 에 레코드 추가하기
    // MyBean333 활용
    @GetMapping("sub8")
    public void method8() {
        mapper.insert5(
                new MyBean333(
                        "내맘대로 짓는책",
                        "권장군",
                        26,
                        132.55,
                        LocalDate.parse("2024-04-25"),
                        LocalDateTime.parse("2024-04-25T16:30:25")
                )
        );
    }

    @GetMapping("sub9")
    public void select9(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
    }

    @PostMapping("sub9")
    public String insert9(String str, String intValue, String realValue, String dateValue, String dateTimeValue) {
        mapper.insert1(str, intValue, realValue, dateValue, dateTimeValue);

        return "redirect:/main33/sub9";
    }

    @GetMapping("sub10")
    public String select10(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);

        return "/main33/sub9";
    }

    @PostMapping("sub10")
    public String insert10(String str,
                           Integer intValue,
                           Double realValue,
                           LocalDate dateValue,
                           LocalDateTime dateTimeValue) {
        mapper.insert2(str, intValue, realValue, dateValue, dateTimeValue);
        return "redirect:/main33/sub10";
    }

    @GetMapping("sub11")
    public String select11(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);

        return "/main33/sub11";
    }

    @PostMapping("sub11")
    public String insert11(MyBean332 data) {
//        System.out.println("data = " + data);
        mapper.insert4(data);
        return "redirect:/main33/sub11";
    }


    // todo : 아래 두 개의 메소드를 잘 수정해서
    // my_table10 레코드 조회 및 입력 로직 완성
    @GetMapping("sub12")
    public String select12(Model model) {
        List<MyBean333> list = mapper.select3();
        model.addAttribute("datas", list);

        return "/main33/sub12";
    }

    @PostMapping("sub12")
    public String insert12(MyBean333 obj) {
        mapper.insert5(obj);

        return "redirect:/main33/sub12";
    }
}
