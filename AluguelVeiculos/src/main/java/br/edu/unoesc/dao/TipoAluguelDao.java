package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.TipoAluguel;

public interface TipoAluguelDao extends JpaRepository<TipoAluguel, Long> {
	

}
