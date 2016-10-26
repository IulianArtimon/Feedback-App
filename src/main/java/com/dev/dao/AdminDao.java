package com.dev.dao;

import com.dev.model.AdminModel;

import java.util.List;

/**
 * Created by aiciulian on 15-Oct-16.
 */
public interface AdminDao {

// Creaza Admin

     void creazaAdmin(AdminModel adminModel);

//  Afisare lista de admini

     List<AdminModel> afiseazaListaAdmini();

     List<AdminModel> findAllAdmin();

//  Afiseaza profil admin dupa id

     AdminModel findAdmin(long id);


//  Afiseaza profil admin dupa username

     AdminModel getAdmin(String username);


}
