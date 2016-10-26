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


    @Transactional
    @Override
    public List<FeedbackModel> gasesteToateInregistrarile() {

        return feedbackDao.gasesteToateInregistrarile();
    }
}
