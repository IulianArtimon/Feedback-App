package com.dev.service;

import com.dev.dao.FeedbackDao;
import com.dev.model.FeedbackModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

/**
 * Created by aiciulian on 18-Oct-16.
 */
@Service
public class FeedbackServiceimpl implements FeedbackService {

    @Autowired
    private FeedbackDao feedbackDao;

// Salveaza feedback lasat de user

    @Transactional
    @Override
    public void salveazaFeedback(FeedbackModel feedbackModel) {

        feedbackDao.salveazaFeedback(feedbackModel);
    }

// Afiseaza lista feedback

    @Transactional
    @Override
    public List<FeedbackModel> afiseazaListaFeedback() {

        return feedbackDao.afiseazaListaFeedback();
    }

// Afiseaza lista feedback

    @Transactional
    @Override
    public List<FeedbackModel> gasesteToateInregistrarile() {

        return feedbackDao.gasesteToateInregistrarile();
    }

// Afiseaza feedback dupa destinatar

    @Transactional
    @Override
    public List<FeedbackModel> listaFeedbackDupaDestinatar(String Departament) {

        return feedbackDao.listaFeedbackDupaDestinatar(Departament);
    }

// Afiseaza Feedback

    @Transactional
    @Override
    public FeedbackModel afiseazaFeedbackIndividual(long id) {

        return feedbackDao.afiseazaFeedbackIndividual(id);
    }
}
