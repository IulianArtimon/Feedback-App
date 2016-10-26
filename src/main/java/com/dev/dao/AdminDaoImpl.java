package com.dev.dao;

import com.dev.model.AdminModel;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * Created by aiciulian on 15-Oct-16.
 */

@Repository
public class AdminDaoImpl implements AdminDao {

    @Autowired
    private SessionFactory sessionFactory;

// Creaza Admin

    @Override
    public void creazaAdmin(AdminModel adminModel) {

        sessionFactory.getCurrentSession().save(adminModel);
    }

//  Afisare lista de admini

    @SuppressWarnings("unchecked")
    @Override
    public List<AdminModel> afiseazaListaAdmini() {


        List<AdminModel> listaAdmini = (List<AdminModel>) sessionFactory.getCurrentSession().createCriteria(AdminModel.class).list();
        return listaAdmini;
    }


    @SuppressWarnings("unchecked")
    @Override
    public List<AdminModel> findAllAdmin() {

        return sessionFactory.getCurrentSession().createCriteria(AdminModel.class,"SELECT o FROM AdminModel o").list();
    }

//  Afiseaza profil admin dupa id

    @Override
    public AdminModel findAdmin(long id) {

        return sessionFactory.getCurrentSession().get(AdminModel.class, id);

    }



//  Afiseaza profil admin dupa username

    @Override
    public AdminModel getAdmin(String username) {

        return (AdminModel) sessionFactory.getCurrentSession().createCriteria(AdminModel.class).add(Restrictions.eq("username", username)).uniqueResult();

    }


}
