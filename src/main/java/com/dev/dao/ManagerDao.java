package com.dev.dao;

import com.dev.model.ManagerModel;

import java.util.List;

/**
 * Created by aiciulian on 18-Oct-16.
 */
public interface ManagerDao {

// Creaza Admin

    void creazaManager(ManagerModel managerModel);

//  Afisare lista de manageri

    List<ManagerModel> afiseazaListaManageri();

    List<ManagerModel> findAllManageri();

//  Afiseaza profil manager dupa id

    ManagerModel findManager(long id);

//  Afiseaza profil manager dupa username

    ManagerModel getManager(String username);

// Sterge Manager

    void stergeManager(long id);



}
