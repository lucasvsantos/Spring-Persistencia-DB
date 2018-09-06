package br.com.fiap.jpa.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.fiap.jpa.dao.BebidaDAO;
import br.com.fiap.spring.model.Bebida;

@Repository
public class BebidaDAOImpl extends GenericDAOImpl<Bebida, Integer> implements BebidaDAO {
	
	@Override
	public List<Bebida> buscarPorNome(String nome) {
		return em.createQuery("from Bebida where nome like :nome", Bebida.class )
		.setParameter("nome", "%"+nome+"%")
		.getResultList();
	}

}
