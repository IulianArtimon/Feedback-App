package com.dev.controller;

import com.dev.model.FeedbackModel;
import com.dev.security.VerifyRecaptcha;
import com.dev.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.io.IOException;

/**
 * Created by aiciulian on 18-Oct-16.
 */

@Controller
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

//  Redirect catre pagina de Feedback

    @RequestMapping(value="/feedbackPage")
    public String redirectToFeedback(Model model){

        model.addAttribute("formularNou", new FeedbackModel());
        return "feedback";
    }

// Trimite feedback

    @RequestMapping(value = "/salveazaFeedback", method = RequestMethod.POST)
    public String salveazaFeedback(@RequestParam ("g-recaptcha-response") String gRecaptchaResponse, @ModelAttribute("formularNou") @Valid FeedbackModel feedbackModel, BindingResult result, ModelMap model)throws IOException {

// Validare input utilizand JSR 303, Hibernate Validator si Google reCaptcha

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

}
