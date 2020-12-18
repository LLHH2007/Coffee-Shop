package fpt.edu.controller;

import fpt.edu.dao.InformationDAO;
import fpt.edu.dao.ItemDao;
import fpt.edu.dao.ItemTypeDao;
import fpt.edu.dao.UserDao;
import fpt.edu.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class HomeController {

    @RequestMapping(value = {"/home","/"})
    public ModelAndView home(){
        Information home = new InformationDAO().getHome();
        ModelAndView mav = new ModelAndView("home");
        mav.addObject("home",home);
        return mav;
    }

    @RequestMapping(value = "/contact")
    public ModelAndView contact(){
        return new ModelAndView("contact");
    }
    @RequestMapping(value = "/price")
    public ModelAndView price(){
        ArrayList<ItemType> itemTypes = new ItemTypeDao().getAll();
        ArrayList<Item> items = new ItemDao().getAll();
        Information menu = new InformationDAO().getMenu();
        ModelAndView mav = new ModelAndView("price");
        mav.addObject("menu",menu);
        mav.addObject("ItemType",itemTypes);
        mav.addObject("Items",items);
        return mav;
    }


    @RequestMapping(value = {"/login"})
    public ModelAndView login(){
        return new ModelAndView("login");
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam(value = "username", required = true) String username,
                              @RequestParam(value = "password", required = true) String password) {
        ModelAndView view = null;
        Users user = new UserDao().getUserByUserName(username);
        if (user.getPassword().equals(password)) {
            view = new ModelAndView("admin");
            ArrayList<ItemType> itemTypes= new ItemTypeDao().getAll();
            view.addObject("itemTypes",itemTypes);
        } else {
            view = new ModelAndView("login");
            view.addObject("message", "Invalid username or password!");
        }
        return view;
    }

    @RequestMapping(value = {"/item"})
    public ModelAndView item(){
        return new ModelAndView("item");
    }
}
