package com.dev.dao;

import com.dev.model.FeedbackModel;

import java.util.List;

/**
 * Created by aiciulian on 18-Oct-16.
 */
public interface FeedbackDao {

// Salveaza feedback lasat de user

    void salveazaFeedback(FeedbackModel feedbackModel);

// Afiseaza lista feedback

    List<FeedbackModel> afiseazaListaFeedback();

    List<FeedbackModel> gasesteToateInregistrarile();
}
