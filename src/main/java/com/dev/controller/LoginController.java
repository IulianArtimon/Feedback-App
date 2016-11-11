package com.dev.controller;

import com.dev.model.AdminModel;
import com.dev.model.FeedbackModel;
import com.dev.model.ManagerModel;
import com.dev.security.HashPassword;
import com.dev.service.AdminService;
import com.dev.service.FeedbackService;
import com.dev.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by aiciulian on 14-Oct-16.
 */

@Controller
@SessionAttributes(value = {"username", "departament"})
public class LoginController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private ManagerService managerService;

    @Autowired
    private FeedbackService feedbackService;

// Redirect catre pagina de login

    @RequestMapping(value="/login", method= RequestMethod.GET)
    public String redirectToLogin(){

        return "login";
    }

// Login Manager

    @RequestMapping(value="/loginAdmin", method=RequestMethod.POST)
    public String authentificationManager(@RequestParam String username, @RequestParam String parola, HttpSession session, Model model) {


        ManagerModel manager = managerService.getManager(username);
        String Username = manager.getUsername();
        String Parola = manager.getParola();
        String Departament = manager.getDepartament();

        if(username.equals(Username) && HashPassword.checkPassword(parola, Parola)){

            List<FeedbackModel> listaFeedback = feedbackService.listaFeedbackDupaDestinatar(Departament);
            session.setAttribute("loggedInManager", manager);
            model.addAttribute("username", Username);
            model.addAttribute("departament", Departament);
            model.addAttribute("ListaFeedback", listaFeedback);
            return "manager";

        }

        else{
            model.addAttribute("EroareLogin", "Eroare la logare, incearca din nou");
            return"login";
        }

    }

// Login Admin

    @RequestMapping(value="/loginAdmin", method=RequestMethod.POST, params = "categorie=Admin")
    public String authentificationAdmin(@RequestParam String username, @RequestParam String parola, HttpSession session, Model model){

        AdminModel admin = adminService.getAdmin(username);
        String Username = admin.getUsername();
        String  Parola = admin.getParola();


        if(username.equals(Username) && HashPassword.checkPassword(parola,Parola)){

            session.setAttribute("loggendInAdmin", admin);
            model.addAttribute("username", Username);
            return "admin";

        }

        else{
            model.addAttribute("EroareLogin", "Eroare la logare, incearca din nou");
            return"login";
        }
    }


// Delogare

    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logout (HttpSession session){

        session.removeAttribute("loggedInAdmin");
        session.removeAttribute("loggedInManager");
        return "login";
    }


}
