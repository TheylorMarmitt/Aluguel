package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.Carro;

public interface CarroDao extends JpaRepository<Carro, Long>{

	List<Carro> findByDisponivelTrue();
	
	
	
	// caso não der certo
	//select * from Carro c where c.dataDesapropriacao IS null and disponivel = true
}
