package com.dev.service;

import com.dev.model.FeedbackModel;

import java.util.List;

/**
 * Created by aiciulian on 18-Oct-16.
 */
public interface FeedbackService {

// Salveaza feedback lasat de user

    void salveazaFeedback(FeedbackModel feedbackModel);

// Afiseaza lista feedback

    List<FeedbackModel> afiseazaListaFeedback();

    List<FeedbackModel> gasesteToateInregistrarile();

// Afiseaza feedback dupa destinatar

    List<FeedbackModel> listaFeedbackDupaDestinatar(String Departament);

// Afiseaza Feedback

    FeedbackModel afiseazaFeedbackIndividual(long id);
}
