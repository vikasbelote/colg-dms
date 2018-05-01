package com.santan.trade.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.santan.trade.model.InvestmentModel;
import com.santan.trade.model.OutcomeModel;
import com.santan.trade.model.TradeModel;

@Repository
public class OutcomeRepository extends BaseRepository {
	
	
	public List<TradeModel> getTrades() {
		
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<TradeModel> criteriaQuery = criteriaBuilder.createQuery(TradeModel.class);
		Root<TradeModel> root = criteriaQuery.from(TradeModel.class);
		root.fetch("outcomeModel", JoinType.LEFT);
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
	
	public boolean saveOutcomeModel(OutcomeModel outcomeModel) {
		
		Session session = null;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			
			session.saveOrUpdate(outcomeModel);
			
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
