package com.dev.service;

import com.dev.model.ManagerModel;

import java.util.List;

/**
 * Created by aiciulian on 18-Oct-16.
 */
public interface ManagerService {

// Creaza Admin

    void creazaManager(ManagerModel managerModel);

//  Afisare lista de manageri

    List<ManagerModel> afiseazaListaManageri();

    List<ManagerModel> findAllManageri();

//  Afiseaza profil admin dupa id

    ManagerModel findManager(long id);

//  Afiseaza profil manager dupa username

    ManagerModel getManager(String username);
}
