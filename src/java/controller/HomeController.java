/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.MyBeanDAO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mybean.MyBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Nguyen Tan Luan
 */
@Controller
@Service
public class HomeController {

    @Autowired
    MyBeanDAO myBeanDao;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    @ResponseBody
    public MyBean home(HttpServletRequest request,
            HttpServletResponse response,
            ModelMap model) {
        String mlang = request.getParameter("lang");
        MyBean mybean = myBeanDao.getMyPropertiesFile(mlang);
        if (mybean != null) {

            model.addAttribute("mybean", mybean);
        }
        //return "redirect:index?lang="+mlang;
        return mybean;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String defaultHome(HttpServletRequest request,
            HttpServletResponse response,
            ModelMap model) {
        MyBean mybean = myBeanDao.getMyPropertiesFile("message_en");
        if (mybean != null) {
            model.addAttribute("mybean", mybean);
        }
        //return "redirect:index?lang="+mlang;
        return "index";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String product(HttpServletRequest request,
            HttpServletResponse response,
            ModelMap model) {
        //return "redirect:index?lang="+mlang;
        return "product";
    }

}
