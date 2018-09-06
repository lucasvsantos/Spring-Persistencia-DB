package br.com.fiap.jpa.dao;

import java.util.List;

import br.com.fiap.spring.model.Bebida;

public interface BebidaDAO extends GenericDAO<Bebida, Integer>{
	
	List<Bebida> buscarPorNome(String nome);
}
