package com.santan.trade.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.santan.trade.model.TradeModel;

@Repository
public class TradeRepository extends BaseRepository {
	
	
	public List<TradeModel> getTrades() {
		
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<TradeModel> criteriaQuery = criteriaBuilder.createQuery(TradeModel.class);
		Root<TradeModel> root = criteriaQuery.from(TradeModel.class);
		criteriaQuery.select(root);
		
		List<TradeModel> trades;
		try {
			trades = entityManager.createQuery(criteriaQuery).getResultList();
		}
		catch(Exception e) {
			trades = null;
		}
		return trades;
	}
	
	public TradeModel getTrade(Integer tradeId) {
		
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<TradeModel> criteriaQuery = criteriaBuilder.createQuery(TradeModel.class);
		Root<TradeModel> root = criteriaQuery.from(TradeModel.class);
		criteriaQuery.select(root);
		
		Predicate tradeIdEqual = criteriaBuilder.equal(root.<Integer>get("tradeId"), tradeId);
		criteriaQuery.where(criteriaBuilder.and(tradeIdEqual));
		
		TradeModel trade;
		try {
			trade = entityManager.createQuery(criteriaQuery).getSingleResult();
		}
		catch(Exception e) {
			trade = null;
		}
		return trade;
	}
	
	public boolean saveTradeModel(TradeModel tradeModel) {
		
		Session session = null;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			
			session.saveOrUpdate(tradeModel);
			
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
