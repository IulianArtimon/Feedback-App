package com.dev.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by aiciulian on 14-Oct-16.
 */
@Controller
public class HomeController {


// Redirect catre pagina principala

    @RequestMapping(value = {"/", "appforFeedback/"}, method = RequestMethod.GET)
    public String indexPage() {
        return "index";
    }

}
