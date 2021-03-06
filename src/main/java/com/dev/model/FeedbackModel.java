package com.dev.model;

import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

/**
 * Created by aiciulian on 18-Oct-16.
 */

@Entity
@Table(name = "feedback")
public class FeedbackModel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @NotNull
    private String categorie;

    @NotNull
    @Size(max = 100, min = 3)
    private String nume;

    @NotNull
    @Size(max = 2000, min = 50)
    private String feedback;

    @NotNull
    private String destinatar;

    @CreationTimestamp
    @Column(name = "data")
    private Date data;

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getNume() {
        return nume;
    }

    public void setNume(String nume) {
        this.nume = nume;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public String getDestinatar() {
        return destinatar;
    }

    public void setDestinatar(String destinatar) {
        this.destinatar = destinatar;
    }

}
