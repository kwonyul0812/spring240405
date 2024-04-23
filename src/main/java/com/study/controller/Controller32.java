package com.study.controller;


import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import com.study.mapper.Mapper02;
import com.study.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {

    private final Mapper03 mapper;
    private final Mapper02 mapper02;

    @RequestMapping("sub1")
    public void method1() {
        int rowCount = mapper.deleteOneCustomer();
        System.out.println(rowCount + "명 고객 삭제됨");
    }

    @RequestMapping("sub2")
    public void method2(Integer id) {
        int rowCount = mapper.deleteOneCustomerBYId(id);
        System.out.println(rowCount + "명 고객 삭제됨");
    }

    // todo :
    // /main32/sub3?eid=2
    // 2번 직원 삭제하는 메소드와 mapper에 메소드 작성하기
    @RequestMapping("sub3")
    public void method3(Integer eid) {
        int rowCount = mapper.deleteOneEmployeeById(eid);
        System.out.println(rowCount + "명 직원 삭제완료");
    }

    // name=흥민&contactName=캡틴&city=런던&country=한국&address=토트넘
    // /main32/sub4?name=흥민&contactName=캡틴&city=런던&country=한국&address=토트넘
    @GetMapping("sub4")
    public void method4(MyBean254Customer customer) {
        mapper.insertCustomer(customer);
    }


    @GetMapping("sub5")
    public void method5() {
    }

    @PostMapping("sub5")
    public String method5(MyBean258Employee employee) {
        mapper.insertEmployee(employee);

        return "redirect:/main32/sub5";
    }

    @GetMapping("sub6")
    public void method6(@RequestParam(value = "id", required = false) Integer eid, Model model) {
        if (eid != null) {
            MyBean258Employee e = mapper02.selectOneEmployee2(eid);
            model.addAttribute("employee", e);
        }
    }

    @PostMapping("sub6/update")
    public String method7(MyBean258Employee employee, RedirectAttributes rttr) {
        int i = mapper.updateEmployee(employee);

        if (i > 0) {
            rttr.addFlashAttribute("message", i + "명 직원이 수정 되었습니다.");
        } else {
            rttr.addFlashAttribute("message", "입력되지 않았습니다.");
        }

        rttr.addAttribute("id", employee.getId());
        return "redirect:/main32/sub6";
    }

    // todo :고객 조회 후 수정
    @GetMapping("sub7")
    public void method8(Integer id, Model model) {
        if (id != null) {
            MyBean254Customer customer = mapper02.selectOneCustomer4(id);
            model.addAttribute("customer", customer);
        }
    }

    @PostMapping("sub7/update")
    public String method9(MyBean254Customer customer, RedirectAttributes rttr) {
        int rowCount = mapper.updateCustomer(customer);
        if (rowCount > 0) {
            rttr.addFlashAttribute("message", customer.getId() + "번 고객정보 수정완료.");
        } else {
            rttr.addFlashAttribute("message", "수정 실패");
        }

        rttr.addAttribute("id", customer.getId());
        return "redirect:/main32/sub7";
    }
}
