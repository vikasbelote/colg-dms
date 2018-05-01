package com.santan.trade.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.santan.trade.model.InvestmentModel;

@Repository
public class InvestmentRepository extends BaseRepository {
	
	public List<InvestmentModel> getInvestments(Integer userId) {
		
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<InvestmentModel> criteriaQuery = criteriaBuilder.createQuery(InvestmentModel.class);
		Root<InvestmentModel> root = criteriaQuery.from(InvestmentModel.class);
		criteriaQuery.select(root);
		
		Predicate userIdEqual = criteriaBuilder.equal(root.<Integer>get("userModel").get("userId"), userId);
		criteriaQuery.where(criteriaBuilder.and(userIdEqual));
		
		List<InvestmentModel> investments;
		try {
			investments = entityManager.createQuery(criteriaQuery).getResultList();
		}
		catch(Exception e) {
			investments = null;
		}
		return investments;
	}
	
	public InvestmentModel getInvestment(Integer investmentId) {
		
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<InvestmentModel> criteriaQuery = criteriaBuilder.createQuery(InvestmentModel.class);
		Root<InvestmentModel> root = criteriaQuery.from(InvestmentModel.class);
		criteriaQuery.select(root);
		
		Predicate investmentIdEqual = criteriaBuilder.equal(root.<Integer>get("investmentId"), investmentId);
		criteriaQuery.where(criteriaBuilder.and(investmentIdEqual));
		
		InvestmentModel investment;
		try {
			investment = entityManager.createQuery(criteriaQuery).getSingleResult();
		}
		catch(Exception e) {
			investment = null;
		}
		return investment;
	}
	
	public boolean saveInvestmentModel(InvestmentModel investmentModel) {
		
		Session session = null;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			
			session.saveOrUpdate(investmentModel);
			
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

}
