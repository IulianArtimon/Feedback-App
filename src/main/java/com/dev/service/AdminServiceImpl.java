package com.dev.service;

import com.dev.dao.AdminDao;
import com.dev.model.AdminModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by aiciulian on 15-Oct-16.
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

// Creaza Admin

    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    @Override
    public void creazaAdmin(AdminModel adminModel) {

        adminDao.creazaAdmin(adminModel);

    }

//  Afisare lista de admini

    @Transactional
    @Override
    public List<AdminModel> afiseazaListaAdmini() {

        return adminDao.afiseazaListaAdmini();
    }

    @Transactional
    @Override
    public List<AdminModel> findAllAdmin() {
        return adminDao.findAllAdmin();
    }

//  Afiseaza profil admin dupa id

    @Transactional
    @Override
    public AdminModel findAdmin(long id) {

        return adminDao.findAdmin(id);
    }


//  Afiseaza profil admin dupa username

    @Transactional
    @Override
    public AdminModel getAdmin(String username) {

        return adminDao.getAdmin(username);
    }


}

