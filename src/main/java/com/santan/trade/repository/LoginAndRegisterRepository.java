package com.santan.trade.repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.santan.trade.model.UserModel;

@Repository
public class LoginAndRegisterRepository extends BaseRepository {
	
	
	public boolean saveUserModel(UserModel userModel) {
		
		Session session = null;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			
			session.persist(userModel);
			
			session.getTransaction().commit();
			return true;
		}
		catch(Exception e) {
			if(session != null)
				session.getTransaction().rollback();
			return false;
		}
		finally {
			if(session != null)
				session.close();
		}
	}
	
	public UserModel getUserModel(UserModel userModel) {
		
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<UserModel> criteriaQuery = criteriaBuilder.createQuery(UserModel.class);
		Root<UserModel> root = criteriaQuery.from(UserModel.class);
		criteriaQuery.select(root);
		
		Predicate userNameEqual = criteriaBuilder.equal(root.<String>get("userName"), userModel.getUserName());
		Predicate userPasswordEqual = criteriaBuilder.equal(root.<String>get("userPassword"), userModel.getUserPassword());
		
		criteriaQuery.where(criteriaBuilder.and(userNameEqual, userPasswordEqual));

		return entityManager.createQuery(criteriaQuery).getSingleResult();
	}
}
