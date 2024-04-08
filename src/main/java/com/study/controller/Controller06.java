package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;

@Controller
@RequestMapping("main6")
public class Controller06 {

    @RequestMapping("sub1")
    public void method1() {
        System.out.println("Controller06.method1");
    }


    // /main6/sub2/
    @RequestMapping("sub2") // required = false로 설정하면 값 없어도 됨, true의 경우 있어야함
    public void method2(@RequestParam(value = "abc", required = false) String param1,
                        @RequestParam(value = "qwe", required = false) Integer param2) {
        System.out.println("Controller06.method2");
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
    }

    // /main6/sub3?name=kim&age=44
    // /main6/sub3?name=lee
    // /main6/sub3??age=55

    @RequestMapping("sub3")
    public void method3(@RequestParam(value = "name", required = false) String param1,
                        @RequestParam(value = "age", required = false) String param2) {
        System.out.println("Controller06.method3");
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
    }

    // /main6/sub4?name=손흥민&age=33
    // /main6/sub4?name=이강인
    // /main6/sub4?age=55
    @RequestMapping("sub4") // @RequestParam의 파라미터와 메소드 파라미터의 이름이 같다면 @RequestParam의 파라미터 생략 가능
    public void method4(@RequestParam(required = false) String name,
                        @RequestParam(required = false) Integer age) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }


    // /main6/sub5?address=shinchon&city=seoul
    // /main6/sub5?city=busan
    // /main6/sub5?address=강남
    @RequestMapping("sub5")
    public void method5(@RequestParam(required = false) String address,
                        @RequestParam(required = false) String city) {
        System.out.println("Controller06.method5");
        System.out.println("address = " + address);
        System.out.println("city = " + city);
    }

    // /main6/sub5?address=shinchon&city=seoul
    // /main6/sub5?city=busan
    // /main6/sub5?address=강남
    @RequestMapping("sub6")
    public void method6(String address, // required 는 false, @RequestParam 생략됨
                        String city) { // 요청정보의 address 값은 address 변수에 저장
        System.out.println("address = " + address);
        System.out.println("city = " + city);
    }

    // 메소드 아규먼트 타입이 기본타입(wrapper포함), String(의 배열) 이면
    // @RequestParam으로 간주됨
    @RequestMapping("sub7")
    public void method7(String name, Integer age) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }

    // /main6/sub8?name=흥민&address=런던&address=서울
    @RequestMapping("sub8")
    public void method8(String name, String[] address) {
        System.out.println("name = " + name);
        System.out.println("address = " + Arrays.toString(address));
    }

    // /main6/sub9?age=33
    // /main6/sub9?age=33&age=55
    // /main6/sub9?city=서울
    // /main6/sub9?city=서울&city=부산
    @RequestMapping("sub9")
    public void method9(Integer[] age, String[] city) {
        System.out.println("age = " + Arrays.toString(age));
        System.out.println("city = " + Arrays.toString(city));
    }
}
