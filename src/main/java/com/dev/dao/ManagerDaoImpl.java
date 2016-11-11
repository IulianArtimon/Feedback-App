package com.dev.dao;

import com.dev.model.ManagerModel;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by aiciulian on 18-Oct-16.
 */

@Repository
        public class ManagerDaoImpl implements ManagerDao {

    @Autowired
    private SessionFactory sessionFactory;

// Creaza Admin

    @Override
    public void creazaManager(ManagerModel managerModel) {

        sessionFactory.getCurrentSession().save(managerModel);
    }

//  Afisare lista de manageri

    @SuppressWarnings("unchecked")
    @Override
    public List<ManagerModel> afiseazaListaManageri() {


        List<ManagerModel> listaManageri = (List<ManagerModel>) sessionFactory.getCurrentSession().createCriteria(ManagerModel.class).list();
        return listaManageri;
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<ManagerModel> findAllManageri() {

        return sessionFactory.getCurrentSession().createCriteria(ManagerModel.class,"SELECT o FROM AdminModel o").list();
    }

//  Afiseaza profil manager dupa id

    @Override
    public ManagerModel findManager(long id) {


        return sessionFactory.getCurrentSession().get(ManagerModel.class, id);

    }

//  Afiseaza profil manager dupa username

    @Override
    public ManagerModel getManager(String username) {

        return (ManagerModel) sessionFactory.getCurrentSession().createCriteria(ManagerModel.class).add(Restrictions.eq("username", username)).uniqueResult();
    }

// Sterge Manager

    @Override
    public void stergeManager(long id) {

        ManagerModel manager = sessionFactory.getCurrentSession().get(ManagerModel.class, id);
        sessionFactory.getCurrentSession().delete(manager);

    }


}
