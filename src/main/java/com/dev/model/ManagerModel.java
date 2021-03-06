package com.dev.model;

import com.dev.security.HashPassword;
import org.hibernate.validator.constraints.Email;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Created by aiciulian on 15-Oct-16.
 */

@Entity
@Table(name="manager")
public class ManagerModel {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @NotNull
    @Size(max = 25, min = 3)
    private String nume;

    @NotNull
    @Size(max = 25, min = 3)
    private String prenume;

    private String departament;

    @NotNull
    @Size(max = 25, min = 3)
    private String username;

    @NotNull
    @Email
    @Size(max = 25)
    private String email;

    private String parola;

    public String getDepartament() {
        return departament;
    }

    public void setDepartament(String departament) {
        this.departament = departament;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNume() {
        return nume;
    }

    public void setNume(String nume) {
        this.nume = nume;
    }

    public String getPrenume() {
        return prenume;
    }

    public void setPrenume(String prenume) {
        this.prenume = prenume;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getParola() {

        return parola;
    }

    public void setParola(String parola) {

        this.parola = HashPassword.createPassword(parola);
    }
}
