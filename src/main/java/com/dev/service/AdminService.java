package com.dev.service;

import com.dev.model.AdminModel;

import java.util.List;

/**
 * Created by aiciulian on 15-Oct-16.
 */
public interface AdminService {

// Creaza Admin

        void creazaAdmin(AdminModel adminModel);

//  Afisare lista de admini

        List<AdminModel> afiseazaListaAdmini();

        List<AdminModel> findAllAdmin();

//  Afiseaza profil manager dupa id

        AdminModel findAdmin(long id);

//  Afiseaza profil manager dupa username

        AdminModel getAdmin(String username);


}
