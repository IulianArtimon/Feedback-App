package com.dev.dao;

import com.dev.model.FeedbackModel;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by aiciulian on 18-Oct-16.
 */

@Repository
public class FeedbackDaoImpl implements FeedbackDao{

    @Autowired
    private SessionFactory sessionFactory;

// Salveaza feedback lasat de user

    @Override
    public void salveazaFeedback(FeedbackModel feedbackModel) {
        sessionFactory.getCurrentSession().save(feedbackModel);
    }

// Afiseaza lista feedback

    @SuppressWarnings("unchecked")
    @Override
    public List<FeedbackModel> afiseazaListaFeedback() {
        List<FeedbackModel> listaFeedback = (List<FeedbackModel>) sessionFactory.getCurrentSession().createCriteria(FeedbackModel.class).list();
        return listaFeedback;
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<FeedbackModel> gasesteToateInregistrarile() {
        return sessionFactory.getCurrentSession().createCriteria(FeedbackModel.class,"SELECT o FROM AdminModel o").list();
    }
}
