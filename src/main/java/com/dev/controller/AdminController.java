package com.dev.controller;

import com.dev.model.AdminModel;
import com.dev.model.ManagerModel;
import com.dev.service.AdminService;
import com.dev.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

/**
 * Created by aiciulian on 14-Oct-16.
 */
@Controller
@SessionAttributes("username")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private ManagerService managerService;

//  Redirect catre pagina Creare Profil

    @RequestMapping(value = "/registerAdmin", method = RequestMethod.GET)
    public String redirectToCreateAdmin() {

        return "createProfile";
    }

//  Afisare lista de admini

    @RequestMapping(value = "/afiseazaAdmini", method = RequestMethod.GET)
    public ModelAndView afiseazaAdmini() {

        List<AdminModel> listaDeAdmini = adminService.afiseazaListaAdmini();
        List<ManagerModel> listaDeManageri = managerService.afiseazaListaManageri();
        ModelAndView model = new ModelAndView();
        model.setViewName("listaAdmini");
        model.addObject("ListaAdmini", listaDeAdmini);
        model.addObject("ListaManageri",listaDeManageri);
        return model;
    }

// Creaza Admin

    @RequestMapping(value = "/creazaAdmin", method = RequestMethod.POST, params="categorie=Admin")
    public String creazaAdmin(@Valid AdminModel adminModel, BindingResult result, ModelMap model, @RequestParam ("parola") String Parola) {

        if (result.hasErrors()) {
            model.addAttribute("AdminNevalidat", "Eroare la creare Admin");
            return "createProfile";
        } else {

            adminService.creazaAdmin(adminModel);

            return "redirect:/appforFeedback/adminProfiles/" + adminModel.getId();


        }
    }
//  Afiseaza profil admin nou creat

    @RequestMapping(value = "/adminProfiles/{adminUsername}")
    public String getAdminProfile(@PathVariable long adminUsername, Map<String, Object> model) {

        AdminModel admin = adminService.findAdmin(adminUsername);
       // List<AdminModel> findAllAdmin = adminService.findAllAdmin();
        model.put("admin", admin);
        return "adminProfile";
    }

//  Creaza Manager

    @RequestMapping(value = "/creazaAdmin", method = RequestMethod.POST)
    public String creazaManager(@Valid ManagerModel managerModel, BindingResult result, ModelMap model) {

        if (result.hasErrors()) {
            model.addAttribute("AdminNevalidat", "Eroare la creare Admin");
            return "createProfile";
        } else {
            managerService.creazaManager(managerModel);

            return "redirect:/appforFeedback/managerProfiles/" + managerModel.getId();

        }
    }

//  Afiseaza profil manager nou creat

    @RequestMapping(value = "/managerProfiles/{managerUsername}")
    public String getManagerProfile(@PathVariable long managerUsername, Map<String, Object> model) {

        ManagerModel manager = managerService.findManager(managerUsername);
        List<ManagerModel> findAllManageri = managerService.findAllManageri();
        model.put("manager", manager);
        return "managerProfile";
    }

}