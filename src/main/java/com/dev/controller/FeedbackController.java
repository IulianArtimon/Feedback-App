package com.dev.controller;

import com.dev.model.FeedbackModel;
import com.dev.security.VerifyRecaptcha;
import com.dev.service.AdminService;
import com.dev.service.FeedbackService;
import com.dev.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.io.IOException;

/**
 * Created by aiciulian on 18-Oct-16.
 */

@Controller
@SessionAttributes(value = {"username", "departament"})
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

    @Autowired
    private AdminService adminService;

    @Autowired
    private ManagerService managerService;

//  Redirect catre pagina de Feedback

    @RequestMapping(value="/feedbackPage")
    public String redirectToFeedback(Model model){

        model.addAttribute("formularNou", new FeedbackModel());
        return "feedback";
    }

// Trimite feedback

    @RequestMapping(value = "/salveazaFeedback", method = RequestMethod.POST)
    public String salveazaFeedback(@RequestParam ("g-recaptcha-response") String gRecaptchaResponse, @ModelAttribute("formularNou") @Valid FeedbackModel feedbackModel, BindingResult result, ModelMap model)throws IOException {

// Validare input utilizand Hibernate Validator si Google reCaptcha

        if (result.hasErrors() || !VerifyRecaptcha.verify(gRecaptchaResponse)) {

            model.addAttribute("FormularNevalidat", "Eroare, verifica mesajele de eroare si conformeazate");
            return "feedback";

        } else {

            feedbackService.salveazaFeedback(feedbackModel);
            String destinatar = feedbackModel.getDestinatar();
            String nume = feedbackModel.getNume();
            model.addAttribute("catre", destinatar);
            model.addAttribute("despre", nume);
            return "/feedbackSucces";


        }
    }

// Afiseaza feedback

    @RequestMapping(value="/manager/{id}", method=RequestMethod.GET)
    public ModelAndView afiseazaFeedbackIndividual(@PathVariable("id") long id) {

        FeedbackModel feedbackIndividual = feedbackService.afiseazaFeedbackIndividual(id);
        ModelAndView model = new ModelAndView();
        model.setViewName("afiseazaFeedback");
        model.addObject("feedbackIndividual", feedbackIndividual);
        return model;
    }

}
