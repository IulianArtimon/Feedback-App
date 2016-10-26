package com.dev.service;

import com.dev.dao.ManagerDao;
import com.dev.model.ManagerModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by aiciulian on 18-Oct-16.
 */

@Service
public class ManagerServiceImpl implements ManagerService {

    @Autowired
    private ManagerDao managerDao;

// Creaza Admin

    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    @Override
    public void creazaManager(ManagerModel managerModel) {

        managerDao.creazaManager(managerModel);

    }

//  Afisare lista de manageri

    @Transactional
    @Override
    public List<ManagerModel> afiseazaListaManageri() {

        return managerDao.afiseazaListaManageri();
    }

    @Transactional
    @Override
    public List<ManagerModel> findAllManageri() {
        return managerDao.findAllManageri();
    }

//  Afiseaza profil manager dupa id

    @Transactional
    @Override
    public ManagerModel findManager(long id) {

        return managerDao.findManager(id);
    }

//  Afiseaza profil manager dupa username

    @Transactional
    @Override
    public ManagerModel getManager(String username) {

        return managerDao.getManager(username);
    }
}
