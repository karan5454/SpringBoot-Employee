
package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class employeeController 
{
    @Autowired
    employeService se;
    
    @RequestMapping("/")
    public String one() {
        return "index";
    }
    
    @PostMapping("/next")
    public String getdata(@ModelAttribute("s1") employee s1) {
        se.getInfo(s1);
        return "redirect:/Welcome";
    }

    @RequestMapping("/Welcome")
    public String Welcome(ModelMap m) {
        List<employee> l1 = se.getallemployee();
        m.addAttribute("employeeList", l1);
        return "Welcome";
    }

    @RequestMapping("/del")
    public String delemp(@RequestParam("id") int id) {
        se.delemp(id);  // Corrected the method call
        return "redirect:/Welcome";
    }

    @RequestMapping("/editEmployee")
    public String editemp(@RequestParam("id") int id, ModelMap m)
    {
        employee e = se.getsinglemp(id);  // Fetch the employee by ID
        m.addAttribute("data",e);       // Add employee to the model
        return "editEmployee";           // Return the view name for the JSP file
    }


}

